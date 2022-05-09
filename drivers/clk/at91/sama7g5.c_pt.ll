; ModuleID = '/llk/IR_all_yes/drivers/clk/at91/sama7g5.c_pt.bc'
source_filename = "../drivers/clk/at91/sama7g5.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.anon.41 = type { ptr, ptr, i8 }
%struct.anon.42 = type { ptr, ptr, %struct.clk_range, i8, i8 }
%struct.clk_range = type { i32, i32 }
%struct.anon.43 = type { ptr, [8 x ptr], [8 x i8], %struct.clk_range, i32, i8, i8 }
%struct.anon.44 = type { ptr, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clk_master_layout = type { i32, i32, i8 }
%struct.clk_master_characteristics = type { %struct.clk_range, [5 x i32], i8 }
%struct.anon.45 = type { ptr, [4 x ptr], i32, i8, [4 x i8], i8, i8 }
%struct.clk_programmable_layout = type { i8, i8, i8, i8, i8 }
%struct.clk_pcr_layout = type { i32, i32, i32, i32, i32 }
%struct.clk_pll_layout = type { i32, i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.clk_pll_characteristics = type { %struct.clk_range, i32, ptr, ptr, ptr, i8 }
%struct.pmc_data = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, [0 x ptr] }

@__of_table_sama7g5_pmc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama7g5_pmc_setup }, section "__clk_of_table", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clock-names\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"td_slck\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"md_slck\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"main_xtal\00", [22 x i8] zeroinitializer }, align 32
@sama7g5_systemck = internal constant { [8 x %struct.anon.41], [32 x i8] } { [8 x %struct.anon.41] [%struct.anon.41 { ptr @.str.18, ptr @.str.19, i8 8 }, %struct.anon.41 { ptr @.str.20, ptr @.str.21, i8 9 }, %struct.anon.41 { ptr @.str.22, ptr @.str.23, i8 10 }, %struct.anon.41 { ptr @.str.24, ptr @.str.25, i8 11 }, %struct.anon.41 { ptr @.str.26, ptr @.str.27, i8 12 }, %struct.anon.41 { ptr @.str.28, ptr @.str.29, i8 13 }, %struct.anon.41 { ptr @.str.30, ptr @.str.31, i8 14 }, %struct.anon.41 { ptr @.str.32, ptr @.str.33, i8 15 }], [32 x i8] zeroinitializer }, align 32
@sama7g5_periphck = internal constant { [72 x %struct.anon.42], [352 x i8] } { [72 x %struct.anon.42] [%struct.anon.42 { ptr @.str.34, ptr @.str.9, %struct.clk_range zeroinitializer, i8 0, i8 11 }, %struct.anon.42 { ptr @.str.35, ptr @.str.9, %struct.clk_range zeroinitializer, i8 0, i8 18 }, %struct.anon.42 { ptr @.str.36, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 19 }, %struct.anon.42 { ptr @.str.38, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 21 }, %struct.anon.42 { ptr @.str.39, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 22 }, %struct.anon.42 { ptr @.str.40, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 23 }, %struct.anon.42 { ptr @.str.41, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 24 }, %struct.anon.42 { ptr @.str.42, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 25 }, %struct.anon.42 { ptr @.str.43, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 27 }, %struct.anon.42 { ptr @.str.44, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 28 }, %struct.anon.42 { ptr @.str.45, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 30 }, %struct.anon.42 { ptr @.str.46, ptr @.str.9, %struct.clk_range zeroinitializer, i8 0, i8 32 }, %struct.anon.42 { ptr @.str.47, ptr @.str.48, %struct.clk_range { i32 0, i32 266000000 }, i8 1, i8 33 }, %struct.anon.42 { ptr @.str.49, ptr @.str.48, %struct.clk_range { i32 0, i32 266000000 }, i8 1, i8 34 }, %struct.anon.42 { ptr @.str.50, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 37 }, %struct.anon.42 { ptr @.str.51, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 38 }, %struct.anon.42 { ptr @.str.52, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 39 }, %struct.anon.42 { ptr @.str.53, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 40 }, %struct.anon.42 { ptr @.str.54, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 41 }, %struct.anon.42 { ptr @.str.55, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 42 }, %struct.anon.42 { ptr @.str.56, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 43 }, %struct.anon.42 { ptr @.str.57, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 44 }, %struct.anon.42 { ptr @.str.58, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 45 }, %struct.anon.42 { ptr @.str.59, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 46 }, %struct.anon.42 { ptr @.str.60, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 47 }, %struct.anon.42 { ptr @.str.61, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 48 }, %struct.anon.42 { ptr @.str.62, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 49 }, %struct.anon.42 { ptr @.str.63, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 51 }, %struct.anon.42 { ptr @.str.64, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 52 }, %struct.anon.42 { ptr @.str.65, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 55 }, %struct.anon.42 { ptr @.str.66, ptr @.str.48, %struct.clk_range { i32 0, i32 266000000 }, i8 1, i8 56 }, %struct.anon.42 { ptr @.str.67, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 57 }, %struct.anon.42 { ptr @.str.68, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 58 }, %struct.anon.42 { ptr @.str.69, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 60 }, %struct.anon.42 { ptr @.str.70, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 61 }, %struct.anon.42 { ptr @.str.71, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 62 }, %struct.anon.42 { ptr @.str.72, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 63 }, %struct.anon.42 { ptr @.str.73, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 64 }, %struct.anon.42 { ptr @.str.74, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 65 }, %struct.anon.42 { ptr @.str.75, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 66 }, %struct.anon.42 { ptr @.str.76, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 68 }, %struct.anon.42 { ptr @.str.77, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 69 }, %struct.anon.42 { ptr @.str.78, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 70 }, %struct.anon.42 { ptr @.str.79, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 71 }, %struct.anon.42 { ptr @.str.80, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 72 }, %struct.anon.42 { ptr @.str.81, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 73 }, %struct.anon.42 { ptr @.str.82, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 74 }, %struct.anon.42 { ptr @.str.83, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 75 }, %struct.anon.42 { ptr @.str.84, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 77 }, %struct.anon.42 { ptr @.str.85, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 78 }, %struct.anon.42 { ptr @.str.86, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 79 }, %struct.anon.42 { ptr @.str.87, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 80 }, %struct.anon.42 { ptr @.str.88, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 81 }, %struct.anon.42 { ptr @.str.89, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 82 }, %struct.anon.42 { ptr @.str.90, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 83 }, %struct.anon.42 { ptr @.str.91, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 84 }, %struct.anon.42 { ptr @.str.92, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 85 }, %struct.anon.42 { ptr @.str.93, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 86 }, %struct.anon.42 { ptr @.str.94, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 87 }, %struct.anon.42 { ptr @.str.95, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 88 }, %struct.anon.42 { ptr @.str.96, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 89 }, %struct.anon.42 { ptr @.str.97, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 90 }, %struct.anon.42 { ptr @.str.98, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 91 }, %struct.anon.42 { ptr @.str.99, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 92 }, %struct.anon.42 { ptr @.str.100, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 93 }, %struct.anon.42 { ptr @.str.101, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 94 }, %struct.anon.42 { ptr @.str.102, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 95 }, %struct.anon.42 { ptr @.str.103, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 96 }, %struct.anon.42 { ptr @.str.104, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 97 }, %struct.anon.42 { ptr @.str.105, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 104 }, %struct.anon.42 { ptr @.str.106, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 105 }, %struct.anon.42 { ptr @.str.107, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 106 }], [352 x i8] zeroinitializer }, align 32
@sama7g5_gck = internal constant { [46 x %struct.anon.43], [696 x i8] } { [46 x %struct.anon.43] [%struct.anon.43 { ptr @.str.108, [8 x ptr] [ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\07\09\00\00\00\00\00", %struct.clk_range { i32 0, i32 100000000 }, i32 -2147483648, i8 3, i8 26 }, %struct.anon.43 { ptr @.str.109, [8 x ptr] [ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\09\00\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 3, i8 1, i8 30 }, %struct.anon.43 { ptr @.str.110, [8 x ptr] [ptr @.str.12, ptr @.str.13, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\06\07\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 27000000 }, i32 -2147483648, i8 2, i8 33 }, %struct.anon.43 { ptr @.str.111, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 38 }, %struct.anon.43 { ptr @.str.112, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 39 }, %struct.anon.43 { ptr @.str.113, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 40 }, %struct.anon.43 { ptr @.str.114, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 41 }, %struct.anon.43 { ptr @.str.115, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 42 }, %struct.anon.43 { ptr @.str.116, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 43 }, %struct.anon.43 { ptr @.str.117, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 44 }, %struct.anon.43 { ptr @.str.118, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 45 }, %struct.anon.43 { ptr @.str.119, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 46 }, %struct.anon.43 { ptr @.str.120, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 47 }, %struct.anon.43 { ptr @.str.121, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 48 }, %struct.anon.43 { ptr @.str.122, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 49 }, %struct.anon.43 { ptr @.str.123, [8 x ptr] [ptr @.str.16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\0A\00\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 125000000 }, i32 3, i8 1, i8 51 }, %struct.anon.43 { ptr @.str.124, [8 x ptr] [ptr @.str.16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\0A\00\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 50000000 }, i32 -2147483648, i8 1, i8 52 }, %struct.anon.43 { ptr @.str.125, [8 x ptr] [ptr @.str.15, ptr @.str.16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\09\0A\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 300000000 }, i32 -2147483648, i8 2, i8 53 }, %struct.anon.43 { ptr @.str.126, [8 x ptr] [ptr @.str.15, ptr @.str.16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\09\0A\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 300000000 }, i32 -2147483648, i8 2, i8 54 }, %struct.anon.43 { ptr @.str.127, [8 x ptr] [ptr @.str.11, ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\09\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 100000000 }, i32 4, i8 2, i8 57 }, %struct.anon.43 { ptr @.str.128, [8 x ptr] [ptr @.str.11, ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\09\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 100000000 }, i32 4, i8 2, i8 58 }, %struct.anon.43 { ptr @.str.129, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 61 }, %struct.anon.43 { ptr @.str.130, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 62 }, %struct.anon.43 { ptr @.str.131, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 63 }, %struct.anon.43 { ptr @.str.132, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 64 }, %struct.anon.43 { ptr @.str.133, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 65 }, %struct.anon.43 { ptr @.str.134, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 66 }, %struct.anon.43 { ptr @.str.135, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 50000000 }, i32 -2147483648, i8 2, i8 68 }, %struct.anon.43 { ptr @.str.136, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 50000000 }, i32 -2147483648, i8 2, i8 69 }, %struct.anon.43 { ptr @.str.137, [8 x ptr] [ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr null, ptr null, ptr null], [8 x i8] c"\05\07\08\09\0A\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 5, i8 70 }, %struct.anon.43 { ptr @.str.138, [8 x ptr] [ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr null, ptr null, ptr null], [8 x i8] c"\05\07\08\09\0A\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 5, i8 71 }, %struct.anon.43 { ptr @.str.139, [8 x ptr] [ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr null, ptr null, ptr null], [8 x i8] c"\05\07\08\09\0A\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 5, i8 72 }, %struct.anon.43 { ptr @.str.140, [8 x ptr] [ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr null, ptr null, ptr null], [8 x i8] c"\05\07\08\09\0A\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 5, i8 73 }, %struct.anon.43 { ptr @.str.141, [8 x ptr] [ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr null, ptr null, ptr null], [8 x i8] c"\05\07\08\09\0A\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 5, i8 74 }, %struct.anon.43 { ptr @.str.142, [8 x ptr] [ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr null, ptr null, ptr null], [8 x i8] c"\05\07\08\09\0A\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 5, i8 75 }, %struct.anon.43 { ptr @.str.143, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 78 }, %struct.anon.43 { ptr @.str.144, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 79 }, %struct.anon.43 { ptr @.str.145, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 208000000 }, i32 4, i8 2, i8 80 }, %struct.anon.43 { ptr @.str.146, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 208000000 }, i32 4, i8 2, i8 81 }, %struct.anon.43 { ptr @.str.147, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 208000000 }, i32 4, i8 2, i8 82 }, %struct.anon.43 { ptr @.str.148, [8 x ptr] [ptr @.str.11, ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\09\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 150000000 }, i32 4, i8 2, i8 84 }, %struct.anon.43 { ptr @.str.149, [8 x ptr] [ptr @.str.11, ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\09\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 25000000 }, i32 4, i8 2, i8 85 }, %struct.anon.43 { ptr @.str.150, [8 x ptr] [ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr null, ptr null, ptr null], [8 x i8] c"\05\07\08\09\0A\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 5, i8 88 }, %struct.anon.43 { ptr @.str.151, [8 x ptr] [ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr null, ptr null, ptr null], [8 x i8] c"\05\07\08\09\0A\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 5, i8 91 }, %struct.anon.43 { ptr @.str.152, [8 x ptr] zeroinitializer, [8 x i8] zeroinitializer, %struct.clk_range { i32 0, i32 32768 }, i32 -2147483648, i8 0, i8 94 }, %struct.anon.43 { ptr @.str.153, [8 x ptr] zeroinitializer, [8 x i8] zeroinitializer, %struct.clk_range { i32 0, i32 32768 }, i32 -2147483648, i8 0, i8 95 }], [696 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"main_rc_osc\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atmel,osc-bypass\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"main_osc\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mainck\00", [25 x i8] zeroinitializer }, align 32
@sama7g5_plls = internal constant { [7 x [7 x %struct.anon.44]], [296 x i8] } { [7 x [7 x %struct.anon.44]] [[7 x %struct.anon.44] [%struct.anon.44 { ptr @.str.154, ptr @.str.7, ptr @pll_layout_frac, ptr @cpu_pll_characteristics, i32 2048, i8 0, i8 0, i8 0 }, %struct.anon.44 { ptr @.str.8, ptr @.str.154, ptr @pll_layout_divpmc, ptr @cpu_pll_characteristics, i32 2052, i8 1, i8 4, i8 15 }, %struct.anon.44 zeroinitializer, %struct.anon.44 zeroinitializer, %struct.anon.44 zeroinitializer, %struct.anon.44 zeroinitializer, %struct.anon.44 zeroinitializer], [7 x %struct.anon.44] [%struct.anon.44 { ptr @.str.155, ptr @.str.7, ptr @pll_layout_frac, ptr @pll_characteristics, i32 2049, i8 0, i8 0, i8 0 }, %struct.anon.44 { ptr @.str.11, ptr @.str.155, ptr @pll_layout_divpmc, ptr @pll_characteristics, i32 2049, i8 1, i8 5, i8 0 }, %struct.anon.44 zeroinitializer, %struct.anon.44 zeroinitializer, %struct.anon.44 zeroinitializer, %struct.anon.44 zeroinitializer, %struct.anon.44 zeroinitializer], [7 x %struct.anon.44] [%struct.anon.44 { ptr @.str.156, ptr @.str.7, ptr @pll_layout_frac, ptr @pll_characteristics, i32 2049, i8 0, i8 0, i8 0 }, %struct.anon.44 { ptr @.str.12, ptr @.str.156, ptr @pll_layout_divpmc, ptr @pll_characteristics, i32 2049, i8 1, i8 0, i8 0 }, %struct.anon.44 zeroinitializer, %struct.anon.44 zeroinitializer, %struct.anon.44 zeroinitializer, %struct.anon.44 zeroinitializer, %struct.anon.44 zeroinitializer], [7 x %struct.anon.44] [%struct.anon.44 { ptr @.str.157, ptr @.str.7, ptr @pll_layout_frac, ptr @pll_characteristics, i32 1, i8 0, i8 0, i8 0 }, %struct.anon.44 { ptr @.str.13, ptr @.str.157, ptr @pll_layout_divpmc, ptr @pll_characteristics, i32 7, i8 1, i8 0, i8 0 }, %struct.anon.44 zeroinitializer, %struct.anon.44 zeroinitializer, %struct.anon.44 zeroinitializer, %struct.anon.44 zeroinitializer, %struct.anon.44 zeroinitializer], [7 x %struct.anon.44] [%struct.anon.44 { ptr @.str.158, ptr @.str.7, ptr @pll_layout_frac, ptr @pll_characteristics, i32 1, i8 0, i8 0, i8 0 }, %struct.anon.44 { ptr @.str.14, ptr @.str.158, ptr @pll_layout_divpmc, ptr @pll_characteristics, i32 7, i8 1, i8 0, i8 0 }, %struct.anon.44 zeroinitializer, %struct.anon.44 zeroinitializer, %struct.anon.44 zeroinitializer, %struct.anon.44 zeroinitializer, %struct.anon.44 zeroinitializer], [7 x %struct.anon.44] [%struct.anon.44 { ptr @.str.159, ptr @.str.3, ptr @pll_layout_frac, ptr @pll_characteristics, i32 1, i8 0, i8 0, i8 0 }, %struct.anon.44 { ptr @.str.15, ptr @.str.159, ptr @pll_layout_divpmc, ptr @pll_characteristics, i32 7, i8 1, i8 9, i8 0 }, %struct.anon.44 { ptr @.str.160, ptr @.str.159, ptr @pll_layout_divio, ptr @pll_characteristics, i32 7, i8 1, i8 10, i8 0 }, %struct.anon.44 zeroinitializer, %struct.anon.44 zeroinitializer, %struct.anon.44 zeroinitializer, %struct.anon.44 zeroinitializer], [7 x %struct.anon.44] [%struct.anon.44 { ptr @.str.161, ptr @.str.3, ptr @pll_layout_frac, ptr @pll_characteristics, i32 1, i8 0, i8 0, i8 0 }, %struct.anon.44 { ptr @.str.16, ptr @.str.161, ptr @pll_layout_divpmc, ptr @pll_characteristics, i32 7, i8 1, i8 0, i8 0 }, %struct.anon.44 zeroinitializer, %struct.anon.44 zeroinitializer, %struct.anon.44 zeroinitializer, %struct.anon.44 zeroinitializer, %struct.anon.44 zeroinitializer]], [296 x i8] zeroinitializer }, align 32
@pmc_pll_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.162, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cpupll_divpmcck\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mck0\00", [27 x i8] zeroinitializer }, align 32
@mck0_layout = internal constant { %struct.clk_master_layout, [20 x i8] } { %struct.clk_master_layout { i32 40, i32 1907, i8 4 }, [20 x i8] zeroinitializer }, align 32
@mck0_characteristics = internal constant { %struct.clk_master_characteristics, [32 x i8] } { %struct.clk_master_characteristics { %struct.clk_range { i32 32768, i32 200000000 }, [5 x i32] [i32 1, i32 2, i32 4, i32 3, i32 5], i8 1 }, [32 x i8] zeroinitializer }, align 32
@pmc_mck0_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.163, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@sama7g5_mckx = internal constant { [4 x %struct.anon.45], [32 x i8] } { [4 x %struct.anon.45] [%struct.anon.45 { ptr @.str.37, [4 x ptr] [ptr @.str.11, ptr null, ptr null, ptr null], i32 -2147483648, i8 1, [4 x i8] c"\05\00\00\00", i8 1, i8 1 }, %struct.anon.45 { ptr @.str.164, [4 x ptr] [ptr @.str.12, ptr null, ptr null, ptr null], i32 -2147483648, i8 1, [4 x i8] c"\06\00\00\00", i8 2, i8 1 }, %struct.anon.45 { ptr @.str.48, [4 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr null], i32 5, i8 3, [4 x i8] c"\05\06\07\00", i8 3, i8 0 }, %struct.anon.45 { ptr @.str.165, [4 x ptr] [ptr @.str.11, ptr null, ptr null, ptr null], i32 -2147483648, i8 1, [4 x i8] c"\05\00\00\00", i8 4, i8 1 }], [32 x i8] zeroinitializer }, align 32
@pmc_mckX_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.166, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"utmick\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"syspll_divpmcck\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ddrpll_divpmcck\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imgpll_divpmcck\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"baudpll_divpmcck\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"audiopll_divpmcck\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ethpll_divpmcck\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"prog%d\00", [25 x i8] zeroinitializer }, align 32
@programmable_layout = internal constant { %struct.clk_programmable_layout, [27 x i8] } { %struct.clk_programmable_layout { i8 -1, i8 8, i8 31, i8 0, i8 1 }, [27 x i8] zeroinitializer }, align 32
@sama7g5_prog_mux_table = internal global { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 1, i32 2, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10], [60 x i8] zeroinitializer }, align 32
@pmc_pcr_lock = external dso_local global %struct.spinlock, align 4
@sama7g5_pcr_layout = internal constant { %struct.clk_pcr_layout, [44 x i8] } { %struct.clk_pcr_layout { i32 136, i32 -2147483648, i32 0, i32 7936, i32 127 }, [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pck0\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"prog0\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pck1\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"prog1\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pck2\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"prog2\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pck3\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"prog3\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pck4\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"prog4\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pck5\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"prog5\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pck6\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"prog6\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pck7\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"prog7\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pioA_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"securam_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sfr_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mck1\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hsmc_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xdmac0_clk\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xdmac1_clk\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xdmac2_clk\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"acc_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aes_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tzaesbasc_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"asrc_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cpkcc_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"csi_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mck3\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"csi2dc_clk\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"eic_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"flex0_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"flex1_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"flex2_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"flex3_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"flex4_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"flex5_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"flex6_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"flex7_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"flex8_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"flex9_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"flex10_clk\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"flex11_clk\00", [21 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gmac0_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gmac1_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"icm_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"isc_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2smcc0_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2smcc1_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"matrix_clk\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mcan0_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mcan1_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mcan2_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mcan3_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mcan4_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mcan5_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pdmc0_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pdmc1_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pit64b0_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pit64b1_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pit64b2_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pit64b3_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pit64b4_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pit64b5_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qspi0_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qspi1_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sdmmc0_clk\00", [21 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sdmmc1_clk\00", [21 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sdmmc2_clk\00", [21 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sha_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spdifrx_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spdiftx_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssc0_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssc1_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tcb0_ch0_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tcb0_ch1_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tcb0_ch2_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tcb1_ch0_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tcb1_ch1_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tcb1_ch2_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tcpca_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tcpcb_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tdes_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"trng_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"udphsa_clk\00", [21 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"udphsb_clk\00", [21 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uhphs_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adc_gclk\00", [23 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"asrc_gclk\00", [22 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi_gclk\00", [23 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"flex0_gclk\00", [21 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"flex1_gclk\00", [21 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"flex2_gclk\00", [21 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"flex3_gclk\00", [21 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"flex4_gclk\00", [21 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"flex5_gclk\00", [21 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"flex6_gclk\00", [21 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"flex7_gclk\00", [21 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"flex8_gclk\00", [21 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"flex9_gclk\00", [21 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"flex10_gclk\00", [20 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"flex11_gclk\00", [20 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gmac0_gclk\00", [21 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gmac1_gclk\00", [21 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gmac0_tsu_gclk\00", [17 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gmac1_tsu_gclk\00", [17 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2smcc0_gclk\00", [19 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2smcc1_gclk\00", [19 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mcan0_gclk\00", [21 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mcan1_gclk\00", [21 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mcan2_gclk\00", [21 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mcan3_gclk\00", [21 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mcan4_gclk\00", [21 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mcan5_gclk\00", [21 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pdmc0_gclk\00", [21 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pdmc1_gclk\00", [21 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pit64b0_gclk\00", [19 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pit64b1_gclk\00", [19 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pit64b2_gclk\00", [19 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pit64b3_gclk\00", [19 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pit64b4_gclk\00", [19 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pit64b5_gclk\00", [19 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qspi0_gclk\00", [21 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qspi1_gclk\00", [21 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdmmc0_gclk\00", [20 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdmmc1_gclk\00", [20 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdmmc2_gclk\00", [20 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spdifrx_gclk\00", [19 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spdiftx_gclk\00", [19 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tcb0_ch0_gclk\00", [18 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tcb1_ch0_gclk\00", [18 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tcpca_gclk\00", [21 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tcpcb_gclk\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.154 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cpupll_fracck\00", [18 x i8] zeroinitializer }, align 32
@pll_layout_frac = internal constant { %struct.clk_pll_layout, [40 x i8] } { %struct.clk_pll_layout { i32 0, i32 -16777216, i32 4194303, i32 0, i32 0, i8 24, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@cpu_pll_characteristics = internal constant { %struct.clk_pll_characteristics, [36 x i8] } { %struct.clk_pll_characteristics { %struct.clk_range { i32 12000000, i32 50000000 }, i32 1, ptr @cpu_pll_outputs, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@pll_layout_divpmc = internal constant { %struct.clk_pll_layout, [40 x i8] } { %struct.clk_pll_layout { i32 0, i32 0, i32 0, i32 255, i32 536870912, i8 0, i8 0, i8 0, i8 29 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"syspll_fracck\00", [18 x i8] zeroinitializer }, align 32
@pll_characteristics = internal constant { %struct.clk_pll_characteristics, [36 x i8] } { %struct.clk_pll_characteristics { %struct.clk_range { i32 12000000, i32 50000000 }, i32 1, ptr @pll_outputs, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ddrpll_fracck\00", [18 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"imgpll_fracck\00", [18 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"baudpll_fracck\00", [17 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"audiopll_fracck\00", [16 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"audiopll_diviock\00", [47 x i8] zeroinitializer }, align 32
@pll_layout_divio = internal constant { %struct.clk_pll_layout, [40 x i8] } { %struct.clk_pll_layout { i32 0, i32 0, i32 0, i32 1044480, i32 1073741824, i8 0, i8 0, i8 12, i8 30 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ethpll_fracck\00", [18 x i8] zeroinitializer }, align 32
@cpu_pll_outputs = internal constant { [1 x %struct.clk_range], [24 x i8] } { [1 x %struct.clk_range] [%struct.clk_range { i32 2343750, i32 1000000002 }], [24 x i8] zeroinitializer }, align 32
@pll_outputs = internal constant { [1 x %struct.clk_range], [24 x i8] } { [1 x %struct.clk_range] [%struct.clk_range { i32 2343750, i32 1200000000 }], [24 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pmc_pll_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pmc_mck0_lock\00", [18 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mck2\00", [27 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mck4\00", [27 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pmc_mckX_lock\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 894, i32 35 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 894, i32 50 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 900, i32 50 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 906, i32 50 }
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"sama7g5_systemck\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 358, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [17 x i8] c"sama7g5_periphck\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 386, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [12 x i8] c"sama7g5_gck\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 479, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 929, i32 45 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 934, i32 37 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 936, i32 42 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 943, i32 45 }
@___asan_gen_.200 = private unnamed_addr constant [13 x i8] c"sama7g5_plls\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 142, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [13 x i8] c"pmc_pll_lock\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 994, i32 20 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 995, i32 44 }
@___asan_gen_.212 = private unnamed_addr constant [12 x i8] c"mck0_layout\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 859, i32 39 }
@___asan_gen_.215 = private unnamed_addr constant [21 x i8] c"mck0_characteristics\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 852, i32 48 }
@___asan_gen_.218 = private unnamed_addr constant [14 x i8] c"pmc_mck0_lock\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [13 x i8] c"sama7g5_mckx\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 315, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant [14 x i8] c"pmc_mckX_lock\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1032, i32 46 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1041, i32 20 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1042, i32 20 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1043, i32 20 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1044, i32 20 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1045, i32 20 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1046, i32 20 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1050, i32 32 }
@___asan_gen_.251 = private unnamed_addr constant [20 x i8] c"programmable_layout\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 866, i32 45 }
@___asan_gen_.254 = private unnamed_addr constant [23 x i8] c"sama7g5_prog_mux_table\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 370, i32 12 }
@___asan_gen_.257 = private unnamed_addr constant [19 x i8] c"sama7g5_pcr_layout\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 875, i32 36 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 359, i32 9 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 359, i32 23 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 360, i32 9 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 360, i32 23 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 361, i32 9 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 361, i32 23 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 362, i32 9 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 362, i32 23 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 363, i32 9 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 363, i32 23 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 364, i32 9 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 364, i32 23 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 365, i32 9 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 365, i32 23 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 366, i32 9 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 366, i32 23 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 387, i32 9 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 388, i32 9 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 389, i32 9 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 389, i32 25 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 390, i32 9 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 391, i32 9 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 392, i32 9 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 393, i32 9 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 394, i32 9 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 395, i32 9 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 396, i32 9 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 397, i32 9 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 398, i32 9 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 399, i32 9 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 399, i32 25 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 400, i32 9 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 401, i32 9 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 402, i32 9 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 403, i32 9 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 404, i32 9 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 405, i32 9 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 406, i32 9 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 407, i32 9 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 408, i32 9 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 409, i32 9 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 410, i32 9 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 411, i32 9 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 412, i32 9 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 413, i32 9 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 414, i32 9 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 415, i32 9 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 416, i32 9 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 417, i32 9 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 418, i32 9 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 419, i32 9 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 420, i32 9 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 421, i32 9 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 422, i32 9 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 423, i32 9 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 424, i32 9 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 425, i32 9 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 426, i32 9 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 427, i32 9 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 428, i32 9 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 429, i32 9 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 430, i32 9 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 431, i32 9 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 432, i32 9 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 433, i32 9 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 434, i32 9 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 435, i32 9 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 436, i32 9 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 437, i32 9 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 438, i32 9 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 439, i32 9 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 440, i32 9 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 441, i32 9 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 442, i32 9 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 443, i32 9 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 444, i32 9 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 445, i32 9 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 446, i32 9 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 447, i32 9 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 448, i32 9 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 449, i32 9 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 450, i32 9 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 451, i32 9 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 452, i32 9 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 453, i32 9 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 454, i32 9 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 455, i32 9 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 456, i32 9 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 457, i32 9 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 458, i32 9 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 480, i32 10 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 488, i32 10 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 496, i32 10 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 504, i32 10 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 512, i32 10 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 520, i32 10 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 528, i32 10 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 536, i32 10 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 544, i32 10 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 552, i32 10 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 560, i32 10 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 568, i32 10 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 576, i32 10 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 584, i32 10 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 592, i32 10 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 600, i32 10 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 608, i32 10 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 616, i32 10 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 624, i32 10 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 632, i32 10 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 640, i32 10 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 648, i32 10 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 656, i32 10 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 664, i32 10 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 672, i32 10 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 680, i32 10 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 688, i32 10 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 696, i32 10 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 704, i32 10 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 712, i32 10 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 721, i32 10 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 730, i32 10 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 739, i32 10 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 748, i32 10 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 757, i32 10 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 766, i32 10 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 774, i32 10 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 782, i32 10 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 790, i32 10 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 798, i32 10 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 806, i32 10 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 814, i32 9 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 822, i32 10 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 831, i32 10 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 840, i32 10 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 845, i32 10 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 144, i32 10 }
@___asan_gen_.671 = private unnamed_addr constant [16 x i8] c"pll_layout_frac\00", align 1
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 70, i32 36 }
@___asan_gen_.674 = private unnamed_addr constant [24 x i8] c"cpu_pll_characteristics\00", align 1
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 108, i32 45 }
@___asan_gen_.677 = private unnamed_addr constant [18 x i8] c"pll_layout_divpmc\00", align 1
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 78, i32 36 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 171, i32 10 }
@___asan_gen_.683 = private unnamed_addr constant [20 x i8] c"pll_characteristics\00", align 1
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 115, i32 45 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 197, i32 10 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 218, i32 10 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 235, i32 10 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 252, i32 10 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 268, i32 10 }
@___asan_gen_.701 = private unnamed_addr constant [17 x i8] c"pll_layout_divio\00", align 1
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 86, i32 36 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 279, i32 10 }
@___asan_gen_.707 = private unnamed_addr constant [16 x i8] c"cpu_pll_outputs\00", align 1
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 98, i32 31 }
@___asan_gen_.710 = private unnamed_addr constant [12 x i8] c"pll_outputs\00", align 1
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 103, i32 31 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 34, i32 8 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 35, i32 8 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 324, i32 9 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 339, i32 9 }
@___asan_gen_.725 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.726 = private constant [30 x i8] c"../drivers/clk/at91/sama7g5.c\00", align 1
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 36, i32 8 }
@llvm.compiler.used = appending global [188 x ptr] [ptr @__of_table_sama7g5_pmc, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @sama7g5_systemck, ptr @sama7g5_periphck, ptr @sama7g5_gck, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @sama7g5_plls, ptr @pmc_pll_lock, ptr @.str.8, ptr @.str.9, ptr @mck0_layout, ptr @mck0_characteristics, ptr @pmc_mck0_lock, ptr @sama7g5_mckx, ptr @pmc_mckX_lock, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @programmable_layout, ptr @sama7g5_prog_mux_table, ptr @sama7g5_pcr_layout, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @pll_layout_frac, ptr @cpu_pll_characteristics, ptr @pll_layout_divpmc, ptr @.str.155, ptr @pll_characteristics, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @pll_layout_divio, ptr @.str.161, ptr @cpu_pll_outputs, ptr @pll_outputs, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166], section "llvm.metadata"
@0 = internal global [187 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama7g5_systemck to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama7g5_periphck to i32), i32 1440, i32 1792, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama7g5_gck to i32), i32 2760, i32 3456, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama7g5_plls to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmc_pll_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mck0_layout to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mck0_characteristics to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmc_mck0_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama7g5_mckx to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmc_mckX_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @programmable_layout to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama7g5_prog_mux_table to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama7g5_pcr_layout to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_layout_frac to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_pll_characteristics to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_layout_divpmc to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_characteristics to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_layout_divio to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_pll_outputs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_outputs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sama7g5_pmc_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %parent_names = alloca [10 x ptr], align 4
  %name = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %parent_names) #9
  %0 = call ptr @memset(ptr %parent_names, i32 255, i32 40)
  %call = tail call i32 @of_property_match_string(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup415_crit_edge, label %if.end

entry.cleanup415_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup415

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef %call) #9
  %call2 = tail call i32 @of_property_match_string(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup415_crit_edge, label %if.end5

if.end.cleanup415_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup415

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef %call2) #9
  %call7 = tail call i32 @of_property_match_string(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end5.cleanup415_crit_edge, label %if.end10

if.end5.cleanup415_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup415

if.end10:                                         ; preds = %if.end5
  %call11 = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef %call7) #9
  %call12 = tail call ptr @device_node_to_regmap(ptr noundef %np) #9
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end10.cleanup415_crit_edge, label %if.end15

if.end10.cleanup415_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup415

if.end15:                                         ; preds = %if.end10
  %call20 = tail call ptr @pmc_data_allocate(i32 noundef 13, i32 noundef 16, i32 noundef 107, i32 noundef 96, i32 noundef 8) #9
  %tobool.not = icmp eq ptr %call20, null
  br i1 %tobool.not, label %if.end15.cleanup415_crit_edge, label %if.end22

if.end15.cleanup415_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup415

if.end22:                                         ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 200) #12
  %tobool24.not = icmp eq ptr %call7.i, null
  br i1 %tobool24.not, label %if.end22.if.end414_crit_edge, label %if.end26

if.end22.if.end414_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end414

if.end26:                                         ; preds = %if.end22
  %call27 = tail call ptr @at91_clk_register_main_rc_osc(ptr noundef %call12, ptr noundef nonnull @.str.4, i32 noundef 12000000, i32 noundef 50000000) #13
  %cmp.i616 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i616, label %if.end26.for.end413_crit_edge, label %if.end30

if.end26.for.end413_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end413

if.end30:                                         ; preds = %if.end26
  %call.i = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.5, ptr noundef null) #9
  %tobool.i = icmp ne ptr %call.i, null
  %call33 = tail call ptr @at91_clk_register_main_osc(ptr noundef %call12, ptr noundef nonnull @.str.6, ptr noundef %call11, i1 noundef zeroext %tobool.i) #13
  %cmp.i617 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i617, label %if.end30.for.end413_crit_edge, label %if.end36

if.end30.for.end413_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end413

if.end36:                                         ; preds = %if.end30
  %2 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.4, ptr %parent_names, align 4
  %arrayidx37 = getelementptr inbounds [10 x ptr], ptr %parent_names, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.6, ptr %arrayidx37, align 4
  %call38 = call ptr @at91_clk_register_sam9x5_main(ptr noundef %call12, ptr noundef nonnull @.str.7, ptr noundef nonnull %parent_names, i32 noundef 2) #13
  %cmp.i618 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i618, label %if.end36.for.end413_crit_edge, label %if.end41

if.end36.for.end413_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end413

if.end41:                                         ; preds = %if.end36
  %chws = getelementptr inbounds %struct.pmc_data, ptr %call20, i32 0, i32 1
  %4 = ptrtoint ptr %chws to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chws, align 4
  %arrayidx42 = getelementptr ptr, ptr %5, i32 3
  %6 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call38, ptr %arrayidx42, align 4
  br label %for.cond45.preheader

for.cond45.preheader:                             ; preds = %for.inc118.for.cond45.preheader_crit_edge, %if.end41
  %i.0684 = phi i32 [ 0, %if.end41 ], [ %inc119, %for.inc118.for.cond45.preheader_crit_edge ]
  %conv91 = trunc i32 %i.0684 to i8
  br label %for.body48

for.body48:                                       ; preds = %for.inc.for.body48_crit_edge, %for.cond45.preheader
  %j.0681 = phi i32 [ 0, %for.cond45.preheader ], [ %inc, %for.inc.for.body48_crit_edge ]
  %arrayidx50 = getelementptr [7 x [7 x %struct.anon.44]], ptr @sama7g5_plls, i32 0, i32 %i.0684, i32 %j.0681
  %7 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx50, align 4
  %tobool51.not = icmp eq ptr %8, null
  br i1 %tobool51.not, label %for.body48.for.inc_crit_edge, label %if.end53

for.body48.for.inc_crit_edge:                     ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end53:                                         ; preds = %for.body48
  %t = getelementptr [7 x [7 x %struct.anon.44]], ptr @sama7g5_plls, i32 0, i32 %i.0684, i32 %j.0681, i32 5
  %9 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %t, align 4
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i8 %10, label %if.end53.for.inc_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb84
  ]

if.end53.for.inc_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb:                                            ; preds = %if.end53
  %p = getelementptr [7 x [7 x %struct.anon.44]], ptr @sama7g5_plls, i32 0, i32 %i.0684, i32 %j.0681, i32 1
  %12 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %p, align 4
  %call59 = call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(7) @.str.7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then61, label %if.else

if.then61:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %chws to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chws, align 4
  %arrayidx63 = getelementptr ptr, ptr %15, i32 3
  %16 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx63, align 4
  br label %if.end69

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call67 = call ptr @of_clk_get_by_name(ptr noundef %np, ptr noundef %13) #9
  %call68 = call ptr @__clk_get_hw(ptr noundef %call67) #9
  br label %if.end69

if.end69:                                         ; preds = %if.else, %if.then61
  %parent_hw.0 = phi ptr [ %call68, %if.else ], [ %17, %if.then61 ]
  %c = getelementptr [7 x [7 x %struct.anon.44]], ptr @sama7g5_plls, i32 0, i32 %i.0684, i32 %j.0681, i32 3
  %18 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %c, align 4
  %l = getelementptr [7 x [7 x %struct.anon.44]], ptr @sama7g5_plls, i32 0, i32 %i.0684, i32 %j.0681, i32 2
  %20 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %l, align 4
  %f = getelementptr [7 x [7 x %struct.anon.44]], ptr @sama7g5_plls, i32 0, i32 %i.0684, i32 %j.0681, i32 4
  %22 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %f, align 4
  %call83 = call ptr @sam9x60_clk_register_frac_pll(ptr noundef %call12, ptr noundef nonnull @pmc_pll_lock, ptr noundef nonnull %8, ptr noundef %13, ptr noundef %parent_hw.0, i8 noundef zeroext %conv91, ptr noundef %19, ptr noundef %21, i32 noundef %23) #13
  br label %sw.epilog

sw.bb84:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %p90 = getelementptr [7 x [7 x %struct.anon.44]], ptr @sama7g5_plls, i32 0, i32 %i.0684, i32 %j.0681, i32 1
  %24 = ptrtoint ptr %p90 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %p90, align 4
  %c94 = getelementptr [7 x [7 x %struct.anon.44]], ptr @sama7g5_plls, i32 0, i32 %i.0684, i32 %j.0681, i32 3
  %26 = ptrtoint ptr %c94 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %c94, align 4
  %l97 = getelementptr [7 x [7 x %struct.anon.44]], ptr @sama7g5_plls, i32 0, i32 %i.0684, i32 %j.0681, i32 2
  %28 = ptrtoint ptr %l97 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %l97, align 4
  %f100 = getelementptr [7 x [7 x %struct.anon.44]], ptr @sama7g5_plls, i32 0, i32 %i.0684, i32 %j.0681, i32 4
  %30 = ptrtoint ptr %f100 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %f100, align 4
  %safe_div = getelementptr [7 x [7 x %struct.anon.44]], ptr @sama7g5_plls, i32 0, i32 %i.0684, i32 %j.0681, i32 7
  %32 = ptrtoint ptr %safe_div to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %safe_div, align 2
  %conv103 = zext i8 %33 to i32
  %call104 = call ptr @sam9x60_clk_register_div_pll(ptr noundef %call12, ptr noundef nonnull @pmc_pll_lock, ptr noundef nonnull %8, ptr noundef %25, i8 noundef zeroext %conv91, ptr noundef %27, ptr noundef %29, i32 noundef %31, i32 noundef %conv103) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb84, %if.end69
  %hw.0 = phi ptr [ %call104, %sw.bb84 ], [ %call83, %if.end69 ]
  %cmp.i619 = icmp ugt ptr %hw.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i619, label %sw.epilog.for.end413_crit_edge, label %if.end107

sw.epilog.for.end413_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end413

if.end107:                                        ; preds = %sw.epilog
  %eid = getelementptr [7 x [7 x %struct.anon.44]], ptr @sama7g5_plls, i32 0, i32 %i.0684, i32 %j.0681, i32 6
  %34 = ptrtoint ptr %eid to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %eid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool110.not = icmp eq i8 %35, 0
  br i1 %tobool110.not, label %if.end107.for.inc_crit_edge, label %if.then111

if.end107.for.inc_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then111:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %chws to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chws, align 4
  %idxprom = zext i8 %35 to i32
  %arrayidx116 = getelementptr ptr, ptr %37, i32 %idxprom
  %38 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %hw.0, ptr %arrayidx116, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then111, %if.end107.for.inc_crit_edge, %if.end53.for.inc_crit_edge, %for.body48.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.0681, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.inc118, label %for.inc.for.body48_crit_edge

for.inc.for.body48_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body48

for.inc118:                                       ; preds = %for.inc
  %inc119 = add nuw nsw i32 %i.0684, 1
  %exitcond714.not = icmp eq i32 %inc119, 7
  br i1 %exitcond714.not, label %for.end120, label %for.inc118.for.cond45.preheader_crit_edge

for.inc118.for.cond45.preheader_crit_edge:        ; preds = %for.inc118
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond45.preheader

for.end120:                                       ; preds = %for.inc118
  %39 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.8, ptr %parent_names, align 4
  %call122 = call ptr @at91_clk_register_master_div(ptr noundef %call12, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, ptr noundef nonnull @mck0_layout, ptr noundef nonnull @mck0_characteristics, ptr noundef nonnull @pmc_mck0_lock, i32 noundef 64, i32 noundef 5) #13
  %cmp.i620 = icmp ugt ptr %call122, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i620, label %for.end120.for.end413_crit_edge, label %if.end125

for.end120.for.end413_crit_edge:                  ; preds = %for.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end413

if.end125:                                        ; preds = %for.end120
  %40 = ptrtoint ptr %chws to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chws, align 4
  %arrayidx127 = getelementptr ptr, ptr %41, i32 1
  %42 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call122, ptr %arrayidx127, align 4
  %43 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call6, ptr %parent_names, align 4
  %44 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call1, ptr %arrayidx37, align 4
  %arrayidx130 = getelementptr inbounds [10 x ptr], ptr %parent_names, i32 0, i32 2
  %45 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.7, ptr %arrayidx130, align 4
  %arrayidx190 = getelementptr inbounds [10 x ptr], ptr %parent_names, i32 0, i32 3
  br label %for.body134

for.body134:                                      ; preds = %for.inc217.for.body134_crit_edge, %if.end125
  %i.1691 = phi i32 [ 0, %if.end125 ], [ %inc218, %for.inc217.for.body134_crit_edge ]
  %46 = shl nuw nsw i32 %i.1691, 5
  %47 = or i32 %46, 4
  %uglygep = getelementptr i8, ptr @sama7g5_mckx, i32 %47
  %arrayidx135 = getelementptr [4 x %struct.anon.45], ptr @sama7g5_mckx, i32 0, i32 %i.1691
  %ep_count = getelementptr [4 x %struct.anon.45], ptr @sama7g5_mckx, i32 0, i32 %i.1691, i32 3
  %48 = ptrtoint ptr %ep_count to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ep_count, align 4
  %add137 = add i8 %49, 3
  %conv139 = zext i8 %add137 to i32
  %50 = shl nuw nsw i32 %conv139, 2
  %call8.i = call noalias align 128 ptr @__kmalloc(i32 noundef %50, i32 noundef 3264) #15
  %tobool141.not = icmp eq ptr %call8.i, null
  br i1 %tobool141.not, label %for.body134.for.cond406.preheader_crit_edge, label %for.body164.lr.ph

for.body134.for.cond406.preheader_crit_edge:      ; preds = %for.body134
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond406.preheader

for.body164.lr.ph:                                ; preds = %for.body134
  %51 = ptrtoint ptr %call8.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %call8.i, align 128
  %arrayidx151.1 = getelementptr i32, ptr %call8.i, i32 1
  %52 = ptrtoint ptr %arrayidx151.1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %arrayidx151.1, align 4
  %arrayidx151.2 = getelementptr i32, ptr %call8.i, i32 2
  %53 = ptrtoint ptr %arrayidx151.2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %arrayidx151.2, align 8
  %arrayidx169 = getelementptr i32, ptr %call8.i, i32 3
  %umax = call i8 @llvm.umax.i8(i8 %49, i8 1)
  %wide.trip.count = zext i8 %umax to i32
  br label %for.body164

for.body164:                                      ; preds = %for.body164.for.body164_crit_edge, %for.body164.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body164.lr.ph ], [ %indvars.iv.next, %for.body164.for.body164_crit_edge ]
  %arrayidx167 = getelementptr [4 x %struct.anon.45], ptr @sama7g5_mckx, i32 0, i32 %i.1691, i32 4, i32 %indvars.iv
  %54 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx167, align 1
  %conv168 = zext i8 %55 to i32
  %arrayidx171 = getelementptr i32, ptr %arrayidx169, i32 %indvars.iv
  %56 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv168, ptr %arrayidx171, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond716.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond716.not, label %for.end195, label %for.body164.for.body164_crit_edge

for.body164.for.body164_crit_edge:                ; preds = %for.body164
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body164

for.end195:                                       ; preds = %for.body164
  %umax717 = call i8 @llvm.umax.i8(i8 %49, i8 1)
  %57 = zext i8 %umax717 to i32
  %58 = shl nuw nsw i32 %57, 2
  %59 = call ptr @memcpy(ptr %arrayidx190, ptr %uglygep, i32 %58)
  %60 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx135, align 4
  %id = getelementptr [4 x %struct.anon.45], ptr @sama7g5_mckx, i32 0, i32 %i.1691, i32 5
  %62 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %id, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.1691)
  %tobool205 = icmp ne i32 %i.1691, 2
  %ep_chg_id = getelementptr [4 x %struct.anon.45], ptr @sama7g5_mckx, i32 0, i32 %i.1691, i32 2
  %64 = ptrtoint ptr %ep_chg_id to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ep_chg_id, align 4
  %call207 = call ptr @at91_clk_sama7g5_register_master(ptr noundef %call12, ptr noundef %61, i32 noundef %conv139, ptr noundef nonnull %parent_names, ptr noundef nonnull %call8.i, ptr noundef nonnull @pmc_mckX_lock, i8 noundef zeroext %63, i1 noundef zeroext %tobool205, i32 noundef %65) #13
  %cmp.i621 = icmp ugt ptr %call207, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i621, label %for.end195.for.cond406.preheader_crit_edge, label %for.inc217

for.end195.for.cond406.preheader_crit_edge:       ; preds = %for.end195
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond406.preheader

for.inc217:                                       ; preds = %for.end195
  %inc218 = add nuw nsw i32 %i.1691, 1
  %arrayidx212 = getelementptr ptr, ptr %call7.i, i32 %i.1691
  %66 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call8.i, ptr %arrayidx212, align 4
  %exitcond720.not = icmp eq i32 %inc218, 4
  br i1 %exitcond720.not, label %for.end219, label %for.inc217.for.body134_crit_edge

for.inc217.for.body134_crit_edge:                 ; preds = %for.inc217
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body134

for.end219:                                       ; preds = %for.inc217
  %call220 = call ptr @at91_clk_sama7g5_register_utmi(ptr noundef %call12, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3) #13
  %cmp.i622 = icmp ugt ptr %call220, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i622, label %for.end219.for.body409.preheader_crit_edge, label %if.end223

for.end219.for.body409.preheader_crit_edge:       ; preds = %for.end219
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body409.preheader

if.end223:                                        ; preds = %for.end219
  %67 = ptrtoint ptr %chws to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %chws, align 4
  %arrayidx225 = getelementptr ptr, ptr %68, i32 2
  %69 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call220, ptr %arrayidx225, align 4
  %70 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call6, ptr %parent_names, align 4
  %71 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call1, ptr %arrayidx37, align 4
  %72 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.7, ptr %arrayidx130, align 4
  %73 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.11, ptr %arrayidx190, align 4
  %arrayidx230 = getelementptr inbounds [10 x ptr], ptr %parent_names, i32 0, i32 4
  %74 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @.str.12, ptr %arrayidx230, align 4
  %arrayidx231 = getelementptr inbounds [10 x ptr], ptr %parent_names, i32 0, i32 5
  %75 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.13, ptr %arrayidx231, align 4
  %arrayidx232 = getelementptr inbounds [10 x ptr], ptr %parent_names, i32 0, i32 6
  %76 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @.str.14, ptr %arrayidx232, align 4
  %arrayidx233 = getelementptr inbounds [10 x ptr], ptr %parent_names, i32 0, i32 7
  %77 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @.str.15, ptr %arrayidx233, align 4
  %arrayidx234 = getelementptr inbounds [10 x ptr], ptr %parent_names, i32 0, i32 8
  %78 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str.16, ptr %arrayidx234, align 4
  %pchws = getelementptr inbounds %struct.pmc_data, ptr %call20, i32 0, i32 9
  br label %for.body238

for.cond255.preheader:                            ; preds = %for.inc252
  %shws = getelementptr inbounds %struct.pmc_data, ptr %call20, i32 0, i32 3
  br label %for.body258

for.body238:                                      ; preds = %for.inc252.for.body238_crit_edge, %if.end223
  %i.2694 = phi i32 [ 0, %if.end223 ], [ %inc253, %for.inc252.for.body238_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %name) #9
  %79 = call ptr @memset(ptr %name, i32 255, i32 6)
  %call240 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 6, ptr noundef nonnull @.str.17, i32 noundef %i.2694)
  %conv243 = trunc i32 %i.2694 to i8
  %call244 = call ptr @at91_clk_register_programmable(ptr noundef %call12, ptr noundef nonnull %name, ptr noundef nonnull %parent_names, i8 noundef zeroext 9, i8 noundef zeroext %conv243, ptr noundef nonnull @programmable_layout, ptr noundef nonnull @sama7g5_prog_mux_table) #13
  %cmp.i623 = icmp ugt ptr %call244, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i623, label %cleanup249, label %for.inc252

cleanup249:                                       ; preds = %for.body238
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %name) #9
  br label %for.body409.preheader

for.inc252:                                       ; preds = %for.body238
  %80 = ptrtoint ptr %pchws to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pchws, align 4
  %arrayidx248 = getelementptr ptr, ptr %81, i32 %i.2694
  %82 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call244, ptr %arrayidx248, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %name) #9
  %inc253 = add nuw nsw i32 %i.2694, 1
  %exitcond721.not = icmp eq i32 %inc253, 8
  br i1 %exitcond721.not, label %for.cond255.preheader, label %for.inc252.for.body238_crit_edge

for.inc252.for.body238_crit_edge:                 ; preds = %for.inc252
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body238

for.cond276.preheader:                            ; preds = %if.end268
  %phws = getelementptr inbounds %struct.pmc_data, ptr %call20, i32 0, i32 5
  br label %for.body279

for.body258:                                      ; preds = %if.end268.for.body258_crit_edge, %for.cond255.preheader
  %i.3695 = phi i32 [ 0, %for.cond255.preheader ], [ %inc274, %if.end268.for.body258_crit_edge ]
  %arrayidx259 = getelementptr [8 x %struct.anon.41], ptr @sama7g5_systemck, i32 0, i32 %i.3695
  %83 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx259, align 4
  %p262 = getelementptr [8 x %struct.anon.41], ptr @sama7g5_systemck, i32 0, i32 %i.3695, i32 1
  %85 = ptrtoint ptr %p262 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %p262, align 4
  %id264 = getelementptr [8 x %struct.anon.41], ptr @sama7g5_systemck, i32 0, i32 %i.3695, i32 2
  %87 = ptrtoint ptr %id264 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %id264, align 4
  %call265 = call ptr @at91_clk_register_system(ptr noundef %call12, ptr noundef %84, ptr noundef %86, i8 noundef zeroext %88) #13
  %cmp.i624 = icmp ugt ptr %call265, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i624, label %for.body258.for.body409.preheader_crit_edge, label %if.end268

for.body258.for.body409.preheader_crit_edge:      ; preds = %for.body258
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body409.preheader

if.end268:                                        ; preds = %for.body258
  %89 = ptrtoint ptr %shws to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %shws, align 4
  %idxprom271 = zext i8 %88 to i32
  %arrayidx272 = getelementptr ptr, ptr %90, i32 %idxprom271
  %91 = ptrtoint ptr %arrayidx272 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call265, ptr %arrayidx272, align 4
  %inc274 = add nuw nsw i32 %i.3695, 1
  %exitcond722.not = icmp eq i32 %inc274, 8
  br i1 %exitcond722.not, label %for.cond276.preheader, label %if.end268.for.body258_crit_edge

if.end268.for.body258_crit_edge:                  ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body258

for.body279:                                      ; preds = %if.end294.for.body279_crit_edge, %for.cond276.preheader
  %i.4696 = phi i32 [ 0, %for.cond276.preheader ], [ %inc300, %if.end294.for.body279_crit_edge ]
  %arrayidx280 = getelementptr [72 x %struct.anon.42], ptr @sama7g5_periphck, i32 0, i32 %i.4696
  %92 = ptrtoint ptr %arrayidx280 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx280, align 4
  %p283 = getelementptr [72 x %struct.anon.42], ptr @sama7g5_periphck, i32 0, i32 %i.4696, i32 1
  %94 = ptrtoint ptr %p283 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %p283, align 4
  %id285 = getelementptr [72 x %struct.anon.42], ptr @sama7g5_periphck, i32 0, i32 %i.4696, i32 4
  %96 = ptrtoint ptr %id285 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %id285, align 1
  %conv286 = zext i8 %97 to i32
  %r = getelementptr [72 x %struct.anon.42], ptr @sama7g5_periphck, i32 0, i32 %i.4696, i32 2
  %chgp = getelementptr [72 x %struct.anon.42], ptr @sama7g5_periphck, i32 0, i32 %i.4696, i32 3
  %98 = ptrtoint ptr %chgp to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %chgp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool290.not = icmp eq i8 %99, 0
  %cond = select i1 %tobool290.not, i32 -2147483648, i32 0
  %call291 = call ptr @at91_clk_register_sam9x5_peripheral(ptr noundef %call12, ptr noundef nonnull @pmc_pcr_lock, ptr noundef nonnull @sama7g5_pcr_layout, ptr noundef %93, ptr noundef %95, i32 noundef %conv286, ptr noundef %r, i32 noundef %cond) #13
  %cmp.i625 = icmp ugt ptr %call291, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i625, label %for.body279.for.body409.preheader_crit_edge, label %if.end294

for.body279.for.body409.preheader_crit_edge:      ; preds = %for.body279
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body409.preheader

if.end294:                                        ; preds = %for.body279
  %100 = ptrtoint ptr %phws to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %phws, align 4
  %arrayidx298 = getelementptr ptr, ptr %101, i32 %conv286
  %102 = ptrtoint ptr %arrayidx298 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call291, ptr %arrayidx298, align 4
  %inc300 = add nuw nsw i32 %i.4696, 1
  %exitcond723.not = icmp eq i32 %inc300, 72
  br i1 %exitcond723.not, label %for.end301, label %if.end294.for.body279_crit_edge

if.end294.for.body279_crit_edge:                  ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body279

for.end301:                                       ; preds = %if.end294
  %103 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call6, ptr %parent_names, align 4
  %104 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call1, ptr %arrayidx37, align 4
  %105 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @.str.7, ptr %arrayidx130, align 4
  %ghws = getelementptr inbounds %struct.pmc_data, ptr %call20, i32 0, i32 7
  br label %for.body308

for.body308:                                      ; preds = %for.inc400.for.body308_crit_edge, %for.end301
  %i.5703 = phi i32 [ 0, %for.end301 ], [ %inc401, %for.inc400.for.body308_crit_edge ]
  %alloc_mem_size.2702 = phi i32 [ 4, %for.end301 ], [ %inc394, %for.inc400.for.body308_crit_edge ]
  %106 = mul nuw nsw i32 %i.5703, 60
  %107 = add nuw nsw i32 %106, 4
  %uglygep732 = getelementptr i8, ptr @sama7g5_gck, i32 %107
  %arrayidx310 = getelementptr [46 x %struct.anon.43], ptr @sama7g5_gck, i32 0, i32 %i.5703
  %pp_count = getelementptr [46 x %struct.anon.43], ptr @sama7g5_gck, i32 0, i32 %i.5703, i32 5
  %108 = ptrtoint ptr %pp_count to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %pp_count, align 4
  %add312 = add i8 %109, 3
  %conv315 = zext i8 %add312 to i32
  %110 = shl nuw nsw i32 %conv315, 2
  %call8.i655 = call noalias align 128 ptr @__kmalloc(i32 noundef %110, i32 noundef 3264) #15
  %tobool317.not = icmp eq ptr %call8.i655, null
  br i1 %tobool317.not, label %for.body308.for.body409.preheader_crit_edge, label %for.body326.preheader

for.body308.for.body409.preheader_crit_edge:      ; preds = %for.body308
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body409.preheader

for.body326.preheader:                            ; preds = %for.body308
  %111 = ptrtoint ptr %call8.i655 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %call8.i655, align 128
  %arrayidx329.1 = getelementptr i32, ptr %call8.i655, i32 1
  %112 = ptrtoint ptr %arrayidx329.1 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 1, ptr %arrayidx329.1, align 4
  %arrayidx329.2 = getelementptr i32, ptr %call8.i655, i32 2
  %113 = ptrtoint ptr %arrayidx329.2 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 2, ptr %arrayidx329.2, align 8
  %114 = and i32 %i.5703, 1073741822
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %114)
  %115 = icmp eq i32 %114, 44
  br i1 %115, label %for.body326.preheader.for.end375_crit_edge, label %for.body344.lr.ph

for.body326.preheader.for.end375_crit_edge:       ; preds = %for.body326.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end375

for.body344.lr.ph:                                ; preds = %for.body326.preheader
  %arrayidx349 = getelementptr i32, ptr %call8.i655, i32 3
  %umax729 = call i8 @llvm.umax.i8(i8 %109, i8 1)
  %wide.trip.count730 = zext i8 %umax729 to i32
  br label %for.body344

for.cond359.preheader:                            ; preds = %for.body344
  br i1 %115, label %for.cond359.preheader.for.end375_crit_edge, label %for.body366.preheader

for.cond359.preheader.for.end375_crit_edge:       ; preds = %for.cond359.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end375

for.body366.preheader:                            ; preds = %for.cond359.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %umax733 = call i8 @llvm.umax.i8(i8 %109, i8 1)
  %116 = zext i8 %umax733 to i32
  %117 = shl nuw nsw i32 %116, 2
  %118 = call ptr @memcpy(ptr %arrayidx190, ptr %uglygep732, i32 %117)
  br label %for.end375

for.body344:                                      ; preds = %for.body344.for.body344_crit_edge, %for.body344.lr.ph
  %indvars.iv727 = phi i32 [ 0, %for.body344.lr.ph ], [ %indvars.iv.next728, %for.body344.for.body344_crit_edge ]
  %arrayidx347 = getelementptr [46 x %struct.anon.43], ptr @sama7g5_gck, i32 0, i32 %i.5703, i32 2, i32 %indvars.iv727
  %119 = ptrtoint ptr %arrayidx347 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx347, align 1
  %conv348 = zext i8 %120 to i32
  %arrayidx351 = getelementptr i32, ptr %arrayidx349, i32 %indvars.iv727
  %121 = ptrtoint ptr %arrayidx351 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %conv348, ptr %arrayidx351, align 4
  %indvars.iv.next728 = add nuw nsw i32 %indvars.iv727, 1
  %exitcond731.not = icmp eq i32 %indvars.iv.next728, %wide.trip.count730
  br i1 %exitcond731.not, label %for.cond359.preheader, label %for.body344.for.body344_crit_edge

for.body344.for.body344_crit_edge:                ; preds = %for.body344
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body344

for.end375:                                       ; preds = %for.body366.preheader, %for.cond359.preheader.for.end375_crit_edge, %for.body326.preheader.for.end375_crit_edge
  %122 = ptrtoint ptr %arrayidx310 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx310, align 4
  %id382 = getelementptr [46 x %struct.anon.43], ptr @sama7g5_gck, i32 0, i32 %i.5703, i32 6
  %124 = ptrtoint ptr %id382 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %id382, align 1
  %r384 = getelementptr [46 x %struct.anon.43], ptr @sama7g5_gck, i32 0, i32 %i.5703, i32 3
  %pp_chg_id = getelementptr [46 x %struct.anon.43], ptr @sama7g5_gck, i32 0, i32 %i.5703, i32 4
  %126 = ptrtoint ptr %pp_chg_id to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %pp_chg_id, align 4
  %call386 = call ptr @at91_clk_register_generated(ptr noundef %call12, ptr noundef nonnull @pmc_pcr_lock, ptr noundef nonnull @sama7g5_pcr_layout, ptr noundef %123, ptr noundef nonnull %parent_names, ptr noundef nonnull %call8.i655, i8 noundef zeroext %add312, i8 noundef zeroext %125, ptr noundef %r384, i32 noundef %127) #13
  %cmp.i659 = icmp ugt ptr %call386, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i659, label %for.end375.for.body409.preheader_crit_edge, label %for.inc400

for.end375.for.body409.preheader_crit_edge:       ; preds = %for.end375
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body409.preheader

for.inc400:                                       ; preds = %for.end375
  %128 = ptrtoint ptr %ghws to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ghws, align 4
  %idxprom392 = zext i8 %125 to i32
  %arrayidx393 = getelementptr ptr, ptr %129, i32 %idxprom392
  %130 = ptrtoint ptr %arrayidx393 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call386, ptr %arrayidx393, align 4
  %inc394 = add nuw nsw i32 %alloc_mem_size.2702, 1
  %arrayidx395 = getelementptr ptr, ptr %call7.i, i32 %alloc_mem_size.2702
  %131 = ptrtoint ptr %arrayidx395 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call8.i655, ptr %arrayidx395, align 4
  %inc401 = add nuw nsw i32 %i.5703, 1
  %exitcond736.not = icmp eq i32 %inc401, 46
  br i1 %exitcond736.not, label %for.end402, label %for.inc400.for.body308_crit_edge

for.inc400.for.body308_crit_edge:                 ; preds = %for.inc400
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body308

for.end402:                                       ; preds = %for.inc400
  call void @__sanitizer_cov_trace_pc() #11
  %call403 = call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_pmc_get, ptr noundef nonnull %call20) #9
  br label %cleanup415

for.cond406.preheader:                            ; preds = %for.end195.for.cond406.preheader_crit_edge, %for.body134.for.cond406.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1691)
  %cmp407706.not = icmp eq i32 %i.1691, 0
  br i1 %cmp407706.not, label %for.cond406.preheader.for.end413_crit_edge, label %for.cond406.preheader.for.body409.preheader_crit_edge

for.cond406.preheader.for.body409.preheader_crit_edge: ; preds = %for.cond406.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body409.preheader

for.cond406.preheader.for.end413_crit_edge:       ; preds = %for.cond406.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end413

for.body409.preheader:                            ; preds = %for.cond406.preheader.for.body409.preheader_crit_edge, %for.end375.for.body409.preheader_crit_edge, %for.body308.for.body409.preheader_crit_edge, %for.body279.for.body409.preheader_crit_edge, %for.body258.for.body409.preheader_crit_edge, %cleanup249, %for.end219.for.body409.preheader_crit_edge
  %alloc_mem_size.4746 = phi i32 [ %i.1691, %for.cond406.preheader.for.body409.preheader_crit_edge ], [ 4, %cleanup249 ], [ 4, %for.end219.for.body409.preheader_crit_edge ], [ %alloc_mem_size.2702, %for.body308.for.body409.preheader_crit_edge ], [ %alloc_mem_size.2702, %for.end375.for.body409.preheader_crit_edge ], [ 4, %for.body279.for.body409.preheader_crit_edge ], [ 4, %for.body258.for.body409.preheader_crit_edge ]
  br label %for.body409

for.body409:                                      ; preds = %for.body409.for.body409_crit_edge, %for.body409.preheader
  %i.6707 = phi i32 [ %inc412, %for.body409.for.body409_crit_edge ], [ 0, %for.body409.preheader ]
  %arrayidx410 = getelementptr ptr, ptr %call7.i, i32 %i.6707
  %132 = ptrtoint ptr %arrayidx410 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx410, align 4
  call void @kfree(ptr noundef %133) #9
  %inc412 = add nuw nsw i32 %i.6707, 1
  %exitcond737.not = icmp eq i32 %inc412, %alloc_mem_size.4746
  br i1 %exitcond737.not, label %for.body409.for.end413_crit_edge, label %for.body409.for.body409_crit_edge

for.body409.for.body409_crit_edge:                ; preds = %for.body409
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body409

for.body409.for.end413_crit_edge:                 ; preds = %for.body409
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end413

for.end413:                                       ; preds = %for.body409.for.end413_crit_edge, %for.cond406.preheader.for.end413_crit_edge, %for.end120.for.end413_crit_edge, %sw.epilog.for.end413_crit_edge, %if.end36.for.end413_crit_edge, %if.end30.for.end413_crit_edge, %if.end26.for.end413_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %if.end414

if.end414:                                        ; preds = %for.end413, %if.end22.if.end414_crit_edge
  call void @kfree(ptr noundef nonnull %call20) #9
  br label %cleanup415

cleanup415:                                       ; preds = %if.end414, %for.end402, %if.end15.cleanup415_crit_edge, %if.end10.cleanup415_crit_edge, %if.end5.cleanup415_crit_edge, %if.end.cleanup415_crit_edge, %entry.cleanup415_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %parent_names) #9
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

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @sam9x60_clk_register_frac_pll(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @sam9x60_clk_register_div_pll(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_master_div(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_sama7g5_register_master(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_sama7g5_register_utmi(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_programmable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_system(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_sam9x5_peripheral(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_generated(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_pmc_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 187)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 187)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !351, !353, !355, !357, !358, !360, !362, !364, !366, !367, !369, !371}
!llvm.module.flags = !{!373, !374, !375, !376, !377, !378, !379, !380}
!llvm.ident = !{!381}

!0 = !{ptr @__of_table_sama7g5_pmc, !1, !"__of_table_sama7g5_pmc", i1 false, i1 false}
!1 = !{!"../drivers/clk/at91/sama7g5.c", i32 1135, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/at91/sama7g5.c", i32 894, i32 35}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/at91/sama7g5.c", i32 894, i32 50}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/at91/sama7g5.c", i32 900, i32 50}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/at91/sama7g5.c", i32 906, i32 50}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/at91/sama7g5.c", i32 929, i32 45}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/at91/sama7g5.c", i32 934, i32 37}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/at91/sama7g5.c", i32 936, i32 42}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/at91/sama7g5.c", i32 943, i32 45}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/at91/sama7g5.c", i32 994, i32 20}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/at91/sama7g5.c", i32 995, i32 44}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/at91/sama7g5.c", i32 1032, i32 46}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/at91/sama7g5.c", i32 1041, i32 20}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/at91/sama7g5.c", i32 1042, i32 20}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/at91/sama7g5.c", i32 1043, i32 20}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/at91/sama7g5.c", i32 1044, i32 20}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/at91/sama7g5.c", i32 1045, i32 20}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/at91/sama7g5.c", i32 1046, i32 20}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/at91/sama7g5.c", i32 1050, i32 32}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/at91/sama7g5.c", i32 359, i32 9}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/at91/sama7g5.c", i32 359, i32 23}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/at91/sama7g5.c", i32 360, i32 9}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/at91/sama7g5.c", i32 360, i32 23}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/at91/sama7g5.c", i32 361, i32 9}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/at91/sama7g5.c", i32 361, i32 23}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/at91/sama7g5.c", i32 362, i32 9}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/at91/sama7g5.c", i32 362, i32 23}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/at91/sama7g5.c", i32 363, i32 9}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/at91/sama7g5.c", i32 363, i32 23}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/at91/sama7g5.c", i32 364, i32 9}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/at91/sama7g5.c", i32 364, i32 23}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/at91/sama7g5.c", i32 365, i32 9}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/at91/sama7g5.c", i32 365, i32 23}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/at91/sama7g5.c", i32 366, i32 9}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/at91/sama7g5.c", i32 366, i32 23}
!70 = !{ptr @sama7g5_systemck, !71, !"sama7g5_systemck", i1 false, i1 false}
!71 = !{!"../drivers/clk/at91/sama7g5.c", i32 358, i32 3}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/at91/sama7g5.c", i32 387, i32 9}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/at91/sama7g5.c", i32 388, i32 9}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/at91/sama7g5.c", i32 389, i32 9}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/at91/sama7g5.c", i32 389, i32 25}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/at91/sama7g5.c", i32 390, i32 9}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/at91/sama7g5.c", i32 391, i32 9}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/at91/sama7g5.c", i32 392, i32 9}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/at91/sama7g5.c", i32 393, i32 9}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/at91/sama7g5.c", i32 394, i32 9}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/at91/sama7g5.c", i32 395, i32 9}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/at91/sama7g5.c", i32 396, i32 9}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/at91/sama7g5.c", i32 397, i32 9}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/at91/sama7g5.c", i32 398, i32 9}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/at91/sama7g5.c", i32 399, i32 9}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/at91/sama7g5.c", i32 399, i32 25}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/at91/sama7g5.c", i32 400, i32 9}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/at91/sama7g5.c", i32 401, i32 9}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/at91/sama7g5.c", i32 402, i32 9}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/at91/sama7g5.c", i32 403, i32 9}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/at91/sama7g5.c", i32 404, i32 9}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/at91/sama7g5.c", i32 405, i32 9}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/at91/sama7g5.c", i32 406, i32 9}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/at91/sama7g5.c", i32 407, i32 9}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/at91/sama7g5.c", i32 408, i32 9}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/at91/sama7g5.c", i32 409, i32 9}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/at91/sama7g5.c", i32 410, i32 9}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/at91/sama7g5.c", i32 411, i32 9}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/at91/sama7g5.c", i32 412, i32 9}
!128 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/at91/sama7g5.c", i32 413, i32 9}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/at91/sama7g5.c", i32 414, i32 9}
!132 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/at91/sama7g5.c", i32 415, i32 9}
!134 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/at91/sama7g5.c", i32 416, i32 9}
!136 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/at91/sama7g5.c", i32 417, i32 9}
!138 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/at91/sama7g5.c", i32 418, i32 9}
!140 = !{ptr @.str.68, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/at91/sama7g5.c", i32 419, i32 9}
!142 = !{ptr @.str.69, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/at91/sama7g5.c", i32 420, i32 9}
!144 = !{ptr @.str.70, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/at91/sama7g5.c", i32 421, i32 9}
!146 = !{ptr @.str.71, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/at91/sama7g5.c", i32 422, i32 9}
!148 = !{ptr @.str.72, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/at91/sama7g5.c", i32 423, i32 9}
!150 = !{ptr @.str.73, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/at91/sama7g5.c", i32 424, i32 9}
!152 = !{ptr @.str.74, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/at91/sama7g5.c", i32 425, i32 9}
!154 = !{ptr @.str.75, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/at91/sama7g5.c", i32 426, i32 9}
!156 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/at91/sama7g5.c", i32 427, i32 9}
!158 = !{ptr @.str.77, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/at91/sama7g5.c", i32 428, i32 9}
!160 = !{ptr @.str.78, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/at91/sama7g5.c", i32 429, i32 9}
!162 = !{ptr @.str.79, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/at91/sama7g5.c", i32 430, i32 9}
!164 = !{ptr @.str.80, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/at91/sama7g5.c", i32 431, i32 9}
!166 = !{ptr @.str.81, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/at91/sama7g5.c", i32 432, i32 9}
!168 = !{ptr @.str.82, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/clk/at91/sama7g5.c", i32 433, i32 9}
!170 = !{ptr @.str.83, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/clk/at91/sama7g5.c", i32 434, i32 9}
!172 = !{ptr @.str.84, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/clk/at91/sama7g5.c", i32 435, i32 9}
!174 = !{ptr @.str.85, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/clk/at91/sama7g5.c", i32 436, i32 9}
!176 = !{ptr @.str.86, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/clk/at91/sama7g5.c", i32 437, i32 9}
!178 = !{ptr @.str.87, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/clk/at91/sama7g5.c", i32 438, i32 9}
!180 = !{ptr @.str.88, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/clk/at91/sama7g5.c", i32 439, i32 9}
!182 = !{ptr @.str.89, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/clk/at91/sama7g5.c", i32 440, i32 9}
!184 = !{ptr @.str.90, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/clk/at91/sama7g5.c", i32 441, i32 9}
!186 = !{ptr @.str.91, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/clk/at91/sama7g5.c", i32 442, i32 9}
!188 = !{ptr @.str.92, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/clk/at91/sama7g5.c", i32 443, i32 9}
!190 = !{ptr @.str.93, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/clk/at91/sama7g5.c", i32 444, i32 9}
!192 = !{ptr @.str.94, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/clk/at91/sama7g5.c", i32 445, i32 9}
!194 = !{ptr @.str.95, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/clk/at91/sama7g5.c", i32 446, i32 9}
!196 = !{ptr @.str.96, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/clk/at91/sama7g5.c", i32 447, i32 9}
!198 = !{ptr @.str.97, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/clk/at91/sama7g5.c", i32 448, i32 9}
!200 = !{ptr @.str.98, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/clk/at91/sama7g5.c", i32 449, i32 9}
!202 = !{ptr @.str.99, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/clk/at91/sama7g5.c", i32 450, i32 9}
!204 = !{ptr @.str.100, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/clk/at91/sama7g5.c", i32 451, i32 9}
!206 = !{ptr @.str.101, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/clk/at91/sama7g5.c", i32 452, i32 9}
!208 = !{ptr @.str.102, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/clk/at91/sama7g5.c", i32 453, i32 9}
!210 = !{ptr @.str.103, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/clk/at91/sama7g5.c", i32 454, i32 9}
!212 = !{ptr @.str.104, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/clk/at91/sama7g5.c", i32 455, i32 9}
!214 = !{ptr @.str.105, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/clk/at91/sama7g5.c", i32 456, i32 9}
!216 = !{ptr @.str.106, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/clk/at91/sama7g5.c", i32 457, i32 9}
!218 = !{ptr @.str.107, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/clk/at91/sama7g5.c", i32 458, i32 9}
!220 = !{ptr @sama7g5_periphck, !221, !"sama7g5_periphck", i1 false, i1 false}
!221 = !{!"../drivers/clk/at91/sama7g5.c", i32 386, i32 3}
!222 = !{ptr @.str.108, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/clk/at91/sama7g5.c", i32 480, i32 10}
!224 = !{ptr @.str.109, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/clk/at91/sama7g5.c", i32 488, i32 10}
!226 = !{ptr @.str.110, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/clk/at91/sama7g5.c", i32 496, i32 10}
!228 = !{ptr @.str.111, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/clk/at91/sama7g5.c", i32 504, i32 10}
!230 = !{ptr @.str.112, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/clk/at91/sama7g5.c", i32 512, i32 10}
!232 = !{ptr @.str.113, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/clk/at91/sama7g5.c", i32 520, i32 10}
!234 = !{ptr @.str.114, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/clk/at91/sama7g5.c", i32 528, i32 10}
!236 = !{ptr @.str.115, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/clk/at91/sama7g5.c", i32 536, i32 10}
!238 = !{ptr @.str.116, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/clk/at91/sama7g5.c", i32 544, i32 10}
!240 = !{ptr @.str.117, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/clk/at91/sama7g5.c", i32 552, i32 10}
!242 = !{ptr @.str.118, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/clk/at91/sama7g5.c", i32 560, i32 10}
!244 = !{ptr @.str.119, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/clk/at91/sama7g5.c", i32 568, i32 10}
!246 = !{ptr @.str.120, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/clk/at91/sama7g5.c", i32 576, i32 10}
!248 = !{ptr @.str.121, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/clk/at91/sama7g5.c", i32 584, i32 10}
!250 = !{ptr @.str.122, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/clk/at91/sama7g5.c", i32 592, i32 10}
!252 = !{ptr @.str.123, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/clk/at91/sama7g5.c", i32 600, i32 10}
!254 = !{ptr @.str.124, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/clk/at91/sama7g5.c", i32 608, i32 10}
!256 = !{ptr @.str.125, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/clk/at91/sama7g5.c", i32 616, i32 10}
!258 = !{ptr @.str.126, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/clk/at91/sama7g5.c", i32 624, i32 10}
!260 = !{ptr @.str.127, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/clk/at91/sama7g5.c", i32 632, i32 10}
!262 = !{ptr @.str.128, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/clk/at91/sama7g5.c", i32 640, i32 10}
!264 = !{ptr @.str.129, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/clk/at91/sama7g5.c", i32 648, i32 10}
!266 = !{ptr @.str.130, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/clk/at91/sama7g5.c", i32 656, i32 10}
!268 = !{ptr @.str.131, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/clk/at91/sama7g5.c", i32 664, i32 10}
!270 = !{ptr @.str.132, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/clk/at91/sama7g5.c", i32 672, i32 10}
!272 = !{ptr @.str.133, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/clk/at91/sama7g5.c", i32 680, i32 10}
!274 = !{ptr @.str.134, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/clk/at91/sama7g5.c", i32 688, i32 10}
!276 = !{ptr @.str.135, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/clk/at91/sama7g5.c", i32 696, i32 10}
!278 = !{ptr @.str.136, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/clk/at91/sama7g5.c", i32 704, i32 10}
!280 = !{ptr @.str.137, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/clk/at91/sama7g5.c", i32 712, i32 10}
!282 = !{ptr @.str.138, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/clk/at91/sama7g5.c", i32 721, i32 10}
!284 = !{ptr @.str.139, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/clk/at91/sama7g5.c", i32 730, i32 10}
!286 = !{ptr @.str.140, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/clk/at91/sama7g5.c", i32 739, i32 10}
!288 = !{ptr @.str.141, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/clk/at91/sama7g5.c", i32 748, i32 10}
!290 = !{ptr @.str.142, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/clk/at91/sama7g5.c", i32 757, i32 10}
!292 = !{ptr @.str.143, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/clk/at91/sama7g5.c", i32 766, i32 10}
!294 = !{ptr @.str.144, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/clk/at91/sama7g5.c", i32 774, i32 10}
!296 = !{ptr @.str.145, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/clk/at91/sama7g5.c", i32 782, i32 10}
!298 = !{ptr @.str.146, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/clk/at91/sama7g5.c", i32 790, i32 10}
!300 = !{ptr @.str.147, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/clk/at91/sama7g5.c", i32 798, i32 10}
!302 = !{ptr @.str.148, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/clk/at91/sama7g5.c", i32 806, i32 10}
!304 = !{ptr @.str.149, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/clk/at91/sama7g5.c", i32 814, i32 9}
!306 = !{ptr @.str.150, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/clk/at91/sama7g5.c", i32 822, i32 10}
!308 = !{ptr @.str.151, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/clk/at91/sama7g5.c", i32 831, i32 10}
!310 = !{ptr @.str.152, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/clk/at91/sama7g5.c", i32 840, i32 10}
!312 = !{ptr @.str.153, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/clk/at91/sama7g5.c", i32 845, i32 10}
!314 = !{ptr @sama7g5_gck, !315, !"sama7g5_gck", i1 false, i1 false}
!315 = !{!"../drivers/clk/at91/sama7g5.c", i32 479, i32 3}
!316 = !{ptr @.str.154, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/clk/at91/sama7g5.c", i32 144, i32 10}
!318 = !{ptr @.str.155, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/clk/at91/sama7g5.c", i32 171, i32 10}
!320 = !{ptr @.str.156, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/clk/at91/sama7g5.c", i32 197, i32 10}
!322 = !{ptr @.str.157, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/clk/at91/sama7g5.c", i32 218, i32 10}
!324 = !{ptr @.str.158, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/clk/at91/sama7g5.c", i32 235, i32 10}
!326 = !{ptr @.str.159, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/clk/at91/sama7g5.c", i32 252, i32 10}
!328 = !{ptr @.str.160, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/clk/at91/sama7g5.c", i32 268, i32 10}
!330 = !{ptr @.str.161, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/clk/at91/sama7g5.c", i32 279, i32 10}
!332 = !{ptr @sama7g5_plls, !333, !"sama7g5_plls", i1 false, i1 false}
!333 = !{!"../drivers/clk/at91/sama7g5.c", i32 142, i32 3}
!334 = !{ptr @pll_layout_frac, !335, !"pll_layout_frac", i1 false, i1 false}
!335 = !{!"../drivers/clk/at91/sama7g5.c", i32 70, i32 36}
!336 = !{ptr @cpu_pll_characteristics, !337, !"cpu_pll_characteristics", i1 false, i1 false}
!337 = !{!"../drivers/clk/at91/sama7g5.c", i32 108, i32 45}
!338 = !{ptr @cpu_pll_outputs, !339, !"cpu_pll_outputs", i1 false, i1 false}
!339 = !{!"../drivers/clk/at91/sama7g5.c", i32 98, i32 31}
!340 = !{ptr @pll_layout_divpmc, !341, !"pll_layout_divpmc", i1 false, i1 false}
!341 = !{!"../drivers/clk/at91/sama7g5.c", i32 78, i32 36}
!342 = !{ptr @pll_characteristics, !343, !"pll_characteristics", i1 false, i1 false}
!343 = !{!"../drivers/clk/at91/sama7g5.c", i32 115, i32 45}
!344 = !{ptr @pll_outputs, !345, !"pll_outputs", i1 false, i1 false}
!345 = !{!"../drivers/clk/at91/sama7g5.c", i32 103, i32 31}
!346 = !{ptr @pll_layout_divio, !347, !"pll_layout_divio", i1 false, i1 false}
!347 = !{!"../drivers/clk/at91/sama7g5.c", i32 86, i32 36}
!348 = !{ptr @.str.162, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/clk/at91/sama7g5.c", i32 34, i32 8}
!350 = !{ptr @pmc_pll_lock, !349, !"pmc_pll_lock", i1 false, i1 false}
!351 = !{ptr @mck0_layout, !352, !"mck0_layout", i1 false, i1 false}
!352 = !{!"../drivers/clk/at91/sama7g5.c", i32 859, i32 39}
!353 = !{ptr @mck0_characteristics, !354, !"mck0_characteristics", i1 false, i1 false}
!354 = !{!"../drivers/clk/at91/sama7g5.c", i32 852, i32 48}
!355 = !{ptr @.str.163, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/clk/at91/sama7g5.c", i32 35, i32 8}
!357 = !{ptr @pmc_mck0_lock, !356, !"pmc_mck0_lock", i1 false, i1 false}
!358 = !{ptr @.str.164, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/clk/at91/sama7g5.c", i32 324, i32 9}
!360 = !{ptr @.str.165, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/clk/at91/sama7g5.c", i32 339, i32 9}
!362 = !{ptr @sama7g5_mckx, !363, !"sama7g5_mckx", i1 false, i1 false}
!363 = !{!"../drivers/clk/at91/sama7g5.c", i32 315, i32 3}
!364 = !{ptr @.str.166, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/clk/at91/sama7g5.c", i32 36, i32 8}
!366 = !{ptr @pmc_mckX_lock, !365, !"pmc_mckX_lock", i1 false, i1 false}
!367 = !{ptr @programmable_layout, !368, !"programmable_layout", i1 false, i1 false}
!368 = !{!"../drivers/clk/at91/sama7g5.c", i32 866, i32 45}
!369 = !{ptr @sama7g5_prog_mux_table, !370, !"sama7g5_prog_mux_table", i1 false, i1 false}
!370 = !{!"../drivers/clk/at91/sama7g5.c", i32 370, i32 12}
!371 = !{ptr @sama7g5_pcr_layout, !372, !"sama7g5_pcr_layout", i1 false, i1 false}
!372 = !{!"../drivers/clk/at91/sama7g5.c", i32 875, i32 36}
!373 = !{i32 1, !"wchar_size", i32 2}
!374 = !{i32 1, !"min_enum_size", i32 4}
!375 = !{i32 8, !"branch-target-enforcement", i32 0}
!376 = !{i32 8, !"sign-return-address", i32 0}
!377 = !{i32 8, !"sign-return-address-all", i32 0}
!378 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!379 = !{i32 7, !"uwtable", i32 1}
!380 = !{i32 7, !"frame-pointer", i32 2}
!381 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
