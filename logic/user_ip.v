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

/* 例化 SPI 接收 */
wire [15:0] data_out;
wire data_valid;
spi_rx_16bit rx_inst (
    .SCK(MATRIXSPI_SCK), .MOSI(MATRIXSPI_MOSI), .CS(MATRIXSPI_CS),
    .data_out(data_out), .data_valid(data_valid)
);

// data_out 转为 3bit RGB 存入 ram
reg [10:0] write_addr;
wire [2:0] pixel_rgb3;
// 大端序，手动取位处理 RGB 565
// RGB565: RRRRRGGG GGGBBBBB
assign pixel_rgb3 = {data_out[15], data_out[10], data_out[4]};
always @(posedge MATRIXSPI_SCK or posedge MATRIXSPI_CS) begin
    if (MATRIXSPI_CS) write_addr <= 0;
    else if (data_valid) write_addr <= write_addr + 1;
end

/* 例化 RAM 存储 framebuffer */
wire [10:0] hub_addr_top, hub_addr_bot;
wire [2:0] data_to_hub_top, data_to_hub_bot;
framebuffer_ram ram_inst (
    .wr_clk(MATRIXSPI_SCK),
    .rd_clk(sys_clock),
    .wr_en(data_valid), // SPI 接收完成脉冲信号即写入
    .wr_addr(write_addr),
    .wr_data(pixel_rgb3),
    .rd_addr_a(hub_addr_top),
    .rd_addr_b(hub_addr_bot),
    .rd_data_a(data_to_hub_top),
    .rd_data_b(data_to_hub_bot)
);

/* 例化 HUB75 */
// 4 分频：用 2-bit 计数器把 sys_clock 分频为 sys_clk_div4
reg [1:0] sys_clk_div_cnt;
wire sys_clk_div4 = sys_clk_div_cnt[1];
initial begin
    sys_clk_div_cnt = 2'd0;
end
always @(posedge sys_clock) begin
    sys_clk_div_cnt <= sys_clk_div_cnt + 2'd1;
end
hub75_driver hub75_inst (
    .clk(sys_clk_div4), // 要分频，否则鬼影
    .rd_addr_a(hub_addr_top),
    .rd_addr_b(hub_addr_bot),
    .rd_data_a(data_to_hub_top),
    .rd_data_b(data_to_hub_bot),
    .HUB75_CLK(HUB75_CLK),
    .HUB75_LAT(HUB75_LAT),
    .HUB75_OE(HUB75_OE),
    .HUB75_ADDR(HUB75_ADDR),
    .HUB75_DATA(HUB75_DATA)
);
endmodule

/* SPI 接收 16bit 数据 */
module spi_rx_16bit (
    input  wire        SCK,
    input  wire        MOSI,
    input  wire        CS,
    output reg [15:0]  data_out,
    output reg         data_valid // 接收完16位后发出 脉冲信号
);
reg [3:0] bit_cnt;
reg [15:0] shift_reg;
always @(posedge SCK or posedge CS) begin
    if (CS) begin
        bit_cnt <= 0;
        data_valid <= 0;
    end else begin
        // Mode 0: 上升沿采样
        shift_reg <= {shift_reg[14:0], MOSI};
        
        if (bit_cnt == 4'd15) begin
            bit_cnt <= 0;
            data_out <= {shift_reg[14:0], MOSI}; // 最后一比特拼入
            data_valid <= 1;
        end else begin
            bit_cnt <= bit_cnt + 1;
            data_valid <= 0;
        end
    end
end
endmodule

/* 存储转换后的 3bit*32*64 framebuffer 数据 */
module framebuffer_ram (
    // 双时钟域
    input wire wr_clk,
    input wire rd_clk,
    // 写端口 (来自 SPI)
    input wire wr_en,
    input wire [10:0] wr_addr, // 32*64 = 2048
    input wire [2:0]  wr_data,
    // 读端口 (来自 HUB75，支持同时读两个)
    input wire [10:0] rd_addr_a, // 上半屏读取地址
    input wire [10:0] rd_addr_b, // 下半屏读取地址
    output reg [2:0]  rd_data_a,
    output reg [2:0]  rd_data_b
);
// 2048 x 3bit
reg [2:0] mem [0:2047];

// 初值化为棋盘格样式
integer i, r_idx, c_idx;
initial begin
    for (i = 0; i < 2048; i = i + 1) begin
        // 将一维地址 i 还原为行 r 和列 c
        // 地址格式是 {row[4:0], col[5:0]}，即 row * 64 + col
        r_idx = i / 64; 
        c_idx = i % 64;
        if ( ((r_idx >> 2) & 1) == ((c_idx >> 2) & 1) )
            mem[i] = 3'b100; // Red
        else
            mem[i] = 3'b000; // Black
    end
end

always @(posedge wr_clk) begin
    if (wr_en) mem[wr_addr] <= wr_data;
end
always @(posedge rd_clk) begin
    rd_data_a <= mem[rd_addr_a];
    rd_data_b <= mem[rd_addr_b];
end
endmodule


module hub75_driver (
    input  wire         clk,
    // 连向 RAM 的接口
    output wire [10:0]  rd_addr_a,
    output wire [10:0]  rd_addr_b,
    input  wire [2:0]   rd_data_a,
    input  wire [2:0]   rd_data_b,
    // 连向屏幕的接口
    output wire         HUB75_CLK,
    output wire         HUB75_LAT,
    output wire         HUB75_OE,   // 输出使能低电平有效
    output wire [3:0]   HUB75_ADDR, // A/B/C/D 地址线
    output wire [5:0]   HUB75_DATA  // R1 G1 B1 R2 G2 B2
);

// --- 常量参数 ---
localparam H_PIXELS     = 64;   // 屏幕宽度像素点 (每行)
localparam W_PIXELS     = 16;   // 扫描行数 (A/B/C/D 0~15)
localparam SHIFT_MAX = H_PIXELS - 1; // 移位计数器最大值
localparam ROW_MAX   = W_PIXELS - 1;     // 行计数器最大值

// --- 计数器 ---
reg [6:0] shift_count_reg; // 0 到 63 (64 个像素)
reg [3:0] hub75_addr_reg;   // 0 到 15 (16 行)

// --- ram 读取地址计算逻辑 ---
// 由计数器推动
// 修正错位
// 1. 正在显示第 N 行时 (hub75_addr_reg = N)，我们需要移位读入第 N+1 行的数据。
// 2. 在 LATCH/ADDR 状态 (即将切换到 N+1 行显示)，由于 ram 读取有 1 cycle 延迟。
//    我们需要预读取第 N+2 行的第 0 个像素，
//    以便在进入 SHIFT 状态的第一个周期就能输出正确数据。
wire [3:0] row_to_fetch;
assign row_to_fetch = (state_reg == STATE_SHIFT) ? (hub75_addr_reg + 4'd1) : (hub75_addr_reg + 4'd2);
wire [5:0] col_to_fetch;
assign col_to_fetch = (state_reg == STATE_SHIFT) ? (shift_count_reg[5:0] + 6'd1) : 6'd0;

// 拼接方式：{行地址(5bit), 列地址(6bit)} 刚好 11 位
// 上半屏行：0~15 最高位一定是 0，下半屏行：16~31 最高位一定是 1
assign rd_addr_a = {1'b0, row_to_fetch, col_to_fetch};      // 行 0-15
assign rd_addr_b = {1'b1, row_to_fetch, col_to_fetch};      // 行 16-31

// --------------------------------------------------------
// 核心状态机
// --------------------------------------------------------
localparam [1:0] STATE_SHIFT = 2'b00; // 数据移位
localparam [1:0] STATE_LATCH = 2'b01; // 锁存
localparam [1:0] STATE_ADDR  = 2'b10; // 换行
reg [1:0] state_reg;
always @(posedge clk) begin
    begin
        case (state_reg)
            STATE_SHIFT: begin
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
                // 锁存状态，LAT 发出脉冲，随后才切换行选地址
                state_reg <= STATE_ADDR;
            end

            STATE_ADDR: begin
                // 切换行选地址状态
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
            end
        endcase
    end
end

// --- 输出 wire 信号 ---
// HUB75_CLK：只在移位时给时钟
// 不能反相时钟，否则会错位
assign HUB75_CLK  = (state_reg == STATE_SHIFT) ? clk : 1'b0;  

// A/B/C/D 地址线：绑定寄存器
assign HUB75_ADDR = hub75_addr_reg;

// RGB 信号：绑定 ram 返回的内容，b 即上半屏，a 即下半屏
// 上下反了交换 a 和 b 即可
assign HUB75_DATA = {rd_data_b, rd_data_a};

// LAT 信号：只在 LATCH 状态
assign HUB75_LAT = (state_reg == STATE_LATCH); 

// OE 信号：保持低电平（常亮）
// 在锁存周期禁用输出（保持高电平），避免地址/数据切换时出现伪影
// 扩展消隐时间：前后各多 4 个周期，防止鬼影
assign HUB75_OE = ((state_reg == STATE_LATCH) || 
                   (state_reg == STATE_ADDR) ||
                   (state_reg == STATE_SHIFT && (shift_count_reg < 4 || shift_count_reg > SHIFT_MAX - 4))) ? 1'b1 : 1'b0;

endmodule
