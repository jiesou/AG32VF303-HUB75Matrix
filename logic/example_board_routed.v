`timescale 1 ps/ 1 ps

module example_board(
	LED_D2,
	LED_D3,
	HUB75_ADDR,
	HUB75_CLK,
	HUB75_DATA,
	HUB75_LAT,
	HUB75_OE,
	MATRIXSPI_CS,
	MATRIXSPI_MOSI,
	MATRIXSPI_SCK,
	PIN_HSE,
	PIN_HSI,
	PIN_OSC);
inout	LED_D2;
inout	LED_D3;
output	[3:0] HUB75_ADDR;
output	HUB75_CLK;
output	[5:0] HUB75_DATA;
output	HUB75_LAT;
output	HUB75_OE;
input	MATRIXSPI_CS;
input	MATRIXSPI_MOSI;
input	MATRIXSPI_SCK;
input	PIN_HSE;
input	PIN_HSI;
input	PIN_OSC;

//wire	gnd;
//wire	vcc;
//wire	unknown;
wire	AsyncReset_X50_Y1_GND;
wire	AsyncReset_X52_Y1_GND;
wire	AsyncReset_X53_Y1_GND;
wire	AsyncReset_X54_Y1_GND;
wire	AsyncReset_X56_Y1_GND;
wire	\LED_D2~input_o ;
wire	\LED_D3~input_o ;
wire	\MATRIXSPI_CS~input_o ;
wire	\MATRIXSPI_CS~inputclkctrl_outclk ;
wire	\MATRIXSPI_CS~inputclkctrl_outclk__AsyncReset_X54_Y2_SIG ;
wire	\MATRIXSPI_MOSI~input_o ;
wire	\MATRIXSPI_SCK~input_o ;
wire	\MATRIXSPI_SCK~inputclkctrl_outclk ;
wire	\MATRIXSPI_SCK~inputclkctrl_outclk_X54_Y2_SIG_VCC ;
wire	\MATRIXSPI_SCK~inputclkctrl_outclk__MATRIXSPI_CS~input_o_X52_Y1_SIG_INV ;
wire	\MATRIXSPI_SCK~inputclkctrl_outclk__MATRIXSPI_CS~input_o_X53_Y1_SIG_INV ;
wire	\MATRIXSPI_SCK~inputclkctrl_outclk__macro_inst|rx_inst|data_out[15]~0_combout_X53_Y1_SIG_SIG ;
wire	\MATRIXSPI_SCK~inputclkctrl_outclk__macro_inst|rx_inst|data_valid~q_X54_Y2_SIG_SIG ;
wire	\PIN_HSE~input_o ;
wire	\PIN_HSI~input_o ;
wire	\PIN_OSC~input_o ;
wire	\PLL_ENABLE~clkctrl_outclk ;
wire	\PLL_ENABLE~clkctrl_outclk__AsyncReset_X49_Y1_SIG ;
wire	\PLL_ENABLE~combout ;
wire	\PLL_LOCK~combout ;
wire	SyncLoad_X52_Y1_VCC;
wire	SyncLoad_X53_Y1_VCC;
wire	SyncReset_X52_Y1_GND;
wire	SyncReset_X53_Y1_GND;
wire	\auto_generated_inst.hbo_13_044c0075445fcc2e_bp ;
wire	\auto_generated_inst.hbo_13_044c0075445fcc2e_bp_X49_Y1_SIG_VCC ;
wire	\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp ;
wire	\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X50_Y1_SIG_VCC ;
tri1	devclrn;
tri1	devoe;
tri1	devpor;
wire	\gclksw_inst|gclk_switch__alta_gclksw__clkout ;
wire	hbi_272_0_9cb2c0024f9919c5_bp;
wire	hbi_272_1_9cb2c0024f9919c5_bp;
wire	\macro_inst|hub75_inst|Add1~0_combout ;
wire	\macro_inst|hub75_inst|Add2~0_combout ;
wire	\macro_inst|hub75_inst|Add2~1 ;
wire	\macro_inst|hub75_inst|Add2~10_combout ;
wire	\macro_inst|hub75_inst|Add2~11 ;
wire	\macro_inst|hub75_inst|Add2~12_combout ;
wire	\macro_inst|hub75_inst|Add2~2_combout ;
wire	\macro_inst|hub75_inst|Add2~3 ;
wire	\macro_inst|hub75_inst|Add2~4_combout ;
wire	\macro_inst|hub75_inst|Add2~5 ;
wire	\macro_inst|hub75_inst|Add2~6_combout ;
wire	\macro_inst|hub75_inst|Add2~7 ;
wire	\macro_inst|hub75_inst|Add2~8_combout ;
wire	\macro_inst|hub75_inst|Add2~9 ;
wire	\macro_inst|hub75_inst|Equal0~0_combout ;
wire	\macro_inst|hub75_inst|Equal0~1_combout ;
wire	\macro_inst|hub75_inst|HUB75_CLK~0_combout ;
wire	[3:0] \macro_inst|hub75_inst|hub75_addr_reg ;
//wire	\macro_inst|hub75_inst|hub75_addr_reg [0];
wire	\macro_inst|hub75_inst|hub75_addr_reg[0]~3_combout ;
//wire	\macro_inst|hub75_inst|hub75_addr_reg [1];
//wire	\macro_inst|hub75_inst|hub75_addr_reg [2];
wire	\macro_inst|hub75_inst|hub75_addr_reg[2]~0_combout ;
//wire	\macro_inst|hub75_inst|hub75_addr_reg [3];
wire	\macro_inst|hub75_inst|hub75_addr_reg[3]~1_combout ;
wire	\macro_inst|hub75_inst|hub75_addr_reg[3]~2_combout ;
wire	\macro_inst|hub75_inst|rd_addr_a[6]~0_combout ;
wire	\macro_inst|hub75_inst|rd_addr_a[7]~1_combout ;
wire	\macro_inst|hub75_inst|rd_addr_a[8]~2_combout ;
wire	\macro_inst|hub75_inst|rd_addr_a[9]~3_combout ;
wire	\macro_inst|hub75_inst|rd_addr_a[9]~4_combout ;
wire	[6:0] \macro_inst|hub75_inst|shift_count_reg ;
//wire	\macro_inst|hub75_inst|shift_count_reg [0];
//wire	\macro_inst|hub75_inst|shift_count_reg [1];
//wire	\macro_inst|hub75_inst|shift_count_reg [2];
//wire	\macro_inst|hub75_inst|shift_count_reg [3];
//wire	\macro_inst|hub75_inst|shift_count_reg [4];
//wire	\macro_inst|hub75_inst|shift_count_reg [5];
//wire	\macro_inst|hub75_inst|shift_count_reg [6];
wire	\macro_inst|hub75_inst|shift_count_reg~0_combout ;
wire	\macro_inst|hub75_inst|state_reg.STATE_LATCH~q ;
wire	\macro_inst|hub75_inst|state_reg~5_combout ;
wire	[3:0] \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus ;
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus [0];
wire	[17:0] \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB ;
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [3];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus [1];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [4];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus [2];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [5];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus [3];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [6];
wire	[17:0] \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA ;
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [0];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [10];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [11];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [12];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [13];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [14];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [15];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [16];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [17];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [1];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [2];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [3];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [4];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [5];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [6];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [7];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [8];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [9];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [0];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [10];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [11];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [12];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [13];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [14];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [15];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [16];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [17];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [1];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [2];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [7];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [8];
//wire	\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [9];
wire	[3:0] \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus ;
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus [0];
wire	[17:0] \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB ;
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [3];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus [1];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [4];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus [2];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [5];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus [3];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [6];
wire	[17:0] \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA ;
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [0];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [10];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [11];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [12];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [13];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [14];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [15];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [16];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [17];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [1];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [2];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [3];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [4];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [5];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [6];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [7];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [8];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [9];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [0];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [10];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [11];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [12];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [13];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [14];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [15];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [16];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [17];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [1];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [2];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [7];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [8];
//wire	\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [9];
wire	\macro_inst|rx_inst|Equal0~0_combout ;
wire	[3:0] \macro_inst|rx_inst|bit_cnt ;
//wire	\macro_inst|rx_inst|bit_cnt [0];
wire	\macro_inst|rx_inst|bit_cnt[0]~3_combout ;
//wire	\macro_inst|rx_inst|bit_cnt [1];
wire	\macro_inst|rx_inst|bit_cnt[1]~2_combout ;
//wire	\macro_inst|rx_inst|bit_cnt [2];
wire	\macro_inst|rx_inst|bit_cnt[2]~1_combout ;
//wire	\macro_inst|rx_inst|bit_cnt [3];
wire	\macro_inst|rx_inst|bit_cnt[3]~0_combout ;
wire	[15:0] \macro_inst|rx_inst|data_out ;
//wire	\macro_inst|rx_inst|data_out [0];
//wire	\macro_inst|rx_inst|data_out [10];
//wire	\macro_inst|rx_inst|data_out [11];
//wire	\macro_inst|rx_inst|data_out [12];
//wire	\macro_inst|rx_inst|data_out [13];
//wire	\macro_inst|rx_inst|data_out [14];
//wire	\macro_inst|rx_inst|data_out [15];
wire	\macro_inst|rx_inst|data_out[15]~0_combout ;
//wire	\macro_inst|rx_inst|data_out [1];
//wire	\macro_inst|rx_inst|data_out [2];
//wire	\macro_inst|rx_inst|data_out [3];
//wire	\macro_inst|rx_inst|data_out [4];
wire	\macro_inst|rx_inst|data_out[4]~feeder_combout ;
//wire	\macro_inst|rx_inst|data_out [5];
//wire	\macro_inst|rx_inst|data_out [6];
//wire	\macro_inst|rx_inst|data_out [7];
//wire	\macro_inst|rx_inst|data_out [8];
//wire	\macro_inst|rx_inst|data_out [9];
wire	\macro_inst|rx_inst|data_valid~q ;
wire	[15:0] \macro_inst|rx_inst|shift_reg ;
//wire	\macro_inst|rx_inst|shift_reg [0];
//wire	\macro_inst|rx_inst|shift_reg [10];
//wire	\macro_inst|rx_inst|shift_reg [11];
wire	\macro_inst|rx_inst|shift_reg[11]~feeder_combout ;
//wire	\macro_inst|rx_inst|shift_reg [12];
//wire	\macro_inst|rx_inst|shift_reg [13];
wire	\macro_inst|rx_inst|shift_reg[13]~feeder_combout ;
//wire	\macro_inst|rx_inst|shift_reg [14];
//wire	\macro_inst|rx_inst|shift_reg [15];
//wire	\macro_inst|rx_inst|shift_reg [1];
wire	\macro_inst|rx_inst|shift_reg[1]~feeder_combout ;
//wire	\macro_inst|rx_inst|shift_reg [2];
wire	\macro_inst|rx_inst|shift_reg[2]~feeder_combout ;
//wire	\macro_inst|rx_inst|shift_reg [3];
wire	\macro_inst|rx_inst|shift_reg[3]~feeder_combout ;
//wire	\macro_inst|rx_inst|shift_reg [4];
wire	\macro_inst|rx_inst|shift_reg[4]~feeder_combout ;
//wire	\macro_inst|rx_inst|shift_reg [5];
wire	\macro_inst|rx_inst|shift_reg[5]~feeder_combout ;
//wire	\macro_inst|rx_inst|shift_reg [6];
wire	\macro_inst|rx_inst|shift_reg[6]~feeder_combout ;
//wire	\macro_inst|rx_inst|shift_reg [7];
wire	\macro_inst|rx_inst|shift_reg[7]~feeder_combout ;
//wire	\macro_inst|rx_inst|shift_reg [8];
wire	\macro_inst|rx_inst|shift_reg[8]~feeder_combout ;
//wire	\macro_inst|rx_inst|shift_reg [9];
wire	\macro_inst|rx_inst|shift_reg[9]~feeder_combout ;
wire	[3:0] \macro_inst|sys_clk_div_cnt ;
//wire	\macro_inst|sys_clk_div_cnt [0];
wire	\macro_inst|sys_clk_div_cnt[0]~3_combout ;
//wire	\macro_inst|sys_clk_div_cnt [1];
wire	\macro_inst|sys_clk_div_cnt[1]~2_combout ;
//wire	\macro_inst|sys_clk_div_cnt [2];
wire	\macro_inst|sys_clk_div_cnt[2]~1_combout ;
//wire	\macro_inst|sys_clk_div_cnt [3];
wire	\macro_inst|sys_clk_div_cnt[3]~0_combout ;
wire	\macro_inst|sys_clk_div_cnt[3]~clkctrl_outclk ;
wire	\macro_inst|sys_clk_div_cnt[3]~clkctrl_outclk_X54_Y1_SIG_VCC ;
wire	\macro_inst|sys_clk_div_cnt[3]~clkctrl_outclk_X56_Y1_SIG_VCC ;
wire	\macro_inst|sys_clk_div_cnt[3]~clkctrl_outclk__macro_inst|hub75_inst|state_reg.STATE_LATCH~q_X54_Y1_SIG_INV ;
wire	\macro_inst|sys_clk_div_cnt[3]~clkctrl_outclk__macro_inst|hub75_inst|state_reg.STATE_LATCH~q_X56_Y1_SIG_SIG ;
wire	[10:0] \macro_inst|write_addr ;
//wire	\macro_inst|write_addr [0];
wire	\macro_inst|write_addr[0]~10_combout ;
//wire	\macro_inst|write_addr [10];
wire	\macro_inst|write_addr[10]~29_combout ;
//wire	\macro_inst|write_addr [1];
wire	\macro_inst|write_addr[1]~11_combout ;
wire	\macro_inst|write_addr[1]~12 ;
//wire	\macro_inst|write_addr [2];
wire	\macro_inst|write_addr[2]~13_combout ;
wire	\macro_inst|write_addr[2]~14 ;
//wire	\macro_inst|write_addr [3];
wire	\macro_inst|write_addr[3]~15_combout ;
wire	\macro_inst|write_addr[3]~16 ;
//wire	\macro_inst|write_addr [4];
wire	\macro_inst|write_addr[4]~17_combout ;
wire	\macro_inst|write_addr[4]~18 ;
//wire	\macro_inst|write_addr [5];
wire	\macro_inst|write_addr[5]~19_combout ;
wire	\macro_inst|write_addr[5]~20 ;
//wire	\macro_inst|write_addr [6];
wire	\macro_inst|write_addr[6]~21_combout ;
wire	\macro_inst|write_addr[6]~22 ;
//wire	\macro_inst|write_addr [7];
wire	\macro_inst|write_addr[7]~23_combout ;
wire	\macro_inst|write_addr[7]~24 ;
//wire	\macro_inst|write_addr [8];
wire	\macro_inst|write_addr[8]~25_combout ;
wire	\macro_inst|write_addr[8]~26 ;
//wire	\macro_inst|write_addr [9];
wire	\macro_inst|write_addr[9]~27_combout ;
wire	\macro_inst|write_addr[9]~28 ;
wire	[4:0] \pll_inst|auto_generated|clk ;
//wire	\pll_inst|auto_generated|clk [0];
//wire	\pll_inst|auto_generated|clk [1];
//wire	\pll_inst|auto_generated|clk [2];
//wire	\pll_inst|auto_generated|clk [3];
//wire	\pll_inst|auto_generated|clk [4];
wire	[4:0] \pll_inst|auto_generated|pll1_CLK_bus ;
//wire	\pll_inst|auto_generated|pll1_CLK_bus [0];
//wire	\pll_inst|auto_generated|pll1_CLK_bus [1];
//wire	\pll_inst|auto_generated|pll1_CLK_bus [2];
//wire	\pll_inst|auto_generated|pll1_CLK_bus [3];
//wire	\pll_inst|auto_generated|pll1_CLK_bus [4];
wire	\pll_inst|auto_generated|pll1~FBOUT ;
wire	\pll_inst|auto_generated|pll_lock_sync~feeder_combout ;
wire	\pll_inst|auto_generated|pll_lock_sync~q ;
wire	\rv32.dmactive ;
wire	\rv32.ext_dma_DMACCLR[0] ;
wire	\rv32.ext_dma_DMACCLR[1] ;
wire	\rv32.ext_dma_DMACCLR[2] ;
wire	\rv32.ext_dma_DMACCLR[3] ;
wire	\rv32.ext_dma_DMACTC[0] ;
wire	\rv32.ext_dma_DMACTC[1] ;
wire	\rv32.ext_dma_DMACTC[2] ;
wire	\rv32.ext_dma_DMACTC[3] ;
wire	\rv32.gpio0_io_out_data[0] ;
wire	\rv32.gpio0_io_out_data[1] ;
wire	\rv32.gpio0_io_out_data[2] ;
wire	\rv32.gpio0_io_out_data[3] ;
wire	\rv32.gpio0_io_out_data[4] ;
wire	\rv32.gpio0_io_out_data[5] ;
wire	\rv32.gpio0_io_out_data[6] ;
wire	\rv32.gpio0_io_out_data[7] ;
wire	\rv32.gpio0_io_out_en[0] ;
wire	\rv32.gpio0_io_out_en[1] ;
wire	\rv32.gpio0_io_out_en[2] ;
wire	\rv32.gpio0_io_out_en[3] ;
wire	\rv32.gpio0_io_out_en[4] ;
wire	\rv32.gpio0_io_out_en[5] ;
wire	\rv32.gpio0_io_out_en[6] ;
wire	\rv32.gpio0_io_out_en[7] ;
wire	\rv32.gpio1_io_out_data[0] ;
wire	\rv32.gpio1_io_out_data[1] ;
wire	\rv32.gpio1_io_out_data[2] ;
wire	\rv32.gpio1_io_out_data[3] ;
wire	\rv32.gpio1_io_out_data[4] ;
wire	\rv32.gpio1_io_out_data[5] ;
wire	\rv32.gpio1_io_out_data[6] ;
wire	\rv32.gpio1_io_out_data[7] ;
wire	\rv32.gpio1_io_out_en[0] ;
wire	\rv32.gpio1_io_out_en[1] ;
wire	\rv32.gpio1_io_out_en[2] ;
wire	\rv32.gpio1_io_out_en[3] ;
wire	\rv32.gpio1_io_out_en[4] ;
wire	\rv32.gpio1_io_out_en[5] ;
wire	\rv32.gpio1_io_out_en[6] ;
wire	\rv32.gpio1_io_out_en[7] ;
wire	\rv32.gpio2_io_out_data[0] ;
wire	\rv32.gpio2_io_out_data[1] ;
wire	\rv32.gpio2_io_out_data[2] ;
wire	\rv32.gpio2_io_out_data[3] ;
wire	\rv32.gpio2_io_out_data[4] ;
wire	\rv32.gpio2_io_out_data[5] ;
wire	\rv32.gpio2_io_out_data[6] ;
wire	\rv32.gpio2_io_out_data[7] ;
wire	\rv32.gpio2_io_out_en[0] ;
wire	\rv32.gpio2_io_out_en[1] ;
wire	\rv32.gpio2_io_out_en[2] ;
wire	\rv32.gpio2_io_out_en[3] ;
wire	\rv32.gpio2_io_out_en[4] ;
wire	\rv32.gpio2_io_out_en[5] ;
wire	\rv32.gpio2_io_out_en[6] ;
wire	\rv32.gpio2_io_out_en[7] ;
wire	\rv32.gpio3_io_out_data[0] ;
wire	\rv32.gpio3_io_out_data[1] ;
wire	\rv32.gpio3_io_out_data[2] ;
wire	\rv32.gpio3_io_out_data[3] ;
wire	\rv32.gpio3_io_out_data[4] ;
wire	\rv32.gpio3_io_out_data[5] ;
wire	\rv32.gpio3_io_out_data[6] ;
wire	\rv32.gpio3_io_out_data[7] ;
wire	\rv32.gpio3_io_out_en[0] ;
wire	\rv32.gpio3_io_out_en[1] ;
wire	\rv32.gpio3_io_out_en[2] ;
wire	\rv32.gpio3_io_out_en[3] ;
wire	\rv32.gpio3_io_out_en[4] ;
wire	\rv32.gpio3_io_out_en[5] ;
wire	\rv32.gpio3_io_out_en[6] ;
wire	\rv32.gpio3_io_out_en[7] ;
wire	\rv32.gpio4_io_out_data[0] ;
wire	\rv32.gpio4_io_out_data[1] ;
wire	\rv32.gpio4_io_out_data[2] ;
wire	\rv32.gpio4_io_out_data[3] ;
wire	\rv32.gpio4_io_out_data[4] ;
wire	\rv32.gpio4_io_out_data[5] ;
wire	\rv32.gpio4_io_out_data[6] ;
wire	\rv32.gpio4_io_out_data[7] ;
wire	\rv32.gpio4_io_out_en[0] ;
wire	\rv32.gpio4_io_out_en[1] ;
wire	\rv32.gpio4_io_out_en[2] ;
wire	\rv32.gpio4_io_out_en[3] ;
wire	\rv32.gpio4_io_out_en[4] ;
wire	\rv32.gpio4_io_out_en[5] ;
wire	\rv32.gpio4_io_out_en[6] ;
wire	\rv32.gpio4_io_out_en[7] ;
wire	\rv32.gpio5_io_out_data[0] ;
wire	\rv32.gpio5_io_out_data[1] ;
wire	\rv32.gpio5_io_out_data[2] ;
wire	\rv32.gpio5_io_out_data[3] ;
wire	\rv32.gpio5_io_out_data[4] ;
wire	\rv32.gpio5_io_out_data[5] ;
wire	\rv32.gpio5_io_out_data[6] ;
wire	\rv32.gpio5_io_out_data[7] ;
wire	\rv32.gpio5_io_out_en[0] ;
wire	\rv32.gpio5_io_out_en[1] ;
wire	\rv32.gpio5_io_out_en[2] ;
wire	\rv32.gpio5_io_out_en[3] ;
wire	\rv32.gpio5_io_out_en[4] ;
wire	\rv32.gpio5_io_out_en[5] ;
wire	\rv32.gpio5_io_out_en[6] ;
wire	\rv32.gpio5_io_out_en[7] ;
wire	\rv32.gpio6_io_out_data[0] ;
wire	\rv32.gpio6_io_out_data[1] ;
wire	\rv32.gpio6_io_out_data[2] ;
wire	\rv32.gpio6_io_out_data[3] ;
wire	\rv32.gpio6_io_out_data[4] ;
wire	\rv32.gpio6_io_out_data[5] ;
wire	\rv32.gpio6_io_out_data[6] ;
wire	\rv32.gpio6_io_out_data[7] ;
wire	\rv32.gpio6_io_out_en[0] ;
wire	\rv32.gpio6_io_out_en[1] ;
wire	\rv32.gpio6_io_out_en[2] ;
wire	\rv32.gpio6_io_out_en[3] ;
wire	\rv32.gpio6_io_out_en[4] ;
wire	\rv32.gpio6_io_out_en[5] ;
wire	\rv32.gpio6_io_out_en[6] ;
wire	\rv32.gpio6_io_out_en[7] ;
wire	\rv32.gpio7_io_out_data[0] ;
wire	\rv32.gpio7_io_out_data[1] ;
wire	\rv32.gpio7_io_out_data[2] ;
wire	\rv32.gpio7_io_out_data[3] ;
wire	\rv32.gpio7_io_out_data[4] ;
wire	\rv32.gpio7_io_out_data[5] ;
wire	\rv32.gpio7_io_out_data[6] ;
wire	\rv32.gpio7_io_out_data[7] ;
wire	\rv32.gpio7_io_out_en[0] ;
wire	\rv32.gpio7_io_out_en[1] ;
wire	\rv32.gpio7_io_out_en[2] ;
wire	\rv32.gpio7_io_out_en[3] ;
wire	\rv32.gpio7_io_out_en[4] ;
wire	\rv32.gpio7_io_out_en[5] ;
wire	\rv32.gpio7_io_out_en[6] ;
wire	\rv32.gpio7_io_out_en[7] ;
wire	\rv32.gpio8_io_out_data[0] ;
wire	\rv32.gpio8_io_out_data[1] ;
wire	\rv32.gpio8_io_out_data[2] ;
wire	\rv32.gpio8_io_out_data[3] ;
wire	\rv32.gpio8_io_out_data[4] ;
wire	\rv32.gpio8_io_out_data[5] ;
wire	\rv32.gpio8_io_out_data[6] ;
wire	\rv32.gpio8_io_out_data[7] ;
wire	\rv32.gpio8_io_out_en[0] ;
wire	\rv32.gpio8_io_out_en[1] ;
wire	\rv32.gpio8_io_out_en[2] ;
wire	\rv32.gpio8_io_out_en[3] ;
wire	\rv32.gpio8_io_out_en[4] ;
wire	\rv32.gpio8_io_out_en[5] ;
wire	\rv32.gpio8_io_out_en[6] ;
wire	\rv32.gpio8_io_out_en[7] ;
wire	\rv32.gpio9_io_out_data[0] ;
wire	\rv32.gpio9_io_out_data[1] ;
wire	\rv32.gpio9_io_out_data[2] ;
wire	\rv32.gpio9_io_out_data[3] ;
wire	\rv32.gpio9_io_out_data[4] ;
wire	\rv32.gpio9_io_out_data[5] ;
wire	\rv32.gpio9_io_out_data[6] ;
wire	\rv32.gpio9_io_out_data[7] ;
wire	\rv32.gpio9_io_out_en[0] ;
wire	\rv32.gpio9_io_out_en[1] ;
wire	\rv32.gpio9_io_out_en[2] ;
wire	\rv32.gpio9_io_out_en[3] ;
wire	\rv32.gpio9_io_out_en[4] ;
wire	\rv32.gpio9_io_out_en[5] ;
wire	\rv32.gpio9_io_out_en[6] ;
wire	\rv32.gpio9_io_out_en[7] ;
wire	\rv32.mem_ahb_haddr[0] ;
wire	\rv32.mem_ahb_haddr[10] ;
wire	\rv32.mem_ahb_haddr[11] ;
wire	\rv32.mem_ahb_haddr[12] ;
wire	\rv32.mem_ahb_haddr[13] ;
wire	\rv32.mem_ahb_haddr[14] ;
wire	\rv32.mem_ahb_haddr[15] ;
wire	\rv32.mem_ahb_haddr[16] ;
wire	\rv32.mem_ahb_haddr[17] ;
wire	\rv32.mem_ahb_haddr[18] ;
wire	\rv32.mem_ahb_haddr[19] ;
wire	\rv32.mem_ahb_haddr[1] ;
wire	\rv32.mem_ahb_haddr[20] ;
wire	\rv32.mem_ahb_haddr[21] ;
wire	\rv32.mem_ahb_haddr[22] ;
wire	\rv32.mem_ahb_haddr[23] ;
wire	\rv32.mem_ahb_haddr[24] ;
wire	\rv32.mem_ahb_haddr[25] ;
wire	\rv32.mem_ahb_haddr[26] ;
wire	\rv32.mem_ahb_haddr[27] ;
wire	\rv32.mem_ahb_haddr[28] ;
wire	\rv32.mem_ahb_haddr[29] ;
wire	\rv32.mem_ahb_haddr[2] ;
wire	\rv32.mem_ahb_haddr[30] ;
wire	\rv32.mem_ahb_haddr[31] ;
wire	\rv32.mem_ahb_haddr[3] ;
wire	\rv32.mem_ahb_haddr[4] ;
wire	\rv32.mem_ahb_haddr[5] ;
wire	\rv32.mem_ahb_haddr[6] ;
wire	\rv32.mem_ahb_haddr[7] ;
wire	\rv32.mem_ahb_haddr[8] ;
wire	\rv32.mem_ahb_haddr[9] ;
wire	\rv32.mem_ahb_hburst[0] ;
wire	\rv32.mem_ahb_hburst[1] ;
wire	\rv32.mem_ahb_hburst[2] ;
wire	\rv32.mem_ahb_hready ;
wire	\rv32.mem_ahb_hsize[0] ;
wire	\rv32.mem_ahb_hsize[1] ;
wire	\rv32.mem_ahb_hsize[2] ;
wire	\rv32.mem_ahb_htrans[0] ;
wire	\rv32.mem_ahb_htrans[1] ;
wire	\rv32.mem_ahb_hwdata[0] ;
wire	\rv32.mem_ahb_hwdata[10] ;
wire	\rv32.mem_ahb_hwdata[11] ;
wire	\rv32.mem_ahb_hwdata[12] ;
wire	\rv32.mem_ahb_hwdata[13] ;
wire	\rv32.mem_ahb_hwdata[14] ;
wire	\rv32.mem_ahb_hwdata[15] ;
wire	\rv32.mem_ahb_hwdata[16] ;
wire	\rv32.mem_ahb_hwdata[17] ;
wire	\rv32.mem_ahb_hwdata[18] ;
wire	\rv32.mem_ahb_hwdata[19] ;
wire	\rv32.mem_ahb_hwdata[1] ;
wire	\rv32.mem_ahb_hwdata[20] ;
wire	\rv32.mem_ahb_hwdata[21] ;
wire	\rv32.mem_ahb_hwdata[22] ;
wire	\rv32.mem_ahb_hwdata[23] ;
wire	\rv32.mem_ahb_hwdata[24] ;
wire	\rv32.mem_ahb_hwdata[25] ;
wire	\rv32.mem_ahb_hwdata[26] ;
wire	\rv32.mem_ahb_hwdata[27] ;
wire	\rv32.mem_ahb_hwdata[28] ;
wire	\rv32.mem_ahb_hwdata[29] ;
wire	\rv32.mem_ahb_hwdata[2] ;
wire	\rv32.mem_ahb_hwdata[30] ;
wire	\rv32.mem_ahb_hwdata[31] ;
wire	\rv32.mem_ahb_hwdata[3] ;
wire	\rv32.mem_ahb_hwdata[4] ;
wire	\rv32.mem_ahb_hwdata[5] ;
wire	\rv32.mem_ahb_hwdata[6] ;
wire	\rv32.mem_ahb_hwdata[7] ;
wire	\rv32.mem_ahb_hwdata[8] ;
wire	\rv32.mem_ahb_hwdata[9] ;
wire	\rv32.mem_ahb_hwrite ;
wire	\rv32.resetn_out ;
wire	\rv32.slave_ahb_hrdata[0] ;
wire	\rv32.slave_ahb_hrdata[10] ;
wire	\rv32.slave_ahb_hrdata[11] ;
wire	\rv32.slave_ahb_hrdata[12] ;
wire	\rv32.slave_ahb_hrdata[13] ;
wire	\rv32.slave_ahb_hrdata[14] ;
wire	\rv32.slave_ahb_hrdata[15] ;
wire	\rv32.slave_ahb_hrdata[16] ;
wire	\rv32.slave_ahb_hrdata[17] ;
wire	\rv32.slave_ahb_hrdata[18] ;
wire	\rv32.slave_ahb_hrdata[19] ;
wire	\rv32.slave_ahb_hrdata[1] ;
wire	\rv32.slave_ahb_hrdata[20] ;
wire	\rv32.slave_ahb_hrdata[21] ;
wire	\rv32.slave_ahb_hrdata[22] ;
wire	\rv32.slave_ahb_hrdata[23] ;
wire	\rv32.slave_ahb_hrdata[24] ;
wire	\rv32.slave_ahb_hrdata[25] ;
wire	\rv32.slave_ahb_hrdata[26] ;
wire	\rv32.slave_ahb_hrdata[27] ;
wire	\rv32.slave_ahb_hrdata[28] ;
wire	\rv32.slave_ahb_hrdata[29] ;
wire	\rv32.slave_ahb_hrdata[2] ;
wire	\rv32.slave_ahb_hrdata[30] ;
wire	\rv32.slave_ahb_hrdata[31] ;
wire	\rv32.slave_ahb_hrdata[3] ;
wire	\rv32.slave_ahb_hrdata[4] ;
wire	\rv32.slave_ahb_hrdata[5] ;
wire	\rv32.slave_ahb_hrdata[6] ;
wire	\rv32.slave_ahb_hrdata[7] ;
wire	\rv32.slave_ahb_hrdata[8] ;
wire	\rv32.slave_ahb_hrdata[9] ;
wire	\rv32.slave_ahb_hreadyout ;
wire	\rv32.slave_ahb_hresp ;
wire	\rv32.swj_JTAGIR[0] ;
wire	\rv32.swj_JTAGIR[1] ;
wire	\rv32.swj_JTAGIR[2] ;
wire	\rv32.swj_JTAGIR[3] ;
wire	\rv32.swj_JTAGNSW ;
wire	\rv32.swj_JTAGSTATE[0] ;
wire	\rv32.swj_JTAGSTATE[1] ;
wire	\rv32.swj_JTAGSTATE[2] ;
wire	\rv32.swj_JTAGSTATE[3] ;
wire	\rv32.sys_ctrl_clkSource[0] ;
wire	\rv32.sys_ctrl_clkSource[1] ;
wire	\rv32.sys_ctrl_hseBypass ;
wire	\rv32.sys_ctrl_hseEnable ;
wire	\rv32.sys_ctrl_pllEnable ;
wire	\rv32.sys_ctrl_sleep ;
wire	\rv32.sys_ctrl_standby ;
wire	\rv32.sys_ctrl_stop ;
wire	\~GND~combout ;
wire	\~VCC~combout ;

wire vcc;
wire gnd;
assign vcc = 1'b1;
assign gnd = 1'b0;
wire unknown;
assign unknown = 1'bx;

alta_rio \HUB75_ADDR[0]~output (
	.padio(HUB75_ADDR[0]),
	.datain(\macro_inst|hub75_inst|hub75_addr_reg [0]),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \HUB75_ADDR[0]~output .coord_x = 7;
defparam \HUB75_ADDR[0]~output .coord_y = 0;
defparam \HUB75_ADDR[0]~output .coord_z = 3;
defparam \HUB75_ADDR[0]~output .IN_ASYNC_MODE = 1'b0;
defparam \HUB75_ADDR[0]~output .IN_SYNC_MODE = 1'b0;
defparam \HUB75_ADDR[0]~output .IN_POWERUP = 1'b0;
defparam \HUB75_ADDR[0]~output .OUT_REG_MODE = 1'b0;
defparam \HUB75_ADDR[0]~output .OUT_ASYNC_MODE = 1'b0;
defparam \HUB75_ADDR[0]~output .OUT_SYNC_MODE = 1'b0;
defparam \HUB75_ADDR[0]~output .OUT_POWERUP = 1'b0;
defparam \HUB75_ADDR[0]~output .OE_REG_MODE = 1'b0;
defparam \HUB75_ADDR[0]~output .OE_ASYNC_MODE = 1'b0;
defparam \HUB75_ADDR[0]~output .OE_SYNC_MODE = 1'b0;
defparam \HUB75_ADDR[0]~output .OE_POWERUP = 1'b0;
defparam \HUB75_ADDR[0]~output .CFG_TRI_INPUT = 1'b0;
defparam \HUB75_ADDR[0]~output .CFG_INPUT_EN = 1'b0;
defparam \HUB75_ADDR[0]~output .CFG_PULL_UP = 1'b0;
defparam \HUB75_ADDR[0]~output .CFG_SLR = 1'b0;
defparam \HUB75_ADDR[0]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \HUB75_ADDR[0]~output .CFG_PDRCTRL = 4'b0100;
defparam \HUB75_ADDR[0]~output .CFG_KEEP = 2'b00;
defparam \HUB75_ADDR[0]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \HUB75_ADDR[0]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \HUB75_ADDR[0]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \HUB75_ADDR[0]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \HUB75_ADDR[0]~output .DPCLK_DELAY = 4'b0000;
defparam \HUB75_ADDR[0]~output .OUT_DELAY = 1'b0;
defparam \HUB75_ADDR[0]~output .IN_DATA_DELAY = 3'b000;
defparam \HUB75_ADDR[0]~output .IN_REG_DELAY = 3'b000;

alta_rio \HUB75_ADDR[1]~output (
	.padio(HUB75_ADDR[1]),
	.datain(\macro_inst|hub75_inst|hub75_addr_reg [1]),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \HUB75_ADDR[1]~output .coord_x = 7;
defparam \HUB75_ADDR[1]~output .coord_y = 0;
defparam \HUB75_ADDR[1]~output .coord_z = 1;
defparam \HUB75_ADDR[1]~output .IN_ASYNC_MODE = 1'b0;
defparam \HUB75_ADDR[1]~output .IN_SYNC_MODE = 1'b0;
defparam \HUB75_ADDR[1]~output .IN_POWERUP = 1'b0;
defparam \HUB75_ADDR[1]~output .OUT_REG_MODE = 1'b0;
defparam \HUB75_ADDR[1]~output .OUT_ASYNC_MODE = 1'b0;
defparam \HUB75_ADDR[1]~output .OUT_SYNC_MODE = 1'b0;
defparam \HUB75_ADDR[1]~output .OUT_POWERUP = 1'b0;
defparam \HUB75_ADDR[1]~output .OE_REG_MODE = 1'b0;
defparam \HUB75_ADDR[1]~output .OE_ASYNC_MODE = 1'b0;
defparam \HUB75_ADDR[1]~output .OE_SYNC_MODE = 1'b0;
defparam \HUB75_ADDR[1]~output .OE_POWERUP = 1'b0;
defparam \HUB75_ADDR[1]~output .CFG_TRI_INPUT = 1'b0;
defparam \HUB75_ADDR[1]~output .CFG_INPUT_EN = 1'b0;
defparam \HUB75_ADDR[1]~output .CFG_PULL_UP = 1'b0;
defparam \HUB75_ADDR[1]~output .CFG_SLR = 1'b0;
defparam \HUB75_ADDR[1]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \HUB75_ADDR[1]~output .CFG_PDRCTRL = 4'b0100;
defparam \HUB75_ADDR[1]~output .CFG_KEEP = 2'b00;
defparam \HUB75_ADDR[1]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \HUB75_ADDR[1]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \HUB75_ADDR[1]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \HUB75_ADDR[1]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \HUB75_ADDR[1]~output .DPCLK_DELAY = 4'b0000;
defparam \HUB75_ADDR[1]~output .OUT_DELAY = 1'b0;
defparam \HUB75_ADDR[1]~output .IN_DATA_DELAY = 3'b000;
defparam \HUB75_ADDR[1]~output .IN_REG_DELAY = 3'b000;

alta_rio \HUB75_ADDR[2]~output (
	.padio(HUB75_ADDR[2]),
	.datain(\macro_inst|hub75_inst|hub75_addr_reg [2]),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \HUB75_ADDR[2]~output .coord_x = 7;
defparam \HUB75_ADDR[2]~output .coord_y = 0;
defparam \HUB75_ADDR[2]~output .coord_z = 0;
defparam \HUB75_ADDR[2]~output .IN_ASYNC_MODE = 1'b0;
defparam \HUB75_ADDR[2]~output .IN_SYNC_MODE = 1'b0;
defparam \HUB75_ADDR[2]~output .IN_POWERUP = 1'b0;
defparam \HUB75_ADDR[2]~output .OUT_REG_MODE = 1'b0;
defparam \HUB75_ADDR[2]~output .OUT_ASYNC_MODE = 1'b0;
defparam \HUB75_ADDR[2]~output .OUT_SYNC_MODE = 1'b0;
defparam \HUB75_ADDR[2]~output .OUT_POWERUP = 1'b0;
defparam \HUB75_ADDR[2]~output .OE_REG_MODE = 1'b0;
defparam \HUB75_ADDR[2]~output .OE_ASYNC_MODE = 1'b0;
defparam \HUB75_ADDR[2]~output .OE_SYNC_MODE = 1'b0;
defparam \HUB75_ADDR[2]~output .OE_POWERUP = 1'b0;
defparam \HUB75_ADDR[2]~output .CFG_TRI_INPUT = 1'b0;
defparam \HUB75_ADDR[2]~output .CFG_INPUT_EN = 1'b0;
defparam \HUB75_ADDR[2]~output .CFG_PULL_UP = 1'b0;
defparam \HUB75_ADDR[2]~output .CFG_SLR = 1'b0;
defparam \HUB75_ADDR[2]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \HUB75_ADDR[2]~output .CFG_PDRCTRL = 4'b0100;
defparam \HUB75_ADDR[2]~output .CFG_KEEP = 2'b00;
defparam \HUB75_ADDR[2]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \HUB75_ADDR[2]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \HUB75_ADDR[2]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \HUB75_ADDR[2]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \HUB75_ADDR[2]~output .DPCLK_DELAY = 4'b0000;
defparam \HUB75_ADDR[2]~output .OUT_DELAY = 1'b0;
defparam \HUB75_ADDR[2]~output .IN_DATA_DELAY = 3'b000;
defparam \HUB75_ADDR[2]~output .IN_REG_DELAY = 3'b000;

alta_rio \HUB75_ADDR[3]~output (
	.padio(HUB75_ADDR[3]),
	.datain(\macro_inst|hub75_inst|hub75_addr_reg [3]),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \HUB75_ADDR[3]~output .coord_x = 6;
defparam \HUB75_ADDR[3]~output .coord_y = 0;
defparam \HUB75_ADDR[3]~output .coord_z = 3;
defparam \HUB75_ADDR[3]~output .IN_ASYNC_MODE = 1'b0;
defparam \HUB75_ADDR[3]~output .IN_SYNC_MODE = 1'b0;
defparam \HUB75_ADDR[3]~output .IN_POWERUP = 1'b0;
defparam \HUB75_ADDR[3]~output .OUT_REG_MODE = 1'b0;
defparam \HUB75_ADDR[3]~output .OUT_ASYNC_MODE = 1'b0;
defparam \HUB75_ADDR[3]~output .OUT_SYNC_MODE = 1'b0;
defparam \HUB75_ADDR[3]~output .OUT_POWERUP = 1'b0;
defparam \HUB75_ADDR[3]~output .OE_REG_MODE = 1'b0;
defparam \HUB75_ADDR[3]~output .OE_ASYNC_MODE = 1'b0;
defparam \HUB75_ADDR[3]~output .OE_SYNC_MODE = 1'b0;
defparam \HUB75_ADDR[3]~output .OE_POWERUP = 1'b0;
defparam \HUB75_ADDR[3]~output .CFG_TRI_INPUT = 1'b0;
defparam \HUB75_ADDR[3]~output .CFG_INPUT_EN = 1'b0;
defparam \HUB75_ADDR[3]~output .CFG_PULL_UP = 1'b0;
defparam \HUB75_ADDR[3]~output .CFG_SLR = 1'b0;
defparam \HUB75_ADDR[3]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \HUB75_ADDR[3]~output .CFG_PDRCTRL = 4'b0100;
defparam \HUB75_ADDR[3]~output .CFG_KEEP = 2'b00;
defparam \HUB75_ADDR[3]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \HUB75_ADDR[3]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \HUB75_ADDR[3]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \HUB75_ADDR[3]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \HUB75_ADDR[3]~output .DPCLK_DELAY = 4'b0000;
defparam \HUB75_ADDR[3]~output .OUT_DELAY = 1'b0;
defparam \HUB75_ADDR[3]~output .IN_DATA_DELAY = 3'b000;
defparam \HUB75_ADDR[3]~output .IN_REG_DELAY = 3'b000;

alta_rio \HUB75_CLK~output (
	.padio(HUB75_CLK),
	.datain(\macro_inst|hub75_inst|HUB75_CLK~0_combout ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \HUB75_CLK~output .coord_x = 6;
defparam \HUB75_CLK~output .coord_y = 0;
defparam \HUB75_CLK~output .coord_z = 0;
defparam \HUB75_CLK~output .IN_ASYNC_MODE = 1'b0;
defparam \HUB75_CLK~output .IN_SYNC_MODE = 1'b0;
defparam \HUB75_CLK~output .IN_POWERUP = 1'b0;
defparam \HUB75_CLK~output .OUT_REG_MODE = 1'b0;
defparam \HUB75_CLK~output .OUT_ASYNC_MODE = 1'b0;
defparam \HUB75_CLK~output .OUT_SYNC_MODE = 1'b0;
defparam \HUB75_CLK~output .OUT_POWERUP = 1'b0;
defparam \HUB75_CLK~output .OE_REG_MODE = 1'b0;
defparam \HUB75_CLK~output .OE_ASYNC_MODE = 1'b0;
defparam \HUB75_CLK~output .OE_SYNC_MODE = 1'b0;
defparam \HUB75_CLK~output .OE_POWERUP = 1'b0;
defparam \HUB75_CLK~output .CFG_TRI_INPUT = 1'b0;
defparam \HUB75_CLK~output .CFG_INPUT_EN = 1'b0;
defparam \HUB75_CLK~output .CFG_PULL_UP = 1'b0;
defparam \HUB75_CLK~output .CFG_SLR = 1'b0;
defparam \HUB75_CLK~output .CFG_OPEN_DRAIN = 1'b0;
defparam \HUB75_CLK~output .CFG_PDRCTRL = 4'b0100;
defparam \HUB75_CLK~output .CFG_KEEP = 2'b00;
defparam \HUB75_CLK~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \HUB75_CLK~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \HUB75_CLK~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \HUB75_CLK~output .CFG_LVDS_IN_EN = 1'b0;
defparam \HUB75_CLK~output .DPCLK_DELAY = 4'b0000;
defparam \HUB75_CLK~output .OUT_DELAY = 1'b0;
defparam \HUB75_CLK~output .IN_DATA_DELAY = 3'b000;
defparam \HUB75_CLK~output .IN_REG_DELAY = 3'b000;

alta_rio \HUB75_DATA[0]~output (
	.padio(HUB75_DATA[0]),
	.datain(\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [3]),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \HUB75_DATA[0]~output .coord_x = 18;
defparam \HUB75_DATA[0]~output .coord_y = 0;
defparam \HUB75_DATA[0]~output .coord_z = 0;
defparam \HUB75_DATA[0]~output .IN_ASYNC_MODE = 1'b0;
defparam \HUB75_DATA[0]~output .IN_SYNC_MODE = 1'b0;
defparam \HUB75_DATA[0]~output .IN_POWERUP = 1'b0;
defparam \HUB75_DATA[0]~output .OUT_REG_MODE = 1'b0;
defparam \HUB75_DATA[0]~output .OUT_ASYNC_MODE = 1'b0;
defparam \HUB75_DATA[0]~output .OUT_SYNC_MODE = 1'b0;
defparam \HUB75_DATA[0]~output .OUT_POWERUP = 1'b0;
defparam \HUB75_DATA[0]~output .OE_REG_MODE = 1'b0;
defparam \HUB75_DATA[0]~output .OE_ASYNC_MODE = 1'b0;
defparam \HUB75_DATA[0]~output .OE_SYNC_MODE = 1'b0;
defparam \HUB75_DATA[0]~output .OE_POWERUP = 1'b0;
defparam \HUB75_DATA[0]~output .CFG_TRI_INPUT = 1'b0;
defparam \HUB75_DATA[0]~output .CFG_INPUT_EN = 1'b0;
defparam \HUB75_DATA[0]~output .CFG_PULL_UP = 1'b0;
defparam \HUB75_DATA[0]~output .CFG_SLR = 1'b0;
defparam \HUB75_DATA[0]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \HUB75_DATA[0]~output .CFG_PDRCTRL = 4'b0100;
defparam \HUB75_DATA[0]~output .CFG_KEEP = 2'b00;
defparam \HUB75_DATA[0]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \HUB75_DATA[0]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \HUB75_DATA[0]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \HUB75_DATA[0]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \HUB75_DATA[0]~output .DPCLK_DELAY = 4'b0000;
defparam \HUB75_DATA[0]~output .OUT_DELAY = 1'b0;
defparam \HUB75_DATA[0]~output .IN_DATA_DELAY = 3'b000;
defparam \HUB75_DATA[0]~output .IN_REG_DELAY = 3'b000;

alta_rio \HUB75_DATA[1]~output (
	.padio(HUB75_DATA[1]),
	.datain(\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [4]),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \HUB75_DATA[1]~output .coord_x = 18;
defparam \HUB75_DATA[1]~output .coord_y = 0;
defparam \HUB75_DATA[1]~output .coord_z = 1;
defparam \HUB75_DATA[1]~output .IN_ASYNC_MODE = 1'b0;
defparam \HUB75_DATA[1]~output .IN_SYNC_MODE = 1'b0;
defparam \HUB75_DATA[1]~output .IN_POWERUP = 1'b0;
defparam \HUB75_DATA[1]~output .OUT_REG_MODE = 1'b0;
defparam \HUB75_DATA[1]~output .OUT_ASYNC_MODE = 1'b0;
defparam \HUB75_DATA[1]~output .OUT_SYNC_MODE = 1'b0;
defparam \HUB75_DATA[1]~output .OUT_POWERUP = 1'b0;
defparam \HUB75_DATA[1]~output .OE_REG_MODE = 1'b0;
defparam \HUB75_DATA[1]~output .OE_ASYNC_MODE = 1'b0;
defparam \HUB75_DATA[1]~output .OE_SYNC_MODE = 1'b0;
defparam \HUB75_DATA[1]~output .OE_POWERUP = 1'b0;
defparam \HUB75_DATA[1]~output .CFG_TRI_INPUT = 1'b0;
defparam \HUB75_DATA[1]~output .CFG_INPUT_EN = 1'b0;
defparam \HUB75_DATA[1]~output .CFG_PULL_UP = 1'b0;
defparam \HUB75_DATA[1]~output .CFG_SLR = 1'b0;
defparam \HUB75_DATA[1]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \HUB75_DATA[1]~output .CFG_PDRCTRL = 4'b0100;
defparam \HUB75_DATA[1]~output .CFG_KEEP = 2'b00;
defparam \HUB75_DATA[1]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \HUB75_DATA[1]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \HUB75_DATA[1]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \HUB75_DATA[1]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \HUB75_DATA[1]~output .DPCLK_DELAY = 4'b0000;
defparam \HUB75_DATA[1]~output .OUT_DELAY = 1'b0;
defparam \HUB75_DATA[1]~output .IN_DATA_DELAY = 3'b000;
defparam \HUB75_DATA[1]~output .IN_REG_DELAY = 3'b000;

alta_rio \HUB75_DATA[2]~output (
	.padio(HUB75_DATA[2]),
	.datain(\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [5]),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \HUB75_DATA[2]~output .coord_x = 19;
defparam \HUB75_DATA[2]~output .coord_y = 0;
defparam \HUB75_DATA[2]~output .coord_z = 1;
defparam \HUB75_DATA[2]~output .IN_ASYNC_MODE = 1'b0;
defparam \HUB75_DATA[2]~output .IN_SYNC_MODE = 1'b0;
defparam \HUB75_DATA[2]~output .IN_POWERUP = 1'b0;
defparam \HUB75_DATA[2]~output .OUT_REG_MODE = 1'b0;
defparam \HUB75_DATA[2]~output .OUT_ASYNC_MODE = 1'b0;
defparam \HUB75_DATA[2]~output .OUT_SYNC_MODE = 1'b0;
defparam \HUB75_DATA[2]~output .OUT_POWERUP = 1'b0;
defparam \HUB75_DATA[2]~output .OE_REG_MODE = 1'b0;
defparam \HUB75_DATA[2]~output .OE_ASYNC_MODE = 1'b0;
defparam \HUB75_DATA[2]~output .OE_SYNC_MODE = 1'b0;
defparam \HUB75_DATA[2]~output .OE_POWERUP = 1'b0;
defparam \HUB75_DATA[2]~output .CFG_TRI_INPUT = 1'b0;
defparam \HUB75_DATA[2]~output .CFG_INPUT_EN = 1'b0;
defparam \HUB75_DATA[2]~output .CFG_PULL_UP = 1'b0;
defparam \HUB75_DATA[2]~output .CFG_SLR = 1'b0;
defparam \HUB75_DATA[2]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \HUB75_DATA[2]~output .CFG_PDRCTRL = 4'b0100;
defparam \HUB75_DATA[2]~output .CFG_KEEP = 2'b00;
defparam \HUB75_DATA[2]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \HUB75_DATA[2]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \HUB75_DATA[2]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \HUB75_DATA[2]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \HUB75_DATA[2]~output .DPCLK_DELAY = 4'b0000;
defparam \HUB75_DATA[2]~output .OUT_DELAY = 1'b0;
defparam \HUB75_DATA[2]~output .IN_DATA_DELAY = 3'b000;
defparam \HUB75_DATA[2]~output .IN_REG_DELAY = 3'b000;

alta_rio \HUB75_DATA[3]~output (
	.padio(HUB75_DATA[3]),
	.datain(\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [3]),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \HUB75_DATA[3]~output .coord_x = 8;
defparam \HUB75_DATA[3]~output .coord_y = 0;
defparam \HUB75_DATA[3]~output .coord_z = 1;
defparam \HUB75_DATA[3]~output .IN_ASYNC_MODE = 1'b0;
defparam \HUB75_DATA[3]~output .IN_SYNC_MODE = 1'b0;
defparam \HUB75_DATA[3]~output .IN_POWERUP = 1'b0;
defparam \HUB75_DATA[3]~output .OUT_REG_MODE = 1'b0;
defparam \HUB75_DATA[3]~output .OUT_ASYNC_MODE = 1'b0;
defparam \HUB75_DATA[3]~output .OUT_SYNC_MODE = 1'b0;
defparam \HUB75_DATA[3]~output .OUT_POWERUP = 1'b0;
defparam \HUB75_DATA[3]~output .OE_REG_MODE = 1'b0;
defparam \HUB75_DATA[3]~output .OE_ASYNC_MODE = 1'b0;
defparam \HUB75_DATA[3]~output .OE_SYNC_MODE = 1'b0;
defparam \HUB75_DATA[3]~output .OE_POWERUP = 1'b0;
defparam \HUB75_DATA[3]~output .CFG_TRI_INPUT = 1'b0;
defparam \HUB75_DATA[3]~output .CFG_INPUT_EN = 1'b0;
defparam \HUB75_DATA[3]~output .CFG_PULL_UP = 1'b0;
defparam \HUB75_DATA[3]~output .CFG_SLR = 1'b0;
defparam \HUB75_DATA[3]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \HUB75_DATA[3]~output .CFG_PDRCTRL = 4'b0100;
defparam \HUB75_DATA[3]~output .CFG_KEEP = 2'b00;
defparam \HUB75_DATA[3]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \HUB75_DATA[3]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \HUB75_DATA[3]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \HUB75_DATA[3]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \HUB75_DATA[3]~output .DPCLK_DELAY = 4'b0000;
defparam \HUB75_DATA[3]~output .OUT_DELAY = 1'b0;
defparam \HUB75_DATA[3]~output .IN_DATA_DELAY = 3'b000;
defparam \HUB75_DATA[3]~output .IN_REG_DELAY = 3'b000;

alta_rio \HUB75_DATA[4]~output (
	.padio(HUB75_DATA[4]),
	.datain(\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [4]),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \HUB75_DATA[4]~output .coord_x = 8;
defparam \HUB75_DATA[4]~output .coord_y = 0;
defparam \HUB75_DATA[4]~output .coord_z = 2;
defparam \HUB75_DATA[4]~output .IN_ASYNC_MODE = 1'b0;
defparam \HUB75_DATA[4]~output .IN_SYNC_MODE = 1'b0;
defparam \HUB75_DATA[4]~output .IN_POWERUP = 1'b0;
defparam \HUB75_DATA[4]~output .OUT_REG_MODE = 1'b0;
defparam \HUB75_DATA[4]~output .OUT_ASYNC_MODE = 1'b0;
defparam \HUB75_DATA[4]~output .OUT_SYNC_MODE = 1'b0;
defparam \HUB75_DATA[4]~output .OUT_POWERUP = 1'b0;
defparam \HUB75_DATA[4]~output .OE_REG_MODE = 1'b0;
defparam \HUB75_DATA[4]~output .OE_ASYNC_MODE = 1'b0;
defparam \HUB75_DATA[4]~output .OE_SYNC_MODE = 1'b0;
defparam \HUB75_DATA[4]~output .OE_POWERUP = 1'b0;
defparam \HUB75_DATA[4]~output .CFG_TRI_INPUT = 1'b0;
defparam \HUB75_DATA[4]~output .CFG_INPUT_EN = 1'b0;
defparam \HUB75_DATA[4]~output .CFG_PULL_UP = 1'b0;
defparam \HUB75_DATA[4]~output .CFG_SLR = 1'b0;
defparam \HUB75_DATA[4]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \HUB75_DATA[4]~output .CFG_PDRCTRL = 4'b0100;
defparam \HUB75_DATA[4]~output .CFG_KEEP = 2'b00;
defparam \HUB75_DATA[4]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \HUB75_DATA[4]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \HUB75_DATA[4]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \HUB75_DATA[4]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \HUB75_DATA[4]~output .DPCLK_DELAY = 4'b0000;
defparam \HUB75_DATA[4]~output .OUT_DELAY = 1'b0;
defparam \HUB75_DATA[4]~output .IN_DATA_DELAY = 3'b000;
defparam \HUB75_DATA[4]~output .IN_REG_DELAY = 3'b000;

alta_rio \HUB75_DATA[5]~output (
	.padio(HUB75_DATA[5]),
	.datain(\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [5]),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \HUB75_DATA[5]~output .coord_x = 8;
defparam \HUB75_DATA[5]~output .coord_y = 0;
defparam \HUB75_DATA[5]~output .coord_z = 3;
defparam \HUB75_DATA[5]~output .IN_ASYNC_MODE = 1'b0;
defparam \HUB75_DATA[5]~output .IN_SYNC_MODE = 1'b0;
defparam \HUB75_DATA[5]~output .IN_POWERUP = 1'b0;
defparam \HUB75_DATA[5]~output .OUT_REG_MODE = 1'b0;
defparam \HUB75_DATA[5]~output .OUT_ASYNC_MODE = 1'b0;
defparam \HUB75_DATA[5]~output .OUT_SYNC_MODE = 1'b0;
defparam \HUB75_DATA[5]~output .OUT_POWERUP = 1'b0;
defparam \HUB75_DATA[5]~output .OE_REG_MODE = 1'b0;
defparam \HUB75_DATA[5]~output .OE_ASYNC_MODE = 1'b0;
defparam \HUB75_DATA[5]~output .OE_SYNC_MODE = 1'b0;
defparam \HUB75_DATA[5]~output .OE_POWERUP = 1'b0;
defparam \HUB75_DATA[5]~output .CFG_TRI_INPUT = 1'b0;
defparam \HUB75_DATA[5]~output .CFG_INPUT_EN = 1'b0;
defparam \HUB75_DATA[5]~output .CFG_PULL_UP = 1'b0;
defparam \HUB75_DATA[5]~output .CFG_SLR = 1'b0;
defparam \HUB75_DATA[5]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \HUB75_DATA[5]~output .CFG_PDRCTRL = 4'b0100;
defparam \HUB75_DATA[5]~output .CFG_KEEP = 2'b00;
defparam \HUB75_DATA[5]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \HUB75_DATA[5]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \HUB75_DATA[5]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \HUB75_DATA[5]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \HUB75_DATA[5]~output .DPCLK_DELAY = 4'b0000;
defparam \HUB75_DATA[5]~output .OUT_DELAY = 1'b0;
defparam \HUB75_DATA[5]~output .IN_DATA_DELAY = 3'b000;
defparam \HUB75_DATA[5]~output .IN_REG_DELAY = 3'b000;

alta_rio \HUB75_LAT~output (
	.padio(HUB75_LAT),
	.datain(\macro_inst|hub75_inst|state_reg.STATE_LATCH~q ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \HUB75_LAT~output .coord_x = 1;
defparam \HUB75_LAT~output .coord_y = 0;
defparam \HUB75_LAT~output .coord_z = 3;
defparam \HUB75_LAT~output .IN_ASYNC_MODE = 1'b0;
defparam \HUB75_LAT~output .IN_SYNC_MODE = 1'b0;
defparam \HUB75_LAT~output .IN_POWERUP = 1'b0;
defparam \HUB75_LAT~output .OUT_REG_MODE = 1'b0;
defparam \HUB75_LAT~output .OUT_ASYNC_MODE = 1'b0;
defparam \HUB75_LAT~output .OUT_SYNC_MODE = 1'b0;
defparam \HUB75_LAT~output .OUT_POWERUP = 1'b0;
defparam \HUB75_LAT~output .OE_REG_MODE = 1'b0;
defparam \HUB75_LAT~output .OE_ASYNC_MODE = 1'b0;
defparam \HUB75_LAT~output .OE_SYNC_MODE = 1'b0;
defparam \HUB75_LAT~output .OE_POWERUP = 1'b0;
defparam \HUB75_LAT~output .CFG_TRI_INPUT = 1'b0;
defparam \HUB75_LAT~output .CFG_INPUT_EN = 1'b0;
defparam \HUB75_LAT~output .CFG_PULL_UP = 1'b0;
defparam \HUB75_LAT~output .CFG_SLR = 1'b0;
defparam \HUB75_LAT~output .CFG_OPEN_DRAIN = 1'b0;
defparam \HUB75_LAT~output .CFG_PDRCTRL = 4'b0100;
defparam \HUB75_LAT~output .CFG_KEEP = 2'b00;
defparam \HUB75_LAT~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \HUB75_LAT~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \HUB75_LAT~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \HUB75_LAT~output .CFG_LVDS_IN_EN = 1'b0;
defparam \HUB75_LAT~output .DPCLK_DELAY = 4'b0000;
defparam \HUB75_LAT~output .OUT_DELAY = 1'b0;
defparam \HUB75_LAT~output .IN_DATA_DELAY = 3'b000;
defparam \HUB75_LAT~output .IN_REG_DELAY = 3'b000;

alta_rio \HUB75_OE~output (
	.padio(HUB75_OE),
	.datain(\macro_inst|hub75_inst|state_reg.STATE_LATCH~q ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \HUB75_OE~output .coord_x = 0;
defparam \HUB75_OE~output .coord_y = 2;
defparam \HUB75_OE~output .coord_z = 4;
defparam \HUB75_OE~output .IN_ASYNC_MODE = 1'b0;
defparam \HUB75_OE~output .IN_SYNC_MODE = 1'b0;
defparam \HUB75_OE~output .IN_POWERUP = 1'b0;
defparam \HUB75_OE~output .OUT_REG_MODE = 1'b0;
defparam \HUB75_OE~output .OUT_ASYNC_MODE = 1'b0;
defparam \HUB75_OE~output .OUT_SYNC_MODE = 1'b0;
defparam \HUB75_OE~output .OUT_POWERUP = 1'b0;
defparam \HUB75_OE~output .OE_REG_MODE = 1'b0;
defparam \HUB75_OE~output .OE_ASYNC_MODE = 1'b0;
defparam \HUB75_OE~output .OE_SYNC_MODE = 1'b0;
defparam \HUB75_OE~output .OE_POWERUP = 1'b0;
defparam \HUB75_OE~output .CFG_TRI_INPUT = 1'b0;
defparam \HUB75_OE~output .CFG_INPUT_EN = 1'b0;
defparam \HUB75_OE~output .CFG_PULL_UP = 1'b0;
defparam \HUB75_OE~output .CFG_SLR = 1'b0;
defparam \HUB75_OE~output .CFG_OPEN_DRAIN = 1'b0;
defparam \HUB75_OE~output .CFG_PDRCTRL = 4'b0100;
defparam \HUB75_OE~output .CFG_KEEP = 2'b00;
defparam \HUB75_OE~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \HUB75_OE~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \HUB75_OE~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \HUB75_OE~output .CFG_LVDS_IN_EN = 1'b0;
defparam \HUB75_OE~output .DPCLK_DELAY = 4'b0000;
defparam \HUB75_OE~output .OUT_DELAY = 1'b0;
defparam \HUB75_OE~output .IN_DATA_DELAY = 3'b000;
defparam \HUB75_OE~output .IN_REG_DELAY = 3'b000;

alta_rio \LED_D2~output (
	.padio(LED_D2),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\LED_D2~input_o ),
	.regout());
defparam \LED_D2~output .coord_x = 18;
defparam \LED_D2~output .coord_y = 13;
defparam \LED_D2~output .coord_z = 2;
defparam \LED_D2~output .IN_ASYNC_MODE = 1'b0;
defparam \LED_D2~output .IN_SYNC_MODE = 1'b0;
defparam \LED_D2~output .IN_POWERUP = 1'b0;
defparam \LED_D2~output .OUT_REG_MODE = 1'b0;
defparam \LED_D2~output .OUT_ASYNC_MODE = 1'b0;
defparam \LED_D2~output .OUT_SYNC_MODE = 1'b0;
defparam \LED_D2~output .OUT_POWERUP = 1'b0;
defparam \LED_D2~output .OE_REG_MODE = 1'b0;
defparam \LED_D2~output .OE_ASYNC_MODE = 1'b0;
defparam \LED_D2~output .OE_SYNC_MODE = 1'b0;
defparam \LED_D2~output .OE_POWERUP = 1'b0;
defparam \LED_D2~output .CFG_TRI_INPUT = 1'b0;
defparam \LED_D2~output .CFG_INPUT_EN = 1'b0;
defparam \LED_D2~output .CFG_PULL_UP = 1'b0;
defparam \LED_D2~output .CFG_SLR = 1'b0;
defparam \LED_D2~output .CFG_OPEN_DRAIN = 1'b0;
defparam \LED_D2~output .CFG_PDRCTRL = 4'b0100;
defparam \LED_D2~output .CFG_KEEP = 2'b00;
defparam \LED_D2~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \LED_D2~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \LED_D2~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \LED_D2~output .CFG_LVDS_IN_EN = 1'b0;
defparam \LED_D2~output .DPCLK_DELAY = 4'b0000;
defparam \LED_D2~output .OUT_DELAY = 1'b0;
defparam \LED_D2~output .IN_DATA_DELAY = 3'b000;
defparam \LED_D2~output .IN_REG_DELAY = 3'b000;

alta_rio \LED_D3~output (
	.padio(LED_D3),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\LED_D3~input_o ),
	.regout());
defparam \LED_D3~output .coord_x = 18;
defparam \LED_D3~output .coord_y = 13;
defparam \LED_D3~output .coord_z = 3;
defparam \LED_D3~output .IN_ASYNC_MODE = 1'b0;
defparam \LED_D3~output .IN_SYNC_MODE = 1'b0;
defparam \LED_D3~output .IN_POWERUP = 1'b0;
defparam \LED_D3~output .OUT_REG_MODE = 1'b0;
defparam \LED_D3~output .OUT_ASYNC_MODE = 1'b0;
defparam \LED_D3~output .OUT_SYNC_MODE = 1'b0;
defparam \LED_D3~output .OUT_POWERUP = 1'b0;
defparam \LED_D3~output .OE_REG_MODE = 1'b0;
defparam \LED_D3~output .OE_ASYNC_MODE = 1'b0;
defparam \LED_D3~output .OE_SYNC_MODE = 1'b0;
defparam \LED_D3~output .OE_POWERUP = 1'b0;
defparam \LED_D3~output .CFG_TRI_INPUT = 1'b0;
defparam \LED_D3~output .CFG_INPUT_EN = 1'b0;
defparam \LED_D3~output .CFG_PULL_UP = 1'b0;
defparam \LED_D3~output .CFG_SLR = 1'b0;
defparam \LED_D3~output .CFG_OPEN_DRAIN = 1'b0;
defparam \LED_D3~output .CFG_PDRCTRL = 4'b0100;
defparam \LED_D3~output .CFG_KEEP = 2'b00;
defparam \LED_D3~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \LED_D3~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \LED_D3~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \LED_D3~output .CFG_LVDS_IN_EN = 1'b0;
defparam \LED_D3~output .DPCLK_DELAY = 4'b0000;
defparam \LED_D3~output .OUT_DELAY = 1'b0;
defparam \LED_D3~output .IN_DATA_DELAY = 3'b000;
defparam \LED_D3~output .IN_REG_DELAY = 3'b000;

alta_rio \MATRIXSPI_CS~input (
	.padio(MATRIXSPI_CS),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\MATRIXSPI_CS~input_o ),
	.regout());
defparam \MATRIXSPI_CS~input .coord_x = 22;
defparam \MATRIXSPI_CS~input .coord_y = 3;
defparam \MATRIXSPI_CS~input .coord_z = 3;
defparam \MATRIXSPI_CS~input .IN_ASYNC_MODE = 1'b0;
defparam \MATRIXSPI_CS~input .IN_SYNC_MODE = 1'b0;
defparam \MATRIXSPI_CS~input .IN_POWERUP = 1'b0;
defparam \MATRIXSPI_CS~input .OUT_REG_MODE = 1'b0;
defparam \MATRIXSPI_CS~input .OUT_ASYNC_MODE = 1'b0;
defparam \MATRIXSPI_CS~input .OUT_SYNC_MODE = 1'b0;
defparam \MATRIXSPI_CS~input .OUT_POWERUP = 1'b0;
defparam \MATRIXSPI_CS~input .OE_REG_MODE = 1'b0;
defparam \MATRIXSPI_CS~input .OE_ASYNC_MODE = 1'b0;
defparam \MATRIXSPI_CS~input .OE_SYNC_MODE = 1'b0;
defparam \MATRIXSPI_CS~input .OE_POWERUP = 1'b0;
defparam \MATRIXSPI_CS~input .CFG_TRI_INPUT = 1'b0;
defparam \MATRIXSPI_CS~input .CFG_INPUT_EN = 1'b1;
defparam \MATRIXSPI_CS~input .CFG_PULL_UP = 1'b0;
defparam \MATRIXSPI_CS~input .CFG_SLR = 1'b0;
defparam \MATRIXSPI_CS~input .CFG_OPEN_DRAIN = 1'b0;
defparam \MATRIXSPI_CS~input .CFG_PDRCTRL = 4'b0100;
defparam \MATRIXSPI_CS~input .CFG_KEEP = 2'b00;
defparam \MATRIXSPI_CS~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \MATRIXSPI_CS~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \MATRIXSPI_CS~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \MATRIXSPI_CS~input .CFG_LVDS_IN_EN = 1'b0;
defparam \MATRIXSPI_CS~input .DPCLK_DELAY = 4'b0000;
defparam \MATRIXSPI_CS~input .OUT_DELAY = 1'b0;
defparam \MATRIXSPI_CS~input .IN_DATA_DELAY = 3'b000;
defparam \MATRIXSPI_CS~input .IN_REG_DELAY = 3'b000;

alta_io_gclk \MATRIXSPI_CS~inputclkctrl (
	.inclk(\MATRIXSPI_CS~input_o ),
	.outclk(\MATRIXSPI_CS~inputclkctrl_outclk ));
defparam \MATRIXSPI_CS~inputclkctrl .coord_x = 22;
defparam \MATRIXSPI_CS~inputclkctrl .coord_y = 4;
defparam \MATRIXSPI_CS~inputclkctrl .coord_z = 1;

alta_rio \MATRIXSPI_MOSI~input (
	.padio(MATRIXSPI_MOSI),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\MATRIXSPI_MOSI~input_o ),
	.regout());
defparam \MATRIXSPI_MOSI~input .coord_x = 20;
defparam \MATRIXSPI_MOSI~input .coord_y = 13;
defparam \MATRIXSPI_MOSI~input .coord_z = 3;
defparam \MATRIXSPI_MOSI~input .IN_ASYNC_MODE = 1'b0;
defparam \MATRIXSPI_MOSI~input .IN_SYNC_MODE = 1'b0;
defparam \MATRIXSPI_MOSI~input .IN_POWERUP = 1'b0;
defparam \MATRIXSPI_MOSI~input .OUT_REG_MODE = 1'b0;
defparam \MATRIXSPI_MOSI~input .OUT_ASYNC_MODE = 1'b0;
defparam \MATRIXSPI_MOSI~input .OUT_SYNC_MODE = 1'b0;
defparam \MATRIXSPI_MOSI~input .OUT_POWERUP = 1'b0;
defparam \MATRIXSPI_MOSI~input .OE_REG_MODE = 1'b0;
defparam \MATRIXSPI_MOSI~input .OE_ASYNC_MODE = 1'b0;
defparam \MATRIXSPI_MOSI~input .OE_SYNC_MODE = 1'b0;
defparam \MATRIXSPI_MOSI~input .OE_POWERUP = 1'b0;
defparam \MATRIXSPI_MOSI~input .CFG_TRI_INPUT = 1'b0;
defparam \MATRIXSPI_MOSI~input .CFG_INPUT_EN = 1'b1;
defparam \MATRIXSPI_MOSI~input .CFG_PULL_UP = 1'b0;
defparam \MATRIXSPI_MOSI~input .CFG_SLR = 1'b0;
defparam \MATRIXSPI_MOSI~input .CFG_OPEN_DRAIN = 1'b0;
defparam \MATRIXSPI_MOSI~input .CFG_PDRCTRL = 4'b0100;
defparam \MATRIXSPI_MOSI~input .CFG_KEEP = 2'b00;
defparam \MATRIXSPI_MOSI~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \MATRIXSPI_MOSI~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \MATRIXSPI_MOSI~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \MATRIXSPI_MOSI~input .CFG_LVDS_IN_EN = 1'b0;
defparam \MATRIXSPI_MOSI~input .DPCLK_DELAY = 4'b0000;
defparam \MATRIXSPI_MOSI~input .OUT_DELAY = 1'b0;
defparam \MATRIXSPI_MOSI~input .IN_DATA_DELAY = 3'b000;
defparam \MATRIXSPI_MOSI~input .IN_REG_DELAY = 3'b000;

alta_rio \MATRIXSPI_SCK~input (
	.padio(MATRIXSPI_SCK),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\MATRIXSPI_SCK~input_o ),
	.regout());
defparam \MATRIXSPI_SCK~input .coord_x = 22;
defparam \MATRIXSPI_SCK~input .coord_y = 3;
defparam \MATRIXSPI_SCK~input .coord_z = 1;
defparam \MATRIXSPI_SCK~input .IN_ASYNC_MODE = 1'b0;
defparam \MATRIXSPI_SCK~input .IN_SYNC_MODE = 1'b0;
defparam \MATRIXSPI_SCK~input .IN_POWERUP = 1'b0;
defparam \MATRIXSPI_SCK~input .OUT_REG_MODE = 1'b0;
defparam \MATRIXSPI_SCK~input .OUT_ASYNC_MODE = 1'b0;
defparam \MATRIXSPI_SCK~input .OUT_SYNC_MODE = 1'b0;
defparam \MATRIXSPI_SCK~input .OUT_POWERUP = 1'b0;
defparam \MATRIXSPI_SCK~input .OE_REG_MODE = 1'b0;
defparam \MATRIXSPI_SCK~input .OE_ASYNC_MODE = 1'b0;
defparam \MATRIXSPI_SCK~input .OE_SYNC_MODE = 1'b0;
defparam \MATRIXSPI_SCK~input .OE_POWERUP = 1'b0;
defparam \MATRIXSPI_SCK~input .CFG_TRI_INPUT = 1'b0;
defparam \MATRIXSPI_SCK~input .CFG_INPUT_EN = 1'b1;
defparam \MATRIXSPI_SCK~input .CFG_PULL_UP = 1'b0;
defparam \MATRIXSPI_SCK~input .CFG_SLR = 1'b0;
defparam \MATRIXSPI_SCK~input .CFG_OPEN_DRAIN = 1'b0;
defparam \MATRIXSPI_SCK~input .CFG_PDRCTRL = 4'b0100;
defparam \MATRIXSPI_SCK~input .CFG_KEEP = 2'b00;
defparam \MATRIXSPI_SCK~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \MATRIXSPI_SCK~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \MATRIXSPI_SCK~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \MATRIXSPI_SCK~input .CFG_LVDS_IN_EN = 1'b0;
defparam \MATRIXSPI_SCK~input .DPCLK_DELAY = 4'b0000;
defparam \MATRIXSPI_SCK~input .OUT_DELAY = 1'b0;
defparam \MATRIXSPI_SCK~input .IN_DATA_DELAY = 3'b000;
defparam \MATRIXSPI_SCK~input .IN_REG_DELAY = 3'b000;

alta_io_gclk \MATRIXSPI_SCK~inputclkctrl (
	.inclk(\MATRIXSPI_SCK~input_o ),
	.outclk(\MATRIXSPI_SCK~inputclkctrl_outclk ));
defparam \MATRIXSPI_SCK~inputclkctrl .coord_x = 22;
defparam \MATRIXSPI_SCK~inputclkctrl .coord_y = 4;
defparam \MATRIXSPI_SCK~inputclkctrl .coord_z = 0;

alta_rio \PIN_HSE~input (
	.padio(PIN_HSE),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\PIN_HSE~input_o ),
	.regout());
defparam \PIN_HSE~input .coord_x = 22;
defparam \PIN_HSE~input .coord_y = 4;
defparam \PIN_HSE~input .coord_z = 1;
defparam \PIN_HSE~input .IN_ASYNC_MODE = 1'b0;
defparam \PIN_HSE~input .IN_SYNC_MODE = 1'b0;
defparam \PIN_HSE~input .IN_POWERUP = 1'b0;
defparam \PIN_HSE~input .OUT_REG_MODE = 1'b0;
defparam \PIN_HSE~input .OUT_ASYNC_MODE = 1'b0;
defparam \PIN_HSE~input .OUT_SYNC_MODE = 1'b0;
defparam \PIN_HSE~input .OUT_POWERUP = 1'b0;
defparam \PIN_HSE~input .OE_REG_MODE = 1'b0;
defparam \PIN_HSE~input .OE_ASYNC_MODE = 1'b0;
defparam \PIN_HSE~input .OE_SYNC_MODE = 1'b0;
defparam \PIN_HSE~input .OE_POWERUP = 1'b0;
defparam \PIN_HSE~input .CFG_TRI_INPUT = 1'b0;
defparam \PIN_HSE~input .CFG_PULL_UP = 1'b0;
defparam \PIN_HSE~input .CFG_SLR = 1'b0;
defparam \PIN_HSE~input .CFG_OPEN_DRAIN = 1'b0;
defparam \PIN_HSE~input .CFG_PDRCTRL = 4'b0010;
defparam \PIN_HSE~input .CFG_KEEP = 2'b00;
defparam \PIN_HSE~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \PIN_HSE~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \PIN_HSE~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \PIN_HSE~input .CFG_LVDS_IN_EN = 1'b0;
defparam \PIN_HSE~input .DPCLK_DELAY = 4'b0000;
defparam \PIN_HSE~input .OUT_DELAY = 1'b0;
defparam \PIN_HSE~input .IN_DATA_DELAY = 3'b000;
defparam \PIN_HSE~input .IN_REG_DELAY = 3'b000;

alta_rio \PIN_HSI~input (
	.padio(PIN_HSI),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\PIN_HSI~input_o ),
	.regout());
defparam \PIN_HSI~input .coord_x = 22;
defparam \PIN_HSI~input .coord_y = 4;
defparam \PIN_HSI~input .coord_z = 0;
defparam \PIN_HSI~input .IN_ASYNC_MODE = 1'b0;
defparam \PIN_HSI~input .IN_SYNC_MODE = 1'b0;
defparam \PIN_HSI~input .IN_POWERUP = 1'b0;
defparam \PIN_HSI~input .OUT_REG_MODE = 1'b0;
defparam \PIN_HSI~input .OUT_ASYNC_MODE = 1'b0;
defparam \PIN_HSI~input .OUT_SYNC_MODE = 1'b0;
defparam \PIN_HSI~input .OUT_POWERUP = 1'b0;
defparam \PIN_HSI~input .OE_REG_MODE = 1'b0;
defparam \PIN_HSI~input .OE_ASYNC_MODE = 1'b0;
defparam \PIN_HSI~input .OE_SYNC_MODE = 1'b0;
defparam \PIN_HSI~input .OE_POWERUP = 1'b0;
defparam \PIN_HSI~input .CFG_TRI_INPUT = 1'b0;
defparam \PIN_HSI~input .CFG_PULL_UP = 1'b0;
defparam \PIN_HSI~input .CFG_SLR = 1'b0;
defparam \PIN_HSI~input .CFG_OPEN_DRAIN = 1'b0;
defparam \PIN_HSI~input .CFG_PDRCTRL = 4'b0010;
defparam \PIN_HSI~input .CFG_KEEP = 2'b00;
defparam \PIN_HSI~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \PIN_HSI~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \PIN_HSI~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \PIN_HSI~input .CFG_LVDS_IN_EN = 1'b0;
defparam \PIN_HSI~input .DPCLK_DELAY = 4'b0000;
defparam \PIN_HSI~input .OUT_DELAY = 1'b0;
defparam \PIN_HSI~input .IN_DATA_DELAY = 3'b000;
defparam \PIN_HSI~input .IN_REG_DELAY = 3'b000;

alta_rio \PIN_OSC~input (
	.padio(PIN_OSC),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\PIN_OSC~input_o ),
	.regout());
defparam \PIN_OSC~input .coord_x = 22;
defparam \PIN_OSC~input .coord_y = 4;
defparam \PIN_OSC~input .coord_z = 2;
defparam \PIN_OSC~input .IN_ASYNC_MODE = 1'b0;
defparam \PIN_OSC~input .IN_SYNC_MODE = 1'b0;
defparam \PIN_OSC~input .IN_POWERUP = 1'b0;
defparam \PIN_OSC~input .OUT_REG_MODE = 1'b0;
defparam \PIN_OSC~input .OUT_ASYNC_MODE = 1'b0;
defparam \PIN_OSC~input .OUT_SYNC_MODE = 1'b0;
defparam \PIN_OSC~input .OUT_POWERUP = 1'b0;
defparam \PIN_OSC~input .OE_REG_MODE = 1'b0;
defparam \PIN_OSC~input .OE_ASYNC_MODE = 1'b0;
defparam \PIN_OSC~input .OE_SYNC_MODE = 1'b0;
defparam \PIN_OSC~input .OE_POWERUP = 1'b0;
defparam \PIN_OSC~input .CFG_TRI_INPUT = 1'b0;
defparam \PIN_OSC~input .CFG_PULL_UP = 1'b0;
defparam \PIN_OSC~input .CFG_SLR = 1'b0;
defparam \PIN_OSC~input .CFG_OPEN_DRAIN = 1'b0;
defparam \PIN_OSC~input .CFG_PDRCTRL = 4'b0010;
defparam \PIN_OSC~input .CFG_KEEP = 2'b00;
defparam \PIN_OSC~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \PIN_OSC~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \PIN_OSC~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \PIN_OSC~input .CFG_LVDS_IN_EN = 1'b0;
defparam \PIN_OSC~input .DPCLK_DELAY = 4'b0000;
defparam \PIN_OSC~input .OUT_DELAY = 1'b0;
defparam \PIN_OSC~input .IN_DATA_DELAY = 3'b000;
defparam \PIN_OSC~input .IN_REG_DELAY = 3'b000;

alta_slice PLL_ENABLE(
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\rv32.sys_ctrl_pllEnable ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\PLL_ENABLE~combout ),
	.Cout(),
	.Q());
defparam PLL_ENABLE.coord_x = 20;
defparam PLL_ENABLE.coord_y = 5;
defparam PLL_ENABLE.coord_z = 14;
defparam PLL_ENABLE.mask = 16'h00FF;
defparam PLL_ENABLE.modeMux = 1'b0;
defparam PLL_ENABLE.FeedbackMux = 1'b0;
defparam PLL_ENABLE.ShiftMux = 1'b0;
defparam PLL_ENABLE.BypassEn = 1'b0;
defparam PLL_ENABLE.CarryEnb = 1'b1;

alta_io_gclk \PLL_ENABLE~clkctrl (
	.inclk(\PLL_ENABLE~combout ),
	.outclk(\PLL_ENABLE~clkctrl_outclk ));
defparam \PLL_ENABLE~clkctrl .coord_x = 22;
defparam \PLL_ENABLE~clkctrl .coord_y = 4;
defparam \PLL_ENABLE~clkctrl .coord_z = 3;

alta_slice PLL_LOCK(
	.A(vcc),
	.B(\pll_inst|auto_generated|pll_lock_sync~q ),
	.C(vcc),
	.D(\auto_generated_inst.hbo_13_044c0075445fcc2e_bp ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\PLL_LOCK~combout ),
	.Cout(),
	.Q());
defparam PLL_LOCK.coord_x = 20;
defparam PLL_LOCK.coord_y = 5;
defparam PLL_LOCK.coord_z = 10;
defparam PLL_LOCK.mask = 16'hCC00;
defparam PLL_LOCK.modeMux = 1'b0;
defparam PLL_LOCK.FeedbackMux = 1'b0;
defparam PLL_LOCK.ShiftMux = 1'b0;
defparam PLL_LOCK.BypassEn = 1'b0;
defparam PLL_LOCK.CarryEnb = 1'b1;

alta_asyncctrl asyncreset_ctrl_X49_Y1_N0(
	.Din(\PLL_ENABLE~clkctrl_outclk ),
	.Dout(\PLL_ENABLE~clkctrl_outclk__AsyncReset_X49_Y1_SIG ));
defparam asyncreset_ctrl_X49_Y1_N0.coord_x = 20;
defparam asyncreset_ctrl_X49_Y1_N0.coord_y = 5;
defparam asyncreset_ctrl_X49_Y1_N0.coord_z = 0;
defparam asyncreset_ctrl_X49_Y1_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X50_Y1_N0(
	.Din(),
	.Dout(AsyncReset_X50_Y1_GND));
defparam asyncreset_ctrl_X50_Y1_N0.coord_x = 15;
defparam asyncreset_ctrl_X50_Y1_N0.coord_y = 4;
defparam asyncreset_ctrl_X50_Y1_N0.coord_z = 0;
defparam asyncreset_ctrl_X50_Y1_N0.AsyncCtrlMux = 2'b00;

alta_asyncctrl asyncreset_ctrl_X52_Y1_N0(
	.Din(),
	.Dout(AsyncReset_X52_Y1_GND));
defparam asyncreset_ctrl_X52_Y1_N0.coord_x = 14;
defparam asyncreset_ctrl_X52_Y1_N0.coord_y = 4;
defparam asyncreset_ctrl_X52_Y1_N0.coord_z = 0;
defparam asyncreset_ctrl_X52_Y1_N0.AsyncCtrlMux = 2'b00;

alta_asyncctrl asyncreset_ctrl_X53_Y1_N0(
	.Din(),
	.Dout(AsyncReset_X53_Y1_GND));
defparam asyncreset_ctrl_X53_Y1_N0.coord_x = 14;
defparam asyncreset_ctrl_X53_Y1_N0.coord_y = 1;
defparam asyncreset_ctrl_X53_Y1_N0.coord_z = 0;
defparam asyncreset_ctrl_X53_Y1_N0.AsyncCtrlMux = 2'b00;

alta_asyncctrl asyncreset_ctrl_X54_Y1_N0(
	.Din(),
	.Dout(AsyncReset_X54_Y1_GND));
defparam asyncreset_ctrl_X54_Y1_N0.coord_x = 12;
defparam asyncreset_ctrl_X54_Y1_N0.coord_y = 2;
defparam asyncreset_ctrl_X54_Y1_N0.coord_z = 0;
defparam asyncreset_ctrl_X54_Y1_N0.AsyncCtrlMux = 2'b00;

alta_asyncctrl asyncreset_ctrl_X54_Y2_N0(
	.Din(\MATRIXSPI_CS~inputclkctrl_outclk ),
	.Dout(\MATRIXSPI_CS~inputclkctrl_outclk__AsyncReset_X54_Y2_SIG ));
defparam asyncreset_ctrl_X54_Y2_N0.coord_x = 14;
defparam asyncreset_ctrl_X54_Y2_N0.coord_y = 2;
defparam asyncreset_ctrl_X54_Y2_N0.coord_z = 0;
defparam asyncreset_ctrl_X54_Y2_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X56_Y1_N0(
	.Din(),
	.Dout(AsyncReset_X56_Y1_GND));
defparam asyncreset_ctrl_X56_Y1_N0.coord_x = 12;
defparam asyncreset_ctrl_X56_Y1_N0.coord_y = 1;
defparam asyncreset_ctrl_X56_Y1_N0.coord_z = 0;
defparam asyncreset_ctrl_X56_Y1_N0.AsyncCtrlMux = 2'b00;

alta_clkenctrl clken_ctrl_X49_Y1_N0(
	.ClkIn(\auto_generated_inst.hbo_13_044c0075445fcc2e_bp ),
	.ClkEn(),
	.ClkOut(\auto_generated_inst.hbo_13_044c0075445fcc2e_bp_X49_Y1_SIG_VCC ));
defparam clken_ctrl_X49_Y1_N0.coord_x = 20;
defparam clken_ctrl_X49_Y1_N0.coord_y = 5;
defparam clken_ctrl_X49_Y1_N0.coord_z = 0;
defparam clken_ctrl_X49_Y1_N0.ClkMux = 2'b10;
defparam clken_ctrl_X49_Y1_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X50_Y1_N0(
	.ClkIn(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp ),
	.ClkEn(),
	.ClkOut(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X50_Y1_SIG_VCC ));
defparam clken_ctrl_X50_Y1_N0.coord_x = 15;
defparam clken_ctrl_X50_Y1_N0.coord_y = 4;
defparam clken_ctrl_X50_Y1_N0.coord_z = 0;
defparam clken_ctrl_X50_Y1_N0.ClkMux = 2'b10;
defparam clken_ctrl_X50_Y1_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X52_Y1_N0(
	.ClkIn(\MATRIXSPI_SCK~inputclkctrl_outclk ),
	.ClkEn(\MATRIXSPI_CS~input_o ),
	.ClkOut(\MATRIXSPI_SCK~inputclkctrl_outclk__MATRIXSPI_CS~input_o_X52_Y1_SIG_INV ));
defparam clken_ctrl_X52_Y1_N0.coord_x = 14;
defparam clken_ctrl_X52_Y1_N0.coord_y = 4;
defparam clken_ctrl_X52_Y1_N0.coord_z = 0;
defparam clken_ctrl_X52_Y1_N0.ClkMux = 2'b10;
defparam clken_ctrl_X52_Y1_N0.ClkEnMux = 2'b11;

alta_clkenctrl clken_ctrl_X53_Y1_N0(
	.ClkIn(\MATRIXSPI_SCK~inputclkctrl_outclk ),
	.ClkEn(\macro_inst|rx_inst|data_out[15]~0_combout ),
	.ClkOut(\MATRIXSPI_SCK~inputclkctrl_outclk__macro_inst|rx_inst|data_out[15]~0_combout_X53_Y1_SIG_SIG ));
defparam clken_ctrl_X53_Y1_N0.coord_x = 14;
defparam clken_ctrl_X53_Y1_N0.coord_y = 1;
defparam clken_ctrl_X53_Y1_N0.coord_z = 0;
defparam clken_ctrl_X53_Y1_N0.ClkMux = 2'b10;
defparam clken_ctrl_X53_Y1_N0.ClkEnMux = 2'b10;

alta_clkenctrl clken_ctrl_X53_Y1_N1(
	.ClkIn(\MATRIXSPI_SCK~inputclkctrl_outclk ),
	.ClkEn(\MATRIXSPI_CS~input_o ),
	.ClkOut(\MATRIXSPI_SCK~inputclkctrl_outclk__MATRIXSPI_CS~input_o_X53_Y1_SIG_INV ));
defparam clken_ctrl_X53_Y1_N1.coord_x = 14;
defparam clken_ctrl_X53_Y1_N1.coord_y = 1;
defparam clken_ctrl_X53_Y1_N1.coord_z = 1;
defparam clken_ctrl_X53_Y1_N1.ClkMux = 2'b10;
defparam clken_ctrl_X53_Y1_N1.ClkEnMux = 2'b11;

alta_clkenctrl clken_ctrl_X54_Y1_N0(
	.ClkIn(\macro_inst|sys_clk_div_cnt[3]~clkctrl_outclk ),
	.ClkEn(\macro_inst|hub75_inst|state_reg.STATE_LATCH~q ),
	.ClkOut(\macro_inst|sys_clk_div_cnt[3]~clkctrl_outclk__macro_inst|hub75_inst|state_reg.STATE_LATCH~q_X54_Y1_SIG_INV ));
defparam clken_ctrl_X54_Y1_N0.coord_x = 12;
defparam clken_ctrl_X54_Y1_N0.coord_y = 2;
defparam clken_ctrl_X54_Y1_N0.coord_z = 0;
defparam clken_ctrl_X54_Y1_N0.ClkMux = 2'b10;
defparam clken_ctrl_X54_Y1_N0.ClkEnMux = 2'b11;

alta_clkenctrl clken_ctrl_X54_Y1_N1(
	.ClkIn(\macro_inst|sys_clk_div_cnt[3]~clkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\macro_inst|sys_clk_div_cnt[3]~clkctrl_outclk_X54_Y1_SIG_VCC ));
defparam clken_ctrl_X54_Y1_N1.coord_x = 12;
defparam clken_ctrl_X54_Y1_N1.coord_y = 2;
defparam clken_ctrl_X54_Y1_N1.coord_z = 1;
defparam clken_ctrl_X54_Y1_N1.ClkMux = 2'b10;
defparam clken_ctrl_X54_Y1_N1.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X54_Y2_N0(
	.ClkIn(\MATRIXSPI_SCK~inputclkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\MATRIXSPI_SCK~inputclkctrl_outclk_X54_Y2_SIG_VCC ));
defparam clken_ctrl_X54_Y2_N0.coord_x = 14;
defparam clken_ctrl_X54_Y2_N0.coord_y = 2;
defparam clken_ctrl_X54_Y2_N0.coord_z = 0;
defparam clken_ctrl_X54_Y2_N0.ClkMux = 2'b10;
defparam clken_ctrl_X54_Y2_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X54_Y2_N1(
	.ClkIn(\MATRIXSPI_SCK~inputclkctrl_outclk ),
	.ClkEn(\macro_inst|rx_inst|data_valid~q ),
	.ClkOut(\MATRIXSPI_SCK~inputclkctrl_outclk__macro_inst|rx_inst|data_valid~q_X54_Y2_SIG_SIG ));
defparam clken_ctrl_X54_Y2_N1.coord_x = 14;
defparam clken_ctrl_X54_Y2_N1.coord_y = 2;
defparam clken_ctrl_X54_Y2_N1.coord_z = 1;
defparam clken_ctrl_X54_Y2_N1.ClkMux = 2'b10;
defparam clken_ctrl_X54_Y2_N1.ClkEnMux = 2'b10;

alta_clkenctrl clken_ctrl_X56_Y1_N0(
	.ClkIn(\macro_inst|sys_clk_div_cnt[3]~clkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\macro_inst|sys_clk_div_cnt[3]~clkctrl_outclk_X56_Y1_SIG_VCC ));
defparam clken_ctrl_X56_Y1_N0.coord_x = 12;
defparam clken_ctrl_X56_Y1_N0.coord_y = 1;
defparam clken_ctrl_X56_Y1_N0.coord_z = 0;
defparam clken_ctrl_X56_Y1_N0.ClkMux = 2'b10;
defparam clken_ctrl_X56_Y1_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X56_Y1_N1(
	.ClkIn(\macro_inst|sys_clk_div_cnt[3]~clkctrl_outclk ),
	.ClkEn(\macro_inst|hub75_inst|state_reg.STATE_LATCH~q ),
	.ClkOut(\macro_inst|sys_clk_div_cnt[3]~clkctrl_outclk__macro_inst|hub75_inst|state_reg.STATE_LATCH~q_X56_Y1_SIG_SIG ));
defparam clken_ctrl_X56_Y1_N1.coord_x = 12;
defparam clken_ctrl_X56_Y1_N1.coord_y = 1;
defparam clken_ctrl_X56_Y1_N1.coord_z = 1;
defparam clken_ctrl_X56_Y1_N1.ClkMux = 2'b10;
defparam clken_ctrl_X56_Y1_N1.ClkEnMux = 2'b10;

alta_io_gclk \gclksw_inst|gclk_switch (
	.inclk(\gclksw_inst|gclk_switch__alta_gclksw__clkout ),
	.outclk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp ));
defparam \gclksw_inst|gclk_switch .coord_x = 22;
defparam \gclksw_inst|gclk_switch .coord_y = 4;
defparam \gclksw_inst|gclk_switch .coord_z = 5;

alta_gclksw \gclksw_inst|gclk_switch__alta_gclksw (
	.resetn(\rv32.resetn_out ),
	.clkin0(\PIN_HSI~input_o ),
	.clkin1(\PIN_HSE~input_o ),
	.clkin2(\pll_inst|auto_generated|pll1_CLK_bus [0]),
	.clkin3(1'bx),
	.select({\rv32.sys_ctrl_clkSource[1] , \rv32.sys_ctrl_clkSource[0] }),
	.clkout(\gclksw_inst|gclk_switch__alta_gclksw__clkout ));
defparam \gclksw_inst|gclk_switch__alta_gclksw .coord_x = 22;
defparam \gclksw_inst|gclk_switch__alta_gclksw .coord_y = 4;
defparam \gclksw_inst|gclk_switch__alta_gclksw .coord_z = 0;

alta_slice \macro_inst|hub75_inst|Add2~12 (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\macro_inst|hub75_inst|shift_count_reg [6]),
	.Cin(\macro_inst|hub75_inst|Add2~11 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|hub75_inst|Add2~12_combout ),
	.Cout(),
	.Q());
defparam \macro_inst|hub75_inst|Add2~12 .coord_x = 12;
defparam \macro_inst|hub75_inst|Add2~12 .coord_y = 2;
defparam \macro_inst|hub75_inst|Add2~12 .coord_z = 14;
defparam \macro_inst|hub75_inst|Add2~12 .mask = 16'hF00F;
defparam \macro_inst|hub75_inst|Add2~12 .modeMux = 1'b1;
defparam \macro_inst|hub75_inst|Add2~12 .FeedbackMux = 1'b0;
defparam \macro_inst|hub75_inst|Add2~12 .ShiftMux = 1'b0;
defparam \macro_inst|hub75_inst|Add2~12 .BypassEn = 1'b0;
defparam \macro_inst|hub75_inst|Add2~12 .CarryEnb = 1'b1;

alta_slice \macro_inst|hub75_inst|Equal0~0 (
	.A(\macro_inst|hub75_inst|shift_count_reg [0]),
	.B(\macro_inst|hub75_inst|shift_count_reg [3]),
	.C(\macro_inst|hub75_inst|shift_count_reg [2]),
	.D(\macro_inst|hub75_inst|shift_count_reg [1]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|hub75_inst|Equal0~0_combout ),
	.Cout(),
	.Q());
defparam \macro_inst|hub75_inst|Equal0~0 .coord_x = 12;
defparam \macro_inst|hub75_inst|Equal0~0 .coord_y = 2;
defparam \macro_inst|hub75_inst|Equal0~0 .coord_z = 6;
defparam \macro_inst|hub75_inst|Equal0~0 .mask = 16'h7FFF;
defparam \macro_inst|hub75_inst|Equal0~0 .modeMux = 1'b0;
defparam \macro_inst|hub75_inst|Equal0~0 .FeedbackMux = 1'b0;
defparam \macro_inst|hub75_inst|Equal0~0 .ShiftMux = 1'b0;
defparam \macro_inst|hub75_inst|Equal0~0 .BypassEn = 1'b0;
defparam \macro_inst|hub75_inst|Equal0~0 .CarryEnb = 1'b1;

alta_slice \macro_inst|hub75_inst|Equal0~1 (
	.A(\macro_inst|hub75_inst|Equal0~0_combout ),
	.B(\macro_inst|hub75_inst|shift_count_reg [6]),
	.C(\macro_inst|hub75_inst|shift_count_reg [4]),
	.D(\macro_inst|hub75_inst|shift_count_reg [5]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|hub75_inst|Equal0~1_combout ),
	.Cout(),
	.Q());
defparam \macro_inst|hub75_inst|Equal0~1 .coord_x = 12;
defparam \macro_inst|hub75_inst|Equal0~1 .coord_y = 2;
defparam \macro_inst|hub75_inst|Equal0~1 .coord_z = 0;
defparam \macro_inst|hub75_inst|Equal0~1 .mask = 16'hEFFF;
defparam \macro_inst|hub75_inst|Equal0~1 .modeMux = 1'b0;
defparam \macro_inst|hub75_inst|Equal0~1 .FeedbackMux = 1'b0;
defparam \macro_inst|hub75_inst|Equal0~1 .ShiftMux = 1'b0;
defparam \macro_inst|hub75_inst|Equal0~1 .BypassEn = 1'b0;
defparam \macro_inst|hub75_inst|Equal0~1 .CarryEnb = 1'b1;

alta_slice \macro_inst|hub75_inst|HUB75_CLK~0 (
	.A(vcc),
	.B(vcc),
	.C(\macro_inst|sys_clk_div_cnt [3]),
	.D(\macro_inst|hub75_inst|state_reg.STATE_LATCH~q ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|hub75_inst|HUB75_CLK~0_combout ),
	.Cout(),
	.Q());
defparam \macro_inst|hub75_inst|HUB75_CLK~0 .coord_x = 14;
defparam \macro_inst|hub75_inst|HUB75_CLK~0 .coord_y = 4;
defparam \macro_inst|hub75_inst|HUB75_CLK~0 .coord_z = 14;
defparam \macro_inst|hub75_inst|HUB75_CLK~0 .mask = 16'h00F0;
defparam \macro_inst|hub75_inst|HUB75_CLK~0 .modeMux = 1'b0;
defparam \macro_inst|hub75_inst|HUB75_CLK~0 .FeedbackMux = 1'b0;
defparam \macro_inst|hub75_inst|HUB75_CLK~0 .ShiftMux = 1'b0;
defparam \macro_inst|hub75_inst|HUB75_CLK~0 .BypassEn = 1'b0;
defparam \macro_inst|hub75_inst|HUB75_CLK~0 .CarryEnb = 1'b1;

alta_slice \macro_inst|hub75_inst|hub75_addr_reg[0] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\macro_inst|hub75_inst|hub75_addr_reg [0]),
	.Clk(\macro_inst|sys_clk_div_cnt[3]~clkctrl_outclk__macro_inst|hub75_inst|state_reg.STATE_LATCH~q_X56_Y1_SIG_SIG ),
	.AsyncReset(AsyncReset_X56_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|hub75_inst|hub75_addr_reg[0]~3_combout ),
	.Cout(),
	.Q(\macro_inst|hub75_inst|hub75_addr_reg [0]));
defparam \macro_inst|hub75_inst|hub75_addr_reg[0] .coord_x = 12;
defparam \macro_inst|hub75_inst|hub75_addr_reg[0] .coord_y = 1;
defparam \macro_inst|hub75_inst|hub75_addr_reg[0] .coord_z = 3;
defparam \macro_inst|hub75_inst|hub75_addr_reg[0] .mask = 16'h0F0F;
defparam \macro_inst|hub75_inst|hub75_addr_reg[0] .modeMux = 1'b0;
defparam \macro_inst|hub75_inst|hub75_addr_reg[0] .FeedbackMux = 1'b1;
defparam \macro_inst|hub75_inst|hub75_addr_reg[0] .ShiftMux = 1'b0;
defparam \macro_inst|hub75_inst|hub75_addr_reg[0] .BypassEn = 1'b0;
defparam \macro_inst|hub75_inst|hub75_addr_reg[0] .CarryEnb = 1'b1;

alta_slice \macro_inst|hub75_inst|hub75_addr_reg[1] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\macro_inst|hub75_inst|hub75_addr_reg [0]),
	.Cin(),
	.Qin(\macro_inst|hub75_inst|hub75_addr_reg [1]),
	.Clk(\macro_inst|sys_clk_div_cnt[3]~clkctrl_outclk__macro_inst|hub75_inst|state_reg.STATE_LATCH~q_X56_Y1_SIG_SIG ),
	.AsyncReset(AsyncReset_X56_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|hub75_inst|Add1~0_combout ),
	.Cout(),
	.Q(\macro_inst|hub75_inst|hub75_addr_reg [1]));
defparam \macro_inst|hub75_inst|hub75_addr_reg[1] .coord_x = 12;
defparam \macro_inst|hub75_inst|hub75_addr_reg[1] .coord_y = 1;
defparam \macro_inst|hub75_inst|hub75_addr_reg[1] .coord_z = 0;
defparam \macro_inst|hub75_inst|hub75_addr_reg[1] .mask = 16'h0FF0;
defparam \macro_inst|hub75_inst|hub75_addr_reg[1] .modeMux = 1'b0;
defparam \macro_inst|hub75_inst|hub75_addr_reg[1] .FeedbackMux = 1'b1;
defparam \macro_inst|hub75_inst|hub75_addr_reg[1] .ShiftMux = 1'b0;
defparam \macro_inst|hub75_inst|hub75_addr_reg[1] .BypassEn = 1'b0;
defparam \macro_inst|hub75_inst|hub75_addr_reg[1] .CarryEnb = 1'b1;

alta_slice \macro_inst|hub75_inst|hub75_addr_reg[2] (
	.A(\macro_inst|hub75_inst|hub75_addr_reg [1]),
	.B(\macro_inst|hub75_inst|hub75_addr_reg [0]),
	.C(vcc),
	.D(\macro_inst|hub75_inst|state_reg.STATE_LATCH~q ),
	.Cin(),
	.Qin(\macro_inst|hub75_inst|hub75_addr_reg [2]),
	.Clk(\macro_inst|sys_clk_div_cnt[3]~clkctrl_outclk_X56_Y1_SIG_VCC ),
	.AsyncReset(AsyncReset_X56_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|hub75_inst|hub75_addr_reg[2]~0_combout ),
	.Cout(),
	.Q(\macro_inst|hub75_inst|hub75_addr_reg [2]));
defparam \macro_inst|hub75_inst|hub75_addr_reg[2] .coord_x = 12;
defparam \macro_inst|hub75_inst|hub75_addr_reg[2] .coord_y = 1;
defparam \macro_inst|hub75_inst|hub75_addr_reg[2] .coord_z = 15;
defparam \macro_inst|hub75_inst|hub75_addr_reg[2] .mask = 16'h78F0;
defparam \macro_inst|hub75_inst|hub75_addr_reg[2] .modeMux = 1'b0;
defparam \macro_inst|hub75_inst|hub75_addr_reg[2] .FeedbackMux = 1'b1;
defparam \macro_inst|hub75_inst|hub75_addr_reg[2] .ShiftMux = 1'b0;
defparam \macro_inst|hub75_inst|hub75_addr_reg[2] .BypassEn = 1'b0;
defparam \macro_inst|hub75_inst|hub75_addr_reg[2] .CarryEnb = 1'b1;

alta_slice \macro_inst|hub75_inst|hub75_addr_reg[3] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\macro_inst|hub75_inst|hub75_addr_reg[3]~1_combout ),
	.Cin(),
	.Qin(\macro_inst|hub75_inst|hub75_addr_reg [3]),
	.Clk(\macro_inst|sys_clk_div_cnt[3]~clkctrl_outclk_X56_Y1_SIG_VCC ),
	.AsyncReset(AsyncReset_X56_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|hub75_inst|hub75_addr_reg[3]~2_combout ),
	.Cout(),
	.Q(\macro_inst|hub75_inst|hub75_addr_reg [3]));
defparam \macro_inst|hub75_inst|hub75_addr_reg[3] .coord_x = 12;
defparam \macro_inst|hub75_inst|hub75_addr_reg[3] .coord_y = 1;
defparam \macro_inst|hub75_inst|hub75_addr_reg[3] .coord_z = 5;
defparam \macro_inst|hub75_inst|hub75_addr_reg[3] .mask = 16'h0FF0;
defparam \macro_inst|hub75_inst|hub75_addr_reg[3] .modeMux = 1'b0;
defparam \macro_inst|hub75_inst|hub75_addr_reg[3] .FeedbackMux = 1'b1;
defparam \macro_inst|hub75_inst|hub75_addr_reg[3] .ShiftMux = 1'b0;
defparam \macro_inst|hub75_inst|hub75_addr_reg[3] .BypassEn = 1'b0;
defparam \macro_inst|hub75_inst|hub75_addr_reg[3] .CarryEnb = 1'b1;

alta_slice \macro_inst|hub75_inst|hub75_addr_reg[3]~1 (
	.A(\macro_inst|hub75_inst|state_reg.STATE_LATCH~q ),
	.B(\macro_inst|hub75_inst|hub75_addr_reg [0]),
	.C(\macro_inst|hub75_inst|hub75_addr_reg [1]),
	.D(\macro_inst|hub75_inst|hub75_addr_reg [2]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|hub75_inst|hub75_addr_reg[3]~1_combout ),
	.Cout(),
	.Q());
defparam \macro_inst|hub75_inst|hub75_addr_reg[3]~1 .coord_x = 12;
defparam \macro_inst|hub75_inst|hub75_addr_reg[3]~1 .coord_y = 1;
defparam \macro_inst|hub75_inst|hub75_addr_reg[3]~1 .coord_z = 9;
defparam \macro_inst|hub75_inst|hub75_addr_reg[3]~1 .mask = 16'h8000;
defparam \macro_inst|hub75_inst|hub75_addr_reg[3]~1 .modeMux = 1'b0;
defparam \macro_inst|hub75_inst|hub75_addr_reg[3]~1 .FeedbackMux = 1'b0;
defparam \macro_inst|hub75_inst|hub75_addr_reg[3]~1 .ShiftMux = 1'b0;
defparam \macro_inst|hub75_inst|hub75_addr_reg[3]~1 .BypassEn = 1'b0;
defparam \macro_inst|hub75_inst|hub75_addr_reg[3]~1 .CarryEnb = 1'b1;

alta_slice \macro_inst|hub75_inst|rd_addr_a[6]~0 (
	.A(vcc),
	.B(\macro_inst|hub75_inst|hub75_addr_reg [0]),
	.C(vcc),
	.D(\macro_inst|hub75_inst|state_reg.STATE_LATCH~q ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|hub75_inst|rd_addr_a[6]~0_combout ),
	.Cout(),
	.Q());
defparam \macro_inst|hub75_inst|rd_addr_a[6]~0 .coord_x = 12;
defparam \macro_inst|hub75_inst|rd_addr_a[6]~0 .coord_y = 1;
defparam \macro_inst|hub75_inst|rd_addr_a[6]~0 .coord_z = 11;
defparam \macro_inst|hub75_inst|rd_addr_a[6]~0 .mask = 16'hCC33;
defparam \macro_inst|hub75_inst|rd_addr_a[6]~0 .modeMux = 1'b0;
defparam \macro_inst|hub75_inst|rd_addr_a[6]~0 .FeedbackMux = 1'b0;
defparam \macro_inst|hub75_inst|rd_addr_a[6]~0 .ShiftMux = 1'b0;
defparam \macro_inst|hub75_inst|rd_addr_a[6]~0 .BypassEn = 1'b0;
defparam \macro_inst|hub75_inst|rd_addr_a[6]~0 .CarryEnb = 1'b1;

alta_slice \macro_inst|hub75_inst|rd_addr_a[7]~1 (
	.A(vcc),
	.B(\macro_inst|hub75_inst|hub75_addr_reg [0]),
	.C(\macro_inst|hub75_inst|hub75_addr_reg [1]),
	.D(\macro_inst|hub75_inst|state_reg.STATE_LATCH~q ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|hub75_inst|rd_addr_a[7]~1_combout ),
	.Cout(),
	.Q());
defparam \macro_inst|hub75_inst|rd_addr_a[7]~1 .coord_x = 12;
defparam \macro_inst|hub75_inst|rd_addr_a[7]~1 .coord_y = 1;
defparam \macro_inst|hub75_inst|rd_addr_a[7]~1 .coord_z = 6;
defparam \macro_inst|hub75_inst|rd_addr_a[7]~1 .mask = 16'h0F3C;
defparam \macro_inst|hub75_inst|rd_addr_a[7]~1 .modeMux = 1'b0;
defparam \macro_inst|hub75_inst|rd_addr_a[7]~1 .FeedbackMux = 1'b0;
defparam \macro_inst|hub75_inst|rd_addr_a[7]~1 .ShiftMux = 1'b0;
defparam \macro_inst|hub75_inst|rd_addr_a[7]~1 .BypassEn = 1'b0;
defparam \macro_inst|hub75_inst|rd_addr_a[7]~1 .CarryEnb = 1'b1;

alta_slice \macro_inst|hub75_inst|rd_addr_a[8]~2 (
	.A(\macro_inst|hub75_inst|state_reg.STATE_LATCH~q ),
	.B(\macro_inst|hub75_inst|hub75_addr_reg [2]),
	.C(\macro_inst|hub75_inst|hub75_addr_reg [1]),
	.D(\macro_inst|hub75_inst|hub75_addr_reg [0]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|hub75_inst|rd_addr_a[8]~2_combout ),
	.Cout(),
	.Q());
defparam \macro_inst|hub75_inst|rd_addr_a[8]~2 .coord_x = 12;
defparam \macro_inst|hub75_inst|rd_addr_a[8]~2 .coord_y = 1;
defparam \macro_inst|hub75_inst|rd_addr_a[8]~2 .coord_z = 7;
defparam \macro_inst|hub75_inst|rd_addr_a[8]~2 .mask = 16'h3C6C;
defparam \macro_inst|hub75_inst|rd_addr_a[8]~2 .modeMux = 1'b0;
defparam \macro_inst|hub75_inst|rd_addr_a[8]~2 .FeedbackMux = 1'b0;
defparam \macro_inst|hub75_inst|rd_addr_a[8]~2 .ShiftMux = 1'b0;
defparam \macro_inst|hub75_inst|rd_addr_a[8]~2 .BypassEn = 1'b0;
defparam \macro_inst|hub75_inst|rd_addr_a[8]~2 .CarryEnb = 1'b1;

alta_slice \macro_inst|hub75_inst|rd_addr_a[9]~3 (
	.A(\macro_inst|hub75_inst|state_reg.STATE_LATCH~q ),
	.B(\macro_inst|hub75_inst|hub75_addr_reg [2]),
	.C(\macro_inst|hub75_inst|hub75_addr_reg [1]),
	.D(\macro_inst|hub75_inst|hub75_addr_reg [0]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|hub75_inst|rd_addr_a[9]~3_combout ),
	.Cout(),
	.Q());
defparam \macro_inst|hub75_inst|rd_addr_a[9]~3 .coord_x = 12;
defparam \macro_inst|hub75_inst|rd_addr_a[9]~3 .coord_y = 1;
defparam \macro_inst|hub75_inst|rd_addr_a[9]~3 .coord_z = 4;
defparam \macro_inst|hub75_inst|rd_addr_a[9]~3 .mask = 16'hC080;
defparam \macro_inst|hub75_inst|rd_addr_a[9]~3 .modeMux = 1'b0;
defparam \macro_inst|hub75_inst|rd_addr_a[9]~3 .FeedbackMux = 1'b0;
defparam \macro_inst|hub75_inst|rd_addr_a[9]~3 .ShiftMux = 1'b0;
defparam \macro_inst|hub75_inst|rd_addr_a[9]~3 .BypassEn = 1'b0;
defparam \macro_inst|hub75_inst|rd_addr_a[9]~3 .CarryEnb = 1'b1;

alta_slice \macro_inst|hub75_inst|rd_addr_a[9]~4 (
	.A(vcc),
	.B(vcc),
	.C(\macro_inst|hub75_inst|rd_addr_a[9]~3_combout ),
	.D(\macro_inst|hub75_inst|hub75_addr_reg [3]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|hub75_inst|rd_addr_a[9]~4_combout ),
	.Cout(),
	.Q());
defparam \macro_inst|hub75_inst|rd_addr_a[9]~4 .coord_x = 12;
defparam \macro_inst|hub75_inst|rd_addr_a[9]~4 .coord_y = 1;
defparam \macro_inst|hub75_inst|rd_addr_a[9]~4 .coord_z = 2;
defparam \macro_inst|hub75_inst|rd_addr_a[9]~4 .mask = 16'h0FF0;
defparam \macro_inst|hub75_inst|rd_addr_a[9]~4 .modeMux = 1'b0;
defparam \macro_inst|hub75_inst|rd_addr_a[9]~4 .FeedbackMux = 1'b0;
defparam \macro_inst|hub75_inst|rd_addr_a[9]~4 .ShiftMux = 1'b0;
defparam \macro_inst|hub75_inst|rd_addr_a[9]~4 .BypassEn = 1'b0;
defparam \macro_inst|hub75_inst|rd_addr_a[9]~4 .CarryEnb = 1'b1;

alta_slice \macro_inst|hub75_inst|shift_count_reg[0] (
	.A(vcc),
	.B(\macro_inst|hub75_inst|shift_count_reg [0]),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\macro_inst|hub75_inst|shift_count_reg [0]),
	.Clk(\macro_inst|sys_clk_div_cnt[3]~clkctrl_outclk__macro_inst|hub75_inst|state_reg.STATE_LATCH~q_X54_Y1_SIG_INV ),
	.AsyncReset(AsyncReset_X54_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|hub75_inst|Add2~0_combout ),
	.Cout(\macro_inst|hub75_inst|Add2~1 ),
	.Q(\macro_inst|hub75_inst|shift_count_reg [0]));
defparam \macro_inst|hub75_inst|shift_count_reg[0] .coord_x = 12;
defparam \macro_inst|hub75_inst|shift_count_reg[0] .coord_y = 2;
defparam \macro_inst|hub75_inst|shift_count_reg[0] .coord_z = 8;
defparam \macro_inst|hub75_inst|shift_count_reg[0] .mask = 16'h33CC;
defparam \macro_inst|hub75_inst|shift_count_reg[0] .modeMux = 1'b0;
defparam \macro_inst|hub75_inst|shift_count_reg[0] .FeedbackMux = 1'b0;
defparam \macro_inst|hub75_inst|shift_count_reg[0] .ShiftMux = 1'b0;
defparam \macro_inst|hub75_inst|shift_count_reg[0] .BypassEn = 1'b0;
defparam \macro_inst|hub75_inst|shift_count_reg[0] .CarryEnb = 1'b0;

alta_slice \macro_inst|hub75_inst|shift_count_reg[1] (
	.A(vcc),
	.B(\macro_inst|hub75_inst|shift_count_reg [1]),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|hub75_inst|Add2~1 ),
	.Qin(\macro_inst|hub75_inst|shift_count_reg [1]),
	.Clk(\macro_inst|sys_clk_div_cnt[3]~clkctrl_outclk__macro_inst|hub75_inst|state_reg.STATE_LATCH~q_X54_Y1_SIG_INV ),
	.AsyncReset(AsyncReset_X54_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|hub75_inst|Add2~2_combout ),
	.Cout(\macro_inst|hub75_inst|Add2~3 ),
	.Q(\macro_inst|hub75_inst|shift_count_reg [1]));
defparam \macro_inst|hub75_inst|shift_count_reg[1] .coord_x = 12;
defparam \macro_inst|hub75_inst|shift_count_reg[1] .coord_y = 2;
defparam \macro_inst|hub75_inst|shift_count_reg[1] .coord_z = 9;
defparam \macro_inst|hub75_inst|shift_count_reg[1] .mask = 16'h3C3F;
defparam \macro_inst|hub75_inst|shift_count_reg[1] .modeMux = 1'b1;
defparam \macro_inst|hub75_inst|shift_count_reg[1] .FeedbackMux = 1'b0;
defparam \macro_inst|hub75_inst|shift_count_reg[1] .ShiftMux = 1'b0;
defparam \macro_inst|hub75_inst|shift_count_reg[1] .BypassEn = 1'b0;
defparam \macro_inst|hub75_inst|shift_count_reg[1] .CarryEnb = 1'b0;

alta_slice \macro_inst|hub75_inst|shift_count_reg[2] (
	.A(vcc),
	.B(\macro_inst|hub75_inst|shift_count_reg [2]),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|hub75_inst|Add2~3 ),
	.Qin(\macro_inst|hub75_inst|shift_count_reg [2]),
	.Clk(\macro_inst|sys_clk_div_cnt[3]~clkctrl_outclk__macro_inst|hub75_inst|state_reg.STATE_LATCH~q_X54_Y1_SIG_INV ),
	.AsyncReset(AsyncReset_X54_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|hub75_inst|Add2~4_combout ),
	.Cout(\macro_inst|hub75_inst|Add2~5 ),
	.Q(\macro_inst|hub75_inst|shift_count_reg [2]));
defparam \macro_inst|hub75_inst|shift_count_reg[2] .coord_x = 12;
defparam \macro_inst|hub75_inst|shift_count_reg[2] .coord_y = 2;
defparam \macro_inst|hub75_inst|shift_count_reg[2] .coord_z = 10;
defparam \macro_inst|hub75_inst|shift_count_reg[2] .mask = 16'hC30C;
defparam \macro_inst|hub75_inst|shift_count_reg[2] .modeMux = 1'b1;
defparam \macro_inst|hub75_inst|shift_count_reg[2] .FeedbackMux = 1'b0;
defparam \macro_inst|hub75_inst|shift_count_reg[2] .ShiftMux = 1'b0;
defparam \macro_inst|hub75_inst|shift_count_reg[2] .BypassEn = 1'b0;
defparam \macro_inst|hub75_inst|shift_count_reg[2] .CarryEnb = 1'b0;

alta_slice \macro_inst|hub75_inst|shift_count_reg[3] (
	.A(vcc),
	.B(\macro_inst|hub75_inst|shift_count_reg [3]),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|hub75_inst|Add2~5 ),
	.Qin(\macro_inst|hub75_inst|shift_count_reg [3]),
	.Clk(\macro_inst|sys_clk_div_cnt[3]~clkctrl_outclk__macro_inst|hub75_inst|state_reg.STATE_LATCH~q_X54_Y1_SIG_INV ),
	.AsyncReset(AsyncReset_X54_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|hub75_inst|Add2~6_combout ),
	.Cout(\macro_inst|hub75_inst|Add2~7 ),
	.Q(\macro_inst|hub75_inst|shift_count_reg [3]));
defparam \macro_inst|hub75_inst|shift_count_reg[3] .coord_x = 12;
defparam \macro_inst|hub75_inst|shift_count_reg[3] .coord_y = 2;
defparam \macro_inst|hub75_inst|shift_count_reg[3] .coord_z = 11;
defparam \macro_inst|hub75_inst|shift_count_reg[3] .mask = 16'h3C3F;
defparam \macro_inst|hub75_inst|shift_count_reg[3] .modeMux = 1'b1;
defparam \macro_inst|hub75_inst|shift_count_reg[3] .FeedbackMux = 1'b0;
defparam \macro_inst|hub75_inst|shift_count_reg[3] .ShiftMux = 1'b0;
defparam \macro_inst|hub75_inst|shift_count_reg[3] .BypassEn = 1'b0;
defparam \macro_inst|hub75_inst|shift_count_reg[3] .CarryEnb = 1'b0;

alta_slice \macro_inst|hub75_inst|shift_count_reg[4] (
	.A(vcc),
	.B(\macro_inst|hub75_inst|shift_count_reg [4]),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|hub75_inst|Add2~7 ),
	.Qin(\macro_inst|hub75_inst|shift_count_reg [4]),
	.Clk(\macro_inst|sys_clk_div_cnt[3]~clkctrl_outclk__macro_inst|hub75_inst|state_reg.STATE_LATCH~q_X54_Y1_SIG_INV ),
	.AsyncReset(AsyncReset_X54_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|hub75_inst|Add2~8_combout ),
	.Cout(\macro_inst|hub75_inst|Add2~9 ),
	.Q(\macro_inst|hub75_inst|shift_count_reg [4]));
defparam \macro_inst|hub75_inst|shift_count_reg[4] .coord_x = 12;
defparam \macro_inst|hub75_inst|shift_count_reg[4] .coord_y = 2;
defparam \macro_inst|hub75_inst|shift_count_reg[4] .coord_z = 12;
defparam \macro_inst|hub75_inst|shift_count_reg[4] .mask = 16'hC30C;
defparam \macro_inst|hub75_inst|shift_count_reg[4] .modeMux = 1'b1;
defparam \macro_inst|hub75_inst|shift_count_reg[4] .FeedbackMux = 1'b0;
defparam \macro_inst|hub75_inst|shift_count_reg[4] .ShiftMux = 1'b0;
defparam \macro_inst|hub75_inst|shift_count_reg[4] .BypassEn = 1'b0;
defparam \macro_inst|hub75_inst|shift_count_reg[4] .CarryEnb = 1'b0;

alta_slice \macro_inst|hub75_inst|shift_count_reg[5] (
	.A(vcc),
	.B(\macro_inst|hub75_inst|shift_count_reg [5]),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|hub75_inst|Add2~9 ),
	.Qin(\macro_inst|hub75_inst|shift_count_reg [5]),
	.Clk(\macro_inst|sys_clk_div_cnt[3]~clkctrl_outclk__macro_inst|hub75_inst|state_reg.STATE_LATCH~q_X54_Y1_SIG_INV ),
	.AsyncReset(AsyncReset_X54_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|hub75_inst|Add2~10_combout ),
	.Cout(\macro_inst|hub75_inst|Add2~11 ),
	.Q(\macro_inst|hub75_inst|shift_count_reg [5]));
defparam \macro_inst|hub75_inst|shift_count_reg[5] .coord_x = 12;
defparam \macro_inst|hub75_inst|shift_count_reg[5] .coord_y = 2;
defparam \macro_inst|hub75_inst|shift_count_reg[5] .coord_z = 13;
defparam \macro_inst|hub75_inst|shift_count_reg[5] .mask = 16'h3C3F;
defparam \macro_inst|hub75_inst|shift_count_reg[5] .modeMux = 1'b1;
defparam \macro_inst|hub75_inst|shift_count_reg[5] .FeedbackMux = 1'b0;
defparam \macro_inst|hub75_inst|shift_count_reg[5] .ShiftMux = 1'b0;
defparam \macro_inst|hub75_inst|shift_count_reg[5] .BypassEn = 1'b0;
defparam \macro_inst|hub75_inst|shift_count_reg[5] .CarryEnb = 1'b0;

alta_slice \macro_inst|hub75_inst|shift_count_reg[6] (
	.A(\macro_inst|hub75_inst|Add2~12_combout ),
	.B(vcc),
	.C(\macro_inst|hub75_inst|Equal0~1_combout ),
	.D(vcc),
	.Cin(),
	.Qin(\macro_inst|hub75_inst|shift_count_reg [6]),
	.Clk(\macro_inst|sys_clk_div_cnt[3]~clkctrl_outclk__macro_inst|hub75_inst|state_reg.STATE_LATCH~q_X54_Y1_SIG_INV ),
	.AsyncReset(AsyncReset_X54_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|hub75_inst|shift_count_reg~0_combout ),
	.Cout(),
	.Q(\macro_inst|hub75_inst|shift_count_reg [6]));
defparam \macro_inst|hub75_inst|shift_count_reg[6] .coord_x = 12;
defparam \macro_inst|hub75_inst|shift_count_reg[6] .coord_y = 2;
defparam \macro_inst|hub75_inst|shift_count_reg[6] .coord_z = 5;
defparam \macro_inst|hub75_inst|shift_count_reg[6] .mask = 16'hA0A0;
defparam \macro_inst|hub75_inst|shift_count_reg[6] .modeMux = 1'b0;
defparam \macro_inst|hub75_inst|shift_count_reg[6] .FeedbackMux = 1'b0;
defparam \macro_inst|hub75_inst|shift_count_reg[6] .ShiftMux = 1'b0;
defparam \macro_inst|hub75_inst|shift_count_reg[6] .BypassEn = 1'b0;
defparam \macro_inst|hub75_inst|shift_count_reg[6] .CarryEnb = 1'b1;

alta_slice \macro_inst|hub75_inst|state_reg.STATE_LATCH (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\macro_inst|hub75_inst|Equal0~1_combout ),
	.Cin(),
	.Qin(\macro_inst|hub75_inst|state_reg.STATE_LATCH~q ),
	.Clk(\macro_inst|sys_clk_div_cnt[3]~clkctrl_outclk_X54_Y1_SIG_VCC ),
	.AsyncReset(AsyncReset_X54_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|hub75_inst|state_reg~5_combout ),
	.Cout(),
	.Q(\macro_inst|hub75_inst|state_reg.STATE_LATCH~q ));
defparam \macro_inst|hub75_inst|state_reg.STATE_LATCH .coord_x = 12;
defparam \macro_inst|hub75_inst|state_reg.STATE_LATCH .coord_y = 2;
defparam \macro_inst|hub75_inst|state_reg.STATE_LATCH .coord_z = 1;
defparam \macro_inst|hub75_inst|state_reg.STATE_LATCH .mask = 16'h000F;
defparam \macro_inst|hub75_inst|state_reg.STATE_LATCH .modeMux = 1'b0;
defparam \macro_inst|hub75_inst|state_reg.STATE_LATCH .FeedbackMux = 1'b1;
defparam \macro_inst|hub75_inst|state_reg.STATE_LATCH .ShiftMux = 1'b0;
defparam \macro_inst|hub75_inst|state_reg.STATE_LATCH .BypassEn = 1'b0;
defparam \macro_inst|hub75_inst|state_reg.STATE_LATCH .CarryEnb = 1'b1;

alta_bram9k \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0 (
	.DataInA({vcc, vcc, \macro_inst|rx_inst|data_out [15], \macro_inst|rx_inst|data_out [10], \macro_inst|rx_inst|data_out [4], vcc, \macro_inst|rx_inst|data_out [15], \macro_inst|rx_inst|data_out [10], \macro_inst|rx_inst|data_out [4], vcc, vcc, \macro_inst|rx_inst|data_out [15], \macro_inst|rx_inst|data_out [10], \macro_inst|rx_inst|data_out [4], vcc, \macro_inst|rx_inst|data_out [15], \macro_inst|rx_inst|data_out [10], \macro_inst|rx_inst|data_out [4]}),
	.DataInB({1'bz, 1'bz, 1'bz, 1'bz, 1'bz, 1'bz, 1'bz, 1'bz, 1'bz, 1'bz, 1'bz, 1'bz, 1'bz, 1'bz, 1'bz, 1'bz, 1'bz, 1'bz}),
	.AddressA({\macro_inst|write_addr [10], \macro_inst|write_addr [9], \macro_inst|write_addr [8], \macro_inst|write_addr [7], \macro_inst|write_addr [6], \macro_inst|write_addr [5], \macro_inst|write_addr [4], \macro_inst|write_addr [3], \macro_inst|write_addr [2], \macro_inst|write_addr [1], \macro_inst|write_addr [0], vcc, vcc}),
	.AddressB({\~GND~combout , \macro_inst|hub75_inst|rd_addr_a[9]~4_combout , \macro_inst|hub75_inst|rd_addr_a[8]~2_combout , \macro_inst|hub75_inst|rd_addr_a[7]~1_combout , \macro_inst|hub75_inst|rd_addr_a[6]~0_combout , \macro_inst|hub75_inst|shift_count_reg [5], \macro_inst|hub75_inst|shift_count_reg [4], \macro_inst|hub75_inst|shift_count_reg [3], \macro_inst|hub75_inst|shift_count_reg [2], \macro_inst|hub75_inst|shift_count_reg [1], \macro_inst|hub75_inst|shift_count_reg [0], vcc, vcc}),
	.ByteEnA({vcc, vcc}),
	.ByteEnB({1'bz, 1'bz}),
	.DataOutA({\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [17], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [16], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [15], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [14], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [13], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [12], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [11], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [10], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [9], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [8], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [7], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [6], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [5], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [4], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [3], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [2], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [1], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutA [0]}),
	.DataOutB({\macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [17], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [16], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [15], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [14], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [13], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [12], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [11], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [10], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [9], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [8], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [7], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [6], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [5], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [4], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [3], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [2], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [1], \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0__DataOutB [0]}),
	.Clk0(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp ),
	.ClkEn0(),
	.AsyncReset0(gnd),
	.Clk1(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp ),
	.ClkEn1(),
	.AsyncReset1(gnd),
	.WeA(\macro_inst|rx_inst|data_valid~q ),
	.ReA(gnd),
	.WeB(gnd),
	.ReB(vcc),
	.AddressStallA(gnd),
	.AddressStallB(gnd));
defparam \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0 .coord_x = 13;
defparam \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0 .coord_y = 1;
defparam \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0 .coord_z = 0;
defparam \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0 .CLKMODE = 2'b01;
defparam \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0 .PACKEDMODE = 1'b0;
defparam \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0 .PORTA_CLKIN_EN = 1'b0;
defparam \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0 .PORTA_CLKOUT_EN = 1'b0;
defparam \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0 .PORTB_CLKIN_EN = 1'b0;
defparam \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0 .PORTB_CLKOUT_EN = 1'b0;
defparam \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0 .PORTA_RSTIN_EN = 1'b0;
defparam \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0 .PORTA_RSTOUT_EN = 1'b0;
defparam \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0 .PORTB_RSTIN_EN = 1'b0;
defparam \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0 .PORTB_RSTOUT_EN = 1'b0;
defparam \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0 .PORTA_WIDTH = 5'b01100;
defparam \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0 .PORTB_WIDTH = 5'b01100;
defparam \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0 .PORTA_WRITETHRU = 1'b1;
defparam \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0 .PORTB_WRITETHRU = 1'b1;
defparam \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0 .PORTA_OUTREG = 1'b0;
defparam \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0 .PORTB_OUTREG = 1'b0;
defparam \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0 .RSEN_DLY = 2'b00;
defparam \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0 .DLYTIME = 2'b00;
defparam \macro_inst|ram_inst|mem_rtl_0|auto_generated|ram_block1a0 .INIT_VAL = 9216'h221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844;

alta_bram9k \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0 (
	.DataInA({vcc, vcc, \macro_inst|rx_inst|data_out [15], \macro_inst|rx_inst|data_out [10], \macro_inst|rx_inst|data_out [4], vcc, \macro_inst|rx_inst|data_out [15], \macro_inst|rx_inst|data_out [10], \macro_inst|rx_inst|data_out [4], vcc, vcc, \macro_inst|rx_inst|data_out [15], \macro_inst|rx_inst|data_out [10], \macro_inst|rx_inst|data_out [4], vcc, \macro_inst|rx_inst|data_out [15], \macro_inst|rx_inst|data_out [10], \macro_inst|rx_inst|data_out [4]}),
	.DataInB({1'bz, 1'bz, 1'bz, 1'bz, 1'bz, 1'bz, 1'bz, 1'bz, 1'bz, 1'bz, 1'bz, 1'bz, 1'bz, 1'bz, 1'bz, 1'bz, 1'bz, 1'bz}),
	.AddressA({\macro_inst|write_addr [10], \macro_inst|write_addr [9], \macro_inst|write_addr [8], \macro_inst|write_addr [7], \macro_inst|write_addr [6], \macro_inst|write_addr [5], \macro_inst|write_addr [4], \macro_inst|write_addr [3], \macro_inst|write_addr [2], \macro_inst|write_addr [1], \macro_inst|write_addr [0], vcc, vcc}),
	.AddressB({vcc, \macro_inst|hub75_inst|rd_addr_a[9]~4_combout , \macro_inst|hub75_inst|rd_addr_a[8]~2_combout , \macro_inst|hub75_inst|rd_addr_a[7]~1_combout , \macro_inst|hub75_inst|rd_addr_a[6]~0_combout , \macro_inst|hub75_inst|shift_count_reg [5], \macro_inst|hub75_inst|shift_count_reg [4], \macro_inst|hub75_inst|shift_count_reg [3], \macro_inst|hub75_inst|shift_count_reg [2], \macro_inst|hub75_inst|shift_count_reg [1], \macro_inst|hub75_inst|shift_count_reg [0], vcc, vcc}),
	.ByteEnA({vcc, vcc}),
	.ByteEnB({1'bz, 1'bz}),
	.DataOutA({\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [17], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [16], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [15], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [14], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [13], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [12], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [11], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [10], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [9], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [8], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [7], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [6], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [5], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [4], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [3], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [2], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [1], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutA [0]}),
	.DataOutB({\macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [17], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [16], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [15], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [14], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [13], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [12], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [11], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [10], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [9], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [8], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [7], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [6], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [5], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [4], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [3], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [2], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [1], \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0__DataOutB [0]}),
	.Clk0(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp ),
	.ClkEn0(),
	.AsyncReset0(gnd),
	.Clk1(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp ),
	.ClkEn1(),
	.AsyncReset1(gnd),
	.WeA(\macro_inst|rx_inst|data_valid~q ),
	.ReA(gnd),
	.WeB(gnd),
	.ReB(vcc),
	.AddressStallA(gnd),
	.AddressStallB(gnd));
defparam \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0 .coord_x = 13;
defparam \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0 .coord_y = 2;
defparam \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0 .coord_z = 0;
defparam \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0 .CLKMODE = 2'b01;
defparam \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0 .PACKEDMODE = 1'b0;
defparam \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0 .PORTA_CLKIN_EN = 1'b0;
defparam \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0 .PORTA_CLKOUT_EN = 1'b0;
defparam \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0 .PORTB_CLKIN_EN = 1'b0;
defparam \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0 .PORTB_CLKOUT_EN = 1'b0;
defparam \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0 .PORTA_RSTIN_EN = 1'b0;
defparam \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0 .PORTA_RSTOUT_EN = 1'b0;
defparam \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0 .PORTB_RSTIN_EN = 1'b0;
defparam \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0 .PORTB_RSTOUT_EN = 1'b0;
defparam \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0 .PORTA_WIDTH = 5'b01100;
defparam \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0 .PORTB_WIDTH = 5'b01100;
defparam \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0 .PORTA_WRITETHRU = 1'b1;
defparam \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0 .PORTB_WRITETHRU = 1'b1;
defparam \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0 .PORTA_OUTREG = 1'b0;
defparam \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0 .PORTB_OUTREG = 1'b0;
defparam \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0 .RSEN_DLY = 2'b00;
defparam \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0 .DLYTIME = 2'b00;
defparam \macro_inst|ram_inst|mem_rtl_1|auto_generated|ram_block1a0 .INIT_VAL = 9216'h221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211221102211088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844088448844;

alta_slice \macro_inst|rx_inst|bit_cnt[0] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\macro_inst|rx_inst|bit_cnt [0]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk_X54_Y2_SIG_VCC ),
	.AsyncReset(\MATRIXSPI_CS~inputclkctrl_outclk__AsyncReset_X54_Y2_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|rx_inst|bit_cnt[0]~3_combout ),
	.Cout(),
	.Q(\macro_inst|rx_inst|bit_cnt [0]));
defparam \macro_inst|rx_inst|bit_cnt[0] .coord_x = 14;
defparam \macro_inst|rx_inst|bit_cnt[0] .coord_y = 2;
defparam \macro_inst|rx_inst|bit_cnt[0] .coord_z = 5;
defparam \macro_inst|rx_inst|bit_cnt[0] .mask = 16'h0F0F;
defparam \macro_inst|rx_inst|bit_cnt[0] .modeMux = 1'b0;
defparam \macro_inst|rx_inst|bit_cnt[0] .FeedbackMux = 1'b1;
defparam \macro_inst|rx_inst|bit_cnt[0] .ShiftMux = 1'b0;
defparam \macro_inst|rx_inst|bit_cnt[0] .BypassEn = 1'b0;
defparam \macro_inst|rx_inst|bit_cnt[0] .CarryEnb = 1'b1;

alta_slice \macro_inst|rx_inst|bit_cnt[1] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\macro_inst|rx_inst|bit_cnt [0]),
	.Cin(),
	.Qin(\macro_inst|rx_inst|bit_cnt [1]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk_X54_Y2_SIG_VCC ),
	.AsyncReset(\MATRIXSPI_CS~inputclkctrl_outclk__AsyncReset_X54_Y2_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|rx_inst|bit_cnt[1]~2_combout ),
	.Cout(),
	.Q(\macro_inst|rx_inst|bit_cnt [1]));
defparam \macro_inst|rx_inst|bit_cnt[1] .coord_x = 14;
defparam \macro_inst|rx_inst|bit_cnt[1] .coord_y = 2;
defparam \macro_inst|rx_inst|bit_cnt[1] .coord_z = 3;
defparam \macro_inst|rx_inst|bit_cnt[1] .mask = 16'h0FF0;
defparam \macro_inst|rx_inst|bit_cnt[1] .modeMux = 1'b0;
defparam \macro_inst|rx_inst|bit_cnt[1] .FeedbackMux = 1'b1;
defparam \macro_inst|rx_inst|bit_cnt[1] .ShiftMux = 1'b0;
defparam \macro_inst|rx_inst|bit_cnt[1] .BypassEn = 1'b0;
defparam \macro_inst|rx_inst|bit_cnt[1] .CarryEnb = 1'b1;

alta_slice \macro_inst|rx_inst|bit_cnt[2] (
	.A(vcc),
	.B(\macro_inst|rx_inst|bit_cnt [1]),
	.C(vcc),
	.D(\macro_inst|rx_inst|bit_cnt [0]),
	.Cin(),
	.Qin(\macro_inst|rx_inst|bit_cnt [2]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk_X54_Y2_SIG_VCC ),
	.AsyncReset(\MATRIXSPI_CS~inputclkctrl_outclk__AsyncReset_X54_Y2_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|rx_inst|bit_cnt[2]~1_combout ),
	.Cout(),
	.Q(\macro_inst|rx_inst|bit_cnt [2]));
defparam \macro_inst|rx_inst|bit_cnt[2] .coord_x = 14;
defparam \macro_inst|rx_inst|bit_cnt[2] .coord_y = 2;
defparam \macro_inst|rx_inst|bit_cnt[2] .coord_z = 1;
defparam \macro_inst|rx_inst|bit_cnt[2] .mask = 16'h3CF0;
defparam \macro_inst|rx_inst|bit_cnt[2] .modeMux = 1'b0;
defparam \macro_inst|rx_inst|bit_cnt[2] .FeedbackMux = 1'b1;
defparam \macro_inst|rx_inst|bit_cnt[2] .ShiftMux = 1'b0;
defparam \macro_inst|rx_inst|bit_cnt[2] .BypassEn = 1'b0;
defparam \macro_inst|rx_inst|bit_cnt[2] .CarryEnb = 1'b1;

alta_slice \macro_inst|rx_inst|bit_cnt[3] (
	.A(\macro_inst|rx_inst|bit_cnt [0]),
	.B(\macro_inst|rx_inst|bit_cnt [2]),
	.C(vcc),
	.D(\macro_inst|rx_inst|bit_cnt [1]),
	.Cin(),
	.Qin(\macro_inst|rx_inst|bit_cnt [3]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk_X54_Y2_SIG_VCC ),
	.AsyncReset(\MATRIXSPI_CS~inputclkctrl_outclk__AsyncReset_X54_Y2_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|rx_inst|bit_cnt[3]~0_combout ),
	.Cout(),
	.Q(\macro_inst|rx_inst|bit_cnt [3]));
defparam \macro_inst|rx_inst|bit_cnt[3] .coord_x = 14;
defparam \macro_inst|rx_inst|bit_cnt[3] .coord_y = 2;
defparam \macro_inst|rx_inst|bit_cnt[3] .coord_z = 4;
defparam \macro_inst|rx_inst|bit_cnt[3] .mask = 16'h78F0;
defparam \macro_inst|rx_inst|bit_cnt[3] .modeMux = 1'b0;
defparam \macro_inst|rx_inst|bit_cnt[3] .FeedbackMux = 1'b1;
defparam \macro_inst|rx_inst|bit_cnt[3] .ShiftMux = 1'b0;
defparam \macro_inst|rx_inst|bit_cnt[3] .BypassEn = 1'b0;
defparam \macro_inst|rx_inst|bit_cnt[3] .CarryEnb = 1'b1;

alta_slice \macro_inst|rx_inst|data_out[10] (
	.A(),
	.B(),
	.C(\macro_inst|rx_inst|shift_reg [9]),
	.D(),
	.Cin(),
	.Qin(\macro_inst|rx_inst|data_out [10]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk__macro_inst|rx_inst|data_out[15]~0_combout_X53_Y1_SIG_SIG ),
	.AsyncReset(AsyncReset_X53_Y1_GND),
	.SyncReset(SyncReset_X53_Y1_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X53_Y1_VCC),
	.LutOut(),
	.Cout(),
	.Q(\macro_inst|rx_inst|data_out [10]));
defparam \macro_inst|rx_inst|data_out[10] .coord_x = 14;
defparam \macro_inst|rx_inst|data_out[10] .coord_y = 1;
defparam \macro_inst|rx_inst|data_out[10] .coord_z = 8;
defparam \macro_inst|rx_inst|data_out[10] .mask = 16'hFFFF;
defparam \macro_inst|rx_inst|data_out[10] .modeMux = 1'b1;
defparam \macro_inst|rx_inst|data_out[10] .FeedbackMux = 1'b0;
defparam \macro_inst|rx_inst|data_out[10] .ShiftMux = 1'b0;
defparam \macro_inst|rx_inst|data_out[10] .BypassEn = 1'b1;
defparam \macro_inst|rx_inst|data_out[10] .CarryEnb = 1'b1;

alta_slice \macro_inst|rx_inst|data_out[15] (
	.A(),
	.B(),
	.C(\macro_inst|rx_inst|shift_reg [14]),
	.D(),
	.Cin(),
	.Qin(\macro_inst|rx_inst|data_out [15]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk__macro_inst|rx_inst|data_out[15]~0_combout_X53_Y1_SIG_SIG ),
	.AsyncReset(AsyncReset_X53_Y1_GND),
	.SyncReset(SyncReset_X53_Y1_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X53_Y1_VCC),
	.LutOut(),
	.Cout(),
	.Q(\macro_inst|rx_inst|data_out [15]));
defparam \macro_inst|rx_inst|data_out[15] .coord_x = 14;
defparam \macro_inst|rx_inst|data_out[15] .coord_y = 1;
defparam \macro_inst|rx_inst|data_out[15] .coord_z = 4;
defparam \macro_inst|rx_inst|data_out[15] .mask = 16'hFFFF;
defparam \macro_inst|rx_inst|data_out[15] .modeMux = 1'b1;
defparam \macro_inst|rx_inst|data_out[15] .FeedbackMux = 1'b0;
defparam \macro_inst|rx_inst|data_out[15] .ShiftMux = 1'b0;
defparam \macro_inst|rx_inst|data_out[15] .BypassEn = 1'b1;
defparam \macro_inst|rx_inst|data_out[15] .CarryEnb = 1'b1;

alta_slice \macro_inst|rx_inst|data_out[15]~0 (
	.A(vcc),
	.B(vcc),
	.C(\MATRIXSPI_CS~input_o ),
	.D(\macro_inst|rx_inst|Equal0~0_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|rx_inst|data_out[15]~0_combout ),
	.Cout(),
	.Q());
defparam \macro_inst|rx_inst|data_out[15]~0 .coord_x = 14;
defparam \macro_inst|rx_inst|data_out[15]~0 .coord_y = 1;
defparam \macro_inst|rx_inst|data_out[15]~0 .coord_z = 14;
defparam \macro_inst|rx_inst|data_out[15]~0 .mask = 16'h0F00;
defparam \macro_inst|rx_inst|data_out[15]~0 .modeMux = 1'b0;
defparam \macro_inst|rx_inst|data_out[15]~0 .FeedbackMux = 1'b0;
defparam \macro_inst|rx_inst|data_out[15]~0 .ShiftMux = 1'b0;
defparam \macro_inst|rx_inst|data_out[15]~0 .BypassEn = 1'b0;
defparam \macro_inst|rx_inst|data_out[15]~0 .CarryEnb = 1'b1;

alta_slice \macro_inst|rx_inst|data_out[4] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\macro_inst|rx_inst|shift_reg [3]),
	.Cin(),
	.Qin(\macro_inst|rx_inst|data_out [4]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk__macro_inst|rx_inst|data_out[15]~0_combout_X53_Y1_SIG_SIG ),
	.AsyncReset(AsyncReset_X53_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|rx_inst|data_out[4]~feeder_combout ),
	.Cout(),
	.Q(\macro_inst|rx_inst|data_out [4]));
defparam \macro_inst|rx_inst|data_out[4] .coord_x = 14;
defparam \macro_inst|rx_inst|data_out[4] .coord_y = 1;
defparam \macro_inst|rx_inst|data_out[4] .coord_z = 1;
defparam \macro_inst|rx_inst|data_out[4] .mask = 16'hFF00;
defparam \macro_inst|rx_inst|data_out[4] .modeMux = 1'b0;
defparam \macro_inst|rx_inst|data_out[4] .FeedbackMux = 1'b0;
defparam \macro_inst|rx_inst|data_out[4] .ShiftMux = 1'b0;
defparam \macro_inst|rx_inst|data_out[4] .BypassEn = 1'b0;
defparam \macro_inst|rx_inst|data_out[4] .CarryEnb = 1'b1;

alta_slice \macro_inst|rx_inst|data_valid (
	.A(\macro_inst|rx_inst|bit_cnt [3]),
	.B(\macro_inst|rx_inst|bit_cnt [2]),
	.C(\macro_inst|rx_inst|bit_cnt [1]),
	.D(\macro_inst|rx_inst|bit_cnt [0]),
	.Cin(),
	.Qin(\macro_inst|rx_inst|data_valid~q ),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk_X54_Y2_SIG_VCC ),
	.AsyncReset(\MATRIXSPI_CS~inputclkctrl_outclk__AsyncReset_X54_Y2_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|rx_inst|Equal0~0_combout ),
	.Cout(),
	.Q(\macro_inst|rx_inst|data_valid~q ));
defparam \macro_inst|rx_inst|data_valid .coord_x = 14;
defparam \macro_inst|rx_inst|data_valid .coord_y = 2;
defparam \macro_inst|rx_inst|data_valid .coord_z = 2;
defparam \macro_inst|rx_inst|data_valid .mask = 16'h8000;
defparam \macro_inst|rx_inst|data_valid .modeMux = 1'b0;
defparam \macro_inst|rx_inst|data_valid .FeedbackMux = 1'b0;
defparam \macro_inst|rx_inst|data_valid .ShiftMux = 1'b0;
defparam \macro_inst|rx_inst|data_valid .BypassEn = 1'b0;
defparam \macro_inst|rx_inst|data_valid .CarryEnb = 1'b1;

alta_slice \macro_inst|rx_inst|shift_reg[0] (
	.A(),
	.B(),
	.C(\MATRIXSPI_MOSI~input_o ),
	.D(),
	.Cin(),
	.Qin(\macro_inst|rx_inst|shift_reg [0]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk__MATRIXSPI_CS~input_o_X52_Y1_SIG_INV ),
	.AsyncReset(AsyncReset_X52_Y1_GND),
	.SyncReset(SyncReset_X52_Y1_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X52_Y1_VCC),
	.LutOut(),
	.Cout(),
	.Q(\macro_inst|rx_inst|shift_reg [0]));
defparam \macro_inst|rx_inst|shift_reg[0] .coord_x = 14;
defparam \macro_inst|rx_inst|shift_reg[0] .coord_y = 4;
defparam \macro_inst|rx_inst|shift_reg[0] .coord_z = 5;
defparam \macro_inst|rx_inst|shift_reg[0] .mask = 16'hFFFF;
defparam \macro_inst|rx_inst|shift_reg[0] .modeMux = 1'b1;
defparam \macro_inst|rx_inst|shift_reg[0] .FeedbackMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[0] .ShiftMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[0] .BypassEn = 1'b1;
defparam \macro_inst|rx_inst|shift_reg[0] .CarryEnb = 1'b1;

alta_slice \macro_inst|rx_inst|shift_reg[10] (
	.A(),
	.B(),
	.C(\macro_inst|rx_inst|shift_reg [9]),
	.D(),
	.Cin(),
	.Qin(\macro_inst|rx_inst|shift_reg [10]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk__MATRIXSPI_CS~input_o_X53_Y1_SIG_INV ),
	.AsyncReset(AsyncReset_X53_Y1_GND),
	.SyncReset(SyncReset_X53_Y1_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X53_Y1_VCC),
	.LutOut(),
	.Cout(),
	.Q(\macro_inst|rx_inst|shift_reg [10]));
defparam \macro_inst|rx_inst|shift_reg[10] .coord_x = 14;
defparam \macro_inst|rx_inst|shift_reg[10] .coord_y = 1;
defparam \macro_inst|rx_inst|shift_reg[10] .coord_z = 3;
defparam \macro_inst|rx_inst|shift_reg[10] .mask = 16'hFFFF;
defparam \macro_inst|rx_inst|shift_reg[10] .modeMux = 1'b1;
defparam \macro_inst|rx_inst|shift_reg[10] .FeedbackMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[10] .ShiftMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[10] .BypassEn = 1'b1;
defparam \macro_inst|rx_inst|shift_reg[10] .CarryEnb = 1'b1;

alta_slice \macro_inst|rx_inst|shift_reg[11] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\macro_inst|rx_inst|shift_reg [10]),
	.Cin(),
	.Qin(\macro_inst|rx_inst|shift_reg [11]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk__MATRIXSPI_CS~input_o_X53_Y1_SIG_INV ),
	.AsyncReset(AsyncReset_X53_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|rx_inst|shift_reg[11]~feeder_combout ),
	.Cout(),
	.Q(\macro_inst|rx_inst|shift_reg [11]));
defparam \macro_inst|rx_inst|shift_reg[11] .coord_x = 14;
defparam \macro_inst|rx_inst|shift_reg[11] .coord_y = 1;
defparam \macro_inst|rx_inst|shift_reg[11] .coord_z = 2;
defparam \macro_inst|rx_inst|shift_reg[11] .mask = 16'hFF00;
defparam \macro_inst|rx_inst|shift_reg[11] .modeMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[11] .FeedbackMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[11] .ShiftMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[11] .BypassEn = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[11] .CarryEnb = 1'b1;

alta_slice \macro_inst|rx_inst|shift_reg[12] (
	.A(),
	.B(),
	.C(\macro_inst|rx_inst|shift_reg [11]),
	.D(),
	.Cin(),
	.Qin(\macro_inst|rx_inst|shift_reg [12]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk__MATRIXSPI_CS~input_o_X53_Y1_SIG_INV ),
	.AsyncReset(AsyncReset_X53_Y1_GND),
	.SyncReset(SyncReset_X53_Y1_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X53_Y1_VCC),
	.LutOut(),
	.Cout(),
	.Q(\macro_inst|rx_inst|shift_reg [12]));
defparam \macro_inst|rx_inst|shift_reg[12] .coord_x = 14;
defparam \macro_inst|rx_inst|shift_reg[12] .coord_y = 1;
defparam \macro_inst|rx_inst|shift_reg[12] .coord_z = 5;
defparam \macro_inst|rx_inst|shift_reg[12] .mask = 16'hFFFF;
defparam \macro_inst|rx_inst|shift_reg[12] .modeMux = 1'b1;
defparam \macro_inst|rx_inst|shift_reg[12] .FeedbackMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[12] .ShiftMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[12] .BypassEn = 1'b1;
defparam \macro_inst|rx_inst|shift_reg[12] .CarryEnb = 1'b1;

alta_slice \macro_inst|rx_inst|shift_reg[13] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\macro_inst|rx_inst|shift_reg [12]),
	.Cin(),
	.Qin(\macro_inst|rx_inst|shift_reg [13]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk__MATRIXSPI_CS~input_o_X53_Y1_SIG_INV ),
	.AsyncReset(AsyncReset_X53_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|rx_inst|shift_reg[13]~feeder_combout ),
	.Cout(),
	.Q(\macro_inst|rx_inst|shift_reg [13]));
defparam \macro_inst|rx_inst|shift_reg[13] .coord_x = 14;
defparam \macro_inst|rx_inst|shift_reg[13] .coord_y = 1;
defparam \macro_inst|rx_inst|shift_reg[13] .coord_z = 11;
defparam \macro_inst|rx_inst|shift_reg[13] .mask = 16'hFF00;
defparam \macro_inst|rx_inst|shift_reg[13] .modeMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[13] .FeedbackMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[13] .ShiftMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[13] .BypassEn = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[13] .CarryEnb = 1'b1;

alta_slice \macro_inst|rx_inst|shift_reg[14] (
	.A(),
	.B(),
	.C(\macro_inst|rx_inst|shift_reg [13]),
	.D(),
	.Cin(),
	.Qin(\macro_inst|rx_inst|shift_reg [14]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk__MATRIXSPI_CS~input_o_X53_Y1_SIG_INV ),
	.AsyncReset(AsyncReset_X53_Y1_GND),
	.SyncReset(SyncReset_X53_Y1_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X53_Y1_VCC),
	.LutOut(),
	.Cout(),
	.Q(\macro_inst|rx_inst|shift_reg [14]));
defparam \macro_inst|rx_inst|shift_reg[14] .coord_x = 14;
defparam \macro_inst|rx_inst|shift_reg[14] .coord_y = 1;
defparam \macro_inst|rx_inst|shift_reg[14] .coord_z = 10;
defparam \macro_inst|rx_inst|shift_reg[14] .mask = 16'hFFFF;
defparam \macro_inst|rx_inst|shift_reg[14] .modeMux = 1'b1;
defparam \macro_inst|rx_inst|shift_reg[14] .FeedbackMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[14] .ShiftMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[14] .BypassEn = 1'b1;
defparam \macro_inst|rx_inst|shift_reg[14] .CarryEnb = 1'b1;

alta_slice \macro_inst|rx_inst|shift_reg[1] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\macro_inst|rx_inst|shift_reg [0]),
	.Cin(),
	.Qin(\macro_inst|rx_inst|shift_reg [1]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk__MATRIXSPI_CS~input_o_X52_Y1_SIG_INV ),
	.AsyncReset(AsyncReset_X52_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|rx_inst|shift_reg[1]~feeder_combout ),
	.Cout(),
	.Q(\macro_inst|rx_inst|shift_reg [1]));
defparam \macro_inst|rx_inst|shift_reg[1] .coord_x = 14;
defparam \macro_inst|rx_inst|shift_reg[1] .coord_y = 4;
defparam \macro_inst|rx_inst|shift_reg[1] .coord_z = 0;
defparam \macro_inst|rx_inst|shift_reg[1] .mask = 16'hFF00;
defparam \macro_inst|rx_inst|shift_reg[1] .modeMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[1] .FeedbackMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[1] .ShiftMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[1] .BypassEn = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[1] .CarryEnb = 1'b1;

alta_slice \macro_inst|rx_inst|shift_reg[2] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\macro_inst|rx_inst|shift_reg [1]),
	.Cin(),
	.Qin(\macro_inst|rx_inst|shift_reg [2]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk__MATRIXSPI_CS~input_o_X52_Y1_SIG_INV ),
	.AsyncReset(AsyncReset_X52_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|rx_inst|shift_reg[2]~feeder_combout ),
	.Cout(),
	.Q(\macro_inst|rx_inst|shift_reg [2]));
defparam \macro_inst|rx_inst|shift_reg[2] .coord_x = 14;
defparam \macro_inst|rx_inst|shift_reg[2] .coord_y = 4;
defparam \macro_inst|rx_inst|shift_reg[2] .coord_z = 1;
defparam \macro_inst|rx_inst|shift_reg[2] .mask = 16'hFF00;
defparam \macro_inst|rx_inst|shift_reg[2] .modeMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[2] .FeedbackMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[2] .ShiftMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[2] .BypassEn = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[2] .CarryEnb = 1'b1;

alta_slice \macro_inst|rx_inst|shift_reg[3] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\macro_inst|rx_inst|shift_reg [2]),
	.Cin(),
	.Qin(\macro_inst|rx_inst|shift_reg [3]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk__MATRIXSPI_CS~input_o_X52_Y1_SIG_INV ),
	.AsyncReset(AsyncReset_X52_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|rx_inst|shift_reg[3]~feeder_combout ),
	.Cout(),
	.Q(\macro_inst|rx_inst|shift_reg [3]));
defparam \macro_inst|rx_inst|shift_reg[3] .coord_x = 14;
defparam \macro_inst|rx_inst|shift_reg[3] .coord_y = 4;
defparam \macro_inst|rx_inst|shift_reg[3] .coord_z = 7;
defparam \macro_inst|rx_inst|shift_reg[3] .mask = 16'hFF00;
defparam \macro_inst|rx_inst|shift_reg[3] .modeMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[3] .FeedbackMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[3] .ShiftMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[3] .BypassEn = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[3] .CarryEnb = 1'b1;

alta_slice \macro_inst|rx_inst|shift_reg[4] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\macro_inst|rx_inst|shift_reg [3]),
	.Cin(),
	.Qin(\macro_inst|rx_inst|shift_reg [4]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk__MATRIXSPI_CS~input_o_X53_Y1_SIG_INV ),
	.AsyncReset(AsyncReset_X53_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|rx_inst|shift_reg[4]~feeder_combout ),
	.Cout(),
	.Q(\macro_inst|rx_inst|shift_reg [4]));
defparam \macro_inst|rx_inst|shift_reg[4] .coord_x = 14;
defparam \macro_inst|rx_inst|shift_reg[4] .coord_y = 1;
defparam \macro_inst|rx_inst|shift_reg[4] .coord_z = 12;
defparam \macro_inst|rx_inst|shift_reg[4] .mask = 16'hFF00;
defparam \macro_inst|rx_inst|shift_reg[4] .modeMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[4] .FeedbackMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[4] .ShiftMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[4] .BypassEn = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[4] .CarryEnb = 1'b1;

alta_slice \macro_inst|rx_inst|shift_reg[5] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\macro_inst|rx_inst|shift_reg [4]),
	.Cin(),
	.Qin(\macro_inst|rx_inst|shift_reg [5]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk__MATRIXSPI_CS~input_o_X53_Y1_SIG_INV ),
	.AsyncReset(AsyncReset_X53_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|rx_inst|shift_reg[5]~feeder_combout ),
	.Cout(),
	.Q(\macro_inst|rx_inst|shift_reg [5]));
defparam \macro_inst|rx_inst|shift_reg[5] .coord_x = 14;
defparam \macro_inst|rx_inst|shift_reg[5] .coord_y = 1;
defparam \macro_inst|rx_inst|shift_reg[5] .coord_z = 13;
defparam \macro_inst|rx_inst|shift_reg[5] .mask = 16'hFF00;
defparam \macro_inst|rx_inst|shift_reg[5] .modeMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[5] .FeedbackMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[5] .ShiftMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[5] .BypassEn = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[5] .CarryEnb = 1'b1;

alta_slice \macro_inst|rx_inst|shift_reg[6] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\macro_inst|rx_inst|shift_reg [5]),
	.Cin(),
	.Qin(\macro_inst|rx_inst|shift_reg [6]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk__MATRIXSPI_CS~input_o_X53_Y1_SIG_INV ),
	.AsyncReset(AsyncReset_X53_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|rx_inst|shift_reg[6]~feeder_combout ),
	.Cout(),
	.Q(\macro_inst|rx_inst|shift_reg [6]));
defparam \macro_inst|rx_inst|shift_reg[6] .coord_x = 14;
defparam \macro_inst|rx_inst|shift_reg[6] .coord_y = 1;
defparam \macro_inst|rx_inst|shift_reg[6] .coord_z = 7;
defparam \macro_inst|rx_inst|shift_reg[6] .mask = 16'hFF00;
defparam \macro_inst|rx_inst|shift_reg[6] .modeMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[6] .FeedbackMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[6] .ShiftMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[6] .BypassEn = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[6] .CarryEnb = 1'b1;

alta_slice \macro_inst|rx_inst|shift_reg[7] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\macro_inst|rx_inst|shift_reg [6]),
	.Cin(),
	.Qin(\macro_inst|rx_inst|shift_reg [7]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk__MATRIXSPI_CS~input_o_X53_Y1_SIG_INV ),
	.AsyncReset(AsyncReset_X53_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|rx_inst|shift_reg[7]~feeder_combout ),
	.Cout(),
	.Q(\macro_inst|rx_inst|shift_reg [7]));
defparam \macro_inst|rx_inst|shift_reg[7] .coord_x = 14;
defparam \macro_inst|rx_inst|shift_reg[7] .coord_y = 1;
defparam \macro_inst|rx_inst|shift_reg[7] .coord_z = 9;
defparam \macro_inst|rx_inst|shift_reg[7] .mask = 16'hFF00;
defparam \macro_inst|rx_inst|shift_reg[7] .modeMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[7] .FeedbackMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[7] .ShiftMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[7] .BypassEn = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[7] .CarryEnb = 1'b1;

alta_slice \macro_inst|rx_inst|shift_reg[8] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\macro_inst|rx_inst|shift_reg [7]),
	.Cin(),
	.Qin(\macro_inst|rx_inst|shift_reg [8]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk__MATRIXSPI_CS~input_o_X53_Y1_SIG_INV ),
	.AsyncReset(AsyncReset_X53_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|rx_inst|shift_reg[8]~feeder_combout ),
	.Cout(),
	.Q(\macro_inst|rx_inst|shift_reg [8]));
defparam \macro_inst|rx_inst|shift_reg[8] .coord_x = 14;
defparam \macro_inst|rx_inst|shift_reg[8] .coord_y = 1;
defparam \macro_inst|rx_inst|shift_reg[8] .coord_z = 15;
defparam \macro_inst|rx_inst|shift_reg[8] .mask = 16'hFF00;
defparam \macro_inst|rx_inst|shift_reg[8] .modeMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[8] .FeedbackMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[8] .ShiftMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[8] .BypassEn = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[8] .CarryEnb = 1'b1;

alta_slice \macro_inst|rx_inst|shift_reg[9] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\macro_inst|rx_inst|shift_reg [8]),
	.Cin(),
	.Qin(\macro_inst|rx_inst|shift_reg [9]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk__MATRIXSPI_CS~input_o_X53_Y1_SIG_INV ),
	.AsyncReset(AsyncReset_X53_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|rx_inst|shift_reg[9]~feeder_combout ),
	.Cout(),
	.Q(\macro_inst|rx_inst|shift_reg [9]));
defparam \macro_inst|rx_inst|shift_reg[9] .coord_x = 14;
defparam \macro_inst|rx_inst|shift_reg[9] .coord_y = 1;
defparam \macro_inst|rx_inst|shift_reg[9] .coord_z = 0;
defparam \macro_inst|rx_inst|shift_reg[9] .mask = 16'hFF00;
defparam \macro_inst|rx_inst|shift_reg[9] .modeMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[9] .FeedbackMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[9] .ShiftMux = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[9] .BypassEn = 1'b0;
defparam \macro_inst|rx_inst|shift_reg[9] .CarryEnb = 1'b1;

alta_slice \macro_inst|sys_clk_div_cnt[0] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\macro_inst|sys_clk_div_cnt [0]),
	.Clk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X50_Y1_SIG_VCC ),
	.AsyncReset(AsyncReset_X50_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|sys_clk_div_cnt[0]~3_combout ),
	.Cout(),
	.Q(\macro_inst|sys_clk_div_cnt [0]));
defparam \macro_inst|sys_clk_div_cnt[0] .coord_x = 15;
defparam \macro_inst|sys_clk_div_cnt[0] .coord_y = 4;
defparam \macro_inst|sys_clk_div_cnt[0] .coord_z = 4;
defparam \macro_inst|sys_clk_div_cnt[0] .mask = 16'h0F0F;
defparam \macro_inst|sys_clk_div_cnt[0] .modeMux = 1'b0;
defparam \macro_inst|sys_clk_div_cnt[0] .FeedbackMux = 1'b1;
defparam \macro_inst|sys_clk_div_cnt[0] .ShiftMux = 1'b0;
defparam \macro_inst|sys_clk_div_cnt[0] .BypassEn = 1'b0;
defparam \macro_inst|sys_clk_div_cnt[0] .CarryEnb = 1'b1;

alta_slice \macro_inst|sys_clk_div_cnt[1] (
	.A(\macro_inst|sys_clk_div_cnt [0]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\macro_inst|sys_clk_div_cnt [1]),
	.Clk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X50_Y1_SIG_VCC ),
	.AsyncReset(AsyncReset_X50_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|sys_clk_div_cnt[1]~2_combout ),
	.Cout(),
	.Q(\macro_inst|sys_clk_div_cnt [1]));
defparam \macro_inst|sys_clk_div_cnt[1] .coord_x = 15;
defparam \macro_inst|sys_clk_div_cnt[1] .coord_y = 4;
defparam \macro_inst|sys_clk_div_cnt[1] .coord_z = 3;
defparam \macro_inst|sys_clk_div_cnt[1] .mask = 16'h5A5A;
defparam \macro_inst|sys_clk_div_cnt[1] .modeMux = 1'b0;
defparam \macro_inst|sys_clk_div_cnt[1] .FeedbackMux = 1'b1;
defparam \macro_inst|sys_clk_div_cnt[1] .ShiftMux = 1'b0;
defparam \macro_inst|sys_clk_div_cnt[1] .BypassEn = 1'b0;
defparam \macro_inst|sys_clk_div_cnt[1] .CarryEnb = 1'b1;

alta_slice \macro_inst|sys_clk_div_cnt[2] (
	.A(\macro_inst|sys_clk_div_cnt [0]),
	.B(vcc),
	.C(vcc),
	.D(\macro_inst|sys_clk_div_cnt [1]),
	.Cin(),
	.Qin(\macro_inst|sys_clk_div_cnt [2]),
	.Clk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X50_Y1_SIG_VCC ),
	.AsyncReset(AsyncReset_X50_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|sys_clk_div_cnt[2]~1_combout ),
	.Cout(),
	.Q(\macro_inst|sys_clk_div_cnt [2]));
defparam \macro_inst|sys_clk_div_cnt[2] .coord_x = 15;
defparam \macro_inst|sys_clk_div_cnt[2] .coord_y = 4;
defparam \macro_inst|sys_clk_div_cnt[2] .coord_z = 15;
defparam \macro_inst|sys_clk_div_cnt[2] .mask = 16'h5AF0;
defparam \macro_inst|sys_clk_div_cnt[2] .modeMux = 1'b0;
defparam \macro_inst|sys_clk_div_cnt[2] .FeedbackMux = 1'b1;
defparam \macro_inst|sys_clk_div_cnt[2] .ShiftMux = 1'b0;
defparam \macro_inst|sys_clk_div_cnt[2] .BypassEn = 1'b0;
defparam \macro_inst|sys_clk_div_cnt[2] .CarryEnb = 1'b1;

alta_slice \macro_inst|sys_clk_div_cnt[3] (
	.A(\macro_inst|sys_clk_div_cnt [0]),
	.B(\macro_inst|sys_clk_div_cnt [1]),
	.C(vcc),
	.D(\macro_inst|sys_clk_div_cnt [2]),
	.Cin(),
	.Qin(\macro_inst|sys_clk_div_cnt [3]),
	.Clk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X50_Y1_SIG_VCC ),
	.AsyncReset(AsyncReset_X50_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|sys_clk_div_cnt[3]~0_combout ),
	.Cout(),
	.Q(\macro_inst|sys_clk_div_cnt [3]));
defparam \macro_inst|sys_clk_div_cnt[3] .coord_x = 15;
defparam \macro_inst|sys_clk_div_cnt[3] .coord_y = 4;
defparam \macro_inst|sys_clk_div_cnt[3] .coord_z = 13;
defparam \macro_inst|sys_clk_div_cnt[3] .mask = 16'h78F0;
defparam \macro_inst|sys_clk_div_cnt[3] .modeMux = 1'b0;
defparam \macro_inst|sys_clk_div_cnt[3] .FeedbackMux = 1'b1;
defparam \macro_inst|sys_clk_div_cnt[3] .ShiftMux = 1'b0;
defparam \macro_inst|sys_clk_div_cnt[3] .BypassEn = 1'b0;
defparam \macro_inst|sys_clk_div_cnt[3] .CarryEnb = 1'b1;

alta_io_gclk \macro_inst|sys_clk_div_cnt[3]~clkctrl (
	.inclk(\macro_inst|sys_clk_div_cnt [3]),
	.outclk(\macro_inst|sys_clk_div_cnt[3]~clkctrl_outclk ));
defparam \macro_inst|sys_clk_div_cnt[3]~clkctrl .coord_x = 22;
defparam \macro_inst|sys_clk_div_cnt[3]~clkctrl .coord_y = 4;
defparam \macro_inst|sys_clk_div_cnt[3]~clkctrl .coord_z = 4;

alta_slice \macro_inst|write_addr[0] (
	.A(\macro_inst|rx_inst|data_valid~q ),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\macro_inst|write_addr [0]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk_X54_Y2_SIG_VCC ),
	.AsyncReset(\MATRIXSPI_CS~inputclkctrl_outclk__AsyncReset_X54_Y2_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|write_addr[0]~10_combout ),
	.Cout(),
	.Q(\macro_inst|write_addr [0]));
defparam \macro_inst|write_addr[0] .coord_x = 14;
defparam \macro_inst|write_addr[0] .coord_y = 2;
defparam \macro_inst|write_addr[0] .coord_z = 0;
defparam \macro_inst|write_addr[0] .mask = 16'h5A5A;
defparam \macro_inst|write_addr[0] .modeMux = 1'b0;
defparam \macro_inst|write_addr[0] .FeedbackMux = 1'b1;
defparam \macro_inst|write_addr[0] .ShiftMux = 1'b0;
defparam \macro_inst|write_addr[0] .BypassEn = 1'b0;
defparam \macro_inst|write_addr[0] .CarryEnb = 1'b1;

alta_slice \macro_inst|write_addr[10] (
	.A(vcc),
	.B(\macro_inst|write_addr [10]),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|write_addr[9]~28 ),
	.Qin(\macro_inst|write_addr [10]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk__macro_inst|rx_inst|data_valid~q_X54_Y2_SIG_SIG ),
	.AsyncReset(\MATRIXSPI_CS~inputclkctrl_outclk__AsyncReset_X54_Y2_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|write_addr[10]~29_combout ),
	.Cout(),
	.Q(\macro_inst|write_addr [10]));
defparam \macro_inst|write_addr[10] .coord_x = 14;
defparam \macro_inst|write_addr[10] .coord_y = 2;
defparam \macro_inst|write_addr[10] .coord_z = 15;
defparam \macro_inst|write_addr[10] .mask = 16'h3C3C;
defparam \macro_inst|write_addr[10] .modeMux = 1'b1;
defparam \macro_inst|write_addr[10] .FeedbackMux = 1'b0;
defparam \macro_inst|write_addr[10] .ShiftMux = 1'b0;
defparam \macro_inst|write_addr[10] .BypassEn = 1'b0;
defparam \macro_inst|write_addr[10] .CarryEnb = 1'b1;

alta_slice \macro_inst|write_addr[1] (
	.A(\macro_inst|write_addr [0]),
	.B(\macro_inst|write_addr [1]),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\macro_inst|write_addr [1]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk__macro_inst|rx_inst|data_valid~q_X54_Y2_SIG_SIG ),
	.AsyncReset(\MATRIXSPI_CS~inputclkctrl_outclk__AsyncReset_X54_Y2_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|write_addr[1]~11_combout ),
	.Cout(\macro_inst|write_addr[1]~12 ),
	.Q(\macro_inst|write_addr [1]));
defparam \macro_inst|write_addr[1] .coord_x = 14;
defparam \macro_inst|write_addr[1] .coord_y = 2;
defparam \macro_inst|write_addr[1] .coord_z = 6;
defparam \macro_inst|write_addr[1] .mask = 16'h6688;
defparam \macro_inst|write_addr[1] .modeMux = 1'b0;
defparam \macro_inst|write_addr[1] .FeedbackMux = 1'b0;
defparam \macro_inst|write_addr[1] .ShiftMux = 1'b0;
defparam \macro_inst|write_addr[1] .BypassEn = 1'b0;
defparam \macro_inst|write_addr[1] .CarryEnb = 1'b0;

alta_slice \macro_inst|write_addr[2] (
	.A(vcc),
	.B(\macro_inst|write_addr [2]),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|write_addr[1]~12 ),
	.Qin(\macro_inst|write_addr [2]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk__macro_inst|rx_inst|data_valid~q_X54_Y2_SIG_SIG ),
	.AsyncReset(\MATRIXSPI_CS~inputclkctrl_outclk__AsyncReset_X54_Y2_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|write_addr[2]~13_combout ),
	.Cout(\macro_inst|write_addr[2]~14 ),
	.Q(\macro_inst|write_addr [2]));
defparam \macro_inst|write_addr[2] .coord_x = 14;
defparam \macro_inst|write_addr[2] .coord_y = 2;
defparam \macro_inst|write_addr[2] .coord_z = 7;
defparam \macro_inst|write_addr[2] .mask = 16'h3C3F;
defparam \macro_inst|write_addr[2] .modeMux = 1'b1;
defparam \macro_inst|write_addr[2] .FeedbackMux = 1'b0;
defparam \macro_inst|write_addr[2] .ShiftMux = 1'b0;
defparam \macro_inst|write_addr[2] .BypassEn = 1'b0;
defparam \macro_inst|write_addr[2] .CarryEnb = 1'b0;

alta_slice \macro_inst|write_addr[3] (
	.A(vcc),
	.B(\macro_inst|write_addr [3]),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|write_addr[2]~14 ),
	.Qin(\macro_inst|write_addr [3]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk__macro_inst|rx_inst|data_valid~q_X54_Y2_SIG_SIG ),
	.AsyncReset(\MATRIXSPI_CS~inputclkctrl_outclk__AsyncReset_X54_Y2_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|write_addr[3]~15_combout ),
	.Cout(\macro_inst|write_addr[3]~16 ),
	.Q(\macro_inst|write_addr [3]));
defparam \macro_inst|write_addr[3] .coord_x = 14;
defparam \macro_inst|write_addr[3] .coord_y = 2;
defparam \macro_inst|write_addr[3] .coord_z = 8;
defparam \macro_inst|write_addr[3] .mask = 16'hC30C;
defparam \macro_inst|write_addr[3] .modeMux = 1'b1;
defparam \macro_inst|write_addr[3] .FeedbackMux = 1'b0;
defparam \macro_inst|write_addr[3] .ShiftMux = 1'b0;
defparam \macro_inst|write_addr[3] .BypassEn = 1'b0;
defparam \macro_inst|write_addr[3] .CarryEnb = 1'b0;

alta_slice \macro_inst|write_addr[4] (
	.A(vcc),
	.B(\macro_inst|write_addr [4]),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|write_addr[3]~16 ),
	.Qin(\macro_inst|write_addr [4]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk__macro_inst|rx_inst|data_valid~q_X54_Y2_SIG_SIG ),
	.AsyncReset(\MATRIXSPI_CS~inputclkctrl_outclk__AsyncReset_X54_Y2_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|write_addr[4]~17_combout ),
	.Cout(\macro_inst|write_addr[4]~18 ),
	.Q(\macro_inst|write_addr [4]));
defparam \macro_inst|write_addr[4] .coord_x = 14;
defparam \macro_inst|write_addr[4] .coord_y = 2;
defparam \macro_inst|write_addr[4] .coord_z = 9;
defparam \macro_inst|write_addr[4] .mask = 16'h3C3F;
defparam \macro_inst|write_addr[4] .modeMux = 1'b1;
defparam \macro_inst|write_addr[4] .FeedbackMux = 1'b0;
defparam \macro_inst|write_addr[4] .ShiftMux = 1'b0;
defparam \macro_inst|write_addr[4] .BypassEn = 1'b0;
defparam \macro_inst|write_addr[4] .CarryEnb = 1'b0;

alta_slice \macro_inst|write_addr[5] (
	.A(vcc),
	.B(\macro_inst|write_addr [5]),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|write_addr[4]~18 ),
	.Qin(\macro_inst|write_addr [5]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk__macro_inst|rx_inst|data_valid~q_X54_Y2_SIG_SIG ),
	.AsyncReset(\MATRIXSPI_CS~inputclkctrl_outclk__AsyncReset_X54_Y2_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|write_addr[5]~19_combout ),
	.Cout(\macro_inst|write_addr[5]~20 ),
	.Q(\macro_inst|write_addr [5]));
defparam \macro_inst|write_addr[5] .coord_x = 14;
defparam \macro_inst|write_addr[5] .coord_y = 2;
defparam \macro_inst|write_addr[5] .coord_z = 10;
defparam \macro_inst|write_addr[5] .mask = 16'hC30C;
defparam \macro_inst|write_addr[5] .modeMux = 1'b1;
defparam \macro_inst|write_addr[5] .FeedbackMux = 1'b0;
defparam \macro_inst|write_addr[5] .ShiftMux = 1'b0;
defparam \macro_inst|write_addr[5] .BypassEn = 1'b0;
defparam \macro_inst|write_addr[5] .CarryEnb = 1'b0;

alta_slice \macro_inst|write_addr[6] (
	.A(vcc),
	.B(\macro_inst|write_addr [6]),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|write_addr[5]~20 ),
	.Qin(\macro_inst|write_addr [6]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk__macro_inst|rx_inst|data_valid~q_X54_Y2_SIG_SIG ),
	.AsyncReset(\MATRIXSPI_CS~inputclkctrl_outclk__AsyncReset_X54_Y2_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|write_addr[6]~21_combout ),
	.Cout(\macro_inst|write_addr[6]~22 ),
	.Q(\macro_inst|write_addr [6]));
defparam \macro_inst|write_addr[6] .coord_x = 14;
defparam \macro_inst|write_addr[6] .coord_y = 2;
defparam \macro_inst|write_addr[6] .coord_z = 11;
defparam \macro_inst|write_addr[6] .mask = 16'h3C3F;
defparam \macro_inst|write_addr[6] .modeMux = 1'b1;
defparam \macro_inst|write_addr[6] .FeedbackMux = 1'b0;
defparam \macro_inst|write_addr[6] .ShiftMux = 1'b0;
defparam \macro_inst|write_addr[6] .BypassEn = 1'b0;
defparam \macro_inst|write_addr[6] .CarryEnb = 1'b0;

alta_slice \macro_inst|write_addr[7] (
	.A(vcc),
	.B(\macro_inst|write_addr [7]),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|write_addr[6]~22 ),
	.Qin(\macro_inst|write_addr [7]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk__macro_inst|rx_inst|data_valid~q_X54_Y2_SIG_SIG ),
	.AsyncReset(\MATRIXSPI_CS~inputclkctrl_outclk__AsyncReset_X54_Y2_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|write_addr[7]~23_combout ),
	.Cout(\macro_inst|write_addr[7]~24 ),
	.Q(\macro_inst|write_addr [7]));
defparam \macro_inst|write_addr[7] .coord_x = 14;
defparam \macro_inst|write_addr[7] .coord_y = 2;
defparam \macro_inst|write_addr[7] .coord_z = 12;
defparam \macro_inst|write_addr[7] .mask = 16'hC30C;
defparam \macro_inst|write_addr[7] .modeMux = 1'b1;
defparam \macro_inst|write_addr[7] .FeedbackMux = 1'b0;
defparam \macro_inst|write_addr[7] .ShiftMux = 1'b0;
defparam \macro_inst|write_addr[7] .BypassEn = 1'b0;
defparam \macro_inst|write_addr[7] .CarryEnb = 1'b0;

alta_slice \macro_inst|write_addr[8] (
	.A(vcc),
	.B(\macro_inst|write_addr [8]),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|write_addr[7]~24 ),
	.Qin(\macro_inst|write_addr [8]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk__macro_inst|rx_inst|data_valid~q_X54_Y2_SIG_SIG ),
	.AsyncReset(\MATRIXSPI_CS~inputclkctrl_outclk__AsyncReset_X54_Y2_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|write_addr[8]~25_combout ),
	.Cout(\macro_inst|write_addr[8]~26 ),
	.Q(\macro_inst|write_addr [8]));
defparam \macro_inst|write_addr[8] .coord_x = 14;
defparam \macro_inst|write_addr[8] .coord_y = 2;
defparam \macro_inst|write_addr[8] .coord_z = 13;
defparam \macro_inst|write_addr[8] .mask = 16'h3C3F;
defparam \macro_inst|write_addr[8] .modeMux = 1'b1;
defparam \macro_inst|write_addr[8] .FeedbackMux = 1'b0;
defparam \macro_inst|write_addr[8] .ShiftMux = 1'b0;
defparam \macro_inst|write_addr[8] .BypassEn = 1'b0;
defparam \macro_inst|write_addr[8] .CarryEnb = 1'b0;

alta_slice \macro_inst|write_addr[9] (
	.A(vcc),
	.B(\macro_inst|write_addr [9]),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|write_addr[8]~26 ),
	.Qin(\macro_inst|write_addr [9]),
	.Clk(\MATRIXSPI_SCK~inputclkctrl_outclk__macro_inst|rx_inst|data_valid~q_X54_Y2_SIG_SIG ),
	.AsyncReset(\MATRIXSPI_CS~inputclkctrl_outclk__AsyncReset_X54_Y2_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|write_addr[9]~27_combout ),
	.Cout(\macro_inst|write_addr[9]~28 ),
	.Q(\macro_inst|write_addr [9]));
defparam \macro_inst|write_addr[9] .coord_x = 14;
defparam \macro_inst|write_addr[9] .coord_y = 2;
defparam \macro_inst|write_addr[9] .coord_z = 14;
defparam \macro_inst|write_addr[9] .mask = 16'hC30C;
defparam \macro_inst|write_addr[9] .modeMux = 1'b1;
defparam \macro_inst|write_addr[9] .FeedbackMux = 1'b0;
defparam \macro_inst|write_addr[9] .ShiftMux = 1'b0;
defparam \macro_inst|write_addr[9] .BypassEn = 1'b0;
defparam \macro_inst|write_addr[9] .CarryEnb = 1'b0;

alta_pllve \pll_inst|auto_generated|pll1 (
	.clkin(\PIN_HSE~input_o ),
	.clkfb(\pll_inst|auto_generated|pll1~FBOUT ),
	.pfden(vcc),
	.resetn(!\PLL_ENABLE~combout ),
	.phasecounterselect({gnd, gnd, gnd}),
	.phaseupdown(gnd),
	.phasestep(gnd),
	.scanclk(gnd),
	.scanclkena(vcc),
	.scandata(gnd),
	.configupdate(gnd),
	.scandataout(),
	.scandone(),
	.phasedone(),
	.clkout0(\pll_inst|auto_generated|pll1_CLK_bus [0]),
	.clkout1(\pll_inst|auto_generated|pll1_CLK_bus [1]),
	.clkout2(\pll_inst|auto_generated|pll1_CLK_bus [2]),
	.clkout3(\pll_inst|auto_generated|pll1_CLK_bus [3]),
	.clkout4(\pll_inst|auto_generated|pll1_CLK_bus [4]),
	.clkfbout(\pll_inst|auto_generated|pll1~FBOUT ),
	.lock(\auto_generated_inst.hbo_13_044c0075445fcc2e_bp ));
defparam \pll_inst|auto_generated|pll1 .coord_x = 22;
defparam \pll_inst|auto_generated|pll1 .coord_y = 5;
defparam \pll_inst|auto_generated|pll1 .coord_z = 0;
defparam \pll_inst|auto_generated|pll1 .CLKIN_HIGH = 8'b11111111;
defparam \pll_inst|auto_generated|pll1 .CLKIN_LOW = 8'b11111111;
defparam \pll_inst|auto_generated|pll1 .CLKIN_TRIM = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKIN_BYPASS = 1'b1;
defparam \pll_inst|auto_generated|pll1 .CLKFB_HIGH = 8'b00011000;
defparam \pll_inst|auto_generated|pll1 .CLKFB_LOW = 8'b00011000;
defparam \pll_inst|auto_generated|pll1 .CLKFB_TRIM = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKFB_BYPASS = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKDIV0_EN = 1'b1;
defparam \pll_inst|auto_generated|pll1 .CLKDIV1_EN = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKDIV2_EN = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKDIV3_EN = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKDIV4_EN = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKOUT0_HIGH = 8'b00000000;
defparam \pll_inst|auto_generated|pll1 .CLKOUT0_LOW = 8'b00000000;
defparam \pll_inst|auto_generated|pll1 .CLKOUT0_TRIM = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKOUT0_BYPASS = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKOUT1_HIGH = 8'b11111111;
defparam \pll_inst|auto_generated|pll1 .CLKOUT1_LOW = 8'b11111111;
defparam \pll_inst|auto_generated|pll1 .CLKOUT1_TRIM = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKOUT1_BYPASS = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKOUT2_HIGH = 8'b11111111;
defparam \pll_inst|auto_generated|pll1 .CLKOUT2_LOW = 8'b11111111;
defparam \pll_inst|auto_generated|pll1 .CLKOUT2_TRIM = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKOUT2_BYPASS = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKOUT3_HIGH = 8'b11111111;
defparam \pll_inst|auto_generated|pll1 .CLKOUT3_LOW = 8'b11111111;
defparam \pll_inst|auto_generated|pll1 .CLKOUT3_TRIM = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKOUT3_BYPASS = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKOUT4_HIGH = 8'b11111111;
defparam \pll_inst|auto_generated|pll1 .CLKOUT4_LOW = 8'b11111111;
defparam \pll_inst|auto_generated|pll1 .CLKOUT4_TRIM = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKOUT4_BYPASS = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKOUT0_DEL = 8'b00000000;
defparam \pll_inst|auto_generated|pll1 .CLKOUT1_DEL = 8'b00000000;
defparam \pll_inst|auto_generated|pll1 .CLKOUT2_DEL = 8'b00000000;
defparam \pll_inst|auto_generated|pll1 .CLKOUT3_DEL = 8'b00000000;
defparam \pll_inst|auto_generated|pll1 .CLKOUT4_DEL = 8'b00000000;
defparam \pll_inst|auto_generated|pll1 .CLKOUT0_PHASE = 3'b000;
defparam \pll_inst|auto_generated|pll1 .CLKOUT1_PHASE = 3'b000;
defparam \pll_inst|auto_generated|pll1 .CLKOUT2_PHASE = 3'b000;
defparam \pll_inst|auto_generated|pll1 .CLKOUT3_PHASE = 3'b000;
defparam \pll_inst|auto_generated|pll1 .CLKOUT4_PHASE = 3'b000;
defparam \pll_inst|auto_generated|pll1 .CLKFB_DEL = 8'b00000000;
defparam \pll_inst|auto_generated|pll1 .CLKFB_PHASE = 3'b000;
defparam \pll_inst|auto_generated|pll1 .FEEDBACK_MODE = 3'b100;
defparam \pll_inst|auto_generated|pll1 .FBDELAY_VAL = 3'b100;
defparam \pll_inst|auto_generated|pll1 .PLLOUTP_EN = 1'b0;
defparam \pll_inst|auto_generated|pll1 .PLLOUTN_EN = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKOUT1_CASCADE = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKOUT2_CASCADE = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKOUT3_CASCADE = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKOUT4_CASCADE = 1'b0;
defparam \pll_inst|auto_generated|pll1 .VCO_POST_DIV = 1'b1;
defparam \pll_inst|auto_generated|pll1 .REG_CTRL = 2'b00;
defparam \pll_inst|auto_generated|pll1 .CP = 3'b100;
defparam \pll_inst|auto_generated|pll1 .RREF = 2'b01;
defparam \pll_inst|auto_generated|pll1 .RVI = 2'b01;
defparam \pll_inst|auto_generated|pll1 .IVCO = 3'b010;
defparam \pll_inst|auto_generated|pll1 .PLL_EN_FLAG = 1'b1;

alta_slice \pll_inst|auto_generated|pll_lock_sync (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\pll_inst|auto_generated|pll_lock_sync~q ),
	.Clk(\auto_generated_inst.hbo_13_044c0075445fcc2e_bp_X49_Y1_SIG_VCC ),
	.AsyncReset(\PLL_ENABLE~clkctrl_outclk__AsyncReset_X49_Y1_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\pll_inst|auto_generated|pll_lock_sync~feeder_combout ),
	.Cout(),
	.Q(\pll_inst|auto_generated|pll_lock_sync~q ));
defparam \pll_inst|auto_generated|pll_lock_sync .coord_x = 20;
defparam \pll_inst|auto_generated|pll_lock_sync .coord_y = 5;
defparam \pll_inst|auto_generated|pll_lock_sync .coord_z = 9;
defparam \pll_inst|auto_generated|pll_lock_sync .mask = 16'hFFFF;
defparam \pll_inst|auto_generated|pll_lock_sync .modeMux = 1'b0;
defparam \pll_inst|auto_generated|pll_lock_sync .FeedbackMux = 1'b0;
defparam \pll_inst|auto_generated|pll_lock_sync .ShiftMux = 1'b0;
defparam \pll_inst|auto_generated|pll_lock_sync .BypassEn = 1'b0;
defparam \pll_inst|auto_generated|pll_lock_sync .CarryEnb = 1'b1;

alta_rv32 rv32(
	.sys_clk(\gclksw_inst|gclk_switch__alta_gclksw__clkout ),
	.mem_ahb_hready(\rv32.mem_ahb_hready ),
	.mem_ahb_hreadyout(vcc),
	.mem_ahb_htrans({\rv32.mem_ahb_htrans[1] , \rv32.mem_ahb_htrans[0] }),
	.mem_ahb_hsize({\rv32.mem_ahb_hsize[2] , \rv32.mem_ahb_hsize[1] , \rv32.mem_ahb_hsize[0] }),
	.mem_ahb_hburst({\rv32.mem_ahb_hburst[2] , \rv32.mem_ahb_hburst[1] , \rv32.mem_ahb_hburst[0] }),
	.mem_ahb_hwrite(\rv32.mem_ahb_hwrite ),
	.mem_ahb_haddr({\rv32.mem_ahb_haddr[31] , \rv32.mem_ahb_haddr[30] , \rv32.mem_ahb_haddr[29] , \rv32.mem_ahb_haddr[28] , \rv32.mem_ahb_haddr[27] , \rv32.mem_ahb_haddr[26] , \rv32.mem_ahb_haddr[25] , \rv32.mem_ahb_haddr[24] , \rv32.mem_ahb_haddr[23] , \rv32.mem_ahb_haddr[22] , \rv32.mem_ahb_haddr[21] , \rv32.mem_ahb_haddr[20] , \rv32.mem_ahb_haddr[19] , \rv32.mem_ahb_haddr[18] , \rv32.mem_ahb_haddr[17] , \rv32.mem_ahb_haddr[16] , \rv32.mem_ahb_haddr[15] , \rv32.mem_ahb_haddr[14] , \rv32.mem_ahb_haddr[13] , \rv32.mem_ahb_haddr[12] , \rv32.mem_ahb_haddr[11] , \rv32.mem_ahb_haddr[10] , \rv32.mem_ahb_haddr[9] , \rv32.mem_ahb_haddr[8] , \rv32.mem_ahb_haddr[7] , \rv32.mem_ahb_haddr[6] , \rv32.mem_ahb_haddr[5] , \rv32.mem_ahb_haddr[4] , \rv32.mem_ahb_haddr[3] , \rv32.mem_ahb_haddr[2] , \rv32.mem_ahb_haddr[1] , \rv32.mem_ahb_haddr[0] }),
	.mem_ahb_hwdata({\rv32.mem_ahb_hwdata[31] , \rv32.mem_ahb_hwdata[30] , \rv32.mem_ahb_hwdata[29] , \rv32.mem_ahb_hwdata[28] , \rv32.mem_ahb_hwdata[27] , \rv32.mem_ahb_hwdata[26] , \rv32.mem_ahb_hwdata[25] , \rv32.mem_ahb_hwdata[24] , \rv32.mem_ahb_hwdata[23] , \rv32.mem_ahb_hwdata[22] , \rv32.mem_ahb_hwdata[21] , \rv32.mem_ahb_hwdata[20] , \rv32.mem_ahb_hwdata[19] , \rv32.mem_ahb_hwdata[18] , \rv32.mem_ahb_hwdata[17] , \rv32.mem_ahb_hwdata[16] , \rv32.mem_ahb_hwdata[15] , \rv32.mem_ahb_hwdata[14] , \rv32.mem_ahb_hwdata[13] , \rv32.mem_ahb_hwdata[12] , \rv32.mem_ahb_hwdata[11] , \rv32.mem_ahb_hwdata[10] , \rv32.mem_ahb_hwdata[9] , \rv32.mem_ahb_hwdata[8] , \rv32.mem_ahb_hwdata[7] , \rv32.mem_ahb_hwdata[6] , \rv32.mem_ahb_hwdata[5] , \rv32.mem_ahb_hwdata[4] , \rv32.mem_ahb_hwdata[3] , \rv32.mem_ahb_hwdata[2] , \rv32.mem_ahb_hwdata[1] , \rv32.mem_ahb_hwdata[0] }),
	.mem_ahb_hresp(gnd),
	.mem_ahb_hrdata({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.slave_ahb_hsel(gnd),
	.slave_ahb_hready(vcc),
	.slave_ahb_hreadyout(\rv32.slave_ahb_hreadyout ),
	.slave_ahb_htrans({gnd, gnd}),
	.slave_ahb_hsize({gnd, gnd, gnd}),
	.slave_ahb_hburst({gnd, gnd, gnd}),
	.slave_ahb_hwrite(gnd),
	.slave_ahb_haddr({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.slave_ahb_hwdata({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.slave_ahb_hresp(\rv32.slave_ahb_hresp ),
	.slave_ahb_hrdata({\rv32.slave_ahb_hrdata[31] , \rv32.slave_ahb_hrdata[30] , \rv32.slave_ahb_hrdata[29] , \rv32.slave_ahb_hrdata[28] , \rv32.slave_ahb_hrdata[27] , \rv32.slave_ahb_hrdata[26] , \rv32.slave_ahb_hrdata[25] , \rv32.slave_ahb_hrdata[24] , \rv32.slave_ahb_hrdata[23] , \rv32.slave_ahb_hrdata[22] , \rv32.slave_ahb_hrdata[21] , \rv32.slave_ahb_hrdata[20] , \rv32.slave_ahb_hrdata[19] , \rv32.slave_ahb_hrdata[18] , \rv32.slave_ahb_hrdata[17] , \rv32.slave_ahb_hrdata[16] , \rv32.slave_ahb_hrdata[15] , \rv32.slave_ahb_hrdata[14] , \rv32.slave_ahb_hrdata[13] , \rv32.slave_ahb_hrdata[12] , \rv32.slave_ahb_hrdata[11] , \rv32.slave_ahb_hrdata[10] , \rv32.slave_ahb_hrdata[9] , \rv32.slave_ahb_hrdata[8] , \rv32.slave_ahb_hrdata[7] , \rv32.slave_ahb_hrdata[6] , \rv32.slave_ahb_hrdata[5] , \rv32.slave_ahb_hrdata[4] , \rv32.slave_ahb_hrdata[3] , \rv32.slave_ahb_hrdata[2] , \rv32.slave_ahb_hrdata[1] , \rv32.slave_ahb_hrdata[0] }),
	.gpio0_io_in({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.gpio0_io_out_data({\rv32.gpio0_io_out_data[7] , \rv32.gpio0_io_out_data[6] , \rv32.gpio0_io_out_data[5] , \rv32.gpio0_io_out_data[4] , \rv32.gpio0_io_out_data[3] , \rv32.gpio0_io_out_data[2] , \rv32.gpio0_io_out_data[1] , \rv32.gpio0_io_out_data[0] }),
	.gpio0_io_out_en({\rv32.gpio0_io_out_en[7] , \rv32.gpio0_io_out_en[6] , \rv32.gpio0_io_out_en[5] , \rv32.gpio0_io_out_en[4] , \rv32.gpio0_io_out_en[3] , \rv32.gpio0_io_out_en[2] , \rv32.gpio0_io_out_en[1] , \rv32.gpio0_io_out_en[0] }),
	.gpio1_io_in({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.gpio1_io_out_data({\rv32.gpio1_io_out_data[7] , \rv32.gpio1_io_out_data[6] , \rv32.gpio1_io_out_data[5] , \rv32.gpio1_io_out_data[4] , \rv32.gpio1_io_out_data[3] , \rv32.gpio1_io_out_data[2] , \rv32.gpio1_io_out_data[1] , \rv32.gpio1_io_out_data[0] }),
	.gpio1_io_out_en({\rv32.gpio1_io_out_en[7] , \rv32.gpio1_io_out_en[6] , \rv32.gpio1_io_out_en[5] , \rv32.gpio1_io_out_en[4] , \rv32.gpio1_io_out_en[3] , \rv32.gpio1_io_out_en[2] , \rv32.gpio1_io_out_en[1] , \rv32.gpio1_io_out_en[0] }),
	.sys_ctrl_clkSource({\rv32.sys_ctrl_clkSource[1] , \rv32.sys_ctrl_clkSource[0] }),
	.sys_ctrl_hseEnable(\rv32.sys_ctrl_hseEnable ),
	.sys_ctrl_hseBypass(\rv32.sys_ctrl_hseBypass ),
	.sys_ctrl_pllEnable(\rv32.sys_ctrl_pllEnable ),
	.sys_ctrl_pllReady(\auto_generated_inst.hbo_13_044c0075445fcc2e_bp ),
	.sys_ctrl_sleep(\rv32.sys_ctrl_sleep ),
	.sys_ctrl_stop(\rv32.sys_ctrl_stop ),
	.sys_ctrl_standby(\rv32.sys_ctrl_standby ),
	.gpio2_io_in({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.gpio2_io_out_data({\rv32.gpio2_io_out_data[7] , \rv32.gpio2_io_out_data[6] , \rv32.gpio2_io_out_data[5] , \rv32.gpio2_io_out_data[4] , \rv32.gpio2_io_out_data[3] , \rv32.gpio2_io_out_data[2] , \rv32.gpio2_io_out_data[1] , \rv32.gpio2_io_out_data[0] }),
	.gpio2_io_out_en({\rv32.gpio2_io_out_en[7] , \rv32.gpio2_io_out_en[6] , \rv32.gpio2_io_out_en[5] , \rv32.gpio2_io_out_en[4] , \rv32.gpio2_io_out_en[3] , \rv32.gpio2_io_out_en[2] , \rv32.gpio2_io_out_en[1] , \rv32.gpio2_io_out_en[0] }),
	.gpio3_io_in({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.gpio3_io_out_data({\rv32.gpio3_io_out_data[7] , \rv32.gpio3_io_out_data[6] , \rv32.gpio3_io_out_data[5] , \rv32.gpio3_io_out_data[4] , \rv32.gpio3_io_out_data[3] , \rv32.gpio3_io_out_data[2] , \rv32.gpio3_io_out_data[1] , \rv32.gpio3_io_out_data[0] }),
	.gpio3_io_out_en({\rv32.gpio3_io_out_en[7] , \rv32.gpio3_io_out_en[6] , \rv32.gpio3_io_out_en[5] , \rv32.gpio3_io_out_en[4] , \rv32.gpio3_io_out_en[3] , \rv32.gpio3_io_out_en[2] , \rv32.gpio3_io_out_en[1] , \rv32.gpio3_io_out_en[0] }),
	.gpio4_io_in({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.gpio4_io_out_data({\rv32.gpio4_io_out_data[7] , \rv32.gpio4_io_out_data[6] , \rv32.gpio4_io_out_data[5] , \rv32.gpio4_io_out_data[4] , \rv32.gpio4_io_out_data[3] , \rv32.gpio4_io_out_data[2] , \rv32.gpio4_io_out_data[1] , \rv32.gpio4_io_out_data[0] }),
	.gpio4_io_out_en({\rv32.gpio4_io_out_en[7] , \rv32.gpio4_io_out_en[6] , \rv32.gpio4_io_out_en[5] , \rv32.gpio4_io_out_en[4] , \rv32.gpio4_io_out_en[3] , \rv32.gpio4_io_out_en[2] , \rv32.gpio4_io_out_en[1] , \rv32.gpio4_io_out_en[0] }),
	.gpio5_io_in({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.gpio5_io_out_data({\rv32.gpio5_io_out_data[7] , \rv32.gpio5_io_out_data[6] , \rv32.gpio5_io_out_data[5] , \rv32.gpio5_io_out_data[4] , \rv32.gpio5_io_out_data[3] , \rv32.gpio5_io_out_data[2] , \rv32.gpio5_io_out_data[1] , \rv32.gpio5_io_out_data[0] }),
	.gpio5_io_out_en({\rv32.gpio5_io_out_en[7] , \rv32.gpio5_io_out_en[6] , \rv32.gpio5_io_out_en[5] , \rv32.gpio5_io_out_en[4] , \rv32.gpio5_io_out_en[3] , \rv32.gpio5_io_out_en[2] , \rv32.gpio5_io_out_en[1] , \rv32.gpio5_io_out_en[0] }),
	.gpio6_io_in({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.gpio6_io_out_data({\rv32.gpio6_io_out_data[7] , \rv32.gpio6_io_out_data[6] , \rv32.gpio6_io_out_data[5] , \rv32.gpio6_io_out_data[4] , \rv32.gpio6_io_out_data[3] , \rv32.gpio6_io_out_data[2] , \rv32.gpio6_io_out_data[1] , \rv32.gpio6_io_out_data[0] }),
	.gpio6_io_out_en({\rv32.gpio6_io_out_en[7] , \rv32.gpio6_io_out_en[6] , \rv32.gpio6_io_out_en[5] , \rv32.gpio6_io_out_en[4] , \rv32.gpio6_io_out_en[3] , \rv32.gpio6_io_out_en[2] , \rv32.gpio6_io_out_en[1] , \rv32.gpio6_io_out_en[0] }),
	.gpio7_io_in({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.gpio7_io_out_data({\rv32.gpio7_io_out_data[7] , \rv32.gpio7_io_out_data[6] , \rv32.gpio7_io_out_data[5] , \rv32.gpio7_io_out_data[4] , \rv32.gpio7_io_out_data[3] , \rv32.gpio7_io_out_data[2] , \rv32.gpio7_io_out_data[1] , \rv32.gpio7_io_out_data[0] }),
	.gpio7_io_out_en({\rv32.gpio7_io_out_en[7] , \rv32.gpio7_io_out_en[6] , \rv32.gpio7_io_out_en[5] , \rv32.gpio7_io_out_en[4] , \rv32.gpio7_io_out_en[3] , \rv32.gpio7_io_out_en[2] , \rv32.gpio7_io_out_en[1] , \rv32.gpio7_io_out_en[0] }),
	.gpio8_io_in({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.gpio8_io_out_data({\rv32.gpio8_io_out_data[7] , \rv32.gpio8_io_out_data[6] , \rv32.gpio8_io_out_data[5] , \rv32.gpio8_io_out_data[4] , \rv32.gpio8_io_out_data[3] , \rv32.gpio8_io_out_data[2] , \rv32.gpio8_io_out_data[1] , \rv32.gpio8_io_out_data[0] }),
	.gpio8_io_out_en({\rv32.gpio8_io_out_en[7] , \rv32.gpio8_io_out_en[6] , \rv32.gpio8_io_out_en[5] , \rv32.gpio8_io_out_en[4] , \rv32.gpio8_io_out_en[3] , \rv32.gpio8_io_out_en[2] , \rv32.gpio8_io_out_en[1] , \rv32.gpio8_io_out_en[0] }),
	.gpio9_io_in({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.gpio9_io_out_data({\rv32.gpio9_io_out_data[7] , \rv32.gpio9_io_out_data[6] , \rv32.gpio9_io_out_data[5] , \rv32.gpio9_io_out_data[4] , \rv32.gpio9_io_out_data[3] , \rv32.gpio9_io_out_data[2] , \rv32.gpio9_io_out_data[1] , \rv32.gpio9_io_out_data[0] }),
	.gpio9_io_out_en({\rv32.gpio9_io_out_en[7] , \rv32.gpio9_io_out_en[6] , \rv32.gpio9_io_out_en[5] , \rv32.gpio9_io_out_en[4] , \rv32.gpio9_io_out_en[3] , \rv32.gpio9_io_out_en[2] , \rv32.gpio9_io_out_en[1] , \rv32.gpio9_io_out_en[0] }),
	.ext_resetn(vcc),
	.resetn_out(\rv32.resetn_out ),
	.dmactive(\rv32.dmactive ),
	.swj_JTAGNSW(\rv32.swj_JTAGNSW ),
	.swj_JTAGSTATE({\rv32.swj_JTAGSTATE[3] , \rv32.swj_JTAGSTATE[2] , \rv32.swj_JTAGSTATE[1] , \rv32.swj_JTAGSTATE[0] }),
	.swj_JTAGIR({\rv32.swj_JTAGIR[3] , \rv32.swj_JTAGIR[2] , \rv32.swj_JTAGIR[1] , \rv32.swj_JTAGIR[0] }),
	.ext_int({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.ext_dma_DMACBREQ({gnd, gnd, gnd, gnd}),
	.ext_dma_DMACLBREQ({gnd, gnd, gnd, gnd}),
	.ext_dma_DMACSREQ({gnd, gnd, gnd, gnd}),
	.ext_dma_DMACLSREQ({gnd, gnd, gnd, gnd}),
	.ext_dma_DMACCLR({\rv32.ext_dma_DMACCLR[3] , \rv32.ext_dma_DMACCLR[2] , \rv32.ext_dma_DMACCLR[1] , \rv32.ext_dma_DMACCLR[0] }),
	.ext_dma_DMACTC({\rv32.ext_dma_DMACTC[3] , \rv32.ext_dma_DMACTC[2] , \rv32.ext_dma_DMACTC[1] , \rv32.ext_dma_DMACTC[0] }),
	.local_int({gnd, gnd, gnd, gnd}),
	.test_mode({gnd, gnd}),
	.usb0_xcvr_clk(vcc),
	.usb0_id(vcc));
defparam rv32.coord_x = 0;
defparam rv32.coord_y = 5;
defparam rv32.coord_z = 0;

alta_syncctrl syncload_ctrl_X52_Y1(
	.Din(),
	.Dout(SyncLoad_X52_Y1_VCC));
defparam syncload_ctrl_X52_Y1.coord_x = 14;
defparam syncload_ctrl_X52_Y1.coord_y = 4;
defparam syncload_ctrl_X52_Y1.coord_z = 1;
defparam syncload_ctrl_X52_Y1.SyncCtrlMux = 2'b01;

alta_syncctrl syncload_ctrl_X53_Y1(
	.Din(),
	.Dout(SyncLoad_X53_Y1_VCC));
defparam syncload_ctrl_X53_Y1.coord_x = 14;
defparam syncload_ctrl_X53_Y1.coord_y = 1;
defparam syncload_ctrl_X53_Y1.coord_z = 1;
defparam syncload_ctrl_X53_Y1.SyncCtrlMux = 2'b01;

alta_syncctrl syncreset_ctrl_X52_Y1(
	.Din(),
	.Dout(SyncReset_X52_Y1_GND));
defparam syncreset_ctrl_X52_Y1.coord_x = 14;
defparam syncreset_ctrl_X52_Y1.coord_y = 4;
defparam syncreset_ctrl_X52_Y1.coord_z = 0;
defparam syncreset_ctrl_X52_Y1.SyncCtrlMux = 2'b00;

alta_syncctrl syncreset_ctrl_X53_Y1(
	.Din(),
	.Dout(SyncReset_X53_Y1_GND));
defparam syncreset_ctrl_X53_Y1.coord_x = 14;
defparam syncreset_ctrl_X53_Y1.coord_y = 1;
defparam syncreset_ctrl_X53_Y1.coord_z = 0;
defparam syncreset_ctrl_X53_Y1.SyncCtrlMux = 2'b00;

alta_slice \~GND (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\~GND~combout ),
	.Cout(),
	.Q());
defparam \~GND .coord_x = 1;
defparam \~GND .coord_y = 1;
defparam \~GND .coord_z = 0;
defparam \~GND .mask = 16'h0000;
defparam \~GND .modeMux = 1'b0;
defparam \~GND .FeedbackMux = 1'b0;
defparam \~GND .ShiftMux = 1'b0;
defparam \~GND .BypassEn = 1'b0;
defparam \~GND .CarryEnb = 1'b1;

endmodule
