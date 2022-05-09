; ModuleID = '/llk/IR_all_yes/drivers/clk/at91/sama5d2.c_pt.bc'
source_filename = "../drivers/clk/at91/sama5d2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.anon.41 = type { ptr, ptr, i8 }
%struct.anon.42 = type { ptr, i8, %struct.clk_range }
%struct.clk_range = type { i32, i32 }
%struct.anon.43 = type { ptr, i8, %struct.clk_range, i32 }
%struct.clk_pll_layout = type { i32, i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.clk_pll_characteristics = type { %struct.clk_range, i32, ptr, ptr, ptr, i8 }
%struct.clk_master_layout = type { i32, i32, i8 }
%struct.clk_master_characteristics = type { %struct.clk_range, [5 x i32], i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clk_programmable_layout = type { i8, i8, i8, i8, i8 }
%struct.clk_pcr_layout = type { i32, i32, i32, i32, i32 }
%struct.anon.44 = type { ptr, i8 }
%struct.pmc_data = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, [0 x ptr] }

@__of_table_sama5d2_pmc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d2_pmc_setup }, section "__clk_of_table", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clock-names\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"slow_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"main_xtal\00", [22 x i8] zeroinitializer }, align 32
@sama5d2_systemck = internal constant { [8 x %struct.anon.41], [32 x i8] } { [8 x %struct.anon.41] [%struct.anon.41 { ptr @.str.25, ptr @.str.15, i8 2 }, %struct.anon.41 { ptr @.str.26, ptr @.str.15, i8 3 }, %struct.anon.41 { ptr @.str.27, ptr @.str.17, i8 6 }, %struct.anon.41 { ptr @.str.28, ptr @.str.17, i8 7 }, %struct.anon.41 { ptr @.str.29, ptr @.str.30, i8 8 }, %struct.anon.41 { ptr @.str.31, ptr @.str.32, i8 9 }, %struct.anon.41 { ptr @.str.33, ptr @.str.34, i8 10 }, %struct.anon.41 { ptr @.str.35, ptr @.str.15, i8 18 }], [32 x i8] zeroinitializer }, align 32
@sama5d2_periph32ck = internal constant { [36 x %struct.anon.42], [128 x i8] } { [36 x %struct.anon.42] [%struct.anon.42 { ptr @.str.36, i8 5, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.37, i8 11, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.38, i8 14, %struct.clk_range zeroinitializer }, %struct.anon.42 { ptr @.str.39, i8 17, %struct.clk_range zeroinitializer }, %struct.anon.42 { ptr @.str.40, i8 18, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.41, i8 19, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.42, i8 20, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.43, i8 21, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.44, i8 22, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.45, i8 23, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.46, i8 24, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.47, i8 25, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.48, i8 26, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.49, i8 27, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.50, i8 28, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.51, i8 29, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.52, i8 30, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.53, i8 33, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.54, i8 34, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.55, i8 35, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.56, i8 36, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.57, i8 38, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.58, i8 40, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.59, i8 41, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.60, i8 42, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.61, i8 43, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.62, i8 44, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.63, i8 47, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.64, i8 48, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.65, i8 51, %struct.clk_range zeroinitializer }, %struct.anon.42 { ptr @.str.19, i8 54, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.22, i8 55, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.66, i8 56, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.67, i8 57, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.68, i8 58, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.69, i8 59, %struct.clk_range { i32 0, i32 83000000 } }], [128 x i8] zeroinitializer }, align 32
@sama5d2_gck = internal constant { [12 x %struct.anon.43], [48 x i8] } { [12 x %struct.anon.43] [%struct.anon.43 { ptr @.str.70, i8 31, %struct.clk_range zeroinitializer, i32 -2147483648 }, %struct.anon.43 { ptr @.str.71, i8 32, %struct.clk_range zeroinitializer, i32 -2147483648 }, %struct.anon.43 { ptr @.str.72, i8 35, %struct.clk_range { i32 0, i32 83000000 }, i32 -2147483648 }, %struct.anon.43 { ptr @.str.73, i8 36, %struct.clk_range { i32 0, i32 83000000 }, i32 -2147483648 }, %struct.anon.43 { ptr @.str.74, i8 38, %struct.clk_range { i32 0, i32 83000000 }, i32 -2147483648 }, %struct.anon.43 { ptr @.str.75, i8 46, %struct.clk_range zeroinitializer, i32 -2147483648 }, %struct.anon.43 { ptr @.str.76, i8 48, %struct.clk_range zeroinitializer, i32 -2147483648 }, %struct.anon.43 { ptr @.str.20, i8 54, %struct.clk_range zeroinitializer, i32 5 }, %struct.anon.43 { ptr @.str.23, i8 55, %struct.clk_range zeroinitializer, i32 5 }, %struct.anon.43 { ptr @.str.77, i8 56, %struct.clk_range { i32 0, i32 80000000 }, i32 -2147483648 }, %struct.anon.43 { ptr @.str.78, i8 57, %struct.clk_range { i32 0, i32 80000000 }, i32 -2147483648 }, %struct.anon.43 { ptr @.str.79, i8 59, %struct.clk_range { i32 0, i32 100000000 }, i32 5 }], [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"main_rc_osc\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atmel,osc-bypass\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"main_osc\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mainck\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pllack\00", [25 x i8] zeroinitializer }, align 32
@sama5d3_pll_layout = external dso_local constant %struct.clk_pll_layout, align 4
@plla_characteristics = internal constant { %struct.clk_pll_characteristics, [36 x i8] } { %struct.clk_pll_characteristics { %struct.clk_range { i32 12000000, i32 24000000 }, i32 1, ptr @plla_outputs, ptr @plla_icpll, ptr @plla_out, i8 0 }, [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"plladivck\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"audiopll_fracck\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"audiopll_padck\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"audiopll_pmcck\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atmel,sama5d2-sfr\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"utmick\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"masterck_pres\00", [18 x i8] zeroinitializer }, align 32
@at91sam9x5_master_layout = external dso_local constant %struct.clk_master_layout, align 4
@mck_characteristics = internal constant { %struct.clk_master_characteristics, [32 x i8] } { %struct.clk_master_characteristics { %struct.clk_range { i32 124000000, i32 166000000 }, [5 x i32] [i32 1, i32 2, i32 4, i32 3, i32 0], i8 0 }, [32 x i8] zeroinitializer }, align 32
@mck_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.80, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"masterck_div\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"h32mxck\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"usbck\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"prog%d\00", [25 x i8] zeroinitializer }, align 32
@sama5d2_programmable_layout = internal constant { %struct.clk_programmable_layout, [27 x i8] } { %struct.clk_programmable_layout { i8 -1, i8 4, i8 7, i8 0, i8 1 }, [27 x i8] zeroinitializer }, align 32
@pmc_pcr_lock = external dso_local global %struct.spinlock, align 4
@sama5d2_pcr_layout = internal constant { %struct.clk_pcr_layout, [44 x i8] } { %struct.clk_pcr_layout { i32 268, i32 4096, i32 0, i32 1792, i32 127 }, [44 x i8] zeroinitializer }, align 32
@sama5d2_periphck = internal constant { [13 x %struct.anon.44], [56 x i8] } { [13 x %struct.anon.44] [%struct.anon.44 { ptr @.str.81, i8 6 }, %struct.anon.44 { ptr @.str.82, i8 7 }, %struct.anon.44 { ptr @.str.83, i8 9 }, %struct.anon.44 { ptr @.str.84, i8 10 }, %struct.anon.44 { ptr @.str.85, i8 12 }, %struct.anon.44 { ptr @.str.86, i8 13 }, %struct.anon.44 { ptr @.str.87, i8 15 }, %struct.anon.44 { ptr @.str.88, i8 31 }, %struct.anon.44 { ptr @.str.89, i8 32 }, %struct.anon.44 { ptr @.str.90, i8 45 }, %struct.anon.44 { ptr @.str.91, i8 46 }, %struct.anon.44 { ptr @.str.92, i8 52 }, %struct.anon.44 { ptr @.str.93, i8 53 }], [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2s0_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2s0_gclk\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2s0_muxclk\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2s1_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2s1_gclk\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2s1_muxclk\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ddrck\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lcdck\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uhpck\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"udpck\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pck0\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"prog0\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pck1\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"prog1\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pck2\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"prog2\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iscck\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"macb0_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tdes_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"matrix1_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hsmc_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pioA_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"flx0_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"flx1_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"flx2_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"flx3_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"flx4_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart0_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart2_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart3_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart4_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"twi0_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"twi1_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi0_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi1_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tcb0_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tcb1_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adc_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uhphs_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"udphs_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssc0_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssc1_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"trng_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pdmic_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"securam_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"can0_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"can1_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ptc_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"classd_clk\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdmmc0_gclk\00", [20 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdmmc1_gclk\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tcb0_gclk\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tcb1_gclk\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm_gclk\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"isc_gclk\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pdmic_gclk\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"can0_gclk\00", [22 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"can1_gclk\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"classd_gclk\00", [20 x i8] zeroinitializer }, align 32
@plla_outputs = internal constant { [1 x %struct.clk_range], [24 x i8] } { [1 x %struct.clk_range] [%struct.clk_range { i32 600000000, i32 1200000000 }], [24 x i8] zeroinitializer }, align 32
@plla_icpll = internal global { [1 x i16], [30 x i8] } zeroinitializer, align 32
@plla_out = internal global { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mck_lock\00", [23 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dma0_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dma1_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aes_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aesb_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sha_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpddr_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"matrix0_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdmmc0_hclk\00", [20 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdmmc1_hclk\00", [20 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lcdc_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"isc_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qspi0_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qspi1_clk\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 156, i32 35 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 156, i32 50 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 162, i32 50 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"sama5d2_systemck\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 44, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [19 x i8] c"sama5d2_periph32ck\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 59, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [12 x i8] c"sama5d2_gck\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 122, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 178, i32 45 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 183, i32 37 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 185, i32 42 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 192, i32 45 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 198, i32 37 }
@___asan_gen_.127 = private unnamed_addr constant [21 x i8] c"plla_characteristics\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 25, i32 45 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 203, i32 40 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 209, i32 48 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 214, i32 47 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 219, i32 47 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 226, i32 50 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 230, i32 50 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 240, i32 45 }
@___asan_gen_.151 = private unnamed_addr constant [20 x i8] c"mck_characteristics\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 12, i32 48 }
@___asan_gen_.154 = private unnamed_addr constant [9 x i8] c"mck_lock\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 248, i32 44 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 258, i32 39 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 266, i32 43 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 279, i32 32 }
@___asan_gen_.169 = private unnamed_addr constant [28 x i8] c"sama5d2_programmable_layout\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 137, i32 45 }
@___asan_gen_.172 = private unnamed_addr constant [19 x i8] c"sama5d2_pcr_layout\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 33, i32 36 }
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"sama5d2_periphck\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 101, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 349, i32 21 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 350, i32 21 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 351, i32 46 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 358, i32 21 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 359, i32 21 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 360, i32 46 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 45, i32 9 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 46, i32 9 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 47, i32 9 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 48, i32 9 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 49, i32 9 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 49, i32 23 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 50, i32 9 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 50, i32 23 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 51, i32 9 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 51, i32 23 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 52, i32 9 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 60, i32 9 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 61, i32 9 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 62, i32 9 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 63, i32 9 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 64, i32 9 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 65, i32 9 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 66, i32 9 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 67, i32 9 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 68, i32 9 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 69, i32 9 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 70, i32 9 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 71, i32 9 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 72, i32 9 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 73, i32 9 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 74, i32 9 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 75, i32 9 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 76, i32 9 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 77, i32 9 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 78, i32 9 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 79, i32 9 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 80, i32 9 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 81, i32 9 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 82, i32 9 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 83, i32 9 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 84, i32 9 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 85, i32 9 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 86, i32 9 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 87, i32 9 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 88, i32 9 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 89, i32 9 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 92, i32 9 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 93, i32 9 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 94, i32 9 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 95, i32 9 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 123, i32 9 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 124, i32 9 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 125, i32 9 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 126, i32 9 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 127, i32 9 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 128, i32 9 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 129, i32 9 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 132, i32 9 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 133, i32 9 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 134, i32 9 }
@___asan_gen_.361 = private unnamed_addr constant [13 x i8] c"plla_outputs\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 21, i32 31 }
@___asan_gen_.364 = private unnamed_addr constant [11 x i8] c"plla_icpll\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 19, i32 12 }
@___asan_gen_.367 = private unnamed_addr constant [9 x i8] c"plla_out\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 17, i32 11 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 10, i32 8 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 102, i32 9 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 103, i32 9 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 104, i32 9 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 105, i32 9 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 106, i32 9 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 107, i32 9 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 108, i32 9 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 109, i32 9 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 110, i32 9 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 111, i32 9 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 112, i32 9 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 113, i32 9 }
@___asan_gen_.409 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.410 = private constant [30 x i8] c"../drivers/clk/at91/sama5d2.c\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 114, i32 9 }
@llvm.compiler.used = appending global [107 x ptr] [ptr @__of_table_sama5d2_pmc, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @sama5d2_systemck, ptr @sama5d2_periph32ck, ptr @sama5d2_gck, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @plla_characteristics, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @mck_characteristics, ptr @mck_lock, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @sama5d2_programmable_layout, ptr @sama5d2_pcr_layout, ptr @sama5d2_periphck, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @plla_outputs, ptr @plla_icpll, ptr @plla_out, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93], section "llvm.metadata"
@0 = internal global [106 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d2_systemck to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d2_periph32ck to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d2_gck to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plla_characteristics to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mck_characteristics to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mck_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d2_programmable_layout to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d2_pcr_layout to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d2_periphck to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plla_outputs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plla_icpll to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plla_out to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sama5d2_pmc_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %range = alloca %struct.clk_range, align 8
  %parent_names = alloca [6 x ptr], align 4
  %name = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %range) #5
  %0 = ptrtoint ptr %range to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %range, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %parent_names) #5
  %1 = getelementptr inbounds [6 x ptr], ptr %parent_names, i32 0, i32 1
  %2 = getelementptr inbounds [6 x ptr], ptr %parent_names, i32 0, i32 2
  %3 = getelementptr inbounds [6 x ptr], ptr %parent_names, i32 0, i32 3
  %4 = getelementptr inbounds [6 x ptr], ptr %parent_names, i32 0, i32 4
  %5 = getelementptr inbounds [6 x ptr], ptr %parent_names, i32 0, i32 5
  %6 = call ptr @memset(ptr %parent_names, i32 255, i32 24)
  %call = tail call i32 @of_property_match_string(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup224_crit_edge, label %if.end

entry.cleanup224_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup224

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef %call) #5
  %call2 = tail call i32 @of_property_match_string(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup224_crit_edge, label %if.end5

if.end.cleanup224_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup224

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef %call2) #5
  %call7 = tail call ptr @device_node_to_regmap(ptr noundef %np) #5
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end5.cleanup224_crit_edge, label %if.end10

if.end5.cleanup224_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup224

if.end10:                                         ; preds = %if.end5
  %call15 = tail call ptr @pmc_data_allocate(i32 noundef 10, i32 noundef 19, i32 noundef 60, i32 noundef 60, i32 noundef 3) #5
  %tobool.not = icmp eq ptr %call15, null
  br i1 %tobool.not, label %if.end10.cleanup224_crit_edge, label %if.end17

if.end10.cleanup224_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup224

if.end17:                                         ; preds = %if.end10
  %call18 = tail call ptr @at91_clk_register_main_rc_osc(ptr noundef %call7, ptr noundef nonnull @.str.3, i32 noundef 12000000, i32 noundef 100000000) #8
  %cmp.i346 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i346, label %if.end17.err_free_crit_edge, label %if.end21

if.end17.err_free_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end21:                                         ; preds = %if.end17
  %call.i = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.4, ptr noundef null) #5
  %tobool.i = icmp ne ptr %call.i, null
  %call24 = tail call ptr @at91_clk_register_main_osc(ptr noundef %call7, ptr noundef nonnull @.str.5, ptr noundef %call6, i1 noundef zeroext %tobool.i) #8
  %cmp.i347 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i347, label %if.end21.err_free_crit_edge, label %if.end27

if.end21.err_free_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end27:                                         ; preds = %if.end21
  %7 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.3, ptr %parent_names, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.5, ptr %1, align 4
  %call29 = call ptr @at91_clk_register_sam9x5_main(ptr noundef %call7, ptr noundef nonnull @.str.6, ptr noundef nonnull %parent_names, i32 noundef 2) #8
  %cmp.i348 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i348, label %if.end27.err_free_crit_edge, label %if.end32

if.end27.err_free_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end32:                                         ; preds = %if.end27
  %chws = getelementptr inbounds %struct.pmc_data, ptr %call15, i32 0, i32 1
  %9 = ptrtoint ptr %chws to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chws, align 4
  %arrayidx33 = getelementptr ptr, ptr %10, i32 3
  %11 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call29, ptr %arrayidx33, align 4
  %call34 = call ptr @at91_clk_register_pll(ptr noundef %call7, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i8 noundef zeroext 0, ptr noundef nonnull @sama5d3_pll_layout, ptr noundef nonnull @plla_characteristics) #8
  %cmp.i349 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i349, label %if.end32.err_free_crit_edge, label %if.end37

if.end32.err_free_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end37:                                         ; preds = %if.end32
  %call38 = call ptr @at91_clk_register_plldiv(ptr noundef %call7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7) #8
  %cmp.i350 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i350, label %if.end37.err_free_crit_edge, label %if.end41

if.end37.err_free_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end41:                                         ; preds = %if.end37
  %12 = ptrtoint ptr %chws to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chws, align 4
  %arrayidx43 = getelementptr ptr, ptr %13, i32 7
  %14 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call38, ptr %arrayidx43, align 4
  %call44 = call ptr @at91_clk_register_audio_pll_frac(ptr noundef %call7, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6) #8
  %cmp.i351 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i351, label %if.end41.err_free_crit_edge, label %if.end47

if.end41.err_free_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end47:                                         ; preds = %if.end41
  %call48 = call ptr @at91_clk_register_audio_pll_pad(ptr noundef %call7, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9) #8
  %cmp.i352 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i352, label %if.end47.err_free_crit_edge, label %if.end51

if.end47.err_free_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end51:                                         ; preds = %if.end47
  %call52 = call ptr @at91_clk_register_audio_pll_pmc(ptr noundef %call7, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9) #8
  %cmp.i353 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i353, label %if.end51.err_free_crit_edge, label %if.end55

if.end51.err_free_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end55:                                         ; preds = %if.end51
  %15 = ptrtoint ptr %chws to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chws, align 4
  %arrayidx57 = getelementptr ptr, ptr %16, i32 9
  %17 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call52, ptr %arrayidx57, align 4
  %call58 = call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.12) #5
  %cmp.i354 = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i354, ptr null, ptr %call58
  %call62 = call ptr @at91_clk_register_utmi(ptr noundef %call7, ptr noundef %spec.select, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.6) #8
  %cmp.i355 = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i355, label %if.end55.err_free_crit_edge, label %if.end65

if.end55.err_free_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end65:                                         ; preds = %if.end55
  %18 = ptrtoint ptr %chws to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chws, align 4
  %arrayidx67 = getelementptr ptr, ptr %19, i32 2
  %20 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call62, ptr %arrayidx67, align 4
  %21 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call1, ptr %parent_names, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.6, ptr %1, align 4
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.8, ptr %2, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.13, ptr %3, align 4
  %call73 = call ptr @at91_clk_register_master_pres(ptr noundef %call7, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef nonnull %parent_names, ptr noundef nonnull @at91sam9x5_master_layout, ptr noundef nonnull @mck_characteristics, ptr noundef nonnull @mck_lock, i32 noundef 1, i32 noundef -2147483648) #8
  %cmp.i356 = icmp ugt ptr %call73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i356, label %if.end65.err_free_crit_edge, label %if.end76

if.end65.err_free_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end76:                                         ; preds = %if.end65
  %call77 = call ptr @at91_clk_register_master_div(ptr noundef %call7, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, ptr noundef nonnull @at91sam9x5_master_layout, ptr noundef nonnull @mck_characteristics, ptr noundef nonnull @mck_lock, i32 noundef 1, i32 noundef 0) #8
  %cmp.i357 = icmp ugt ptr %call77, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i357, label %if.end76.err_free_crit_edge, label %if.end80

if.end76.err_free_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end80:                                         ; preds = %if.end76
  %25 = ptrtoint ptr %chws to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chws, align 4
  %arrayidx82 = getelementptr ptr, ptr %26, i32 1
  %27 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call77, ptr %arrayidx82, align 4
  %call83 = call ptr @at91_clk_register_h32mx(ptr noundef %call7, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15) #8
  %cmp.i358 = icmp ugt ptr %call83, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i358, label %if.end80.err_free_crit_edge, label %if.end86

if.end80.err_free_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end86:                                         ; preds = %if.end80
  %28 = ptrtoint ptr %chws to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chws, align 4
  %arrayidx88 = getelementptr ptr, ptr %29, i32 4
  %30 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call83, ptr %arrayidx88, align 4
  %31 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.8, ptr %parent_names, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.13, ptr %1, align 4
  %call92 = call ptr @at91sam9x5_clk_register_usb(ptr noundef %call7, ptr noundef nonnull @.str.17, ptr noundef nonnull %parent_names, i8 noundef zeroext 2) #8
  %cmp.i359 = icmp ugt ptr %call92, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i359, label %if.end86.err_free_crit_edge, label %if.end95

if.end86.err_free_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end95:                                         ; preds = %if.end86
  %33 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call1, ptr %parent_names, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.6, ptr %1, align 4
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.8, ptr %2, align 4
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.13, ptr %3, align 4
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.15, ptr %4, align 4
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.11, ptr %5, align 4
  %pchws = getelementptr inbounds %struct.pmc_data, ptr %call15, i32 0, i32 9
  br label %for.body

for.cond114.preheader:                            ; preds = %for.inc
  %shws = getelementptr inbounds %struct.pmc_data, ptr %call15, i32 0, i32 3
  br label %for.body117

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end95
  %i.0372 = phi i32 [ 0, %if.end95 ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %name) #5
  %39 = call ptr @memset(ptr %name, i32 255, i32 6)
  %call105 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 6, ptr noundef nonnull @.str.18, i32 noundef %i.0372)
  %conv108 = trunc i32 %i.0372 to i8
  %call109 = call ptr @at91_clk_register_programmable(ptr noundef %call7, ptr noundef nonnull %name, ptr noundef nonnull %parent_names, i8 noundef zeroext 6, i8 noundef zeroext %conv108, ptr noundef nonnull @sama5d2_programmable_layout, ptr noundef null) #8
  %cmp.i360 = icmp ugt ptr %call109, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i360, label %cleanup, label %for.inc

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %name) #5
  br label %err_free

for.inc:                                          ; preds = %for.body
  %40 = ptrtoint ptr %pchws to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pchws, align 4
  %arrayidx113 = getelementptr ptr, ptr %41, i32 %i.0372
  %42 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call109, ptr %arrayidx113, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %name) #5
  %inc = add nuw nsw i32 %i.0372, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.cond114.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond131.preheader:                            ; preds = %if.end124
  %phws = getelementptr inbounds %struct.pmc_data, ptr %call15, i32 0, i32 5
  br label %for.body134

for.body117:                                      ; preds = %if.end124.for.body117_crit_edge, %for.cond114.preheader
  %i.1373 = phi i32 [ 0, %for.cond114.preheader ], [ %inc129, %if.end124.for.body117_crit_edge ]
  %arrayidx118 = getelementptr [8 x %struct.anon.41], ptr @sama5d2_systemck, i32 0, i32 %i.1373
  %43 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx118, align 4
  %p = getelementptr [8 x %struct.anon.41], ptr @sama5d2_systemck, i32 0, i32 %i.1373, i32 1
  %45 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %p, align 4
  %id = getelementptr [8 x %struct.anon.41], ptr @sama5d2_systemck, i32 0, i32 %i.1373, i32 2
  %47 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %id, align 4
  %call121 = call ptr @at91_clk_register_system(ptr noundef %call7, ptr noundef %44, ptr noundef %46, i8 noundef zeroext %48) #8
  %cmp.i361 = icmp ugt ptr %call121, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i361, label %for.body117.err_free_crit_edge, label %if.end124

for.body117.err_free_crit_edge:                   ; preds = %for.body117
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end124:                                        ; preds = %for.body117
  %49 = ptrtoint ptr %shws to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %shws, align 4
  %idxprom = zext i8 %48 to i32
  %arrayidx127 = getelementptr ptr, ptr %50, i32 %idxprom
  %51 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call121, ptr %arrayidx127, align 4
  %inc129 = add nuw nsw i32 %i.1373, 1
  %exitcond380.not = icmp eq i32 %inc129, 8
  br i1 %exitcond380.not, label %for.cond131.preheader, label %if.end124.for.body117_crit_edge

if.end124.for.body117_crit_edge:                  ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body117

for.body134:                                      ; preds = %if.end143.for.body134_crit_edge, %for.cond131.preheader
  %i.2374 = phi i32 [ 0, %for.cond131.preheader ], [ %inc149, %if.end143.for.body134_crit_edge ]
  %arrayidx135 = getelementptr [13 x %struct.anon.44], ptr @sama5d2_periphck, i32 0, i32 %i.2374
  %52 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx135, align 4
  %id138 = getelementptr [13 x %struct.anon.44], ptr @sama5d2_periphck, i32 0, i32 %i.2374, i32 1
  %54 = ptrtoint ptr %id138 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %id138, align 4
  %conv139 = zext i8 %55 to i32
  %call140 = call ptr @at91_clk_register_sam9x5_peripheral(ptr noundef %call7, ptr noundef nonnull @pmc_pcr_lock, ptr noundef nonnull @sama5d2_pcr_layout, ptr noundef %53, ptr noundef nonnull @.str.15, i32 noundef %conv139, ptr noundef nonnull %range, i32 noundef -2147483648) #8
  %cmp.i362 = icmp ugt ptr %call140, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i362, label %for.body134.err_free_crit_edge, label %if.end143

for.body134.err_free_crit_edge:                   ; preds = %for.body134
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end143:                                        ; preds = %for.body134
  %56 = ptrtoint ptr %phws to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %phws, align 4
  %arrayidx147 = getelementptr ptr, ptr %57, i32 %conv139
  %58 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call140, ptr %arrayidx147, align 4
  %inc149 = add nuw nsw i32 %i.2374, 1
  %exitcond381.not = icmp eq i32 %inc149, 13
  br i1 %exitcond381.not, label %if.end143.for.body154_crit_edge, label %if.end143.for.body134_crit_edge

if.end143.for.body134_crit_edge:                  ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body134

if.end143.for.body154_crit_edge:                  ; preds = %if.end143
  br label %for.body154

for.body154:                                      ; preds = %if.end164.for.body154_crit_edge, %if.end143.for.body154_crit_edge
  %i.3375 = phi i32 [ %inc171, %if.end164.for.body154_crit_edge ], [ 0, %if.end143.for.body154_crit_edge ]
  %arrayidx155 = getelementptr [36 x %struct.anon.42], ptr @sama5d2_periph32ck, i32 0, i32 %i.3375
  %59 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx155, align 4
  %id158 = getelementptr [36 x %struct.anon.42], ptr @sama5d2_periph32ck, i32 0, i32 %i.3375, i32 1
  %61 = ptrtoint ptr %id158 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %id158, align 4
  %conv159 = zext i8 %62 to i32
  %r = getelementptr [36 x %struct.anon.42], ptr @sama5d2_periph32ck, i32 0, i32 %i.3375, i32 2
  %call161 = call ptr @at91_clk_register_sam9x5_peripheral(ptr noundef %call7, ptr noundef nonnull @pmc_pcr_lock, ptr noundef nonnull @sama5d2_pcr_layout, ptr noundef %60, ptr noundef nonnull @.str.16, i32 noundef %conv159, ptr noundef %r, i32 noundef -2147483648) #8
  %cmp.i363 = icmp ugt ptr %call161, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i363, label %for.body154.err_free_crit_edge, label %if.end164

for.body154.err_free_crit_edge:                   ; preds = %for.body154
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end164:                                        ; preds = %for.body154
  %63 = ptrtoint ptr %phws to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %phws, align 4
  %arrayidx169 = getelementptr ptr, ptr %64, i32 %conv159
  %65 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call161, ptr %arrayidx169, align 4
  %inc171 = add nuw nsw i32 %i.3375, 1
  %exitcond382.not = icmp eq i32 %inc171, 36
  br i1 %exitcond382.not, label %for.end172, label %if.end164.for.body154_crit_edge

if.end164.for.body154_crit_edge:                  ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body154

for.end172:                                       ; preds = %if.end164
  %66 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call1, ptr %parent_names, align 4
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.6, ptr %1, align 4
  %68 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.8, ptr %2, align 4
  %69 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @.str.13, ptr %3, align 4
  %70 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @.str.15, ptr %4, align 4
  %71 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.11, ptr %5, align 4
  %ghws = getelementptr inbounds %struct.pmc_data, ptr %call15, i32 0, i32 7
  br label %for.body182

for.body182:                                      ; preds = %if.end194.for.body182_crit_edge, %for.end172
  %i.4376 = phi i32 [ 0, %for.end172 ], [ %inc200, %if.end194.for.body182_crit_edge ]
  %arrayidx183 = getelementptr [12 x %struct.anon.43], ptr @sama5d2_gck, i32 0, i32 %i.4376
  %72 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx183, align 4
  %id187 = getelementptr [12 x %struct.anon.43], ptr @sama5d2_gck, i32 0, i32 %i.4376, i32 1
  %74 = ptrtoint ptr %id187 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %id187, align 4
  %r189 = getelementptr [12 x %struct.anon.43], ptr @sama5d2_gck, i32 0, i32 %i.4376, i32 2
  %chg_pid = getelementptr [12 x %struct.anon.43], ptr @sama5d2_gck, i32 0, i32 %i.4376, i32 3
  %76 = ptrtoint ptr %chg_pid to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %chg_pid, align 4
  %call191 = call ptr @at91_clk_register_generated(ptr noundef %call7, ptr noundef nonnull @pmc_pcr_lock, ptr noundef nonnull @sama5d2_pcr_layout, ptr noundef %73, ptr noundef nonnull %parent_names, ptr noundef null, i8 noundef zeroext 6, i8 noundef zeroext %75, ptr noundef %r189, i32 noundef %77) #8
  %cmp.i364 = icmp ugt ptr %call191, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i364, label %for.body182.err_free_crit_edge, label %if.end194

for.body182.err_free_crit_edge:                   ; preds = %for.body182
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end194:                                        ; preds = %for.body182
  %78 = ptrtoint ptr %ghws to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ghws, align 4
  %idxprom197 = zext i8 %75 to i32
  %arrayidx198 = getelementptr ptr, ptr %79, i32 %idxprom197
  %80 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call191, ptr %arrayidx198, align 4
  %inc200 = add nuw nsw i32 %i.4376, 1
  %exitcond383.not = icmp eq i32 %inc200, 12
  br i1 %exitcond383.not, label %for.end201, label %if.end194.for.body182_crit_edge

if.end194.for.body182_crit_edge:                  ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body182

for.end201:                                       ; preds = %if.end194
  %tobool202.not = icmp eq ptr %spec.select, null
  br i1 %tobool202.not, label %for.end201.if.end222_crit_edge, label %if.then203

for.end201.if.end222_crit_edge:                   ; preds = %for.end201
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end222

if.then203:                                       ; preds = %for.end201
  %81 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @.str.19, ptr %parent_names, align 4
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @.str.20, ptr %1, align 4
  %call207 = call ptr @at91_clk_i2s_mux_register(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.21, ptr noundef nonnull %parent_names, i32 noundef 2, i8 noundef zeroext 0) #8
  %cmp.i365 = icmp ugt ptr %call207, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i365, label %if.then203.err_free_crit_edge, label %if.end210

if.then203.err_free_crit_edge:                    ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end210:                                        ; preds = %if.then203
  %83 = ptrtoint ptr %chws to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %chws, align 4
  %arrayidx212 = getelementptr ptr, ptr %84, i32 5
  %85 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call207, ptr %arrayidx212, align 4
  %86 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @.str.22, ptr %parent_names, align 4
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @.str.23, ptr %1, align 4
  %call216 = call ptr @at91_clk_i2s_mux_register(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.24, ptr noundef nonnull %parent_names, i32 noundef 2, i8 noundef zeroext 1) #8
  %cmp.i366 = icmp ugt ptr %call216, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i366, label %if.end210.err_free_crit_edge, label %if.end219

if.end210.err_free_crit_edge:                     ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end219:                                        ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #7
  %88 = ptrtoint ptr %chws to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %chws, align 4
  %arrayidx221 = getelementptr ptr, ptr %89, i32 6
  %90 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call216, ptr %arrayidx221, align 4
  br label %if.end222

if.end222:                                        ; preds = %if.end219, %for.end201.if.end222_crit_edge
  %call223 = call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_pmc_get, ptr noundef nonnull %call15) #5
  br label %cleanup224

err_free:                                         ; preds = %if.end210.err_free_crit_edge, %if.then203.err_free_crit_edge, %for.body182.err_free_crit_edge, %for.body154.err_free_crit_edge, %for.body134.err_free_crit_edge, %for.body117.err_free_crit_edge, %cleanup, %if.end86.err_free_crit_edge, %if.end80.err_free_crit_edge, %if.end76.err_free_crit_edge, %if.end65.err_free_crit_edge, %if.end55.err_free_crit_edge, %if.end51.err_free_crit_edge, %if.end47.err_free_crit_edge, %if.end41.err_free_crit_edge, %if.end37.err_free_crit_edge, %if.end32.err_free_crit_edge, %if.end27.err_free_crit_edge, %if.end21.err_free_crit_edge, %if.end17.err_free_crit_edge
  call void @kfree(ptr noundef nonnull %call15) #5
  br label %cleanup224

cleanup224:                                       ; preds = %err_free, %if.end222, %if.end10.cleanup224_crit_edge, %if.end5.cleanup224_crit_edge, %if.end.cleanup224_crit_edge, %entry.cleanup224_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %parent_names) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %range) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pmc_data_allocate(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_main_rc_osc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_main_osc(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_sam9x5_main(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_pll(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_plldiv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_audio_pll_frac(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_audio_pll_pad(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_audio_pll_pmc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_utmi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_master_pres(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_master_div(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_h32mx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91sam9x5_clk_register_usb(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3 section ".init.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_programmable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_system(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_sam9x5_peripheral(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_generated(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_i2s_mux_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_pmc_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211}
!llvm.module.flags = !{!213, !214, !215, !216, !217, !218, !219, !220}
!llvm.ident = !{!221}

!0 = !{ptr @__of_table_sama5d2_pmc, !1, !"__of_table_sama5d2_pmc", i1 false, i1 false}
!1 = !{!"../drivers/clk/at91/sama5d2.c", i32 376, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/at91/sama5d2.c", i32 156, i32 35}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/at91/sama5d2.c", i32 156, i32 50}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/at91/sama5d2.c", i32 162, i32 50}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/at91/sama5d2.c", i32 178, i32 45}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/at91/sama5d2.c", i32 183, i32 37}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/at91/sama5d2.c", i32 185, i32 42}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/at91/sama5d2.c", i32 192, i32 45}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/at91/sama5d2.c", i32 198, i32 37}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/at91/sama5d2.c", i32 203, i32 40}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/at91/sama5d2.c", i32 209, i32 48}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/at91/sama5d2.c", i32 214, i32 47}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/at91/sama5d2.c", i32 219, i32 47}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/at91/sama5d2.c", i32 226, i32 50}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/at91/sama5d2.c", i32 230, i32 50}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/at91/sama5d2.c", i32 240, i32 45}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/at91/sama5d2.c", i32 248, i32 44}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/at91/sama5d2.c", i32 258, i32 39}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/at91/sama5d2.c", i32 266, i32 43}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/at91/sama5d2.c", i32 279, i32 32}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/at91/sama5d2.c", i32 349, i32 21}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/at91/sama5d2.c", i32 350, i32 21}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/at91/sama5d2.c", i32 351, i32 46}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/at91/sama5d2.c", i32 358, i32 21}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/at91/sama5d2.c", i32 359, i32 21}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/at91/sama5d2.c", i32 360, i32 46}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/at91/sama5d2.c", i32 45, i32 9}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/at91/sama5d2.c", i32 46, i32 9}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/at91/sama5d2.c", i32 47, i32 9}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/at91/sama5d2.c", i32 48, i32 9}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/at91/sama5d2.c", i32 49, i32 9}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/at91/sama5d2.c", i32 49, i32 23}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/at91/sama5d2.c", i32 50, i32 9}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/at91/sama5d2.c", i32 50, i32 23}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/at91/sama5d2.c", i32 51, i32 9}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/at91/sama5d2.c", i32 51, i32 23}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/at91/sama5d2.c", i32 52, i32 9}
!74 = !{ptr @sama5d2_systemck, !75, !"sama5d2_systemck", i1 false, i1 false}
!75 = !{!"../drivers/clk/at91/sama5d2.c", i32 44, i32 3}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/at91/sama5d2.c", i32 60, i32 9}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/at91/sama5d2.c", i32 61, i32 9}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/at91/sama5d2.c", i32 62, i32 9}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/at91/sama5d2.c", i32 63, i32 9}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/at91/sama5d2.c", i32 64, i32 9}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/at91/sama5d2.c", i32 65, i32 9}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/at91/sama5d2.c", i32 66, i32 9}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/at91/sama5d2.c", i32 67, i32 9}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/at91/sama5d2.c", i32 68, i32 9}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/at91/sama5d2.c", i32 69, i32 9}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/at91/sama5d2.c", i32 70, i32 9}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/at91/sama5d2.c", i32 71, i32 9}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/at91/sama5d2.c", i32 72, i32 9}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/at91/sama5d2.c", i32 73, i32 9}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/at91/sama5d2.c", i32 74, i32 9}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/at91/sama5d2.c", i32 75, i32 9}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/at91/sama5d2.c", i32 76, i32 9}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/at91/sama5d2.c", i32 77, i32 9}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/at91/sama5d2.c", i32 78, i32 9}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/at91/sama5d2.c", i32 79, i32 9}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/at91/sama5d2.c", i32 80, i32 9}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/at91/sama5d2.c", i32 81, i32 9}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/at91/sama5d2.c", i32 82, i32 9}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/at91/sama5d2.c", i32 83, i32 9}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/at91/sama5d2.c", i32 84, i32 9}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/at91/sama5d2.c", i32 85, i32 9}
!128 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/at91/sama5d2.c", i32 86, i32 9}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/at91/sama5d2.c", i32 87, i32 9}
!132 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/at91/sama5d2.c", i32 88, i32 9}
!134 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/at91/sama5d2.c", i32 89, i32 9}
!136 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/at91/sama5d2.c", i32 92, i32 9}
!138 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/at91/sama5d2.c", i32 93, i32 9}
!140 = !{ptr @.str.68, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/at91/sama5d2.c", i32 94, i32 9}
!142 = !{ptr @.str.69, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/at91/sama5d2.c", i32 95, i32 9}
!144 = !{ptr @sama5d2_periph32ck, !145, !"sama5d2_periph32ck", i1 false, i1 false}
!145 = !{!"../drivers/clk/at91/sama5d2.c", i32 59, i32 3}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/at91/sama5d2.c", i32 123, i32 9}
!148 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/at91/sama5d2.c", i32 124, i32 9}
!150 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/at91/sama5d2.c", i32 125, i32 9}
!152 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/at91/sama5d2.c", i32 126, i32 9}
!154 = !{ptr @.str.74, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/at91/sama5d2.c", i32 127, i32 9}
!156 = !{ptr @.str.75, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/at91/sama5d2.c", i32 128, i32 9}
!158 = !{ptr @.str.76, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/at91/sama5d2.c", i32 129, i32 9}
!160 = !{ptr @.str.77, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/at91/sama5d2.c", i32 132, i32 9}
!162 = !{ptr @.str.78, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/at91/sama5d2.c", i32 133, i32 9}
!164 = !{ptr @.str.79, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/at91/sama5d2.c", i32 134, i32 9}
!166 = !{ptr @sama5d2_gck, !167, !"sama5d2_gck", i1 false, i1 false}
!167 = !{!"../drivers/clk/at91/sama5d2.c", i32 122, i32 3}
!168 = !{ptr @plla_characteristics, !169, !"plla_characteristics", i1 false, i1 false}
!169 = !{!"../drivers/clk/at91/sama5d2.c", i32 25, i32 45}
!170 = !{ptr @plla_outputs, !171, !"plla_outputs", i1 false, i1 false}
!171 = !{!"../drivers/clk/at91/sama5d2.c", i32 21, i32 31}
!172 = !{ptr @plla_icpll, !173, !"plla_icpll", i1 false, i1 false}
!173 = !{!"../drivers/clk/at91/sama5d2.c", i32 19, i32 12}
!174 = !{ptr @plla_out, !175, !"plla_out", i1 false, i1 false}
!175 = !{!"../drivers/clk/at91/sama5d2.c", i32 17, i32 11}
!176 = !{ptr @mck_characteristics, !177, !"mck_characteristics", i1 false, i1 false}
!177 = !{!"../drivers/clk/at91/sama5d2.c", i32 12, i32 48}
!178 = !{ptr @.str.80, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/clk/at91/sama5d2.c", i32 10, i32 8}
!180 = !{ptr @mck_lock, !179, !"mck_lock", i1 false, i1 false}
!181 = !{ptr @sama5d2_programmable_layout, !182, !"sama5d2_programmable_layout", i1 false, i1 false}
!182 = !{!"../drivers/clk/at91/sama5d2.c", i32 137, i32 45}
!183 = !{ptr @sama5d2_pcr_layout, !184, !"sama5d2_pcr_layout", i1 false, i1 false}
!184 = !{!"../drivers/clk/at91/sama5d2.c", i32 33, i32 36}
!185 = !{ptr @.str.81, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/clk/at91/sama5d2.c", i32 102, i32 9}
!187 = !{ptr @.str.82, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/clk/at91/sama5d2.c", i32 103, i32 9}
!189 = !{ptr @.str.83, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/clk/at91/sama5d2.c", i32 104, i32 9}
!191 = !{ptr @.str.84, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/clk/at91/sama5d2.c", i32 105, i32 9}
!193 = !{ptr @.str.85, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/clk/at91/sama5d2.c", i32 106, i32 9}
!195 = !{ptr @.str.86, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/clk/at91/sama5d2.c", i32 107, i32 9}
!197 = !{ptr @.str.87, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/clk/at91/sama5d2.c", i32 108, i32 9}
!199 = !{ptr @.str.88, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/clk/at91/sama5d2.c", i32 109, i32 9}
!201 = !{ptr @.str.89, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/clk/at91/sama5d2.c", i32 110, i32 9}
!203 = !{ptr @.str.90, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/clk/at91/sama5d2.c", i32 111, i32 9}
!205 = !{ptr @.str.91, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/clk/at91/sama5d2.c", i32 112, i32 9}
!207 = !{ptr @.str.92, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/clk/at91/sama5d2.c", i32 113, i32 9}
!209 = !{ptr @.str.93, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/clk/at91/sama5d2.c", i32 114, i32 9}
!211 = !{ptr @sama5d2_periphck, !212, !"sama5d2_periphck", i1 false, i1 false}
!212 = !{!"../drivers/clk/at91/sama5d2.c", i32 101, i32 3}
!213 = !{i32 1, !"wchar_size", i32 2}
!214 = !{i32 1, !"min_enum_size", i32 4}
!215 = !{i32 8, !"branch-target-enforcement", i32 0}
!216 = !{i32 8, !"sign-return-address", i32 0}
!217 = !{i32 8, !"sign-return-address-all", i32 0}
!218 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!219 = !{i32 7, !"uwtable", i32 1}
!220 = !{i32 7, !"frame-pointer", i32 2}
!221 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
