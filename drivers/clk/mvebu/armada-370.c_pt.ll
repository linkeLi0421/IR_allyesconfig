; ModuleID = '/llk/IR_all_yes/drivers/clk/mvebu/armada-370.c_pt.bc'
source_filename = "../drivers/clk/mvebu/armada-370.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.coreclk_soc_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.clk_gating_soc_desc = type { ptr, ptr, i32, i32 }
%struct.coreclk_ratio = type { i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@__of_table_a370_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-370-core-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @a370_clk_init }, section "__clk_of_table", align 4
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"marvell,armada-370-gating-clock\00", [32 x i8] zeroinitializer }, align 32
@a370_coreclks = internal constant { %struct.coreclk_soc_desc, [32 x i8] } { %struct.coreclk_soc_desc { ptr @a370_get_tclk_freq, ptr @a370_get_cpu_freq, ptr @a370_get_clk_ratio, ptr null, ptr @a370_is_sscg_enabled, ptr @kirkwood_fix_sscg_deviation, ptr @a370_coreclk_ratios, i32 3 }, [32 x i8] zeroinitializer }, align 32
@a370_gating_desc = internal constant [14 x %struct.clk_gating_soc_desc] [%struct.clk_gating_soc_desc { ptr @.str.7, ptr null, i32 0, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.8, ptr null, i32 1, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.9, ptr null, i32 2, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.10, ptr null, i32 3, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.11, ptr null, i32 4, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.12, ptr @.str.8, i32 5, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.13, ptr @.str.9, i32 9, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.14, ptr null, i32 15, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.15, ptr null, i32 17, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.16, ptr null, i32 23, i32 8 }, %struct.clk_gating_soc_desc { ptr @.str.17, ptr null, i32 25, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.18, ptr null, i32 28, i32 8 }, %struct.clk_gating_soc_desc { ptr @.str.19, ptr null, i32 30, i32 0 }, %struct.clk_gating_soc_desc zeroinitializer], section ".init.rodata", align 4
@a370_coreclk_ratios = internal constant [3 x %struct.coreclk_ratio] [%struct.coreclk_ratio { i32 0, ptr @.str.4 }, %struct.coreclk_ratio { i32 1, ptr @.str.5 }, %struct.coreclk_ratio { i32 2, ptr @.str.6 }], section ".init.rodata", align 4
@a370_tclk_freqs = internal unnamed_addr constant [2 x i32] [i32 166000000, i32 200000000], section ".init.rodata", align 4
@a370_get_cpu_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013CPU freq select unsupported %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"a370_get_cpu_freq\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/clk/mvebu/armada-370.c\00", [33 x i8] zeroinitializer }, align 32
@a370_get_cpu_freq._entry_ptr = internal global ptr @a370_get_cpu_freq._entry, section ".printk_index", align 4
@a370_cpu_freqs = internal unnamed_addr constant [7 x i32] [i32 400000000, i32 533000000, i32 667000000, i32 800000000, i32 1000000000, i32 1067000000, i32 1200000000], section ".init.rodata", align 4
@a370_nbclk_ratios = internal unnamed_addr constant [32 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 2, i32 2], [2 x i32] [i32 2, i32 2], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 2, i32 3], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 2, i32 4], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 2, i32 2], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 2, i32 3], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1]], section ".init.rodata", align 4
@a370_hclk_ratios = internal unnamed_addr constant [32 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 2, i32 6], [2 x i32] [i32 2, i32 3], [2 x i32] [i32 1, i32 3], [2 x i32] [i32 1, i32 4], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 2, i32 6], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 6], [2 x i32] [i32 2, i32 10], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 4], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 2, i32 5], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 2, i32 6], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1]], section ".init.rodata", align 4
@a370_dramclk_ratios = internal unnamed_addr constant [32 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 2, i32 3], [2 x i32] [i32 2, i32 3], [2 x i32] [i32 1, i32 3], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 2, i32 6], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 3], [2 x i32] [i32 2, i32 5], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 4], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 2, i32 5], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 2, i32 3], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1]], section ".init.rodata", align 4
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nbclk\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hclk\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dramclk\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"audio\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pex0_en\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pex1_en\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ge1\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ge0\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pex0\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pex1\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sata0\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sdio\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"crypto\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tdm\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ddr\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sata1\00", [26 x i8] zeroinitializer }, align 32
@switch.table.a370_get_clk_ratio = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @a370_nbclk_ratios, ptr @a370_hclk_ratios, ptr @a370_dramclk_ratios], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 174, i32 39 }
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"a370_coreclks\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 140, i32 38 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 72, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 35, i32 37 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 36, i32 36 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 37, i32 39 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 155, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 156, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 157, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 158, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 159, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 160, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 161, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 162, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 163, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 164, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 165, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 166, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [34 x i8] c"../drivers/clk/mvebu/armada-370.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 167, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant [32 x i8] c"switch.table.a370_get_clk_ratio\00", align 1
@llvm.compiler.used = appending global [25 x ptr] [ptr @__of_table_a370_clk, ptr @a370_get_cpu_freq._entry, ptr @a370_get_cpu_freq._entry_ptr, ptr @.str, ptr @a370_coreclks, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @switch.table.a370_get_clk_ratio], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a370_coreclks to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a370_get_cpu_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.a370_get_clk_ratio to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @a370_clk_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #5
  tail call void @mvebu_coreclk_setup(ptr noundef %np, ptr noundef nonnull @a370_coreclks) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mvebu_clk_gating_setup(ptr noundef nonnull %call, ptr noundef nonnull @a370_gating_desc) #8
  tail call void @of_node_put(ptr noundef nonnull %call) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @mvebu_coreclk_setup(ptr noundef, ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @mvebu_clk_gating_setup(ptr noundef, ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @a370_get_tclk_freq(ptr noundef %sar) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sar) #5, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %1 = lshr i32 %0, 12
  %conv = and i32 %1, 1
  %arrayidx = getelementptr [2 x i32], ptr @a370_tclk_freqs, i32 0, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @a370_get_cpu_freq(ptr noundef %sar) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sar) #5, !srcloc !67
  %1 = lshr i32 %0, 19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  %conv = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %conv)
  %cmp = icmp ugt i32 %conv, 6
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %conv) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr [7 x i32], ptr @a370_cpu_freqs, i32 0, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %cpu_freq.0 = phi i32 [ 0, %do.end ], [ %3, %if.else ]
  ret i32 %cpu_freq.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @a370_get_clk_ratio(ptr noundef %sar, i32 noundef %id, ptr nocapture noundef writeonly %mult, ptr nocapture noundef writeonly %div) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sar) #5, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %id)
  %1 = icmp ult i32 %id, 3
  br i1 %1, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %0)
  %shr = lshr i32 %2, 15
  %and = and i32 %shr, 31
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.a370_get_clk_ratio, i32 0, i32 %id
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %arrayidx11 = getelementptr [32 x [2 x i32]], ptr %switch.load, i32 0, i32 %and
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx11, align 4
  %6 = ptrtoint ptr %mult to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mult, align 4
  %arrayidx14 = getelementptr [32 x [2 x i32]], ptr %switch.load, i32 0, i32 %and, i32 1
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx14, align 4
  %9 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %div, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @a370_is_sscg_enabled(ptr noundef %sar) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sar) #5, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %1 = and i32 %0, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  ret i1 %tobool.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kirkwood_fix_sscg_deviation(i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__of_table_a370_clk, !1, !"__of_table_a370_clk", i1 false, i1 false}
!1 = !{!"../drivers/clk/mvebu/armada-370.c", i32 183, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/mvebu/armada-370.c", i32 174, i32 39}
!4 = !{ptr @a370_coreclks, !5, !"a370_coreclks", i1 false, i1 false}
!5 = !{!"../drivers/clk/mvebu/armada-370.c", i32 140, i32 38}
!6 = !{ptr @a370_tclk_freqs, !7, !"a370_tclk_freqs", i1 false, i1 false}
!7 = !{!"../drivers/clk/mvebu/armada-370.c", i32 40, i32 18}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/mvebu/armada-370.c", i32 72, i32 3}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @a370_get_cpu_freq._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @a370_get_cpu_freq._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @a370_cpu_freqs, !15, !"a370_cpu_freqs", i1 false, i1 false}
!15 = !{!"../drivers/clk/mvebu/armada-370.c", i32 54, i32 18}
!16 = !{ptr @a370_nbclk_ratios, !17, !"a370_nbclk_ratios", i1 false, i1 false}
!17 = !{!"../drivers/clk/mvebu/armada-370.c", i32 80, i32 18}
!18 = !{ptr @a370_hclk_ratios, !19, !"a370_hclk_ratios", i1 false, i1 false}
!19 = !{!"../drivers/clk/mvebu/armada-370.c", i32 91, i32 18}
!20 = !{ptr @a370_dramclk_ratios, !21, !"a370_dramclk_ratios", i1 false, i1 false}
!21 = !{!"../drivers/clk/mvebu/armada-370.c", i32 102, i32 18}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/mvebu/armada-370.c", i32 35, i32 37}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/mvebu/armada-370.c", i32 36, i32 36}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/mvebu/armada-370.c", i32 37, i32 39}
!28 = !{ptr @a370_coreclk_ratios, !29, !"a370_coreclk_ratios", i1 false, i1 false}
!29 = !{!"../drivers/clk/mvebu/armada-370.c", i32 34, i32 35}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/mvebu/armada-370.c", i32 155, i32 4}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/mvebu/armada-370.c", i32 156, i32 4}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/mvebu/armada-370.c", i32 157, i32 4}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/mvebu/armada-370.c", i32 158, i32 4}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/mvebu/armada-370.c", i32 159, i32 4}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/mvebu/armada-370.c", i32 160, i32 4}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/mvebu/armada-370.c", i32 161, i32 4}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/mvebu/armada-370.c", i32 162, i32 4}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/mvebu/armada-370.c", i32 163, i32 4}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/mvebu/armada-370.c", i32 164, i32 4}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/mvebu/armada-370.c", i32 165, i32 4}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/mvebu/armada-370.c", i32 166, i32 4}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/mvebu/armada-370.c", i32 167, i32 4}
!56 = !{ptr @a370_gating_desc, !57, !"a370_gating_desc", i1 false, i1 false}
!57 = !{!"../drivers/clk/mvebu/armada-370.c", i32 154, i32 41}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i64 4029764}
!68 = !{i64 2151590987}
!69 = !{i64 2151591695}
!70 = !{i64 2151594593}
!71 = !{i64 2151595031}
