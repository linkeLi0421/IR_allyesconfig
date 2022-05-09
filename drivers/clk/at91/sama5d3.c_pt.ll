; ModuleID = '/llk/IR_all_yes/drivers/clk/at91/sama5d3.c_pt.bc'
source_filename = "../drivers/clk/at91/sama5d3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.anon.41 = type { ptr, ptr, i8 }
%struct.anon.42 = type { ptr, i8, %struct.clk_range }
%struct.clk_range = type { i32, i32 }
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
%struct.pmc_data = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, [0 x ptr] }

@__of_table_sama5d3_pmc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d3_pmc_setup }, section "__clk_of_table", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clock-names\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"slow_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"main_xtal\00", [22 x i8] zeroinitializer }, align 32
@sama5d3_systemck = internal constant { [8 x %struct.anon.41], [32 x i8] } { [8 x %struct.anon.41] [%struct.anon.41 { ptr @.str.15, ptr @.str.11, i8 2 }, %struct.anon.41 { ptr @.str.16, ptr @.str.11, i8 3 }, %struct.anon.41 { ptr @.str.17, ptr @.str.13, i8 4 }, %struct.anon.41 { ptr @.str.18, ptr @.str.12, i8 6 }, %struct.anon.41 { ptr @.str.19, ptr @.str.12, i8 7 }, %struct.anon.41 { ptr @.str.20, ptr @.str.21, i8 8 }, %struct.anon.41 { ptr @.str.22, ptr @.str.23, i8 9 }, %struct.anon.41 { ptr @.str.24, ptr @.str.25, i8 10 }], [32 x i8] zeroinitializer }, align 32
@sama5d3_periphck = internal constant { [43 x %struct.anon.42], [176 x i8] } { [43 x %struct.anon.42] [%struct.anon.42 { ptr @.str.26, i8 2, %struct.clk_range zeroinitializer }, %struct.anon.42 { ptr @.str.27, i8 5, %struct.clk_range zeroinitializer }, %struct.anon.42 { ptr @.str.28, i8 6, %struct.clk_range zeroinitializer }, %struct.anon.42 { ptr @.str.29, i8 7, %struct.clk_range zeroinitializer }, %struct.anon.42 { ptr @.str.30, i8 8, %struct.clk_range zeroinitializer }, %struct.anon.42 { ptr @.str.31, i8 9, %struct.clk_range zeroinitializer }, %struct.anon.42 { ptr @.str.32, i8 10, %struct.clk_range zeroinitializer }, %struct.anon.42 { ptr @.str.33, i8 12, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.34, i8 13, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.35, i8 14, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.36, i8 15, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.37, i8 16, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.38, i8 17, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.39, i8 18, %struct.clk_range { i32 0, i32 41500000 } }, %struct.anon.42 { ptr @.str.40, i8 19, %struct.clk_range { i32 0, i32 41500000 } }, %struct.anon.42 { ptr @.str.41, i8 20, %struct.clk_range { i32 0, i32 41500000 } }, %struct.anon.42 { ptr @.str.42, i8 21, %struct.clk_range zeroinitializer }, %struct.anon.42 { ptr @.str.43, i8 22, %struct.clk_range zeroinitializer }, %struct.anon.42 { ptr @.str.44, i8 23, %struct.clk_range zeroinitializer }, %struct.anon.42 { ptr @.str.45, i8 24, %struct.clk_range { i32 0, i32 166000000 } }, %struct.anon.42 { ptr @.str.46, i8 25, %struct.clk_range { i32 0, i32 166000000 } }, %struct.anon.42 { ptr @.str.47, i8 26, %struct.clk_range { i32 0, i32 166000000 } }, %struct.anon.42 { ptr @.str.48, i8 27, %struct.clk_range { i32 0, i32 166000000 } }, %struct.anon.42 { ptr @.str.49, i8 28, %struct.clk_range zeroinitializer }, %struct.anon.42 { ptr @.str.50, i8 29, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.51, i8 30, %struct.clk_range zeroinitializer }, %struct.anon.42 { ptr @.str.52, i8 31, %struct.clk_range zeroinitializer }, %struct.anon.42 { ptr @.str.53, i8 32, %struct.clk_range zeroinitializer }, %struct.anon.42 { ptr @.str.54, i8 33, %struct.clk_range zeroinitializer }, %struct.anon.42 { ptr @.str.55, i8 34, %struct.clk_range zeroinitializer }, %struct.anon.42 { ptr @.str.56, i8 35, %struct.clk_range zeroinitializer }, %struct.anon.42 { ptr @.str.57, i8 36, %struct.clk_range zeroinitializer }, %struct.anon.42 { ptr @.str.58, i8 37, %struct.clk_range zeroinitializer }, %struct.anon.42 { ptr @.str.59, i8 38, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.60, i8 39, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.61, i8 40, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.62, i8 41, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.42 { ptr @.str.63, i8 42, %struct.clk_range zeroinitializer }, %struct.anon.42 { ptr @.str.64, i8 43, %struct.clk_range zeroinitializer }, %struct.anon.42 { ptr @.str.65, i8 44, %struct.clk_range zeroinitializer }, %struct.anon.42 { ptr @.str.66, i8 45, %struct.clk_range zeroinitializer }, %struct.anon.42 { ptr @.str.67, i8 48, %struct.clk_range zeroinitializer }, %struct.anon.42 { ptr @.str.68, i8 49, %struct.clk_range zeroinitializer }], [176 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"main_rc_osc\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atmel,osc-bypass\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"main_osc\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mainck\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pllack\00", [25 x i8] zeroinitializer }, align 32
@sama5d3_pll_layout = external dso_local constant %struct.clk_pll_layout, align 4
@plla_characteristics = internal constant { %struct.clk_pll_characteristics, [36 x i8] } { %struct.clk_pll_characteristics { %struct.clk_range { i32 8000000, i32 50000000 }, i32 1, ptr @plla_outputs, ptr @plla_icpll, ptr @plla_out, i8 0 }, [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"plladivck\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"utmick\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"masterck_pres\00", [18 x i8] zeroinitializer }, align 32
@at91sam9x5_master_layout = external dso_local constant %struct.clk_master_layout, align 4
@mck_characteristics = internal constant { %struct.clk_master_characteristics, [32 x i8] } { %struct.clk_master_characteristics { %struct.clk_range { i32 0, i32 166000000 }, [5 x i32] [i32 1, i32 2, i32 4, i32 3, i32 0], i8 0 }, [32 x i8] zeroinitializer }, align 32
@mck_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.69, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"masterck_div\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"usbck\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"smdclk\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"prog%d\00", [25 x i8] zeroinitializer }, align 32
@at91sam9x5_programmable_layout = external dso_local constant %struct.clk_programmable_layout, align 1
@pmc_pcr_lock = external dso_local global %struct.spinlock, align 4
@sama5d3_pcr_layout = internal constant { %struct.clk_pcr_layout, [44 x i8] } { %struct.clk_pcr_layout { i32 268, i32 4096, i32 196608, i32 0, i32 127 }, [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ddrck\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lcdck\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smdck\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uhpck\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"udpck\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pck0\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"prog0\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pck1\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"prog1\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pck2\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"prog2\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dbgu_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hsmc_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pioA_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pioB_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pioC_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pioD_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pioE_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usart0_clk\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usart1_clk\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usart2_clk\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usart3_clk\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart0_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"twi0_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"twi1_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"twi2_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mci0_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mci1_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mci2_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi0_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi1_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tcb0_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tcb1_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adc_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dma0_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dma1_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uhphs_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"udphs_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"macb0_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"macb1_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lcdc_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"isi_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssc0_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssc1_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"can0_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"can1_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sha_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aes_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tdes_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"trng_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fuse_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpddr_clk\00", [22 x i8] zeroinitializer }, align 32
@plla_outputs = internal constant { [1 x %struct.clk_range], [24 x i8] } { [1 x %struct.clk_range] [%struct.clk_range { i32 400000000, i32 1000000000 }], [24 x i8] zeroinitializer }, align 32
@plla_icpll = internal global { [1 x i16], [30 x i8] } zeroinitializer, align 32
@plla_out = internal global { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mck_lock\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 115, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 115, i32 50 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 121, i32 50 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"sama5d3_systemck\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 44, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"sama5d3_periphck\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 59, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 136, i32 45 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 141, i32 37 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 143, i32 42 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 150, i32 45 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 154, i32 37 }
@___asan_gen_.100 = private unnamed_addr constant [21 x i8] c"plla_characteristics\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 25, i32 45 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 159, i32 40 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 165, i32 44 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 175, i32 45 }
@___asan_gen_.112 = private unnamed_addr constant [20 x i8] c"mck_characteristics\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 12, i32 48 }
@___asan_gen_.115 = private unnamed_addr constant [9 x i8] c"mck_lock\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 183, i32 44 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 195, i32 43 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 199, i32 43 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 211, i32 32 }
@___asan_gen_.130 = private unnamed_addr constant [19 x i8] c"sama5d3_pcr_layout\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 33, i32 36 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 45, i32 9 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 46, i32 9 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 47, i32 9 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 48, i32 9 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 49, i32 9 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 50, i32 9 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 50, i32 23 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 51, i32 9 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 51, i32 23 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 52, i32 9 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 52, i32 23 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 60, i32 9 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 61, i32 9 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 62, i32 9 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 63, i32 9 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 64, i32 9 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 65, i32 9 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 66, i32 9 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 67, i32 9 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 68, i32 9 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 69, i32 9 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 70, i32 9 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 71, i32 9 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 72, i32 9 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 73, i32 9 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 74, i32 9 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 75, i32 9 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 76, i32 9 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 77, i32 9 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 78, i32 9 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 79, i32 9 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 80, i32 9 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 81, i32 9 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 82, i32 9 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 83, i32 9 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 84, i32 9 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 85, i32 9 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 86, i32 9 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 87, i32 9 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 88, i32 9 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 89, i32 9 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 90, i32 9 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 91, i32 9 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 92, i32 9 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 93, i32 9 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 94, i32 9 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 95, i32 9 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 96, i32 9 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 97, i32 9 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 98, i32 9 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 99, i32 9 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 100, i32 9 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 101, i32 9 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 102, i32 9 }
@___asan_gen_.295 = private unnamed_addr constant [13 x i8] c"plla_outputs\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 21, i32 31 }
@___asan_gen_.298 = private unnamed_addr constant [11 x i8] c"plla_icpll\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 19, i32 12 }
@___asan_gen_.301 = private unnamed_addr constant [9 x i8] c"plla_out\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 17, i32 11 }
@___asan_gen_.304 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.305 = private constant [30 x i8] c"../drivers/clk/at91/sama5d3.c\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 10, i32 8 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__of_table_sama5d3_pmc, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @sama5d3_systemck, ptr @sama5d3_periphck, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @plla_characteristics, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @mck_characteristics, ptr @mck_lock, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @sama5d3_pcr_layout, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @plla_outputs, ptr @plla_icpll, ptr @plla_out, ptr @.str.69], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d3_systemck to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d3_periphck to i32), i32 688, i32 864, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plla_characteristics to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mck_characteristics to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mck_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d3_pcr_layout to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plla_outputs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plla_icpll to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plla_out to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sama5d3_pmc_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %parent_names = alloca [5 x ptr], align 4
  %name = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %parent_names) #5
  %0 = getelementptr inbounds [5 x ptr], ptr %parent_names, i32 0, i32 1
  %1 = getelementptr inbounds [5 x ptr], ptr %parent_names, i32 0, i32 2
  %2 = getelementptr inbounds [5 x ptr], ptr %parent_names, i32 0, i32 3
  %3 = getelementptr inbounds [5 x ptr], ptr %parent_names, i32 0, i32 4
  %4 = call ptr @memset(ptr %parent_names, i32 255, i32 20)
  %call = tail call i32 @of_property_match_string(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup129_crit_edge, label %if.end

entry.cleanup129_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup129

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef %call) #5
  %call2 = tail call i32 @of_property_match_string(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup129_crit_edge, label %if.end5

if.end.cleanup129_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup129

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef %call2) #5
  %call7 = tail call ptr @device_node_to_regmap(ptr noundef %np) #5
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end5.cleanup129_crit_edge, label %if.end10

if.end5.cleanup129_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup129

if.end10:                                         ; preds = %if.end5
  %call13 = tail call ptr @pmc_data_allocate(i32 noundef 8, i32 noundef 11, i32 noundef 50, i32 noundef 0, i32 noundef 3) #5
  %tobool.not = icmp eq ptr %call13, null
  br i1 %tobool.not, label %if.end10.cleanup129_crit_edge, label %if.end15

if.end10.cleanup129_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup129

if.end15:                                         ; preds = %if.end10
  %call16 = tail call ptr @at91_clk_register_main_rc_osc(ptr noundef %call7, ptr noundef nonnull @.str.3, i32 noundef 12000000, i32 noundef 50000000) #8
  %cmp.i206 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i206, label %if.end15.err_free_crit_edge, label %if.end19

if.end15.err_free_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end19:                                         ; preds = %if.end15
  %call.i = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.4, ptr noundef null) #5
  %tobool.i = icmp ne ptr %call.i, null
  %call22 = tail call ptr @at91_clk_register_main_osc(ptr noundef %call7, ptr noundef nonnull @.str.5, ptr noundef %call6, i1 noundef zeroext %tobool.i) #8
  %cmp.i207 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i207, label %if.end19.err_free_crit_edge, label %if.end25

if.end19.err_free_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end25:                                         ; preds = %if.end19
  %5 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.3, ptr %parent_names, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.5, ptr %0, align 4
  %call27 = call ptr @at91_clk_register_sam9x5_main(ptr noundef %call7, ptr noundef nonnull @.str.6, ptr noundef nonnull %parent_names, i32 noundef 2) #8
  %cmp.i208 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i208, label %if.end25.err_free_crit_edge, label %if.end30

if.end25.err_free_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end30:                                         ; preds = %if.end25
  %call31 = call ptr @at91_clk_register_pll(ptr noundef %call7, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i8 noundef zeroext 0, ptr noundef nonnull @sama5d3_pll_layout, ptr noundef nonnull @plla_characteristics) #8
  %cmp.i209 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i209, label %if.end30.err_free_crit_edge, label %if.end34

if.end30.err_free_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end34:                                         ; preds = %if.end30
  %call35 = call ptr @at91_clk_register_plldiv(ptr noundef %call7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7) #8
  %cmp.i210 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i210, label %if.end34.err_free_crit_edge, label %if.end38

if.end34.err_free_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end38:                                         ; preds = %if.end34
  %chws = getelementptr inbounds %struct.pmc_data, ptr %call13, i32 0, i32 1
  %7 = ptrtoint ptr %chws to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chws, align 4
  %arrayidx39 = getelementptr ptr, ptr %8, i32 7
  %9 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call35, ptr %arrayidx39, align 4
  %call40 = call ptr @at91_clk_register_utmi(ptr noundef %call7, ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6) #8
  %cmp.i211 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i211, label %if.end38.err_free_crit_edge, label %if.end43

if.end38.err_free_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end43:                                         ; preds = %if.end38
  %10 = ptrtoint ptr %chws to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chws, align 4
  %arrayidx45 = getelementptr ptr, ptr %11, i32 2
  %12 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call40, ptr %arrayidx45, align 4
  %13 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call1, ptr %parent_names, align 4
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.6, ptr %0, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.8, ptr %1, align 4
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.9, ptr %2, align 4
  %call51 = call ptr @at91_clk_register_master_pres(ptr noundef %call7, ptr noundef nonnull @.str.10, i32 noundef 4, ptr noundef nonnull %parent_names, ptr noundef nonnull @at91sam9x5_master_layout, ptr noundef nonnull @mck_characteristics, ptr noundef nonnull @mck_lock, i32 noundef 1, i32 noundef -2147483648) #8
  %cmp.i212 = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i212, label %if.end43.err_free_crit_edge, label %if.end54

if.end43.err_free_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end54:                                         ; preds = %if.end43
  %call55 = call ptr @at91_clk_register_master_div(ptr noundef %call7, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, ptr noundef nonnull @at91sam9x5_master_layout, ptr noundef nonnull @mck_characteristics, ptr noundef nonnull @mck_lock, i32 noundef 1, i32 noundef 0) #8
  %cmp.i213 = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i213, label %if.end54.err_free_crit_edge, label %if.end58

if.end54.err_free_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end58:                                         ; preds = %if.end54
  %17 = ptrtoint ptr %chws to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chws, align 4
  %arrayidx60 = getelementptr ptr, ptr %18, i32 1
  %19 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call55, ptr %arrayidx60, align 4
  %20 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.8, ptr %parent_names, align 4
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.9, ptr %0, align 4
  %call64 = call ptr @at91sam9x5_clk_register_usb(ptr noundef %call7, ptr noundef nonnull @.str.12, ptr noundef nonnull %parent_names, i8 noundef zeroext 2) #8
  %cmp.i214 = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i214, label %if.end58.err_free_crit_edge, label %if.end67

if.end58.err_free_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end67:                                         ; preds = %if.end58
  %call69 = call ptr @at91sam9x5_clk_register_smd(ptr noundef %call7, ptr noundef nonnull @.str.13, ptr noundef nonnull %parent_names, i8 noundef zeroext 2) #8
  %cmp.i215 = icmp ugt ptr %call69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i215, label %if.end67.err_free_crit_edge, label %if.end72

if.end67.err_free_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end72:                                         ; preds = %if.end67
  %22 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call1, ptr %parent_names, align 4
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.6, ptr %0, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.8, ptr %1, align 4
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.9, ptr %2, align 4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.11, ptr %3, align 4
  %pchws = getelementptr inbounds %struct.pmc_data, ptr %call13, i32 0, i32 9
  br label %for.body

for.cond90.preheader:                             ; preds = %for.inc
  %shws = getelementptr inbounds %struct.pmc_data, ptr %call13, i32 0, i32 3
  br label %for.body93

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end72
  %i.0222 = phi i32 [ 0, %if.end72 ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %name) #5
  %27 = call ptr @memset(ptr %name, i32 255, i32 6)
  %call81 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 6, ptr noundef nonnull @.str.14, i32 noundef %i.0222)
  %conv84 = trunc i32 %i.0222 to i8
  %call85 = call ptr @at91_clk_register_programmable(ptr noundef %call7, ptr noundef nonnull %name, ptr noundef nonnull %parent_names, i8 noundef zeroext 5, i8 noundef zeroext %conv84, ptr noundef nonnull @at91sam9x5_programmable_layout, ptr noundef null) #8
  %cmp.i216 = icmp ugt ptr %call85, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i216, label %cleanup, label %for.inc

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %name) #5
  br label %err_free

for.inc:                                          ; preds = %for.body
  %28 = ptrtoint ptr %pchws to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pchws, align 4
  %arrayidx89 = getelementptr ptr, ptr %29, i32 %i.0222
  %30 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call85, ptr %arrayidx89, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %name) #5
  %inc = add nuw nsw i32 %i.0222, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.cond90.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond107.preheader:                            ; preds = %if.end100
  %phws = getelementptr inbounds %struct.pmc_data, ptr %call13, i32 0, i32 5
  br label %for.body110

for.body93:                                       ; preds = %if.end100.for.body93_crit_edge, %for.cond90.preheader
  %i.1223 = phi i32 [ 0, %for.cond90.preheader ], [ %inc105, %if.end100.for.body93_crit_edge ]
  %arrayidx94 = getelementptr [8 x %struct.anon.41], ptr @sama5d3_systemck, i32 0, i32 %i.1223
  %31 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx94, align 4
  %p = getelementptr [8 x %struct.anon.41], ptr @sama5d3_systemck, i32 0, i32 %i.1223, i32 1
  %33 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %p, align 4
  %id = getelementptr [8 x %struct.anon.41], ptr @sama5d3_systemck, i32 0, i32 %i.1223, i32 2
  %35 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %id, align 4
  %call97 = call ptr @at91_clk_register_system(ptr noundef %call7, ptr noundef %32, ptr noundef %34, i8 noundef zeroext %36) #8
  %cmp.i217 = icmp ugt ptr %call97, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i217, label %for.body93.err_free_crit_edge, label %if.end100

for.body93.err_free_crit_edge:                    ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end100:                                        ; preds = %for.body93
  %37 = ptrtoint ptr %shws to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %shws, align 4
  %idxprom = zext i8 %36 to i32
  %arrayidx103 = getelementptr ptr, ptr %38, i32 %idxprom
  %39 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call97, ptr %arrayidx103, align 4
  %inc105 = add nuw nsw i32 %i.1223, 1
  %exitcond226.not = icmp eq i32 %inc105, 8
  br i1 %exitcond226.not, label %for.cond107.preheader, label %if.end100.for.body93_crit_edge

if.end100.for.body93_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body93

for.body110:                                      ; preds = %if.end120.for.body110_crit_edge, %for.cond107.preheader
  %i.2224 = phi i32 [ 0, %for.cond107.preheader ], [ %inc126, %if.end120.for.body110_crit_edge ]
  %arrayidx111 = getelementptr [43 x %struct.anon.42], ptr @sama5d3_periphck, i32 0, i32 %i.2224
  %40 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx111, align 4
  %id114 = getelementptr [43 x %struct.anon.42], ptr @sama5d3_periphck, i32 0, i32 %i.2224, i32 1
  %42 = ptrtoint ptr %id114 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %id114, align 4
  %conv115 = zext i8 %43 to i32
  %r = getelementptr [43 x %struct.anon.42], ptr @sama5d3_periphck, i32 0, i32 %i.2224, i32 2
  %call117 = call ptr @at91_clk_register_sam9x5_peripheral(ptr noundef %call7, ptr noundef nonnull @pmc_pcr_lock, ptr noundef nonnull @sama5d3_pcr_layout, ptr noundef %41, ptr noundef nonnull @.str.11, i32 noundef %conv115, ptr noundef %r, i32 noundef -2147483648) #8
  %cmp.i218 = icmp ugt ptr %call117, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i218, label %for.body110.err_free_crit_edge, label %if.end120

for.body110.err_free_crit_edge:                   ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end120:                                        ; preds = %for.body110
  %44 = ptrtoint ptr %phws to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %phws, align 4
  %arrayidx124 = getelementptr ptr, ptr %45, i32 %conv115
  %46 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call117, ptr %arrayidx124, align 4
  %inc126 = add nuw nsw i32 %i.2224, 1
  %exitcond227.not = icmp eq i32 %inc126, 43
  br i1 %exitcond227.not, label %for.end127, label %if.end120.for.body110_crit_edge

if.end120.for.body110_crit_edge:                  ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body110

for.end127:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #7
  %call128 = call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_pmc_get, ptr noundef nonnull %call13) #5
  br label %cleanup129

err_free:                                         ; preds = %for.body110.err_free_crit_edge, %for.body93.err_free_crit_edge, %cleanup, %if.end67.err_free_crit_edge, %if.end58.err_free_crit_edge, %if.end54.err_free_crit_edge, %if.end43.err_free_crit_edge, %if.end38.err_free_crit_edge, %if.end34.err_free_crit_edge, %if.end30.err_free_crit_edge, %if.end25.err_free_crit_edge, %if.end19.err_free_crit_edge, %if.end15.err_free_crit_edge
  call void @kfree(ptr noundef nonnull %call13) #5
  br label %cleanup129

cleanup129:                                       ; preds = %err_free, %for.end127, %if.end10.cleanup129_crit_edge, %if.end5.cleanup129_crit_edge, %if.end.cleanup129_crit_edge, %entry.cleanup129_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %parent_names) #5
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
declare dso_local ptr @at91_clk_register_utmi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_master_pres(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_master_div(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91sam9x5_clk_register_usb(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91sam9x5_clk_register_smd(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3 section ".init.text"

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !157}
!llvm.module.flags = !{!159, !160, !161, !162, !163, !164, !165, !166}
!llvm.ident = !{!167}

!0 = !{ptr @__of_table_sama5d3_pmc, !1, !"__of_table_sama5d3_pmc", i1 false, i1 false}
!1 = !{!"../drivers/clk/at91/sama5d3.c", i32 258, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/at91/sama5d3.c", i32 115, i32 35}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/at91/sama5d3.c", i32 115, i32 50}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/at91/sama5d3.c", i32 121, i32 50}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/at91/sama5d3.c", i32 136, i32 45}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/at91/sama5d3.c", i32 141, i32 37}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/at91/sama5d3.c", i32 143, i32 42}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/at91/sama5d3.c", i32 150, i32 45}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/at91/sama5d3.c", i32 154, i32 37}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/at91/sama5d3.c", i32 159, i32 40}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/at91/sama5d3.c", i32 165, i32 44}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/at91/sama5d3.c", i32 175, i32 45}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/at91/sama5d3.c", i32 183, i32 44}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/at91/sama5d3.c", i32 195, i32 43}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/at91/sama5d3.c", i32 199, i32 43}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/at91/sama5d3.c", i32 211, i32 32}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/at91/sama5d3.c", i32 45, i32 9}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/at91/sama5d3.c", i32 46, i32 9}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/at91/sama5d3.c", i32 47, i32 9}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/at91/sama5d3.c", i32 48, i32 9}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/at91/sama5d3.c", i32 49, i32 9}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/at91/sama5d3.c", i32 50, i32 9}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/at91/sama5d3.c", i32 50, i32 23}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/at91/sama5d3.c", i32 51, i32 9}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/at91/sama5d3.c", i32 51, i32 23}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/at91/sama5d3.c", i32 52, i32 9}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/at91/sama5d3.c", i32 52, i32 23}
!54 = !{ptr @sama5d3_systemck, !55, !"sama5d3_systemck", i1 false, i1 false}
!55 = !{!"../drivers/clk/at91/sama5d3.c", i32 44, i32 3}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/at91/sama5d3.c", i32 60, i32 9}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/at91/sama5d3.c", i32 61, i32 9}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/at91/sama5d3.c", i32 62, i32 9}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/at91/sama5d3.c", i32 63, i32 9}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/at91/sama5d3.c", i32 64, i32 9}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/at91/sama5d3.c", i32 65, i32 9}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/at91/sama5d3.c", i32 66, i32 9}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/at91/sama5d3.c", i32 67, i32 9}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/at91/sama5d3.c", i32 68, i32 9}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/at91/sama5d3.c", i32 69, i32 9}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/at91/sama5d3.c", i32 70, i32 9}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/at91/sama5d3.c", i32 71, i32 9}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/at91/sama5d3.c", i32 72, i32 9}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/at91/sama5d3.c", i32 73, i32 9}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/at91/sama5d3.c", i32 74, i32 9}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/at91/sama5d3.c", i32 75, i32 9}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/at91/sama5d3.c", i32 76, i32 9}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/at91/sama5d3.c", i32 77, i32 9}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/at91/sama5d3.c", i32 78, i32 9}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/at91/sama5d3.c", i32 79, i32 9}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/at91/sama5d3.c", i32 80, i32 9}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/at91/sama5d3.c", i32 81, i32 9}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/at91/sama5d3.c", i32 82, i32 9}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/at91/sama5d3.c", i32 83, i32 9}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/at91/sama5d3.c", i32 84, i32 9}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/at91/sama5d3.c", i32 85, i32 9}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/at91/sama5d3.c", i32 86, i32 9}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/at91/sama5d3.c", i32 87, i32 9}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/at91/sama5d3.c", i32 88, i32 9}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/at91/sama5d3.c", i32 89, i32 9}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/at91/sama5d3.c", i32 90, i32 9}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/at91/sama5d3.c", i32 91, i32 9}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/at91/sama5d3.c", i32 92, i32 9}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/at91/sama5d3.c", i32 93, i32 9}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/at91/sama5d3.c", i32 94, i32 9}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/at91/sama5d3.c", i32 95, i32 9}
!128 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/at91/sama5d3.c", i32 96, i32 9}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/at91/sama5d3.c", i32 97, i32 9}
!132 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/at91/sama5d3.c", i32 98, i32 9}
!134 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/at91/sama5d3.c", i32 99, i32 9}
!136 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/at91/sama5d3.c", i32 100, i32 9}
!138 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/at91/sama5d3.c", i32 101, i32 9}
!140 = !{ptr @.str.68, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/at91/sama5d3.c", i32 102, i32 9}
!142 = !{ptr @sama5d3_periphck, !143, !"sama5d3_periphck", i1 false, i1 false}
!143 = !{!"../drivers/clk/at91/sama5d3.c", i32 59, i32 3}
!144 = !{ptr @plla_characteristics, !145, !"plla_characteristics", i1 false, i1 false}
!145 = !{!"../drivers/clk/at91/sama5d3.c", i32 25, i32 45}
!146 = !{ptr @plla_outputs, !147, !"plla_outputs", i1 false, i1 false}
!147 = !{!"../drivers/clk/at91/sama5d3.c", i32 21, i32 31}
!148 = !{ptr @plla_icpll, !149, !"plla_icpll", i1 false, i1 false}
!149 = !{!"../drivers/clk/at91/sama5d3.c", i32 19, i32 12}
!150 = !{ptr @plla_out, !151, !"plla_out", i1 false, i1 false}
!151 = !{!"../drivers/clk/at91/sama5d3.c", i32 17, i32 11}
!152 = !{ptr @mck_characteristics, !153, !"mck_characteristics", i1 false, i1 false}
!153 = !{!"../drivers/clk/at91/sama5d3.c", i32 12, i32 48}
!154 = !{ptr @.str.69, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/at91/sama5d3.c", i32 10, i32 8}
!156 = !{ptr @mck_lock, !155, !"mck_lock", i1 false, i1 false}
!157 = !{ptr @sama5d3_pcr_layout, !158, !"sama5d3_pcr_layout", i1 false, i1 false}
!158 = !{!"../drivers/clk/at91/sama5d3.c", i32 33, i32 36}
!159 = !{i32 1, !"wchar_size", i32 2}
!160 = !{i32 1, !"min_enum_size", i32 4}
!161 = !{i32 8, !"branch-target-enforcement", i32 0}
!162 = !{i32 8, !"sign-return-address", i32 0}
!163 = !{i32 8, !"sign-return-address-all", i32 0}
!164 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!165 = !{i32 7, !"uwtable", i32 1}
!166 = !{i32 7, !"frame-pointer", i32 2}
!167 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
