; ModuleID = '/llk/IR_all_yes/drivers/clk/hisilicon/clk-hi3620.c_pt.bc'
source_filename = "../drivers/clk/hisilicon/clk-hi3620.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.hisi_fixed_rate_clock = type { i32, ptr, ptr, i32, i32 }
%struct.hisi_fixed_factor_clock = type { i32, ptr, ptr, i32, i32, i32 }
%struct.hisi_mux_clock = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8, ptr, ptr }
%struct.hisi_divider_clock = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr, ptr }
%struct.hisi_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hisi_mmc_clock = type { i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_mmc = type { %struct.clk_hw, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32 }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@__of_table_hi3620_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3620-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3620_clk_init }, section "__clk_of_table", align 4
@__of_table_hi3620_mmc_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3620-mmc-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3620_mmc_clk_init }, section "__clk_of_table", align 4
@hi3620_fixed_rate_clks = internal global [9 x %struct.hisi_fixed_rate_clock] [%struct.hisi_fixed_rate_clock { i32 1, ptr @.str, ptr null, i32 0, i32 32768 }, %struct.hisi_fixed_rate_clock { i32 2, ptr @.str.1, ptr null, i32 0, i32 26000000 }, %struct.hisi_fixed_rate_clock { i32 3, ptr @.str.2, ptr null, i32 0, i32 26000000 }, %struct.hisi_fixed_rate_clock { i32 4, ptr @.str.3, ptr null, i32 0, i32 1600000000 }, %struct.hisi_fixed_rate_clock { i32 5, ptr @.str.4, ptr null, i32 0, i32 1600000000 }, %struct.hisi_fixed_rate_clock { i32 6, ptr @.str.5, ptr null, i32 0, i32 1440000000 }, %struct.hisi_fixed_rate_clock { i32 7, ptr @.str.6, ptr null, i32 0, i32 1440000000 }, %struct.hisi_fixed_rate_clock { i32 8, ptr @.str.7, ptr null, i32 0, i32 1188000000 }, %struct.hisi_fixed_rate_clock { i32 9, ptr @.str.8, ptr null, i32 0, i32 1300000000 }], section ".init.data", align 4
@hi3620_fixed_factor_clks = internal global [3 x %struct.hisi_fixed_factor_clock] [%struct.hisi_fixed_factor_clock { i32 10, ptr @.str.9, ptr @.str.1, i32 1, i32 4, i32 0 }, %struct.hisi_fixed_factor_clock { i32 11, ptr @.str.10, ptr @.str.5, i32 1, i32 30, i32 0 }, %struct.hisi_fixed_factor_clock { i32 12, ptr @.str.11, ptr @.str.12, i32 1, i32 40, i32 0 }], section ".init.data", align 4
@hi3620_mux_clks = internal global [35 x %struct.hisi_mux_clock] [%struct.hisi_mux_clock { i32 32, ptr @.str.13, ptr @timer0_mux_p, i8 2, i32 4, i32 0, i8 15, i8 2, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 33, ptr @.str.14, ptr @timer1_mux_p, i8 2, i32 4, i32 0, i8 17, i8 2, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 34, ptr @.str.15, ptr @timer2_mux_p, i8 2, i32 4, i32 0, i8 19, i8 2, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 35, ptr @.str.16, ptr @timer3_mux_p, i8 2, i32 4, i32 0, i8 21, i8 2, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 36, ptr @.str.17, ptr @timer4_mux_p, i8 2, i32 4, i32 24, i8 0, i8 2, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 37, ptr @.str.18, ptr @timer5_mux_p, i8 2, i32 4, i32 24, i8 2, i8 2, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 38, ptr @.str.19, ptr @timer6_mux_p, i8 2, i32 4, i32 24, i8 4, i8 2, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 39, ptr @.str.20, ptr @timer7_mux_p, i8 2, i32 4, i32 24, i8 6, i8 2, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 40, ptr @.str.21, ptr @timer8_mux_p, i8 2, i32 4, i32 24, i8 8, i8 2, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 41, ptr @.str.22, ptr @timer9_mux_p, i8 2, i32 4, i32 24, i8 10, i8 2, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 42, ptr @.str.23, ptr @uart0_mux_p, i8 2, i32 4, i32 256, i8 7, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 43, ptr @.str.24, ptr @uart1_mux_p, i8 2, i32 4, i32 256, i8 8, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 44, ptr @.str.25, ptr @uart2_mux_p, i8 2, i32 4, i32 256, i8 9, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 45, ptr @.str.26, ptr @uart3_mux_p, i8 2, i32 4, i32 256, i8 10, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 46, ptr @.str.27, ptr @uart4_mux_p, i8 2, i32 4, i32 256, i8 11, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 47, ptr @.str.28, ptr @spi0_mux_p, i8 2, i32 4, i32 256, i8 12, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 48, ptr @.str.29, ptr @spi1_mux_p, i8 2, i32 4, i32 256, i8 13, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 49, ptr @.str.30, ptr @spi2_mux_p, i8 2, i32 4, i32 256, i8 14, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 50, ptr @.str.31, ptr @saxi_mux_p, i8 2, i32 4, i32 256, i8 15, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 51, ptr @.str.32, ptr @pwm0_mux_p, i8 2, i32 4, i32 260, i8 10, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 52, ptr @.str.33, ptr @pwm1_mux_p, i8 2, i32 4, i32 260, i8 11, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 53, ptr @.str.34, ptr @sd_mux_p, i8 2, i32 4, i32 264, i8 4, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 54, ptr @.str.35, ptr @mmc1_mux_p, i8 2, i32 4, i32 264, i8 9, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 55, ptr @.str.36, ptr @mmc1_mux2_p, i8 2, i32 4, i32 264, i8 10, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 56, ptr @.str.37, ptr @g2d_mux_p, i8 2, i32 4, i32 268, i8 5, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 57, ptr @.str.38, ptr @venc_mux_p, i8 2, i32 4, i32 268, i8 11, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 58, ptr @.str.39, ptr @vdec_mux_p, i8 2, i32 4, i32 272, i8 5, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 59, ptr @.str.40, ptr @vpp_mux_p, i8 2, i32 4, i32 272, i8 11, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 60, ptr @.str.41, ptr @edc0_mux_p, i8 2, i32 4, i32 276, i8 6, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 61, ptr @.str.42, ptr @ldi0_mux_p, i8 4, i32 4, i32 276, i8 13, i8 2, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 62, ptr @.str.43, ptr @edc1_mux_p, i8 2, i32 4, i32 280, i8 6, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 63, ptr @.str.44, ptr @ldi1_mux_p, i8 4, i32 4, i32 280, i8 14, i8 2, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 64, ptr @.str.45, ptr @rclk_hsic_p, i8 2, i32 4, i32 304, i8 2, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 65, ptr @.str.46, ptr @mmc2_mux_p, i8 2, i32 4, i32 320, i8 4, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 66, ptr @.str.47, ptr @mmc3_mux_p, i8 2, i32 4, i32 320, i8 9, i8 1, i8 4, ptr null, ptr null }], section ".init.data", align 4
@hi3620_div_clks = internal global [7 x %struct.hisi_divider_clock] [%struct.hisi_divider_clock { i32 128, ptr @.str.54, ptr @.str.31, i32 0, i32 256, i8 0, i8 5, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 129, ptr @.str.55, ptr @.str.54, i32 0, i32 256, i8 5, i8 2, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 130, ptr @.str.56, ptr @.str.34, i32 0, i32 264, i8 0, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 131, ptr @.str.53, ptr @.str.35, i32 0, i32 264, i8 5, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 132, ptr @.str.12, ptr @.str.45, i32 0, i32 304, i8 0, i8 2, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 133, ptr @.str.57, ptr @.str.46, i32 0, i32 320, i8 0, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 134, ptr @.str.58, ptr @.str.47, i32 0, i32 320, i8 5, i8 4, i8 8, ptr null, ptr null }], section ".init.data", align 4
@hi3620_separated_gate_clks = internal global [59 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 160, ptr @.str.48, ptr @.str.59, i32 4, i32 32, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 161, ptr @.str.59, ptr @.str.9, i32 4, i32 32, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 162, ptr @.str.49, ptr @.str.60, i32 4, i32 32, i8 2, i8 0, ptr null }, %struct.hisi_gate_clock { i32 163, ptr @.str.60, ptr @.str.9, i32 4, i32 32, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 167, ptr @.str.61, ptr @.str.2, i32 4, i32 32, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 168, ptr @.str.62, ptr @.str.2, i32 4, i32 32, i8 6, i8 0, ptr null }, %struct.hisi_gate_clock { i32 169, ptr @.str.63, ptr @.str.2, i32 4, i32 32, i8 8, i8 0, ptr null }, %struct.hisi_gate_clock { i32 170, ptr @.str.64, ptr @.str.2, i32 4, i32 32, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 171, ptr @.str.65, ptr @.str.2, i32 4, i32 32, i8 10, i8 0, ptr null }, %struct.hisi_gate_clock { i32 172, ptr @.str.66, ptr @.str.2, i32 4, i32 32, i8 11, i8 0, ptr null }, %struct.hisi_gate_clock { i32 173, ptr @.str.67, ptr @.str.2, i32 4, i32 32, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 174, ptr @.str.68, ptr @.str.2, i32 4, i32 32, i8 13, i8 0, ptr null }, %struct.hisi_gate_clock { i32 175, ptr @.str.69, ptr @.str.2, i32 4, i32 32, i8 14, i8 0, ptr null }, %struct.hisi_gate_clock { i32 176, ptr @.str.70, ptr @.str.2, i32 4, i32 32, i8 15, i8 0, ptr null }, %struct.hisi_gate_clock { i32 177, ptr @.str.71, ptr @.str.2, i32 4, i32 32, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 178, ptr @.str.72, ptr @.str.2, i32 4, i32 32, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 179, ptr @.str.73, ptr @.str.2, i32 4, i32 32, i8 18, i8 0, ptr null }, %struct.hisi_gate_clock { i32 180, ptr @.str.74, ptr @.str.2, i32 4, i32 32, i8 19, i8 0, ptr null }, %struct.hisi_gate_clock { i32 181, ptr @.str.75, ptr @.str.2, i32 4, i32 32, i8 20, i8 0, ptr null }, %struct.hisi_gate_clock { i32 182, ptr @.str.76, ptr @.str.2, i32 4, i32 32, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 183, ptr @.str.77, ptr @.str.2, i32 4, i32 32, i8 22, i8 0, ptr null }, %struct.hisi_gate_clock { i32 184, ptr @.str.78, ptr @.str.2, i32 4, i32 32, i8 23, i8 0, ptr null }, %struct.hisi_gate_clock { i32 185, ptr @.str.79, ptr @.str.2, i32 4, i32 32, i8 24, i8 0, ptr null }, %struct.hisi_gate_clock { i32 186, ptr @.str.80, ptr @.str.2, i32 4, i32 32, i8 25, i8 0, ptr null }, %struct.hisi_gate_clock { i32 187, ptr @.str.81, ptr @.str.2, i32 4, i32 32, i8 26, i8 0, ptr null }, %struct.hisi_gate_clock { i32 188, ptr @.str.82, ptr @.str.2, i32 4, i32 32, i8 27, i8 0, ptr null }, %struct.hisi_gate_clock { i32 189, ptr @.str.83, ptr @.str.2, i32 4, i32 32, i8 28, i8 0, ptr null }, %struct.hisi_gate_clock { i32 190, ptr @.str.84, ptr @.str.2, i32 4, i32 32, i8 29, i8 0, ptr null }, %struct.hisi_gate_clock { i32 191, ptr @.str.85, ptr @.str.1, i32 4, i32 48, i8 15, i8 0, ptr null }, %struct.hisi_gate_clock { i32 192, ptr @.str.86, ptr @.str.1, i32 4, i32 48, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 193, ptr @.str.87, ptr @.str.1, i32 4, i32 48, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 194, ptr @.str.88, ptr @.str.11, i32 4, i32 48, i8 24, i8 0, ptr null }, %struct.hisi_gate_clock { i32 195, ptr @.str.89, ptr @.str.10, i32 4, i32 48, i8 28, i8 0, ptr null }, %struct.hisi_gate_clock { i32 164, ptr @.str.50, ptr @.str.9, i32 4, i32 64, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 165, ptr @.str.51, ptr @.str.9, i32 4, i32 64, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 166, ptr @.str.52, ptr @.str.9, i32 4, i32 64, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 196, ptr @.str.90, ptr @.str.32, i32 4, i32 64, i8 7, i8 0, ptr null }, %struct.hisi_gate_clock { i32 197, ptr @.str.91, ptr @.str.33, i32 4, i32 64, i8 8, i8 0, ptr null }, %struct.hisi_gate_clock { i32 198, ptr @.str.92, ptr @.str.23, i32 4, i32 64, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 199, ptr @.str.93, ptr @.str.24, i32 4, i32 64, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 200, ptr @.str.94, ptr @.str.25, i32 4, i32 64, i8 18, i8 0, ptr null }, %struct.hisi_gate_clock { i32 201, ptr @.str.95, ptr @.str.26, i32 4, i32 64, i8 19, i8 0, ptr null }, %struct.hisi_gate_clock { i32 202, ptr @.str.96, ptr @.str.27, i32 4, i32 64, i8 20, i8 0, ptr null }, %struct.hisi_gate_clock { i32 203, ptr @.str.97, ptr @.str.28, i32 4, i32 64, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 204, ptr @.str.98, ptr @.str.29, i32 4, i32 64, i8 22, i8 0, ptr null }, %struct.hisi_gate_clock { i32 205, ptr @.str.99, ptr @.str.30, i32 4, i32 64, i8 23, i8 0, ptr null }, %struct.hisi_gate_clock { i32 206, ptr @.str.100, ptr @.str.2, i32 4, i32 64, i8 24, i8 0, ptr null }, %struct.hisi_gate_clock { i32 207, ptr @.str.101, ptr @.str.2, i32 4, i32 64, i8 25, i8 0, ptr null }, %struct.hisi_gate_clock { i32 210, ptr @.str.102, ptr @.str.1, i32 4, i32 64, i8 26, i8 0, ptr null }, %struct.hisi_gate_clock { i32 208, ptr @.str.103, ptr @.str.2, i32 4, i32 64, i8 28, i8 0, ptr null }, %struct.hisi_gate_clock { i32 209, ptr @.str.104, ptr @.str.2, i32 4, i32 64, i8 29, i8 0, ptr null }, %struct.hisi_gate_clock { i32 211, ptr @.str.105, ptr @.str.10, i32 4, i32 80, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 212, ptr @.str.106, ptr @.str.10, i32 4, i32 80, i8 10, i8 0, ptr null }, %struct.hisi_gate_clock { i32 213, ptr @.str.107, ptr @.str.10, i32 4, i32 80, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 214, ptr @.str.108, ptr @.str.56, i32 4, i32 80, i8 20, i8 0, ptr null }, %struct.hisi_gate_clock { i32 215, ptr @.str.109, ptr @.str.36, i32 4, i32 80, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 216, ptr @.str.110, ptr @.str.57, i32 4, i32 80, i8 22, i8 0, ptr null }, %struct.hisi_gate_clock { i32 217, ptr @.str.111, ptr @.str.58, i32 4, i32 80, i8 23, i8 0, ptr null }, %struct.hisi_gate_clock { i32 218, ptr @.str.112, ptr @.str.89, i32 4, i32 80, i8 24, i8 0, ptr null }], section ".init.data", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"osc32k\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"osc26m\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"armpll0\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"armpll1\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"armpll2\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"armpll3\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"armpll4\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"armpll5\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rclk_tcxo\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rclk_cfgaxi\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rclk_pico\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hsic_div\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer0_mux\00", [21 x i8] zeroinitializer }, align 32
@timer0_mux_p = internal constant [2 x ptr] [ptr @.str, ptr @.str.48], section ".init.rodata", align 4
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer1_mux\00", [21 x i8] zeroinitializer }, align 32
@timer1_mux_p = internal constant [2 x ptr] [ptr @.str, ptr @.str.48], section ".init.rodata", align 4
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer2_mux\00", [21 x i8] zeroinitializer }, align 32
@timer2_mux_p = internal constant [2 x ptr] [ptr @.str, ptr @.str.49], section ".init.rodata", align 4
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer3_mux\00", [21 x i8] zeroinitializer }, align 32
@timer3_mux_p = internal constant [2 x ptr] [ptr @.str, ptr @.str.49], section ".init.rodata", align 4
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer4_mux\00", [21 x i8] zeroinitializer }, align 32
@timer4_mux_p = internal constant [2 x ptr] [ptr @.str, ptr @.str.50], section ".init.rodata", align 4
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer5_mux\00", [21 x i8] zeroinitializer }, align 32
@timer5_mux_p = internal constant [2 x ptr] [ptr @.str, ptr @.str.50], section ".init.rodata", align 4
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer6_mux\00", [21 x i8] zeroinitializer }, align 32
@timer6_mux_p = internal constant [2 x ptr] [ptr @.str, ptr @.str.51], section ".init.rodata", align 4
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer7_mux\00", [21 x i8] zeroinitializer }, align 32
@timer7_mux_p = internal constant [2 x ptr] [ptr @.str, ptr @.str.51], section ".init.rodata", align 4
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer8_mux\00", [21 x i8] zeroinitializer }, align 32
@timer8_mux_p = internal constant [2 x ptr] [ptr @.str, ptr @.str.52], section ".init.rodata", align 4
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer9_mux\00", [21 x i8] zeroinitializer }, align 32
@timer9_mux_p = internal constant [2 x ptr] [ptr @.str, ptr @.str.52], section ".init.rodata", align 4
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart0_mux\00", [22 x i8] zeroinitializer }, align 32
@uart0_mux_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.2], section ".init.rodata", align 4
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_mux\00", [22 x i8] zeroinitializer }, align 32
@uart1_mux_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.2], section ".init.rodata", align 4
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart2_mux\00", [22 x i8] zeroinitializer }, align 32
@uart2_mux_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.2], section ".init.rodata", align 4
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart3_mux\00", [22 x i8] zeroinitializer }, align 32
@uart3_mux_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.2], section ".init.rodata", align 4
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart4_mux\00", [22 x i8] zeroinitializer }, align 32
@uart4_mux_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.2], section ".init.rodata", align 4
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi0_mux\00", [23 x i8] zeroinitializer }, align 32
@spi0_mux_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.10], section ".init.rodata", align 4
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi1_mux\00", [23 x i8] zeroinitializer }, align 32
@spi1_mux_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.10], section ".init.rodata", align 4
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi2_mux\00", [23 x i8] zeroinitializer }, align 32
@spi2_mux_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.10], section ".init.rodata", align 4
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"saxi_mux\00", [23 x i8] zeroinitializer }, align 32
@saxi_mux_p = internal constant [2 x ptr] [ptr @.str.6, ptr @.str.5], section ".init.rodata", align 4
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm0_mux\00", [23 x i8] zeroinitializer }, align 32
@pwm0_mux_p = internal constant [2 x ptr] [ptr @.str, ptr @.str.1], section ".init.rodata", align 4
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm1_mux\00", [23 x i8] zeroinitializer }, align 32
@pwm1_mux_p = internal constant [2 x ptr] [ptr @.str, ptr @.str.1], section ".init.rodata", align 4
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sd_mux\00", [25 x i8] zeroinitializer }, align 32
@sd_mux_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.6], section ".init.rodata", align 4
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc1_mux\00", [23 x i8] zeroinitializer }, align 32
@mmc1_mux_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.6], section ".init.rodata", align 4
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmc1_mux2\00", [22 x i8] zeroinitializer }, align 32
@mmc1_mux2_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.53], section ".init.rodata", align 4
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"g2d_mux\00", [24 x i8] zeroinitializer }, align 32
@g2d_mux_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.6], section ".init.rodata", align 4
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"venc_mux\00", [23 x i8] zeroinitializer }, align 32
@venc_mux_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.6], section ".init.rodata", align 4
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdec_mux\00", [23 x i8] zeroinitializer }, align 32
@vdec_mux_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.6], section ".init.rodata", align 4
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vpp_mux\00", [24 x i8] zeroinitializer }, align 32
@vpp_mux_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.6], section ".init.rodata", align 4
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"edc0_mux\00", [23 x i8] zeroinitializer }, align 32
@edc0_mux_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.6], section ".init.rodata", align 4
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ldi0_mux\00", [23 x i8] zeroinitializer }, align 32
@ldi0_mux_p = internal constant [4 x ptr] [ptr @.str.5, ptr @.str.7, ptr @.str.6, ptr @.str.8], section ".init.rodata", align 4
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"edc1_mux\00", [23 x i8] zeroinitializer }, align 32
@edc1_mux_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.6], section ".init.rodata", align 4
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ldi1_mux\00", [23 x i8] zeroinitializer }, align 32
@ldi1_mux_p = internal constant [4 x ptr] [ptr @.str.5, ptr @.str.7, ptr @.str.6, ptr @.str.8], section ".init.rodata", align 4
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rclk_hsic\00", [22 x i8] zeroinitializer }, align 32
@rclk_hsic_p = internal constant [2 x ptr] [ptr @.str.6, ptr @.str.5], section ".init.rodata", align 4
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc2_mux\00", [23 x i8] zeroinitializer }, align 32
@mmc2_mux_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.6], section ".init.rodata", align 4
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc3_mux\00", [23 x i8] zeroinitializer }, align 32
@mmc3_mux_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.6], section ".init.rodata", align 4
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timerclk01\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timerclk23\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timerclk45\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timerclk67\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timerclk89\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc1_div\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"saxi_div\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cfgaxi_div\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sd_div\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc2_div\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc3_div\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"timer_rclk01\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"timer_rclk23\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rtcclk\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"kpc_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpioclk0\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpioclk1\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpioclk2\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpioclk3\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpioclk4\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpioclk5\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpioclk6\00", [23 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpioclk7\00", [23 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpioclk8\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpioclk9\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpioclk10\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpioclk11\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpioclk12\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpioclk13\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpioclk14\00", [22 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpioclk15\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpioclk16\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpioclk17\00", [22 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpioclk18\00", [22 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpioclk19\00", [22 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpioclk20\00", [22 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpioclk21\00", [22 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dphy0_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dphy1_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dphy2_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usbphy_clk\00", [21 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"acp_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwmclk0\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwmclk1\00", [24 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uartclk0\00", [23 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uartclk1\00", [23 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uartclk2\00", [23 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uartclk3\00", [23 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uartclk4\00", [23 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spiclk0\00", [24 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spiclk1\00", [24 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spiclk2\00", [24 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2cclk0\00", [24 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2cclk1\00", [24 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sci_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2cclk2\00", [24 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2cclk3\00", [24 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ddrc_per_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dmac_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb2dvc_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sd_clk\00", [25 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc_clk1\00", [23 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc_clk2\00", [23 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc_clk3\00", [23 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mcu_clk\00", [24 x i8] zeroinitializer }, align 32
@hi3620_mmc_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.115, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013failed to find pctrl node in DTS\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hi3620_mmc_clk_init\00", [44 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/clk/hisilicon/clk-hi3620.c\00", [61 x i8] zeroinitializer }, align 32
@hi3620_mmc_clk_init._entry_ptr = internal global ptr @hi3620_mmc_clk_init._entry, section ".printk_index", align 4
@hi3620_mmc_clk_init._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.114, ptr @.str.115, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013failed to map pctrl\0A\00", [41 x i8] zeroinitializer }, align 32
@hi3620_mmc_clk_init._entry_ptr.118 = internal global ptr @hi3620_mmc_clk_init._entry.116, section ".printk_index", align 4
@hi3620_mmc_clks = internal global [4 x %struct.hisi_mmc_clock] [%struct.hisi_mmc_clock { i32 0, ptr @.str.119, ptr @.str.108, i32 4, i32 504, i32 0, i32 504, i32 1, i32 3, i32 504, i32 4, i32 4, i32 504, i32 8, i32 4 }, %struct.hisi_mmc_clock { i32 1, ptr @.str.120, ptr @.str.109, i32 4, i32 504, i32 12, i32 504, i32 13, i32 3, i32 504, i32 16, i32 4, i32 504, i32 20, i32 4 }, %struct.hisi_mmc_clock { i32 2, ptr @.str.121, ptr @.str.110, i32 4, i32 504, i32 24, i32 504, i32 25, i32 3, i32 504, i32 28, i32 4, i32 508, i32 0, i32 4 }, %struct.hisi_mmc_clock { i32 3, ptr @.str.122, ptr @.str.111, i32 4, i32 508, i32 4, i32 508, i32 5, i32 3, i32 508, i32 8, i32 4, i32 508, i32 12, i32 4 }], section ".init.data", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.119 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sd_bclk1\00", [23 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmc_bclk1\00", [22 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmc_bclk2\00", [22 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmc_bclk3\00", [22 x i8] zeroinitializer }, align 32
@clk_mmc_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @mmc_clk_prepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmc_clk_recalc_rate, ptr null, ptr @mmc_clk_determine_rate, ptr null, ptr null, ptr @mmc_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mmc_clk_set_timing.mmc_clk_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.123, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mmc_clk_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 26000000, i64 180000000, i64 360000000, i64 720000000, i64 1440000000]
@__sancov_gen_cov_switch_values.124 = internal global [7 x i64] [i64 5, i64 32, i64 13000000, i64 25000000, i64 50000000, i64 100000000, i64 180000000]
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 67, i32 21 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 68, i32 21 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 69, i32 21 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 70, i32 21 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 71, i32 21 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 72, i32 21 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 73, i32 21 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 74, i32 21 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 75, i32 21 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 80, i32 24 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 81, i32 24 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 82, i32 24 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 82, i32 39 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 86, i32 23 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 87, i32 23 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 88, i32 23 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 89, i32 23 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 90, i32 23 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 91, i32 23 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 92, i32 23 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 93, i32 23 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 94, i32 23 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 95, i32 23 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 96, i32 23 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 97, i32 23 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 98, i32 23 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 99, i32 23 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 100, i32 23 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 101, i32 23 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 102, i32 23 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 103, i32 23 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 104, i32 23 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 105, i32 23 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 106, i32 23 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 107, i32 23 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 108, i32 23 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 109, i32 23 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 110, i32 23 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 111, i32 23 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 112, i32 23 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 113, i32 23 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 114, i32 23 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 115, i32 23 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 116, i32 23 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 117, i32 23 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 118, i32 23 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 119, i32 23 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 120, i32 23 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 25, i32 67 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 27, i32 67 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 29, i32 67 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 31, i32 67 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 33, i32 67 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 49, i32 66 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 124, i32 25 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 125, i32 25 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 126, i32 25 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 129, i32 25 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 130, i32 25 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 134, i32 41 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 136, i32 41 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 138, i32 25 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 139, i32 25 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 140, i32 25 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 141, i32 25 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 142, i32 25 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 143, i32 25 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 144, i32 25 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 145, i32 25 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 146, i32 25 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 147, i32 25 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 148, i32 25 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 149, i32 25 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 150, i32 25 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 151, i32 25 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 152, i32 25 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 153, i32 25 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 154, i32 25 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 155, i32 25 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 156, i32 25 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 157, i32 25 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 158, i32 25 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 159, i32 25 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 160, i32 25 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 161, i32 25 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 162, i32 25 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 163, i32 25 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 164, i32 25 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 165, i32 25 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 166, i32 25 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 170, i32 25 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 171, i32 25 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 172, i32 25 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 173, i32 25 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 174, i32 25 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 175, i32 25 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 176, i32 25 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 177, i32 25 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 178, i32 25 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 179, i32 25 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 180, i32 25 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 181, i32 25 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 182, i32 25 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 183, i32 25 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 184, i32 25 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 185, i32 25 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 186, i32 25 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 187, i32 25 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 188, i32 25 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 189, i32 25 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 190, i32 25 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 191, i32 25 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 192, i32 25 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 455, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 461, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 256, i32 22 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 257, i32 26 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 258, i32 26 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 259, i32 26 }
@___asan_gen_.494 = private unnamed_addr constant [12 x i8] c"clk_mmc_ops\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 404, i32 29 }
@___asan_gen_.497 = private unnamed_addr constant [13 x i8] c"mmc_clk_lock\00", align 1
@___asan_gen_.500 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.501 = private constant [38 x i8] c"../drivers/clk/hisilicon/clk-hi3620.c\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 326, i32 9 }
@llvm.compiler.used = appending global [130 x ptr] [ptr @__of_table_hi3620_clk, ptr @__of_table_hi3620_mmc_clk, ptr @hi3620_mmc_clk_init._entry, ptr @hi3620_mmc_clk_init._entry.116, ptr @hi3620_mmc_clk_init._entry_ptr, ptr @hi3620_mmc_clk_init._entry_ptr.118, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @clk_mmc_ops, ptr @mmc_clk_set_timing.mmc_clk_lock, ptr @.str.123], section "llvm.metadata"
@0 = internal global [126 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3620_mmc_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3620_mmc_clk_init._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mmc_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_clk_set_timing.mmc_clk_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hi3620_clk_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hisi_clk_init(ptr noundef %np, i32 noundef 219) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @hisi_clk_register_fixed_rate(ptr noundef nonnull @hi3620_fixed_rate_clks, i32 noundef 9, ptr noundef nonnull %call) #9
  %call2 = tail call i32 @hisi_clk_register_fixed_factor(ptr noundef nonnull @hi3620_fixed_factor_clks, i32 noundef 3, ptr noundef nonnull %call) #9
  %call3 = tail call i32 @hisi_clk_register_mux(ptr noundef nonnull @hi3620_mux_clks, i32 noundef 35, ptr noundef nonnull %call) #9
  %call4 = tail call i32 @hisi_clk_register_divider(ptr noundef nonnull @hi3620_div_clks, i32 noundef 7, ptr noundef nonnull %call) #9
  tail call void @hisi_clk_register_gate_sep(ptr noundef nonnull @hi3620_separated_gate_clks, i32 noundef 59, ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hi3620_mmc_clk_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %node, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_iomap(ptr noundef nonnull %node, i32 noundef 0) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #13
  %tobool11.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not, label %do.end24, label %if.end40, !prof !344

do.end24:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.115, i32 noundef 466, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end40:                                         ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 16) #13
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i.i, ptr %call7.i.i, align 8
  %tobool43.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool43.not, label %if.end40.cleanup_crit_edge, label %for.cond.preheader

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end40
  %3 = getelementptr inbounds i8, ptr %init.i, i32 12
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %flags3.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %hisi_register_clk_mmc.exit.for.body_crit_edge, %for.cond.preheader
  %i.069 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %hisi_register_clk_mmc.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.hisi_mmc_clock], ptr @hi3620_mmc_clks, i32 0, i32 %i.069
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #9
  %4 = call ptr @memset(ptr %3, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i68 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 60) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i68, null
  br i1 %tobool.not.i, label %for.body.hisi_register_clk_mmc.exit_crit_edge, label %if.end.i

for.body.hisi_register_clk_mmc.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %hisi_register_clk_mmc.exit

if.end.i:                                         ; preds = %for.body
  %name.i = getelementptr [4 x %struct.hisi_mmc_clock], ptr @hi3620_mmc_clks, i32 0, i32 %i.069, i32 1
  %6 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name.i, align 4
  %8 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %init.i, align 4
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @clk_mmc_ops, ptr %ops.i, align 4
  %flags.i = getelementptr [4 x %struct.hisi_mmc_clock], ptr @hi3620_mmc_clks, i32 0, i32 %i.069, i32 3
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %12 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %flags3.i, align 4
  %parent_name.i = getelementptr [4 x %struct.hisi_mmc_clock], ptr @hi3620_mmc_clks, i32 0, i32 %i.069, i32 2
  %13 = ptrtoint ptr %parent_name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent_name.i, align 4
  %tobool4.not.i = icmp eq ptr %14, null
  %spec.select.i = select i1 %tobool4.not.i, ptr null, ptr %parent_name.i
  %15 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %spec.select.i, ptr %parent_names.i, align 4
  %tobool7.not.i = icmp ne ptr %14, null
  %conv.i = zext i1 %tobool7.not.i to i8
  %16 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.i, ptr %num_parents.i, align 4
  %init9.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i68, i32 0, i32 2
  %17 = ptrtoint ptr %init9.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %init.i, ptr %init9.i, align 8
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %id10.i = getelementptr inbounds %struct.clk_mmc, ptr %call7.i.i.i68, i32 0, i32 1
  %20 = ptrtoint ptr %id10.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %id10.i, align 4
  %clken_reg.i = getelementptr [4 x %struct.hisi_mmc_clock], ptr @hi3620_mmc_clks, i32 0, i32 %i.069, i32 4
  %21 = ptrtoint ptr %clken_reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %clken_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1, i32 %22
  %clken_reg11.i = getelementptr inbounds %struct.clk_mmc, ptr %call7.i.i.i68, i32 0, i32 2
  %23 = ptrtoint ptr %clken_reg11.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.i, ptr %clken_reg11.i, align 8
  %clken_bit.i = getelementptr [4 x %struct.hisi_mmc_clock], ptr @hi3620_mmc_clks, i32 0, i32 %i.069, i32 5
  %24 = ptrtoint ptr %clken_bit.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %clken_bit.i, align 4
  %clken_bit12.i = getelementptr inbounds %struct.clk_mmc, ptr %call7.i.i.i68, i32 0, i32 3
  %26 = ptrtoint ptr %clken_bit12.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %clken_bit12.i, align 4
  %div_reg.i = getelementptr [4 x %struct.hisi_mmc_clock], ptr @hi3620_mmc_clks, i32 0, i32 %i.069, i32 6
  %27 = ptrtoint ptr %div_reg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %div_reg.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %call1, i32 %28
  %div_reg14.i = getelementptr inbounds %struct.clk_mmc, ptr %call7.i.i.i68, i32 0, i32 4
  %29 = ptrtoint ptr %div_reg14.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr13.i, ptr %div_reg14.i, align 8
  %div_off.i = getelementptr [4 x %struct.hisi_mmc_clock], ptr @hi3620_mmc_clks, i32 0, i32 %i.069, i32 7
  %30 = ptrtoint ptr %div_off.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %div_off.i, align 4
  %div_off15.i = getelementptr inbounds %struct.clk_mmc, ptr %call7.i.i.i68, i32 0, i32 5
  %32 = ptrtoint ptr %div_off15.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %div_off15.i, align 4
  %div_bits.i = getelementptr [4 x %struct.hisi_mmc_clock], ptr @hi3620_mmc_clks, i32 0, i32 %i.069, i32 8
  %33 = ptrtoint ptr %div_bits.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %div_bits.i, align 4
  %div_bits16.i = getelementptr inbounds %struct.clk_mmc, ptr %call7.i.i.i68, i32 0, i32 6
  %35 = ptrtoint ptr %div_bits16.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %div_bits16.i, align 8
  %drv_reg.i = getelementptr [4 x %struct.hisi_mmc_clock], ptr @hi3620_mmc_clks, i32 0, i32 %i.069, i32 9
  %36 = ptrtoint ptr %drv_reg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %drv_reg.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %call1, i32 %37
  %drv_reg18.i = getelementptr inbounds %struct.clk_mmc, ptr %call7.i.i.i68, i32 0, i32 7
  %38 = ptrtoint ptr %drv_reg18.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr17.i, ptr %drv_reg18.i, align 4
  %drv_off.i = getelementptr [4 x %struct.hisi_mmc_clock], ptr @hi3620_mmc_clks, i32 0, i32 %i.069, i32 10
  %39 = ptrtoint ptr %drv_off.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %drv_off.i, align 4
  %drv_off19.i = getelementptr inbounds %struct.clk_mmc, ptr %call7.i.i.i68, i32 0, i32 8
  %41 = ptrtoint ptr %drv_off19.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %drv_off19.i, align 8
  %drv_bits.i = getelementptr [4 x %struct.hisi_mmc_clock], ptr @hi3620_mmc_clks, i32 0, i32 %i.069, i32 11
  %42 = ptrtoint ptr %drv_bits.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %drv_bits.i, align 4
  %drv_bits20.i = getelementptr inbounds %struct.clk_mmc, ptr %call7.i.i.i68, i32 0, i32 9
  %44 = ptrtoint ptr %drv_bits20.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %drv_bits20.i, align 4
  %sam_reg.i = getelementptr [4 x %struct.hisi_mmc_clock], ptr @hi3620_mmc_clks, i32 0, i32 %i.069, i32 12
  %45 = ptrtoint ptr %sam_reg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sam_reg.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %call1, i32 %46
  %sam_reg22.i = getelementptr inbounds %struct.clk_mmc, ptr %call7.i.i.i68, i32 0, i32 10
  %47 = ptrtoint ptr %sam_reg22.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr21.i, ptr %sam_reg22.i, align 8
  %sam_off.i = getelementptr [4 x %struct.hisi_mmc_clock], ptr @hi3620_mmc_clks, i32 0, i32 %i.069, i32 13
  %48 = ptrtoint ptr %sam_off.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sam_off.i, align 4
  %sam_off23.i = getelementptr inbounds %struct.clk_mmc, ptr %call7.i.i.i68, i32 0, i32 11
  %50 = ptrtoint ptr %sam_off23.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %sam_off23.i, align 4
  %sam_bits.i = getelementptr [4 x %struct.hisi_mmc_clock], ptr @hi3620_mmc_clks, i32 0, i32 %i.069, i32 14
  %51 = ptrtoint ptr %sam_bits.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sam_bits.i, align 4
  %sam_bits24.i = getelementptr inbounds %struct.clk_mmc, ptr %call7.i.i.i68, i32 0, i32 12
  %53 = ptrtoint ptr %sam_bits24.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %sam_bits24.i, align 8
  %call26.i = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i.i68) #9
  %cmp.i.i = icmp ugt ptr %call26.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i.hisi_register_clk_mmc.exit_crit_edge, !prof !344

if.end.i.hisi_register_clk_mmc.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hisi_register_clk_mmc.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.115, i32 noundef 443, i32 noundef 9, ptr noundef null) #9
  call void @kfree(ptr noundef nonnull %call7.i.i.i68) #9
  br label %hisi_register_clk_mmc.exit

hisi_register_clk_mmc.exit:                       ; preds = %do.end.i, %if.end.i.hisi_register_clk_mmc.exit_crit_edge, %for.body.hisi_register_clk_mmc.exit_crit_edge
  %retval.0.i = phi ptr [ %call26.i, %if.end.i.hisi_register_clk_mmc.exit_crit_edge ], [ %call26.i, %do.end.i ], [ inttoptr (i32 -12 to ptr), %for.body.hisi_register_clk_mmc.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #9
  %54 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call7.i.i, align 8
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx, align 4
  %arrayidx48 = getelementptr ptr, ptr %55, i32 %57
  %58 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %retval.0.i, ptr %arrayidx48, align 4
  %inc = add nuw nsw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %hisi_register_clk_mmc.exit.for.body_crit_edge

hisi_register_clk_mmc.exit.for.body_crit_edge:    ; preds = %hisi_register_clk_mmc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %hisi_register_clk_mmc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %clk_num = getelementptr inbounds %struct.clk_onecell_data, ptr %call7.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %clk_num to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 4, ptr %clk_num, align 4
  %call49 = call i32 @of_clk_add_provider(ptr noundef nonnull %node, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end40.cleanup_crit_edge, %do.end24, %do.end6, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hisi_clk_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_fixed_rate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_fixed_factor(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_mux(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_divider(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hisi_clk_register_gate_sep(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_clk_prepare(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.clk_mmc, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %. = select i1 %cmp, i32 13000000, i32 25000000
  %call = tail call fastcc i32 @mmc_clk_set_timing(ptr noundef %hw, i32 noundef %.)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mmc_clk_recalc_rate(ptr nocapture noundef readnone %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %parent_rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %parent_rate, label %sw.default [
    i32 26000000, label %entry.return_crit_edge
    i32 180000000, label %sw.bb1
    i32 360000000, label %sw.bb2
    i32 720000000, label %sw.bb3
    i32 1440000000, label %sw.bb4
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

return:                                           ; preds = %sw.default, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ %parent_rate, %sw.default ], [ 180000000, %sw.bb4 ], [ 100000000, %sw.bb3 ], [ 50000000, %sw.bb2 ], [ 25000000, %sw.bb1 ], [ 13000000, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mmc_clk_determine_rate(ptr nocapture noundef readonly %hw, ptr nocapture noundef %req) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13000001, i32 %1)
  %cmp = icmp ult i32 %1, 13000001
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %id = getelementptr inbounds %struct.clk_mmc, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %land.lhs.true.if.end25_crit_edge, label %land.lhs.true.if.then5_crit_edge

land.lhs.true.if.then5_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 26000001, i32 %1)
  %cmp4 = icmp ult i32 %1, 26000001
  br i1 %cmp4, label %if.else.if.then5_crit_edge, label %if.else8

if.else.if.then5_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

if.then5:                                         ; preds = %if.else.if.then5_crit_edge, %land.lhs.true.if.then5_crit_edge
  br label %if.end25

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 52000001, i32 %1)
  %cmp10 = icmp ult i32 %1, 52000001
  br i1 %cmp10, label %if.else8.if.end25_crit_edge, label %if.else14

if.else8.if.end25_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.else14:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000001, i32 %1)
  %cmp16 = icmp ult i32 %1, 100000001
  %. = select i1 %cmp16, i32 100000000, i32 180000000
  %.41 = select i1 %cmp16, i32 720000000, i32 1440000000
  br label %if.end25

if.end25:                                         ; preds = %if.else14, %if.else8.if.end25_crit_edge, %if.then5, %land.lhs.true.if.end25_crit_edge
  %.sink40 = phi i32 [ 25000000, %if.then5 ], [ 13000000, %land.lhs.true.if.end25_crit_edge ], [ 50000000, %if.else8.if.end25_crit_edge ], [ %., %if.else14 ]
  %.sink = phi i32 [ 180000000, %if.then5 ], [ 26000000, %land.lhs.true.if.end25_crit_edge ], [ 360000000, %if.else8.if.end25_crit_edge ], [ %.41, %if.else14 ]
  %4 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink40, ptr %req, align 4
  %best_parent_rate7 = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %5 = ptrtoint ptr %best_parent_rate7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %best_parent_rate7, align 4
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_clk_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mmc_clk_set_timing(ptr noundef %hw, i32 noundef %rate)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_clk_set_timing(ptr nocapture noundef readonly %hw, i32 noundef %rate) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %rate, label %entry.cleanup_crit_edge [
    i32 13000000, label %entry.do.body5_crit_edge
    i32 25000000, label %sw.bb1
    i32 50000000, label %sw.bb2
    i32 100000000, label %sw.bb3
    i32 180000000, label %sw.bb4
  ]

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5

do.body5:                                         ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.do.body5_crit_edge
  %div.0 = phi i32 [ 7, %sw.bb4 ], [ 6, %sw.bb3 ], [ 6, %sw.bb2 ], [ 6, %sw.bb1 ], [ 1, %entry.do.body5_crit_edge ]
  %drv.0 = phi i32 [ 4, %sw.bb4 ], [ 4, %sw.bb3 ], [ 6, %sw.bb2 ], [ 6, %sw.bb1 ], [ 1, %entry.do.body5_crit_edge ]
  %sam.0 = phi i32 [ 6, %sw.bb4 ], [ 6, %sw.bb3 ], [ 3, %sw.bb2 ], [ 13, %sw.bb1 ], [ 3, %entry.do.body5_crit_edge ]
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @mmc_clk_set_timing.mmc_clk_lock) #9
  %clken_reg = getelementptr inbounds %struct.clk_mmc, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %clken_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clken_reg, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #9, !srcloc !345
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %clken_bit = getelementptr inbounds %struct.clk_mmc, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %clken_bit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %clken_bit, align 4
  %shl = shl nuw i32 1, %6
  %neg = xor i32 %shl, -1
  %and = and i32 %4, %neg
  %7 = tail call i32 @llvm.bswap.i32(i32 %and)
  %8 = ptrtoint ptr %clken_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clken_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #9, !srcloc !346
  %sam_reg = getelementptr inbounds %struct.clk_mmc, ptr %hw, i32 0, i32 10
  %10 = ptrtoint ptr %sam_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sam_reg, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !345
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %sam_off = getelementptr inbounds %struct.clk_mmc, ptr %hw, i32 0, i32 11
  %14 = ptrtoint ptr %sam_off to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sam_off, align 4
  %sam_bits = getelementptr inbounds %struct.clk_mmc, ptr %hw, i32 0, i32 12
  %16 = ptrtoint ptr %sam_bits to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sam_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp10.not.i = icmp eq i32 %17, 0
  br i1 %cmp10.not.i, label %do.body5.mmc_clk_delay.exit_crit_edge, label %do.body5.for.body.i_crit_edge

do.body5.for.body.i_crit_edge:                    ; preds = %do.body5
  br label %for.body.i

do.body5.mmc_clk_delay.exit_crit_edge:            ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %mmc_clk_delay.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body5.for.body.i_crit_edge
  %i.013.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.body5.for.body.i_crit_edge ]
  %val.addr.012.i = phi i32 [ %val.addr.1.i, %for.body.i.for.body.i_crit_edge ], [ %13, %do.body5.for.body.i_crit_edge ]
  %para.addr.011.i = phi i32 [ %shr.i, %for.body.i.for.body.i_crit_edge ], [ %sam.0, %do.body5.for.body.i_crit_edge ]
  %rem.i = and i32 %para.addr.011.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %add1.i = add i32 %i.013.i, %15
  %shl2.i = shl nuw i32 1, %add1.i
  %or.i = or i32 %shl2.i, %val.addr.012.i
  %neg.i = xor i32 %shl2.i, -1
  %and.i = and i32 %val.addr.012.i, %neg.i
  %val.addr.1.i = select i1 %tobool.not.i, i32 %and.i, i32 %or.i
  %shr.i = lshr i32 %para.addr.011.i, 1
  %inc.i = add nuw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %17
  br i1 %exitcond.not.i, label %for.body.i.mmc_clk_delay.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.mmc_clk_delay.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mmc_clk_delay.exit

mmc_clk_delay.exit:                               ; preds = %for.body.i.mmc_clk_delay.exit_crit_edge, %do.body5.mmc_clk_delay.exit_crit_edge
  %val.addr.0.lcssa.i = phi i32 [ %13, %do.body5.mmc_clk_delay.exit_crit_edge ], [ %val.addr.1.i, %for.body.i.mmc_clk_delay.exit_crit_edge ]
  %18 = tail call i32 @llvm.bswap.i32(i32 %val.addr.0.lcssa.i)
  %19 = ptrtoint ptr %sam_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sam_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #9, !srcloc !346
  %drv_reg = getelementptr inbounds %struct.clk_mmc, ptr %hw, i32 0, i32 7
  %21 = ptrtoint ptr %drv_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %drv_reg, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !345
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %drv_off = getelementptr inbounds %struct.clk_mmc, ptr %hw, i32 0, i32 8
  %25 = ptrtoint ptr %drv_off to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %drv_off, align 4
  %drv_bits = getelementptr inbounds %struct.clk_mmc, ptr %hw, i32 0, i32 9
  %27 = ptrtoint ptr %drv_bits to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %drv_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp10.not.i66 = icmp eq i32 %28, 0
  br i1 %cmp10.not.i66, label %mmc_clk_delay.exit.mmc_clk_delay.exit83_crit_edge, label %mmc_clk_delay.exit.for.body.i81_crit_edge

mmc_clk_delay.exit.for.body.i81_crit_edge:        ; preds = %mmc_clk_delay.exit
  br label %for.body.i81

mmc_clk_delay.exit.mmc_clk_delay.exit83_crit_edge: ; preds = %mmc_clk_delay.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mmc_clk_delay.exit83

for.body.i81:                                     ; preds = %for.body.i81.for.body.i81_crit_edge, %mmc_clk_delay.exit.for.body.i81_crit_edge
  %i.013.i67 = phi i32 [ %inc.i79, %for.body.i81.for.body.i81_crit_edge ], [ 0, %mmc_clk_delay.exit.for.body.i81_crit_edge ]
  %val.addr.012.i68 = phi i32 [ %val.addr.1.i77, %for.body.i81.for.body.i81_crit_edge ], [ %24, %mmc_clk_delay.exit.for.body.i81_crit_edge ]
  %para.addr.011.i69 = phi i32 [ %shr.i78, %for.body.i81.for.body.i81_crit_edge ], [ %drv.0, %mmc_clk_delay.exit.for.body.i81_crit_edge ]
  %rem.i70 = and i32 %para.addr.011.i69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i70)
  %tobool.not.i71 = icmp eq i32 %rem.i70, 0
  %add1.i72 = add i32 %i.013.i67, %26
  %shl2.i73 = shl nuw i32 1, %add1.i72
  %or.i74 = or i32 %shl2.i73, %val.addr.012.i68
  %neg.i75 = xor i32 %shl2.i73, -1
  %and.i76 = and i32 %val.addr.012.i68, %neg.i75
  %val.addr.1.i77 = select i1 %tobool.not.i71, i32 %and.i76, i32 %or.i74
  %shr.i78 = lshr i32 %para.addr.011.i69, 1
  %inc.i79 = add nuw i32 %i.013.i67, 1
  %exitcond.not.i80 = icmp eq i32 %inc.i79, %28
  br i1 %exitcond.not.i80, label %for.body.i81.mmc_clk_delay.exit83_crit_edge, label %for.body.i81.for.body.i81_crit_edge

for.body.i81.for.body.i81_crit_edge:              ; preds = %for.body.i81
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i81

for.body.i81.mmc_clk_delay.exit83_crit_edge:      ; preds = %for.body.i81
  call void @__sanitizer_cov_trace_pc() #11
  br label %mmc_clk_delay.exit83

mmc_clk_delay.exit83:                             ; preds = %for.body.i81.mmc_clk_delay.exit83_crit_edge, %mmc_clk_delay.exit.mmc_clk_delay.exit83_crit_edge
  %val.addr.0.lcssa.i82 = phi i32 [ %24, %mmc_clk_delay.exit.mmc_clk_delay.exit83_crit_edge ], [ %val.addr.1.i77, %for.body.i81.mmc_clk_delay.exit83_crit_edge ]
  %29 = tail call i32 @llvm.bswap.i32(i32 %val.addr.0.lcssa.i82)
  %30 = ptrtoint ptr %drv_reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %drv_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #9, !srcloc !346
  %div_reg = getelementptr inbounds %struct.clk_mmc, ptr %hw, i32 0, i32 4
  %32 = ptrtoint ptr %div_reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %div_reg, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #9, !srcloc !345
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %div_off = getelementptr inbounds %struct.clk_mmc, ptr %hw, i32 0, i32 5
  %36 = ptrtoint ptr %div_off to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %div_off, align 4
  %div_bits = getelementptr inbounds %struct.clk_mmc, ptr %hw, i32 0, i32 6
  %38 = ptrtoint ptr %div_bits to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %div_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp10.not.i84 = icmp eq i32 %39, 0
  br i1 %cmp10.not.i84, label %mmc_clk_delay.exit83.mmc_clk_delay.exit101_crit_edge, label %mmc_clk_delay.exit83.for.body.i99_crit_edge

mmc_clk_delay.exit83.for.body.i99_crit_edge:      ; preds = %mmc_clk_delay.exit83
  br label %for.body.i99

mmc_clk_delay.exit83.mmc_clk_delay.exit101_crit_edge: ; preds = %mmc_clk_delay.exit83
  call void @__sanitizer_cov_trace_pc() #11
  br label %mmc_clk_delay.exit101

for.body.i99:                                     ; preds = %for.body.i99.for.body.i99_crit_edge, %mmc_clk_delay.exit83.for.body.i99_crit_edge
  %i.013.i85 = phi i32 [ %inc.i97, %for.body.i99.for.body.i99_crit_edge ], [ 0, %mmc_clk_delay.exit83.for.body.i99_crit_edge ]
  %val.addr.012.i86 = phi i32 [ %val.addr.1.i95, %for.body.i99.for.body.i99_crit_edge ], [ %35, %mmc_clk_delay.exit83.for.body.i99_crit_edge ]
  %para.addr.011.i87 = phi i32 [ %shr.i96, %for.body.i99.for.body.i99_crit_edge ], [ %div.0, %mmc_clk_delay.exit83.for.body.i99_crit_edge ]
  %rem.i88 = and i32 %para.addr.011.i87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i88)
  %tobool.not.i89 = icmp eq i32 %rem.i88, 0
  %add1.i90 = add i32 %i.013.i85, %37
  %shl2.i91 = shl nuw i32 1, %add1.i90
  %or.i92 = or i32 %shl2.i91, %val.addr.012.i86
  %neg.i93 = xor i32 %shl2.i91, -1
  %and.i94 = and i32 %val.addr.012.i86, %neg.i93
  %val.addr.1.i95 = select i1 %tobool.not.i89, i32 %and.i94, i32 %or.i92
  %shr.i96 = lshr i32 %para.addr.011.i87, 1
  %inc.i97 = add nuw i32 %i.013.i85, 1
  %exitcond.not.i98 = icmp eq i32 %inc.i97, %39
  br i1 %exitcond.not.i98, label %for.body.i99.mmc_clk_delay.exit101_crit_edge, label %for.body.i99.for.body.i99_crit_edge

for.body.i99.for.body.i99_crit_edge:              ; preds = %for.body.i99
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i99

for.body.i99.mmc_clk_delay.exit101_crit_edge:     ; preds = %for.body.i99
  call void @__sanitizer_cov_trace_pc() #11
  br label %mmc_clk_delay.exit101

mmc_clk_delay.exit101:                            ; preds = %for.body.i99.mmc_clk_delay.exit101_crit_edge, %mmc_clk_delay.exit83.mmc_clk_delay.exit101_crit_edge
  %val.addr.0.lcssa.i100 = phi i32 [ %35, %mmc_clk_delay.exit83.mmc_clk_delay.exit101_crit_edge ], [ %val.addr.1.i95, %for.body.i99.mmc_clk_delay.exit101_crit_edge ]
  %40 = tail call i32 @llvm.bswap.i32(i32 %val.addr.0.lcssa.i100)
  %41 = ptrtoint ptr %div_reg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %div_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #9, !srcloc !346
  %43 = ptrtoint ptr %clken_reg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clken_reg, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #9, !srcloc !345
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %47 = ptrtoint ptr %clken_bit to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %clken_bit, align 4
  %shl33 = shl nuw i32 1, %48
  %or = or i32 %shl33, %46
  %49 = tail call i32 @llvm.bswap.i32(i32 %or)
  %50 = ptrtoint ptr %clken_reg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clken_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #9, !srcloc !346
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @mmc_clk_set_timing.mmc_clk_lock, i32 noundef %call7) #9
  br label %cleanup

cleanup:                                          ; preds = %mmc_clk_delay.exit101, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mmc_clk_delay.exit101 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !313, !314, !315, !316, !318, !319, !320, !322, !324, !326, !328, !330, !332, !334}
!llvm.module.flags = !{!335, !336, !337, !338, !339, !340, !341, !342}
!llvm.ident = !{!343}

!0 = !{ptr @__of_table_hi3620_clk, !1, !"__of_table_hi3620_clk", i1 false, i1 false}
!1 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 217, i32 1}
!2 = !{ptr @__of_table_hi3620_mmc_clk, !3, !"__of_table_hi3620_mmc_clk", i1 false, i1 false}
!3 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 483, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 67, i32 21}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 68, i32 21}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 69, i32 21}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 70, i32 21}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 71, i32 21}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 72, i32 21}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 73, i32 21}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 74, i32 21}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 75, i32 21}
!22 = !{ptr @hi3620_fixed_rate_clks, !23, !"hi3620_fixed_rate_clks", i1 false, i1 false}
!23 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 66, i32 37}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 80, i32 24}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 81, i32 24}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 82, i32 24}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 82, i32 39}
!32 = !{ptr @hi3620_fixed_factor_clks, !33, !"hi3620_fixed_factor_clks", i1 false, i1 false}
!33 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 79, i32 39}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 86, i32 23}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 87, i32 23}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 88, i32 23}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 89, i32 23}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 90, i32 23}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 91, i32 23}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 92, i32 23}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 93, i32 23}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 94, i32 23}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 95, i32 23}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 96, i32 23}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 97, i32 23}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 98, i32 23}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 99, i32 23}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 100, i32 23}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 101, i32 23}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 102, i32 23}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 103, i32 23}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 104, i32 23}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 105, i32 23}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 106, i32 23}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 107, i32 23}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 108, i32 23}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 109, i32 23}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 110, i32 23}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 111, i32 23}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 112, i32 23}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 113, i32 23}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 114, i32 23}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 115, i32 23}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 116, i32 23}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 117, i32 23}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 118, i32 23}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 119, i32 23}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 120, i32 23}
!104 = !{ptr @hi3620_mux_clks, !105, !"hi3620_mux_clks", i1 false, i1 false}
!105 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 85, i32 30}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 25, i32 67}
!108 = !{ptr @timer0_mux_p, !109, !"timer0_mux_p", i1 false, i1 false}
!109 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 25, i32 26}
!110 = !{ptr @timer1_mux_p, !111, !"timer1_mux_p", i1 false, i1 false}
!111 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 26, i32 26}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 27, i32 67}
!114 = !{ptr @timer2_mux_p, !115, !"timer2_mux_p", i1 false, i1 false}
!115 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 27, i32 26}
!116 = !{ptr @timer3_mux_p, !117, !"timer3_mux_p", i1 false, i1 false}
!117 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 28, i32 26}
!118 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 29, i32 67}
!120 = !{ptr @timer4_mux_p, !121, !"timer4_mux_p", i1 false, i1 false}
!121 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 29, i32 26}
!122 = !{ptr @timer5_mux_p, !123, !"timer5_mux_p", i1 false, i1 false}
!123 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 30, i32 26}
!124 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 31, i32 67}
!126 = !{ptr @timer6_mux_p, !127, !"timer6_mux_p", i1 false, i1 false}
!127 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 31, i32 26}
!128 = !{ptr @timer7_mux_p, !129, !"timer7_mux_p", i1 false, i1 false}
!129 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 32, i32 26}
!130 = !{ptr @.str.52, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 33, i32 67}
!132 = !{ptr @timer8_mux_p, !133, !"timer8_mux_p", i1 false, i1 false}
!133 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 33, i32 26}
!134 = !{ptr @timer9_mux_p, !135, !"timer9_mux_p", i1 false, i1 false}
!135 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 34, i32 26}
!136 = !{ptr @uart0_mux_p, !137, !"uart0_mux_p", i1 false, i1 false}
!137 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 35, i32 26}
!138 = !{ptr @uart1_mux_p, !139, !"uart1_mux_p", i1 false, i1 false}
!139 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 36, i32 26}
!140 = !{ptr @uart2_mux_p, !141, !"uart2_mux_p", i1 false, i1 false}
!141 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 37, i32 26}
!142 = !{ptr @uart3_mux_p, !143, !"uart3_mux_p", i1 false, i1 false}
!143 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 38, i32 26}
!144 = !{ptr @uart4_mux_p, !145, !"uart4_mux_p", i1 false, i1 false}
!145 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 39, i32 26}
!146 = !{ptr @spi0_mux_p, !147, !"spi0_mux_p", i1 false, i1 false}
!147 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 40, i32 26}
!148 = !{ptr @spi1_mux_p, !149, !"spi1_mux_p", i1 false, i1 false}
!149 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 41, i32 26}
!150 = !{ptr @spi2_mux_p, !151, !"spi2_mux_p", i1 false, i1 false}
!151 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 42, i32 26}
!152 = !{ptr @saxi_mux_p, !153, !"saxi_mux_p", i1 false, i1 false}
!153 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 44, i32 26}
!154 = !{ptr @pwm0_mux_p, !155, !"pwm0_mux_p", i1 false, i1 false}
!155 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 45, i32 26}
!156 = !{ptr @pwm1_mux_p, !157, !"pwm1_mux_p", i1 false, i1 false}
!157 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 46, i32 26}
!158 = !{ptr @sd_mux_p, !159, !"sd_mux_p", i1 false, i1 false}
!159 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 47, i32 26}
!160 = !{ptr @mmc1_mux_p, !161, !"mmc1_mux_p", i1 false, i1 false}
!161 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 48, i32 26}
!162 = !{ptr @.str.53, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 49, i32 66}
!164 = !{ptr @mmc1_mux2_p, !165, !"mmc1_mux2_p", i1 false, i1 false}
!165 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 49, i32 26}
!166 = !{ptr @g2d_mux_p, !167, !"g2d_mux_p", i1 false, i1 false}
!167 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 50, i32 26}
!168 = !{ptr @venc_mux_p, !169, !"venc_mux_p", i1 false, i1 false}
!169 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 51, i32 26}
!170 = !{ptr @vdec_mux_p, !171, !"vdec_mux_p", i1 false, i1 false}
!171 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 52, i32 26}
!172 = !{ptr @vpp_mux_p, !173, !"vpp_mux_p", i1 false, i1 false}
!173 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 53, i32 26}
!174 = !{ptr @edc0_mux_p, !175, !"edc0_mux_p", i1 false, i1 false}
!175 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 54, i32 26}
!176 = !{ptr @ldi0_mux_p, !177, !"ldi0_mux_p", i1 false, i1 false}
!177 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 55, i32 26}
!178 = !{ptr @edc1_mux_p, !179, !"edc1_mux_p", i1 false, i1 false}
!179 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 57, i32 26}
!180 = !{ptr @ldi1_mux_p, !181, !"ldi1_mux_p", i1 false, i1 false}
!181 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 58, i32 26}
!182 = !{ptr @rclk_hsic_p, !183, !"rclk_hsic_p", i1 false, i1 false}
!183 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 60, i32 26}
!184 = !{ptr @mmc2_mux_p, !185, !"mmc2_mux_p", i1 false, i1 false}
!185 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 61, i32 26}
!186 = !{ptr @mmc3_mux_p, !187, !"mmc3_mux_p", i1 false, i1 false}
!187 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 62, i32 26}
!188 = !{ptr @.str.54, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 124, i32 25}
!190 = !{ptr @.str.55, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 125, i32 25}
!192 = !{ptr @.str.56, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 126, i32 25}
!194 = !{ptr @.str.57, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 129, i32 25}
!196 = !{ptr @.str.58, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 130, i32 25}
!198 = !{ptr @hi3620_div_clks, !199, !"hi3620_div_clks", i1 false, i1 false}
!199 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 123, i32 34}
!200 = !{ptr @.str.59, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 134, i32 41}
!202 = !{ptr @.str.60, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 136, i32 41}
!204 = !{ptr @.str.61, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 138, i32 25}
!206 = !{ptr @.str.62, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 139, i32 25}
!208 = !{ptr @.str.63, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 140, i32 25}
!210 = !{ptr @.str.64, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 141, i32 25}
!212 = !{ptr @.str.65, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 142, i32 25}
!214 = !{ptr @.str.66, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 143, i32 25}
!216 = !{ptr @.str.67, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 144, i32 25}
!218 = !{ptr @.str.68, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 145, i32 25}
!220 = !{ptr @.str.69, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 146, i32 25}
!222 = !{ptr @.str.70, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 147, i32 25}
!224 = !{ptr @.str.71, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 148, i32 25}
!226 = !{ptr @.str.72, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 149, i32 25}
!228 = !{ptr @.str.73, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 150, i32 25}
!230 = !{ptr @.str.74, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 151, i32 25}
!232 = !{ptr @.str.75, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 152, i32 25}
!234 = !{ptr @.str.76, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 153, i32 25}
!236 = !{ptr @.str.77, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 154, i32 25}
!238 = !{ptr @.str.78, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 155, i32 25}
!240 = !{ptr @.str.79, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 156, i32 25}
!242 = !{ptr @.str.80, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 157, i32 25}
!244 = !{ptr @.str.81, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 158, i32 25}
!246 = !{ptr @.str.82, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 159, i32 25}
!248 = !{ptr @.str.83, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 160, i32 25}
!250 = !{ptr @.str.84, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 161, i32 25}
!252 = !{ptr @.str.85, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 162, i32 25}
!254 = !{ptr @.str.86, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 163, i32 25}
!256 = !{ptr @.str.87, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 164, i32 25}
!258 = !{ptr @.str.88, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 165, i32 25}
!260 = !{ptr @.str.89, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 166, i32 25}
!262 = !{ptr @.str.90, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 170, i32 25}
!264 = !{ptr @.str.91, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 171, i32 25}
!266 = !{ptr @.str.92, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 172, i32 25}
!268 = !{ptr @.str.93, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 173, i32 25}
!270 = !{ptr @.str.94, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 174, i32 25}
!272 = !{ptr @.str.95, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 175, i32 25}
!274 = !{ptr @.str.96, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 176, i32 25}
!276 = !{ptr @.str.97, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 177, i32 25}
!278 = !{ptr @.str.98, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 178, i32 25}
!280 = !{ptr @.str.99, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 179, i32 25}
!282 = !{ptr @.str.100, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 180, i32 25}
!284 = !{ptr @.str.101, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 181, i32 25}
!286 = !{ptr @.str.102, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 182, i32 25}
!288 = !{ptr @.str.103, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 183, i32 25}
!290 = !{ptr @.str.104, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 184, i32 25}
!292 = !{ptr @.str.105, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 185, i32 25}
!294 = !{ptr @.str.106, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 186, i32 25}
!296 = !{ptr @.str.107, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 187, i32 25}
!298 = !{ptr @.str.108, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 188, i32 25}
!300 = !{ptr @.str.109, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 189, i32 25}
!302 = !{ptr @.str.110, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 190, i32 25}
!304 = !{ptr @.str.111, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 191, i32 25}
!306 = !{ptr @.str.112, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 192, i32 25}
!308 = !{ptr @hi3620_separated_gate_clks, !309, !"hi3620_separated_gate_clks", i1 false, i1 false}
!309 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 133, i32 31}
!310 = !{ptr @.str.113, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 455, i32 3}
!312 = !{ptr @.str.114, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @.str.115, !311, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @hi3620_mmc_clk_init._entry, !311, !"_entry", i1 false, i1 false}
!315 = !{ptr @hi3620_mmc_clk_init._entry_ptr, !311, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.117, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 461, i32 3}
!318 = !{ptr @hi3620_mmc_clk_init._entry.116, !317, !"_entry", i1 false, i1 false}
!319 = !{ptr @hi3620_mmc_clk_init._entry_ptr.118, !317, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.119, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 256, i32 22}
!322 = !{ptr @.str.120, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 257, i32 26}
!324 = !{ptr @.str.121, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 258, i32 26}
!326 = !{ptr @.str.122, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 259, i32 26}
!328 = !{ptr @hi3620_mmc_clks, !329, !"hi3620_mmc_clks", i1 false, i1 false}
!329 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 255, i32 30}
!330 = !{ptr @clk_mmc_ops, !331, !"clk_mmc_ops", i1 false, i1 false}
!331 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 404, i32 29}
!332 = !{ptr @.str.123, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/clk/hisilicon/clk-hi3620.c", i32 326, i32 9}
!334 = !{ptr @mmc_clk_set_timing.mmc_clk_lock, !333, !"mmc_clk_lock", i1 false, i1 false}
!335 = !{i32 1, !"wchar_size", i32 2}
!336 = !{i32 1, !"min_enum_size", i32 4}
!337 = !{i32 8, !"branch-target-enforcement", i32 0}
!338 = !{i32 8, !"sign-return-address", i32 0}
!339 = !{i32 8, !"sign-return-address-all", i32 0}
!340 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!341 = !{i32 7, !"uwtable", i32 1}
!342 = !{i32 7, !"frame-pointer", i32 2}
!343 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!344 = !{!"branch_weights", i32 1, i32 2000}
!345 = !{i64 4047479}
!346 = !{i64 4047061}
