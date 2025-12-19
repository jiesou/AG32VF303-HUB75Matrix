module user_ip (
  inout       [3:0]  HUB75_ADDR,
  inout              HUB75_CLK,
  inout       [5:0]  HUB75_DATA,
  inout              HUB75_LAT,
  inout              HUB75_OE,
  inout              LED_D2,
  inout              LED_D3,
  input              MATRIXSPI_MOSI,
  input              MATRIXSPI_SCK,
  input              MATRIXSPI_CS,
  input              sys_clock,
  input              bus_clock,
  input              resetn,
  input              stop,
  input       [1:0]  mem_ahb_htrans,
  input              mem_ahb_hready,
  input              mem_ahb_hwrite,
  input       [31:0] mem_ahb_haddr,
  input       [2:0]  mem_ahb_hsize,
  input       [2:0]  mem_ahb_hburst,
  input       [31:0] mem_ahb_hwdata,
  output tri1        mem_ahb_hreadyout,
  output tri0        mem_ahb_hresp,
  output tri0 [31:0] mem_ahb_hrdata,
  output tri0        slave_ahb_hsel,
  output tri1        slave_ahb_hready,
  input              slave_ahb_hreadyout,
  output tri0 [1:0]  slave_ahb_htrans,
  output tri0 [2:0]  slave_ahb_hsize,
  output tri0 [2:0]  slave_ahb_hburst,
  output tri0        slave_ahb_hwrite,
  output tri0 [31:0] slave_ahb_haddr,
  output tri0 [31:0] slave_ahb_hwdata,
  input              slave_ahb_hresp,
  input       [31:0] slave_ahb_hrdata,
  output tri0 [3:0]  ext_dma_DMACBREQ,
  output tri0 [3:0]  ext_dma_DMACLBREQ,
  output tri0 [3:0]  ext_dma_DMACSREQ,
  output tri0 [3:0]  ext_dma_DMACLSREQ,
  input       [3:0]  ext_dma_DMACCLR,
  input       [3:0]  ext_dma_DMACTC,
  output tri0 [3:0]  local_int
);
assign mem_ahb_hreadyout = 1'b1;
assign slave_ahb_hready  = 1'b1;

// 16 分频：用 4-bit 计数器把 sys_clock 分频为 sys_clk_div16
reg [3:0] sys_clk_div_cnt;
wire sys_clk_div16 = sys_clk_div_cnt[3];
initial begin
    sys_clk_div_cnt = 4'd0;
end
always @(posedge sys_clock) begin
    sys_clk_div_cnt <= sys_clk_div_cnt + 4'd1;
end

hub75_driver hub75_inst (
    .clk(sys_clk_div16),
    .HUB75_CLK(HUB75_CLK),
    .HUB75_LAT(HUB75_LAT),
    .HUB75_OE(HUB75_OE),
    .HUB75_ADDR(HUB75_ADDR),
    .HUB75_DATA(HUB75_DATA)
);
endmodule


module hub75_driver (
    input  wire         clk,
    output wire         HUB75_CLK,
    output wire         HUB75_LAT,
    output wire         HUB75_OE,   // 输出使能先保持低电平
    output wire [3:0]   HUB75_ADDR, // A/B/C/D 地址线
    output wire [5:0]   HUB75_DATA  // R1 G1 B1 R2 G2 B2
);

// --------------------------------------------------------
// 常量参数
// --------------------------------------------------------
localparam H_PIXELS     = 64;   // 屏幕宽度像素点 (每行)
localparam W_PIXELS     = 16;   // 扫描行数 (A/B/C/D 0~15)
localparam SHIFT_MAX = H_PIXELS - 1; // 移位计数器最大值
localparam ROW_MAX   = W_PIXELS - 1;     // 行计数器最大值

// --------------------------------------------------------
// 状态
// --------------------------------------------------------
localparam [1:0] STATE_SHIFT = 2'b00; // 数据移位
localparam [1:0] STATE_LATCH = 2'b01; // 锁存和换行

reg [1:0] state_reg;

// --------------------------------------------------------
// 计数器
// --------------------------------------------------------
reg [6:0] shift_count_reg; // 0 到 63 (64 个像素)
reg [3:0] hub75_addr_reg;   // 0 到 15 (16 行)

// R G B 数据输出
reg [5:0] hub75_data_reg;

// Framebuffer 32x64
reg [2:0] framebuffer [0:31][0:63];

// 工具 wire，始终为下一个 addr
wire [3:0] next_row_addr = (hub75_addr_reg == ROW_MAX) ? 4'd0 : (hub75_addr_reg + 4'd1);

// --------------------------------------------------------
// 核心状态机
// --------------------------------------------------------
always @(posedge clk) begin
    begin
        case (state_reg)
            STATE_SHIFT: begin
                // 输出 index = shift_count_reg 的像素
                hub75_data_reg <= {
                    framebuffer[hub75_addr_reg][shift_count_reg],      // 上半屏 (行 0-15)
                    framebuffer[hub75_addr_reg + 16][shift_count_reg]  // 下半屏 (行 16-31)
                };
                if (shift_count_reg == SHIFT_MAX) begin
                    // 移位完成，进入锁存状态
                    shift_count_reg <= 0;
                    state_reg <= STATE_LATCH;
                end else begin
                    // 增加计数，持续移位
                    shift_count_reg <= shift_count_reg + 1;
                end
            end
            
            STATE_LATCH: begin
                // 在锁存周期改变地址（LAT 保持高）
                if (hub75_addr_reg == ROW_MAX) begin
                    hub75_addr_reg <= 0; // 回到第 0 行
                end else begin
                    hub75_addr_reg <= hub75_addr_reg + 1;
                end
                // 切回移位状态
                state_reg <= STATE_SHIFT;
            end
            
            default: begin
                // 状态非法恢复
                shift_count_reg <= 0;
                hub75_addr_reg <= 0;
                state_reg <= STATE_SHIFT;
                hub75_data_reg <= {framebuffer[0][0], framebuffer[16][0]};
            end
        endcase
    end
end

// 初值
integer r, c;
initial begin
    // Initialize Framebuffer with 4x4 grid pattern for 32x64
    for (r = 0; r < 32; r = r + 1) begin
        for (c = 0; c < 64; c = c + 1) begin
            // (row / 4) % 2 == (col / 4) % 2 ? Red : Blue
            if ( ((r >> 2) & 1) == ((c >> 2) & 1) )
                framebuffer[r][c] = 3'b100; // Red
            else
                framebuffer[r][c] = 3'b001; // Blue
        end
    end

    state_reg       = STATE_SHIFT;
    shift_count_reg = 0;
    hub75_addr_reg  = 0;
    hub75_data_reg  = {framebuffer[0][0], framebuffer[16][0]};
end

// --------------------------------------------------------
// 输出 wire 信号
// --------------------------------------------------------
// HUB75_CLK
assign HUB75_CLK = clk;

// A/B/C/D 地址线：绑定寄存器
assign HUB75_ADDR = hub75_addr_reg;

// RGB 信号：绑定寄存器
assign HUB75_DATA = hub75_data_reg;

// LAT 信号：只在 LATCH 状态，且只持续一个时钟周期
assign HUB75_LAT = (state_reg == STATE_LATCH); 

// OE 信号：保持低电平（常亮）
// 在锁存周期禁用输出（保持高电平），避免地址/数据切换时出现伪影
assign HUB75_OE = (state_reg == STATE_LATCH) ? 1'b1 : 1'b0;

endmodule
