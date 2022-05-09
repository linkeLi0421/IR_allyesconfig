; ModuleID = '/llk/IR_all_yes/drivers/clk/ux500/u8500_of_clk.c_pt.bc'
source_filename = "../drivers/clk/ux500/u8500_of_clk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.u8500_prcc_reset = type { %struct.reset_controller_dev, [5 x i32], [5 x ptr] }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__of_table_u8500_clks = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"stericsson,u8500-clks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @u8500_clk_init }, section "__clk_of_table", align 4
@u8500_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013failed to get CLKRST %d base address\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"u8500_clk_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/clk/ux500/u8500_of_clk.c\00", [63 x i8] zeroinitializer }, align 32
@u8500_clk_init._entry_ptr = internal global ptr @u8500_clk_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"soc0_pll\00", [23 x i8] zeroinitializer }, align 32
@prcmu_clk = internal global { [58 x ptr], [56 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"soc1_pll\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ddr_pll\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rtc32k\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sgclk\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"uartclk\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"msp02clk\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msp1clk\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i2cclk\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"slimclk\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"per1clk\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"per2clk\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"per3clk\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"per5clk\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"per6clk\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"per7clk\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lcdclk\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bmlclk\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hsitxclk\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hsirxclk\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hdmiclk\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apeatclk\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apetraceclk\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mcdeclk\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipi2cclk\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dsialtclk\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dmaclk\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"b2r2clk\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tvclk\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sspclk\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rngclk\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"uiccclk\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"timclk\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ab8500_sysclk\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sdmmcclk\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dsi_pll\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dsi0clk\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dsi1clk\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dsi0escclk\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dsi1escclk\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dsi2escclk\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"armss\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"smp_twd\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p1_pclk0\00", [23 x i8] zeroinitializer }, align 32
@prcc_pclk = internal global { [224 x ptr], [224 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p1_pclk1\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p1_pclk2\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p1_pclk3\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p1_pclk4\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p1_pclk5\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p1_pclk6\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p1_pclk7\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p1_pclk8\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p1_pclk9\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"p1_pclk10\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"p1_pclk11\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p2_pclk0\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p2_pclk1\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p2_pclk2\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p2_pclk3\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p2_pclk4\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p2_pclk5\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p2_pclk6\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p2_pclk7\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p2_pclk8\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p2_pclk9\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"p2_pclk10\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"p2_pclk11\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"p2_pclk12\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p3_pclk0\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p3_pclk1\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p3_pclk2\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p3_pclk3\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p3_pclk4\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p3_pclk5\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p3_pclk6\00", [23 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p3_pclk7\00", [23 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p3_pclk8\00", [23 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p5_pclk0\00", [23 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p5_pclk1\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p6_pclk0\00", [23 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p6_pclk1\00", [23 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p6_pclk2\00", [23 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p6_pclk3\00", [23 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p6_pclk4\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p6_pclk5\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p6_pclk6\00", [23 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p6_pclk7\00", [23 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"p1_uart0_kclk\00", [18 x i8] zeroinitializer }, align 32
@prcc_kclk = internal global { [224 x ptr], [224 x i8] } zeroinitializer, align 32
@.str.92 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"p1_uart1_kclk\00", [18 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"p1_i2c1_kclk\00", [19 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"p1_msp0_kclk\00", [19 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"p1_msp1_kclk\00", [19 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"p1_sdi0_kclk\00", [19 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"p1_i2c2_kclk\00", [19 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"p1_slimbus0_kclk\00", [47 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"p1_i2c4_kclk\00", [19 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"p1_msp3_kclk\00", [19 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"p2_i2c3_kclk\00", [19 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"p2_sdi4_kclk\00", [19 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"p2_msp2_kclk\00", [19 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"p2_sdi1_kclk\00", [19 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"p2_sdi3_kclk\00", [19 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"p2_ssirx_kclk\00", [18 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"p2_ssitx_kclk\00", [18 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"p3_ssp0_kclk\00", [19 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"p3_ssp1_kclk\00", [19 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"p3_i2c0_kclk\00", [19 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"p3_sdi2_kclk\00", [19 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"p3_ske_kclk\00", [20 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"p3_uart2_kclk\00", [18 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"p3_sdi5_kclk\00", [19 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"p3_rng_kclk\00", [20 x i8] zeroinitializer }, align 32
@u8500_clk_init.clk_data = internal global { %struct.clk_onecell_data, [24 x i8] } zeroinitializer, align 32
@.str.116 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"prcmu-clock\00", [20 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"prcc-periph-clock\00", [46 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"prcc-kernel-clock\00", [46 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtc32k-clock\00", [19 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"smp-twd-clock\00", [18 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"prcc-reset-controller\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ux500_twocell_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.2, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: invalid PRCC base %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ux500_twocell_get\00", [46 x i8] zeroinitializer }, align 32
@ux500_twocell_get._entry_ptr = internal global ptr @ux500_twocell_get._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 7, i64 11, i64 13, i64 14, i64 15, i64 17]
@__sancov_gen_cov_switch_values.124 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6]
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 73, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 80, i32 27 }
@___asan_gen_.140 = private unnamed_addr constant [10 x i8] c"prcmu_clk\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 18, i32 20 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 84, i32 27 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 88, i32 27 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 94, i32 42 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 94, i32 52 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 116, i32 28 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 122, i32 27 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 125, i32 27 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 128, i32 27 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 131, i32 27 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 134, i32 27 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 137, i32 27 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 140, i32 27 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 143, i32 27 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 146, i32 27 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 149, i32 27 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 152, i32 27 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 155, i32 31 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 159, i32 31 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 162, i32 31 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 166, i32 31 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 170, i32 31 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 174, i32 27 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 177, i32 31 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 181, i32 27 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 184, i32 31 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 187, i32 27 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 190, i32 27 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 193, i32 27 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 196, i32 31 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 200, i32 27 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 203, i32 27 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 206, i32 27 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 209, i32 27 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 212, i32 27 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 215, i32 40 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 219, i32 31 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 223, i32 31 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 227, i32 31 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 231, i32 31 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 235, i32 31 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 239, i32 31 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 243, i32 36 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 247, i32 44 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 257, i32 26 }
@___asan_gen_.275 = private unnamed_addr constant [10 x i8] c"prcc_pclk\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 19, i32 20 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 261, i32 26 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 265, i32 26 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 269, i32 26 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 273, i32 26 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 277, i32 26 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 281, i32 26 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 285, i32 26 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 289, i32 26 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 293, i32 26 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 297, i32 26 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 301, i32 26 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 305, i32 26 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 309, i32 26 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 313, i32 26 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 317, i32 26 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 321, i32 26 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 325, i32 26 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 329, i32 26 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 333, i32 26 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 337, i32 26 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 341, i32 26 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 345, i32 26 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 349, i32 26 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 353, i32 26 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 357, i32 26 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 361, i32 26 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 365, i32 26 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 369, i32 26 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 373, i32 26 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 377, i32 26 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 381, i32 26 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 385, i32 26 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 389, i32 26 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 393, i32 26 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 397, i32 26 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 401, i32 26 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 405, i32 26 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 409, i32 26 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 413, i32 26 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 417, i32 26 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 421, i32 26 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 425, i32 26 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 429, i32 26 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 442, i32 26 }
@___asan_gen_.410 = private unnamed_addr constant [10 x i8] c"prcc_kclk\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 20, i32 20 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 446, i32 26 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 450, i32 26 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 454, i32 26 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 458, i32 26 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 462, i32 26 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 466, i32 26 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 470, i32 26 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 474, i32 26 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 478, i32 26 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 483, i32 26 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 487, i32 26 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 491, i32 26 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 495, i32 26 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 499, i32 26 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 504, i32 26 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 509, i32 26 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 515, i32 26 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 519, i32 26 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 523, i32 26 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 527, i32 26 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 531, i32 26 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 535, i32 26 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 539, i32 26 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 544, i32 26 }
@___asan_gen_.485 = private unnamed_addr constant [9 x i8] c"clk_data\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 549, i32 34 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 551, i32 30 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 556, i32 30 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 559, i32 30 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 562, i32 30 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 565, i32 30 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 568, i32 30 }
@___asan_gen_.506 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.512 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.513 = private constant [36 x i8] c"../drivers/clk/ux500/u8500_of_clk.c\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 42, i32 3 }
@llvm.compiler.used = appending global [133 x ptr] [ptr @__of_table_u8500_clks, ptr @u8500_clk_init._entry, ptr @u8500_clk_init._entry_ptr, ptr @ux500_twocell_get._entry, ptr @ux500_twocell_get._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @prcmu_clk, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @prcc_pclk, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @prcc_kclk, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @u8500_clk_init.clk_data, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123], section "llvm.metadata"
@0 = internal global [130 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u8500_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prcmu_clk to i32), i32 232, i32 288, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prcc_pclk to i32), i32 896, i32 1120, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prcc_kclk to i32), i32 896, i32 1120, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u8500_clk_init.clk_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_twocell_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @u8500_clk_init(ptr noundef %np) #0 align 64 {
entry:
  %r = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 84) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %r) #5
  %1 = call ptr @memset(ptr %r, i32 255, i32 32)
  %call1 = call i32 @of_address_to_resource(ptr noundef %np, i32 noundef 0, ptr noundef nonnull %r) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.cond.preheader.if.end5_crit_edge, label %do.end

for.cond.preheader.if.end5_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

do.end:                                           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 1) #9
  br label %if.end5

if.end5:                                          ; preds = %do.end, %for.cond.preheader.if.end5_crit_edge
  %2 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r, align 4
  %arrayidx7 = getelementptr %struct.u8500_prcc_reset, ptr %call7.i.i, i32 0, i32 1, i32 0
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %arrayidx7, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %r) #5
  %5 = call ptr @memset(ptr %r, i32 255, i32 32)
  %call1.1 = call i32 @of_address_to_resource(ptr noundef %np, i32 noundef 1, ptr noundef nonnull %r) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %tobool2.not.1 = icmp eq i32 %call1.1, 0
  br i1 %tobool2.not.1, label %if.end5.if.end5.1_crit_edge, label %do.end.1

if.end5.if.end5.1_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.1

do.end.1:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %call4.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 2) #9
  br label %if.end5.1

if.end5.1:                                        ; preds = %do.end.1, %if.end5.if.end5.1_crit_edge
  %6 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %r, align 4
  %arrayidx7.1 = getelementptr %struct.u8500_prcc_reset, ptr %call7.i.i, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx7.1, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %r) #5
  %9 = call ptr @memset(ptr %r, i32 255, i32 32)
  %call1.2 = call i32 @of_address_to_resource(ptr noundef %np, i32 noundef 2, ptr noundef nonnull %r) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %tobool2.not.2 = icmp eq i32 %call1.2, 0
  br i1 %tobool2.not.2, label %if.end5.1.if.end5.2_crit_edge, label %do.end.2

if.end5.1.if.end5.2_crit_edge:                    ; preds = %if.end5.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.2

do.end.2:                                         ; preds = %if.end5.1
  call void @__sanitizer_cov_trace_pc() #7
  %call4.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 3) #9
  br label %if.end5.2

if.end5.2:                                        ; preds = %do.end.2, %if.end5.1.if.end5.2_crit_edge
  %10 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %r, align 4
  %arrayidx7.2 = getelementptr %struct.u8500_prcc_reset, ptr %call7.i.i, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx7.2, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %r) #5
  %13 = call ptr @memset(ptr %r, i32 255, i32 32)
  %call1.3 = call i32 @of_address_to_resource(ptr noundef %np, i32 noundef 3, ptr noundef nonnull %r) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3)
  %tobool2.not.3 = icmp eq i32 %call1.3, 0
  br i1 %tobool2.not.3, label %if.end5.2.if.end5.3_crit_edge, label %do.end.3

if.end5.2.if.end5.3_crit_edge:                    ; preds = %if.end5.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.3

do.end.3:                                         ; preds = %if.end5.2
  call void @__sanitizer_cov_trace_pc() #7
  %call4.3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 4) #9
  br label %if.end5.3

if.end5.3:                                        ; preds = %do.end.3, %if.end5.2.if.end5.3_crit_edge
  %14 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %r, align 4
  %arrayidx7.3 = getelementptr %struct.u8500_prcc_reset, ptr %call7.i.i, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx7.3, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %r) #5
  %17 = call ptr @memset(ptr %r, i32 255, i32 32)
  %call1.4 = call i32 @of_address_to_resource(ptr noundef %np, i32 noundef 4, ptr noundef nonnull %r) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.4)
  %tobool2.not.4 = icmp eq i32 %call1.4, 0
  br i1 %tobool2.not.4, label %if.end5.3.if.end5.4_crit_edge, label %do.end.4

if.end5.3.if.end5.4_crit_edge:                    ; preds = %if.end5.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.4

do.end.4:                                         ; preds = %if.end5.3
  call void @__sanitizer_cov_trace_pc() #7
  %call4.4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 5) #9
  br label %if.end5.4

if.end5.4:                                        ; preds = %do.end.4, %if.end5.3.if.end5.4_crit_edge
  %18 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %r, align 4
  %arrayidx7.4 = getelementptr %struct.u8500_prcc_reset, ptr %call7.i.i, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx7.4, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r) #5
  %call8 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.3, ptr noundef null, i8 noundef zeroext 42, i32 noundef 8) #5
  store ptr %call8, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 42), align 4
  %call9 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.4, ptr noundef null, i8 noundef zeroext 43, i32 noundef 8) #5
  store ptr %call9, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 43), align 4
  %call10 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.5, ptr noundef null, i8 noundef zeroext 45, i32 noundef 8) #5
  store ptr %call10, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 45), align 4
  %call11 = call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 8, i32 noundef 32768) #5
  %call12 = call ptr @prcmu_get_fw_version() #5
  %cmp13.not = icmp eq ptr %call12, null
  br i1 %cmp13.not, label %if.end5.4.if.else_crit_edge, label %if.then14

if.end5.4.if.else_crit_edge:                      ; preds = %if.end5.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then14:                                        ; preds = %if.end5.4
  %21 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call12, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %if.then14.if.else_crit_edge [
    i32 7, label %if.then14.if.then17_crit_edge
    i32 11, label %if.then14.if.then17_crit_edge443
    i32 13, label %if.then14.if.then17_crit_edge444
    i32 14, label %if.then14.if.then17_crit_edge445
    i32 17, label %if.then14.if.then17_crit_edge446
    i32 15, label %if.then14.if.then17_crit_edge447
  ]

if.then14.if.then17_crit_edge447:                 ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

if.then14.if.then17_crit_edge446:                 ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

if.then14.if.then17_crit_edge445:                 ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

if.then14.if.then17_crit_edge444:                 ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

if.then14.if.then17_crit_edge443:                 ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

if.then14.if.then17_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

if.then14.if.else_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then17:                                        ; preds = %if.then14.if.then17_crit_edge, %if.then14.if.then17_crit_edge443, %if.then14.if.then17_crit_edge444, %if.then14.if.then17_crit_edge445, %if.then14.if.then17_crit_edge446, %if.then14.if.then17_crit_edge447
  %call18 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, i8 noundef zeroext 4, i32 noundef 0) #5
  br label %if.end20

if.else:                                          ; preds = %if.then14.if.else_crit_edge, %if.end5.4.if.else_crit_edge
  %call19 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.8, ptr noundef null, i8 noundef zeroext 4, i32 noundef 0) #5
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then17
  %clk.0 = phi ptr [ %call18, %if.then17 ], [ %call19, %if.else ]
  store ptr %clk.0, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 4), align 4
  %call21 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.9, ptr noundef null, i8 noundef zeroext 5, i32 noundef 0) #5
  store ptr %call21, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 5), align 4
  %call22 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.10, ptr noundef null, i8 noundef zeroext 6, i32 noundef 0) #5
  store ptr %call22, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 6), align 4
  %call23 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.11, ptr noundef null, i8 noundef zeroext 7, i32 noundef 0) #5
  store ptr %call23, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 7), align 4
  %call24 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.12, ptr noundef null, i8 noundef zeroext 8, i32 noundef 0) #5
  store ptr %call24, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 8), align 4
  %call25 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.13, ptr noundef null, i8 noundef zeroext 10, i32 noundef 0) #5
  store ptr %call25, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 10), align 4
  %call26 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.14, ptr noundef null, i8 noundef zeroext 11, i32 noundef 0) #5
  store ptr %call26, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 11), align 4
  %call27 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.15, ptr noundef null, i8 noundef zeroext 12, i32 noundef 0) #5
  store ptr %call27, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 12), align 4
  %call28 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.16, ptr noundef null, i8 noundef zeroext 13, i32 noundef 0) #5
  store ptr %call28, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 13), align 4
  %call29 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.17, ptr noundef null, i8 noundef zeroext 14, i32 noundef 0) #5
  store ptr %call29, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 14), align 4
  %call30 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.18, ptr noundef null, i8 noundef zeroext 15, i32 noundef 0) #5
  store ptr %call30, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 15), align 4
  %call31 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.19, ptr noundef null, i8 noundef zeroext 16, i32 noundef 0) #5
  store ptr %call31, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 16), align 4
  %call32 = call ptr @clk_reg_prcmu_scalable(ptr noundef nonnull @.str.20, ptr noundef null, i8 noundef zeroext 17, i32 noundef 0, i32 noundef 1) #5
  store ptr %call32, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 17), align 4
  %call33 = call ptr @clk_reg_prcmu_opp_gate(ptr noundef nonnull @.str.21, ptr noundef null, i8 noundef zeroext 18, i32 noundef 0) #5
  store ptr %call33, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 18), align 4
  %call34 = call ptr @clk_reg_prcmu_scalable(ptr noundef nonnull @.str.22, ptr noundef null, i8 noundef zeroext 19, i32 noundef 0, i32 noundef 1) #5
  store ptr %call34, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 19), align 4
  %call35 = call ptr @clk_reg_prcmu_scalable(ptr noundef nonnull @.str.23, ptr noundef null, i8 noundef zeroext 20, i32 noundef 0, i32 noundef 1) #5
  store ptr %call35, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 20), align 4
  %call36 = call ptr @clk_reg_prcmu_scalable(ptr noundef nonnull @.str.24, ptr noundef null, i8 noundef zeroext 21, i32 noundef 0, i32 noundef 1) #5
  store ptr %call36, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 21), align 4
  %call37 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.25, ptr noundef null, i8 noundef zeroext 22, i32 noundef 0) #5
  store ptr %call37, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 22), align 4
  %call38 = call ptr @clk_reg_prcmu_scalable(ptr noundef nonnull @.str.26, ptr noundef null, i8 noundef zeroext 23, i32 noundef 0, i32 noundef 1) #5
  store ptr %call38, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 23), align 4
  %call39 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.27, ptr noundef null, i8 noundef zeroext 24, i32 noundef 0) #5
  store ptr %call39, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 24), align 4
  %call40 = call ptr @clk_reg_prcmu_opp_gate(ptr noundef nonnull @.str.28, ptr noundef null, i8 noundef zeroext 25, i32 noundef 0) #5
  store ptr %call40, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 25), align 4
  %call41 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.29, ptr noundef null, i8 noundef zeroext 26, i32 noundef 0) #5
  store ptr %call41, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 26), align 4
  %call42 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.30, ptr noundef null, i8 noundef zeroext 27, i32 noundef 0) #5
  store ptr %call42, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 27), align 4
  %call43 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.31, ptr noundef null, i8 noundef zeroext 28, i32 noundef 0) #5
  store ptr %call43, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 28), align 4
  %call44 = call ptr @clk_reg_prcmu_scalable(ptr noundef nonnull @.str.32, ptr noundef null, i8 noundef zeroext 29, i32 noundef 0, i32 noundef 1) #5
  store ptr %call44, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 29), align 4
  %call45 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.33, ptr noundef null, i8 noundef zeroext 31, i32 noundef 0) #5
  store ptr %call45, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 31), align 4
  %call46 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.34, ptr noundef null, i8 noundef zeroext 32, i32 noundef 0) #5
  store ptr %call46, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 32), align 4
  %call47 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.35, ptr noundef null, i8 noundef zeroext 33, i32 noundef 0) #5
  store ptr %call47, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 33), align 4
  %call48 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.36, ptr noundef null, i8 noundef zeroext 41, i32 noundef 0) #5
  store ptr %call48, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 41), align 4
  %call49 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.37, ptr noundef null, i8 noundef zeroext 39, i32 noundef 0) #5
  store ptr %call49, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 39), align 4
  %call50 = call ptr @clk_reg_prcmu_opp_volt_scalable(ptr noundef nonnull @.str.38, ptr noundef null, i8 noundef zeroext 9, i32 noundef 100000000, i32 noundef 1) #5
  store ptr %call50, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 9), align 4
  %call51 = call ptr @clk_reg_prcmu_scalable(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.24, i8 noundef zeroext 46, i32 noundef 0, i32 noundef 1) #5
  store ptr %call51, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 46), align 4
  %call52 = call ptr @clk_reg_prcmu_scalable(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39, i8 noundef zeroext 47, i32 noundef 0, i32 noundef 1) #5
  store ptr %call52, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 47), align 4
  %call53 = call ptr @clk_reg_prcmu_scalable(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39, i8 noundef zeroext 48, i32 noundef 0, i32 noundef 1) #5
  store ptr %call53, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 48), align 4
  %call54 = call ptr @clk_reg_prcmu_scalable(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.32, i8 noundef zeroext 49, i32 noundef 0, i32 noundef 1) #5
  store ptr %call54, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 49), align 4
  %call55 = call ptr @clk_reg_prcmu_scalable(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.32, i8 noundef zeroext 50, i32 noundef 0, i32 noundef 1) #5
  store ptr %call55, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 50), align 4
  %call56 = call ptr @clk_reg_prcmu_scalable(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.32, i8 noundef zeroext 51, i32 noundef 0, i32 noundef 1) #5
  store ptr %call56, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 51), align 4
  %call57 = call ptr @clk_reg_prcmu_scalable_rate(ptr noundef nonnull @.str.45, ptr noundef null, i8 noundef zeroext 44, i32 noundef 0, i32 noundef 8) #5
  store ptr %call57, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 44), align 4
  %call58 = call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45, i32 noundef 8, i32 noundef 1, i32 noundef 2) #5
  %call60 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.14, i32 noundef %3, i32 noundef 1, i32 noundef 0) #5
  store ptr %call60, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 32), align 4
  %call62 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.14, i32 noundef %3, i32 noundef 2, i32 noundef 0) #5
  store ptr %call62, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 33), align 4
  %call64 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.14, i32 noundef %3, i32 noundef 4, i32 noundef 0) #5
  store ptr %call64, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 34), align 4
  %call66 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef %3, i32 noundef 8, i32 noundef 0) #5
  store ptr %call66, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 35), align 4
  %call68 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.14, i32 noundef %3, i32 noundef 16, i32 noundef 0) #5
  store ptr %call68, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 36), align 4
  %call70 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.14, i32 noundef %3, i32 noundef 32, i32 noundef 0) #5
  store ptr %call70, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 37), align 4
  %call72 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.14, i32 noundef %3, i32 noundef 64, i32 noundef 0) #5
  store ptr %call72, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 38), align 4
  %call74 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.14, i32 noundef %3, i32 noundef 128, i32 noundef 0) #5
  store ptr %call74, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 39), align 4
  %call76 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.14, i32 noundef %3, i32 noundef 256, i32 noundef 0) #5
  store ptr %call76, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 40), align 4
  %call78 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.14, i32 noundef %3, i32 noundef 512, i32 noundef 0) #5
  store ptr %call78, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 41), align 4
  %call80 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.14, i32 noundef %3, i32 noundef 1024, i32 noundef 0) #5
  store ptr %call80, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 42), align 4
  %call82 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.14, i32 noundef %3, i32 noundef 2048, i32 noundef 0) #5
  store ptr %call82, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 43), align 4
  %call84 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.15, i32 noundef %7, i32 noundef 1, i32 noundef 0) #5
  store ptr %call84, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 64), align 4
  %call86 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.15, i32 noundef %7, i32 noundef 2, i32 noundef 0) #5
  store ptr %call86, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 65), align 4
  %call88 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.15, i32 noundef %7, i32 noundef 4, i32 noundef 0) #5
  store ptr %call88, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 66), align 4
  %call90 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.15, i32 noundef %7, i32 noundef 8, i32 noundef 0) #5
  store ptr %call90, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 67), align 4
  %call92 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.15, i32 noundef %7, i32 noundef 16, i32 noundef 0) #5
  store ptr %call92, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 68), align 4
  %call94 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.15, i32 noundef %7, i32 noundef 32, i32 noundef 0) #5
  store ptr %call94, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 69), align 4
  %call96 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.15, i32 noundef %7, i32 noundef 64, i32 noundef 0) #5
  store ptr %call96, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 70), align 4
  %call98 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.15, i32 noundef %7, i32 noundef 128, i32 noundef 0) #5
  store ptr %call98, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 71), align 4
  %call100 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.15, i32 noundef %7, i32 noundef 256, i32 noundef 0) #5
  store ptr %call100, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 72), align 4
  %call102 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.15, i32 noundef %7, i32 noundef 512, i32 noundef 0) #5
  store ptr %call102, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 73), align 4
  %call104 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.15, i32 noundef %7, i32 noundef 1024, i32 noundef 0) #5
  store ptr %call104, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 74), align 4
  %call106 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.15, i32 noundef %7, i32 noundef 2048, i32 noundef 0) #5
  store ptr %call106, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 75), align 4
  %call108 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.15, i32 noundef %7, i32 noundef 4096, i32 noundef 0) #5
  store ptr %call108, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 76), align 4
  %call110 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.16, i32 noundef %11, i32 noundef 1, i32 noundef 0) #5
  store ptr %call110, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 96), align 4
  %call112 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.16, i32 noundef %11, i32 noundef 2, i32 noundef 0) #5
  store ptr %call112, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 97), align 4
  %call114 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.16, i32 noundef %11, i32 noundef 4, i32 noundef 0) #5
  store ptr %call114, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 98), align 4
  %call116 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.16, i32 noundef %11, i32 noundef 8, i32 noundef 0) #5
  store ptr %call116, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 99), align 4
  %call118 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.16, i32 noundef %11, i32 noundef 16, i32 noundef 0) #5
  store ptr %call118, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 100), align 4
  %call120 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.16, i32 noundef %11, i32 noundef 32, i32 noundef 0) #5
  store ptr %call120, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 101), align 4
  %call122 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.16, i32 noundef %11, i32 noundef 64, i32 noundef 0) #5
  store ptr %call122, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 102), align 4
  %call124 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.16, i32 noundef %11, i32 noundef 128, i32 noundef 0) #5
  store ptr %call124, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 103), align 4
  %call126 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.16, i32 noundef %11, i32 noundef 256, i32 noundef 0) #5
  store ptr %call126, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 104), align 4
  %call128 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.17, i32 noundef %15, i32 noundef 1, i32 noundef 0) #5
  store ptr %call128, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 160), align 4
  %call130 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.17, i32 noundef %15, i32 noundef 2, i32 noundef 0) #5
  store ptr %call130, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 161), align 4
  %call132 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.18, i32 noundef %19, i32 noundef 1, i32 noundef 0) #5
  store ptr %call132, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 192), align 4
  %call134 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.18, i32 noundef %19, i32 noundef 2, i32 noundef 0) #5
  store ptr %call134, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 193), align 4
  %call136 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.18, i32 noundef %19, i32 noundef 4, i32 noundef 0) #5
  store ptr %call136, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 194), align 4
  %call138 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.18, i32 noundef %19, i32 noundef 8, i32 noundef 0) #5
  store ptr %call138, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 195), align 4
  %call140 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.18, i32 noundef %19, i32 noundef 16, i32 noundef 0) #5
  store ptr %call140, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 196), align 4
  %call142 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.18, i32 noundef %19, i32 noundef 32, i32 noundef 0) #5
  store ptr %call142, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 197), align 4
  %call144 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.18, i32 noundef %19, i32 noundef 64, i32 noundef 0) #5
  store ptr %call144, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 198), align 4
  %call146 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.18, i32 noundef %19, i32 noundef 128, i32 noundef 0) #5
  store ptr %call146, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 199), align 4
  %call148 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.9, i32 noundef %3, i32 noundef 1, i32 noundef 1) #5
  store ptr %call148, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 32), align 4
  %call150 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.9, i32 noundef %3, i32 noundef 2, i32 noundef 1) #5
  store ptr %call150, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 33), align 4
  %call152 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.12, i32 noundef %3, i32 noundef 4, i32 noundef 1) #5
  store ptr %call152, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 34), align 4
  %call154 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.10, i32 noundef %3, i32 noundef 8, i32 noundef 1) #5
  store ptr %call154, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 35), align 4
  %call156 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.11, i32 noundef %3, i32 noundef 16, i32 noundef 1) #5
  store ptr %call156, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 36), align 4
  %call158 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.38, i32 noundef %3, i32 noundef 32, i32 noundef 1) #5
  store ptr %call158, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 37), align 4
  %call160 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.12, i32 noundef %3, i32 noundef 64, i32 noundef 1) #5
  store ptr %call160, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 38), align 4
  %call162 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.13, i32 noundef %3, i32 noundef 256, i32 noundef 1) #5
  store ptr %call162, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 40), align 4
  %call164 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.12, i32 noundef %3, i32 noundef 512, i32 noundef 1) #5
  store ptr %call164, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 41), align 4
  %call166 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.11, i32 noundef %3, i32 noundef 1024, i32 noundef 1) #5
  store ptr %call166, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 42), align 4
  %call168 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.12, i32 noundef %7, i32 noundef 1, i32 noundef 1) #5
  store ptr %call168, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 64), align 4
  %call170 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.38, i32 noundef %7, i32 noundef 4, i32 noundef 1) #5
  store ptr %call170, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 66), align 4
  %call172 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.10, i32 noundef %7, i32 noundef 8, i32 noundef 1) #5
  store ptr %call172, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 67), align 4
  %call174 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.38, i32 noundef %7, i32 noundef 16, i32 noundef 1) #5
  store ptr %call174, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 68), align 4
  %call176 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.38, i32 noundef %7, i32 noundef 32, i32 noundef 1) #5
  store ptr %call176, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 69), align 4
  %call178 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.23, i32 noundef %7, i32 noundef 64, i32 noundef 5) #5
  store ptr %call178, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 70), align 4
  %call180 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.22, i32 noundef %7, i32 noundef 128, i32 noundef 5) #5
  store ptr %call180, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 71), align 4
  %call182 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.33, i32 noundef %11, i32 noundef 2, i32 noundef 1) #5
  store ptr %call182, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 97), align 4
  %call184 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.33, i32 noundef %11, i32 noundef 4, i32 noundef 1) #5
  store ptr %call184, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 98), align 4
  %call186 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.12, i32 noundef %11, i32 noundef 8, i32 noundef 1) #5
  store ptr %call186, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 99), align 4
  %call188 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.38, i32 noundef %11, i32 noundef 16, i32 noundef 1) #5
  store ptr %call188, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 100), align 4
  %call190 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.6, i32 noundef %11, i32 noundef 32, i32 noundef 1) #5
  store ptr %call190, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 101), align 4
  %call192 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.9, i32 noundef %11, i32 noundef 64, i32 noundef 1) #5
  store ptr %call192, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 102), align 4
  %call194 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.38, i32 noundef %11, i32 noundef 128, i32 noundef 1) #5
  store ptr %call194, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 103), align 4
  %call196 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.34, i32 noundef %19, i32 noundef 1, i32 noundef 1) #5
  store ptr %call196, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 192), align 4
  %call197 = call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #5
  %cmp199.not371 = icmp eq ptr %call197, null
  br i1 %cmp199.not371, label %if.end20.cleanup_crit_edge, label %if.end20.for.body200_crit_edge

if.end20.for.body200_crit_edge:                   ; preds = %if.end20
  br label %for.body200

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body200:                                      ; preds = %for.inc224.for.body200_crit_edge, %if.end20.for.body200_crit_edge
  %child.0372 = phi ptr [ %call225, %for.inc224.for.body200_crit_edge ], [ %call197, %if.end20.for.body200_crit_edge ]
  %call201 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %child.0372, ptr noundef nonnull @.str.116) #5
  br i1 %call201, label %if.then202, label %for.body200.if.end204_crit_edge

for.body200.if.end204_crit_edge:                  ; preds = %for.body200
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end204

if.then202:                                       ; preds = %for.body200
  call void @__sanitizer_cov_trace_pc() #7
  store ptr @prcmu_clk, ptr @u8500_clk_init.clk_data, align 4
  store i32 58, ptr getelementptr inbounds (%struct.clk_onecell_data, ptr @u8500_clk_init.clk_data, i32 0, i32 1), align 4
  %call203 = call i32 @of_clk_add_provider(ptr noundef nonnull %child.0372, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull @u8500_clk_init.clk_data) #5
  br label %if.end204

if.end204:                                        ; preds = %if.then202, %for.body200.if.end204_crit_edge
  %call205 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %child.0372, ptr noundef nonnull @.str.117) #5
  br i1 %call205, label %if.then206, label %if.end204.if.end208_crit_edge

if.end204.if.end208_crit_edge:                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end208

if.then206:                                       ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #7
  %call207 = call i32 @of_clk_add_provider(ptr noundef nonnull %child.0372, ptr noundef nonnull @ux500_twocell_get, ptr noundef nonnull @prcc_pclk) #5
  br label %if.end208

if.end208:                                        ; preds = %if.then206, %if.end204.if.end208_crit_edge
  %call209 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %child.0372, ptr noundef nonnull @.str.118) #5
  br i1 %call209, label %if.then210, label %if.end208.if.end212_crit_edge

if.end208.if.end212_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end212

if.then210:                                       ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #7
  %call211 = call i32 @of_clk_add_provider(ptr noundef nonnull %child.0372, ptr noundef nonnull @ux500_twocell_get, ptr noundef nonnull @prcc_kclk) #5
  br label %if.end212

if.end212:                                        ; preds = %if.then210, %if.end208.if.end212_crit_edge
  %call213 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %child.0372, ptr noundef nonnull @.str.119) #5
  br i1 %call213, label %if.then214, label %if.end212.if.end216_crit_edge

if.end212.if.end216_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end216

if.then214:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #7
  %call215 = call i32 @of_clk_add_provider(ptr noundef nonnull %child.0372, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call11) #5
  br label %if.end216

if.end216:                                        ; preds = %if.then214, %if.end212.if.end216_crit_edge
  %call217 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %child.0372, ptr noundef nonnull @.str.120) #5
  br i1 %call217, label %if.then218, label %if.end216.if.end220_crit_edge

if.end216.if.end220_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end220

if.then218:                                       ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #7
  %call219 = call i32 @of_clk_add_provider(ptr noundef nonnull %child.0372, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call58) #5
  br label %if.end220

if.end220:                                        ; preds = %if.then218, %if.end216.if.end220_crit_edge
  %call221 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %child.0372, ptr noundef nonnull @.str.121) #5
  br i1 %call221, label %if.then222, label %if.end220.for.inc224_crit_edge

if.end220.for.inc224_crit_edge:                   ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc224

if.then222:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #7
  call void @u8500_prcc_reset_init(ptr noundef nonnull %child.0372, ptr noundef nonnull %call7.i.i) #5
  br label %for.inc224

for.inc224:                                       ; preds = %if.then222, %if.end220.for.inc224_crit_edge
  %call225 = call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %child.0372) #5
  %cmp199.not = icmp eq ptr %call225, null
  br i1 %cmp199.not, label %for.inc224.cleanup_crit_edge, label %for.inc224.for.body200_crit_edge

for.inc224.for.body200_crit_edge:                 ; preds = %for.inc224
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body200

for.inc224.cleanup_crit_edge:                     ; preds = %for.inc224
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc224.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_reg_prcmu_gate(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prcmu_get_fw_version() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_reg_prcmu_scalable(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_reg_prcmu_opp_gate(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_reg_prcmu_opp_volt_scalable(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_reg_prcmu_scalable_rate(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_reg_prcc_pclk(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_reg_prcc_kclk(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ux500_twocell_get(ptr nocapture noundef readonly %clkspec, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 1
  %0 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %3, label %do.end [
    i32 1, label %if.end.if.end14_crit_edge
    i32 2, label %if.end.if.end14_crit_edge26
    i32 3, label %if.end.if.end14_crit_edge27
    i32 5, label %if.end.if.end14_crit_edge28
    i32 6, label %if.end.if.end14_crit_edge29
  ]

if.end.if.end14_crit_edge29:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end.if.end14_crit_edge28:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end.if.end14_crit_edge27:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end.if.end14_crit_edge26:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123, i32 noundef %3) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end.if.end14_crit_edge, %if.end.if.end14_crit_edge26, %if.end.if.end14_crit_edge27, %if.end.if.end14_crit_edge28, %if.end.if.end14_crit_edge29
  %arrayidx2 = getelementptr %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx2, align 4
  %mul = shl nuw nsw i32 %3, 5
  %add = add i32 %6, %mul
  %arrayidx15 = getelementptr ptr, ptr %data, i32 %add
  %7 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx15, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %8, %if.end14 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @u8500_prcc_reset_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !257, !258}
!llvm.module.flags = !{!259, !260, !261, !262, !263, !264, !265, !266}
!llvm.ident = !{!267}

!0 = !{ptr @__of_table_u8500_clks, !1, !"__of_table_u8500_clks", i1 false, i1 false}
!1 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 572, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 73, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @u8500_clk_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @u8500_clk_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 80, i32 27}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 84, i32 27}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 88, i32 27}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 94, i32 42}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 94, i32 52}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 116, i32 28}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 122, i32 27}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 125, i32 27}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 128, i32 27}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 131, i32 27}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 134, i32 27}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 137, i32 27}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 140, i32 27}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 143, i32 27}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 146, i32 27}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 149, i32 27}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 152, i32 27}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 155, i32 31}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 159, i32 31}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 162, i32 31}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 166, i32 31}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 170, i32 31}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 174, i32 27}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 177, i32 31}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 181, i32 27}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 184, i32 31}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 187, i32 27}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 190, i32 27}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 193, i32 27}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 196, i32 31}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 200, i32 27}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 203, i32 27}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 206, i32 27}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 209, i32 27}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 212, i32 27}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 215, i32 40}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 219, i32 31}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 223, i32 31}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 227, i32 31}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 231, i32 31}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 235, i32 31}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 239, i32 31}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 243, i32 36}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 247, i32 44}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 257, i32 26}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 261, i32 26}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 265, i32 26}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 269, i32 26}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 273, i32 26}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 277, i32 26}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 281, i32 26}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 285, i32 26}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 289, i32 26}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 293, i32 26}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 297, i32 26}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 301, i32 26}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 305, i32 26}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 309, i32 26}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 313, i32 26}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 317, i32 26}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 321, i32 26}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 325, i32 26}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 329, i32 26}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 333, i32 26}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 337, i32 26}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 341, i32 26}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 345, i32 26}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 349, i32 26}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 353, i32 26}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 357, i32 26}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 361, i32 26}
!150 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 365, i32 26}
!152 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 369, i32 26}
!154 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 373, i32 26}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 377, i32 26}
!158 = !{ptr @.str.78, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 381, i32 26}
!160 = !{ptr @.str.79, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 385, i32 26}
!162 = !{ptr @.str.80, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 389, i32 26}
!164 = !{ptr @.str.81, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 393, i32 26}
!166 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 397, i32 26}
!168 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 401, i32 26}
!170 = !{ptr @.str.84, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 405, i32 26}
!172 = !{ptr @.str.85, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 409, i32 26}
!174 = !{ptr @.str.86, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 413, i32 26}
!176 = !{ptr @.str.87, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 417, i32 26}
!178 = !{ptr @.str.88, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 421, i32 26}
!180 = !{ptr @.str.89, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 425, i32 26}
!182 = !{ptr @.str.90, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 429, i32 26}
!184 = !{ptr @.str.91, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 442, i32 26}
!186 = !{ptr @.str.92, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 446, i32 26}
!188 = !{ptr @.str.93, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 450, i32 26}
!190 = !{ptr @.str.94, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 454, i32 26}
!192 = !{ptr @.str.95, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 458, i32 26}
!194 = !{ptr @.str.96, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 462, i32 26}
!196 = !{ptr @.str.97, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 466, i32 26}
!198 = !{ptr @.str.98, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 470, i32 26}
!200 = !{ptr @.str.99, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 474, i32 26}
!202 = !{ptr @.str.100, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 478, i32 26}
!204 = !{ptr @.str.101, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 483, i32 26}
!206 = !{ptr @.str.102, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 487, i32 26}
!208 = !{ptr @.str.103, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 491, i32 26}
!210 = !{ptr @.str.104, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 495, i32 26}
!212 = !{ptr @.str.105, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 499, i32 26}
!214 = !{ptr @.str.106, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 504, i32 26}
!216 = !{ptr @.str.107, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 509, i32 26}
!218 = !{ptr @.str.108, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 515, i32 26}
!220 = !{ptr @.str.109, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 519, i32 26}
!222 = !{ptr @.str.110, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 523, i32 26}
!224 = !{ptr @.str.111, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 527, i32 26}
!226 = !{ptr @.str.112, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 531, i32 26}
!228 = !{ptr @.str.113, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 535, i32 26}
!230 = !{ptr @.str.114, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 539, i32 26}
!232 = !{ptr @.str.115, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 544, i32 26}
!234 = !{ptr @u8500_clk_init.clk_data, !235, !"clk_data", i1 false, i1 false}
!235 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 549, i32 34}
!236 = !{ptr @.str.116, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 551, i32 30}
!238 = !{ptr @.str.117, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 556, i32 30}
!240 = !{ptr @.str.118, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 559, i32 30}
!242 = !{ptr @.str.119, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 562, i32 30}
!244 = !{ptr @.str.120, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 565, i32 30}
!246 = !{ptr @.str.121, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 568, i32 30}
!248 = !{ptr @prcmu_clk, !249, !"prcmu_clk", i1 false, i1 false}
!249 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 18, i32 20}
!250 = !{ptr @prcc_pclk, !251, !"prcc_pclk", i1 false, i1 false}
!251 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 19, i32 20}
!252 = !{ptr @prcc_kclk, !253, !"prcc_kclk", i1 false, i1 false}
!253 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 20, i32 20}
!254 = !{ptr @.str.122, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/clk/ux500/u8500_of_clk.c", i32 42, i32 3}
!256 = !{ptr @.str.123, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @ux500_twocell_get._entry, !255, !"_entry", i1 false, i1 false}
!258 = !{ptr @ux500_twocell_get._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!259 = !{i32 1, !"wchar_size", i32 2}
!260 = !{i32 1, !"min_enum_size", i32 4}
!261 = !{i32 8, !"branch-target-enforcement", i32 0}
!262 = !{i32 8, !"sign-return-address", i32 0}
!263 = !{i32 8, !"sign-return-address-all", i32 0}
!264 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!265 = !{i32 7, !"uwtable", i32 1}
!266 = !{i32 7, !"frame-pointer", i32 2}
!267 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
