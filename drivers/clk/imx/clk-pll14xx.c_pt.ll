; ModuleID = '/llk/IR_all_yes/drivers/clk/imx/clk-pll14xx.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-pll14xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+imx_1443x_pll\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_1443x_pll\09\09\09\09"
module asm "\09.long\09__crc_imx_1443x_pll\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_1443x_pll:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_1443x_pll\22\09\09\09\09\09"
module asm "__kstrtabns_imx_1443x_pll:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+imx_1443x_dram_pll\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_1443x_dram_pll\09\09\09\09"
module asm "\09.long\09__crc_imx_1443x_dram_pll\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_1443x_dram_pll:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_1443x_dram_pll\22\09\09\09\09\09"
module asm "__kstrtabns_imx_1443x_dram_pll:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+imx_1416x_pll\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_1416x_pll\09\09\09\09"
module asm "\09.long\09__crc_imx_1416x_pll\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_1416x_pll:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_1416x_pll\22\09\09\09\09\09"
module asm "__kstrtabns_imx_1416x_pll:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+imx_dev_clk_hw_pll14xx\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_dev_clk_hw_pll14xx\09\09\09\09"
module asm "\09.long\09__crc_imx_dev_clk_hw_pll14xx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_dev_clk_hw_pll14xx:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_dev_clk_hw_pll14xx\22\09\09\09\09\09"
module asm "__kstrtabns_imx_dev_clk_hw_pll14xx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.imx_pll14xx_rate_table = type { i32, i32, i32, i32, i32 }
%struct.imx_pll14xx_clk = type { i32, ptr, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_pll14xx = type { %struct.clk_hw, ptr, i32, ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@imx_pll1443x_tbl = internal constant { [6 x %struct.imx_pll14xx_rate_table], [40 x i8] } { [6 x %struct.imx_pll14xx_rate_table] [%struct.imx_pll14xx_rate_table { i32 1039500000, i32 2, i32 173, i32 1, i32 16384 }, %struct.imx_pll14xx_rate_table { i32 650000000, i32 3, i32 325, i32 2, i32 0 }, %struct.imx_pll14xx_rate_table { i32 594000000, i32 2, i32 198, i32 2, i32 0 }, %struct.imx_pll14xx_rate_table { i32 519750000, i32 2, i32 173, i32 2, i32 16384 }, %struct.imx_pll14xx_rate_table { i32 393216000, i32 2, i32 262, i32 3, i32 9437 }, %struct.imx_pll14xx_rate_table { i32 361267200, i32 3, i32 361, i32 3, i32 17511 }], [40 x i8] zeroinitializer }, align 32
@imx_1443x_pll = dso_local global { %struct.imx_pll14xx_clk, [16 x i8] } { %struct.imx_pll14xx_clk { i32 1, ptr @imx_pll1443x_tbl, i32 6, i32 0 }, [16 x i8] zeroinitializer }, align 32
@__kstrtab_imx_1443x_pll = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_1443x_pll = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_1443x_pll = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_1443x_pll to i32), ptr @__kstrtab_imx_1443x_pll, ptr @__kstrtabns_imx_1443x_pll }, section "___ksymtab_gpl+imx_1443x_pll", align 4
@imx_1443x_dram_pll = dso_local global { %struct.imx_pll14xx_clk, [16 x i8] } { %struct.imx_pll14xx_clk { i32 1, ptr @imx_pll1443x_tbl, i32 6, i32 64 }, [16 x i8] zeroinitializer }, align 32
@__kstrtab_imx_1443x_dram_pll = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_1443x_dram_pll = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_1443x_dram_pll = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_1443x_dram_pll to i32), ptr @__kstrtab_imx_1443x_dram_pll, ptr @__kstrtabns_imx_1443x_dram_pll }, section "___ksymtab_gpl+imx_1443x_dram_pll", align 4
@imx_pll1416x_tbl = internal constant { [10 x %struct.imx_pll14xx_rate_table], [56 x i8] } { [10 x %struct.imx_pll14xx_rate_table] [%struct.imx_pll14xx_rate_table { i32 1800000000, i32 3, i32 225, i32 0, i32 0 }, %struct.imx_pll14xx_rate_table { i32 1600000000, i32 3, i32 200, i32 0, i32 0 }, %struct.imx_pll14xx_rate_table { i32 1500000000, i32 3, i32 375, i32 1, i32 0 }, %struct.imx_pll14xx_rate_table { i32 1400000000, i32 3, i32 350, i32 1, i32 0 }, %struct.imx_pll14xx_rate_table { i32 1200000000, i32 3, i32 300, i32 1, i32 0 }, %struct.imx_pll14xx_rate_table { i32 1000000000, i32 3, i32 250, i32 1, i32 0 }, %struct.imx_pll14xx_rate_table { i32 800000000, i32 3, i32 200, i32 1, i32 0 }, %struct.imx_pll14xx_rate_table { i32 750000000, i32 2, i32 250, i32 2, i32 0 }, %struct.imx_pll14xx_rate_table { i32 700000000, i32 3, i32 350, i32 2, i32 0 }, %struct.imx_pll14xx_rate_table { i32 600000000, i32 3, i32 300, i32 2, i32 0 }], [56 x i8] zeroinitializer }, align 32
@imx_1416x_pll = dso_local global { %struct.imx_pll14xx_clk, [16 x i8] } { %struct.imx_pll14xx_clk { i32 0, ptr @imx_pll1416x_tbl, i32 10, i32 0 }, [16 x i8] zeroinitializer }, align 32
@__kstrtab_imx_1416x_pll = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_1416x_pll = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_1416x_pll = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_1416x_pll to i32), ptr @__kstrtab_imx_1416x_pll, ptr @__kstrtabns_imx_1416x_pll }, section "___ksymtab_gpl+imx_1416x_pll", align 4
@clk_pll1416x_min_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pll1416x_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_pll1416x_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_pll14xx_prepare, ptr @clk_pll14xx_unprepare, ptr @clk_pll14xx_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pll1416x_recalc_rate, ptr @clk_pll14xx_round_rate, ptr null, ptr null, ptr null, ptr @clk_pll1416x_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_pll1443x_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_pll14xx_prepare, ptr @clk_pll14xx_unprepare, ptr @clk_pll14xx_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pll1443x_recalc_rate, ptr @clk_pll14xx_round_rate, ptr null, ptr null, ptr null, ptr @clk_pll1443x_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@imx_dev_clk_hw_pll14xx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Unknown pll type for pll clk %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imx_dev_clk_hw_pll14xx\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/clk/imx/clk-pll14xx.c\00", [34 x i8] zeroinitializer }, align 32
@imx_dev_clk_hw_pll14xx._entry_ptr = internal global ptr @imx_dev_clk_hw_pll14xx._entry, section ".printk_index", align 4
@imx_dev_clk_hw_pll14xx._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: failed to register pll %s %d\0A\00", [60 x i8] zeroinitializer }, align 32
@imx_dev_clk_hw_pll14xx._entry_ptr.5 = internal global ptr @imx_dev_clk_hw_pll14xx._entry.3, section ".printk_index", align 4
@__kstrtab_imx_dev_clk_hw_pll14xx = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_dev_clk_hw_pll14xx = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_dev_clk_hw_pll14xx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_dev_clk_hw_pll14xx to i32), ptr @__kstrtab_imx_dev_clk_hw_pll14xx, ptr @__kstrtabns_imx_dev_clk_hw_pll14xx }, section "___ksymtab_gpl+imx_dev_clk_hw_pll14xx", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@clk_pll1416x_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Invalid rate : %lu for pll clk %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"clk_pll1416x_set_rate\00", [42 x i8] zeroinitializer }, align 32
@clk_pll1416x_set_rate._entry_ptr = internal global ptr @clk_pll1416x_set_rate._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@clk_pll1443x_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.8, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"clk_pll1443x_set_rate\00", [42 x i8] zeroinitializer }, align 32
@clk_pll1443x_set_rate._entry_ptr = internal global ptr @clk_pll1443x_set_rate._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"imx_pll1443x_tbl\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 58, i32 44 }
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"imx_1443x_pll\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 67, i32 24 }
@___asan_gen_.15 = private unnamed_addr constant [19 x i8] c"imx_1443x_dram_pll\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 74, i32 24 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"imx_pll1416x_tbl\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 45, i32 44 }
@___asan_gen_.21 = private unnamed_addr constant [14 x i8] c"imx_1416x_pll\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 82, i32 24 }
@___asan_gen_.24 = private unnamed_addr constant [21 x i8] c"clk_pll1416x_min_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 372, i32 29 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"clk_pll1416x_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 363, i32 29 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"clk_pll1443x_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 376, i32 29 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 415, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 435, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 189, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [33 x i8] c"../drivers/clk/imx/clk-pll14xx.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 255, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__ksymtab_imx_1416x_pll, ptr @__ksymtab_imx_1443x_dram_pll, ptr @__ksymtab_imx_1443x_pll, ptr @__ksymtab_imx_dev_clk_hw_pll14xx, ptr @clk_pll1416x_set_rate._entry, ptr @clk_pll1416x_set_rate._entry_ptr, ptr @clk_pll1443x_set_rate._entry, ptr @clk_pll1443x_set_rate._entry_ptr, ptr @imx_dev_clk_hw_pll14xx._entry, ptr @imx_dev_clk_hw_pll14xx._entry.3, ptr @imx_dev_clk_hw_pll14xx._entry_ptr, ptr @imx_dev_clk_hw_pll14xx._entry_ptr.5, ptr @imx_pll1443x_tbl, ptr @imx_1443x_pll, ptr @imx_1443x_dram_pll, ptr @imx_pll1416x_tbl, ptr @imx_1416x_pll, ptr @clk_pll1416x_min_ops, ptr @clk_pll1416x_ops, ptr @clk_pll1443x_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pll1443x_tbl to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_1443x_pll to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_1443x_dram_pll to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pll1416x_tbl to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_1416x_pll to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pll1416x_min_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pll1416x_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pll1443x_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dev_clk_hw_pll14xx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dev_clk_hw_pll14xx._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pll1416x_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pll1443x_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @imx_dev_clk_hw_pll14xx(ptr noundef %dev, ptr noundef %name, ptr noundef %parent_name, ptr noundef %base, ptr nocapture noundef readonly %pll_clk) #0 align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %1 = getelementptr inbounds i8, ptr %init, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 28) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %init, align 4
  %flags = getelementptr inbounds %struct.imx_pll14xx_clk, ptr %pll_clk, i32 0, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %flags3 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %7 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %flags3, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %8 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %9 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %num_parents, align 4
  %10 = ptrtoint ptr %pll_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pll_clk, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.end
  %rate_table = getelementptr inbounds %struct.imx_pll14xx_clk, ptr %pll_clk, i32 0, i32 1
  %13 = ptrtoint ptr %rate_table to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rate_table, align 4
  %tobool4.not = icmp eq ptr %14, null
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  br i1 %tobool4.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @clk_pll1416x_min_ops, ptr %ops, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @clk_pll1416x_ops, ptr %ops, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ops9 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %17 = ptrtoint ptr %ops9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @clk_pll1443x_ops, ptr %ops9, align 4
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %name) #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb8, %if.else, %if.then5
  %base12 = getelementptr inbounds %struct.clk_pll14xx, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %base12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %base, ptr %base12, align 4
  %init14 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %init14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %init, ptr %init14, align 8
  %type16 = getelementptr inbounds %struct.clk_pll14xx, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %11, ptr %type16, align 8
  %rate_table17 = getelementptr inbounds %struct.imx_pll14xx_clk, ptr %pll_clk, i32 0, i32 1
  %21 = ptrtoint ptr %rate_table17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rate_table17, align 4
  %rate_table18 = getelementptr inbounds %struct.clk_pll14xx, ptr %call7.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %rate_table18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %rate_table18, align 4
  %rate_count = getelementptr inbounds %struct.imx_pll14xx_clk, ptr %pll_clk, i32 0, i32 2
  %24 = ptrtoint ptr %rate_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rate_count, align 4
  %rate_count19 = getelementptr inbounds %struct.clk_pll14xx, ptr %call7.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %rate_count19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %rate_count19, align 8
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %base) #7, !srcloc !52
  %28 = and i32 %27, -268435457
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %base, i32 %28) #7, !srcloc !53
  %call26 = call i32 @clk_hw_register(ptr noundef %dev, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %sw.epilog.cleanup_crit_edge, label %do.end31

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end31:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %name, i32 noundef %call26) #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %29 = inttoptr i32 %call26 to ptr
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %sw.epilog.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %29, %do.end31 ], [ %call7.i.i, %sw.epilog.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll1416x_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %parent_rate to i64
  %base = getelementptr inbounds %struct.clk_pll14xx, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !52
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %and = lshr i32 %3, 12
  %shr = and i32 %and, 1023
  %and3 = lshr i32 %3, 4
  %shr4 = and i32 %and3, 63
  %and5 = and i32 %3, 7
  %conv7 = zext i32 %shr to i64
  %mul = mul nuw nsw i64 %conv7, %conv
  %shl = shl nuw nsw i32 %shr4, %and5
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp179 = icmp ult i64 %mul, 4294967296
  br i1 %cmp179, label %if.then183, label %if.else189, !prof !54

if.then183:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv184 = trunc i64 %mul to i32
  %div187 = udiv i32 %conv184, %shl
  br label %if.end193

if.else189:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl, i64 %mul) #12, !srcloc !55
  %asmresult1.i = extractvalue { i64, i64 } %4, 1
  %extract.t304 = trunc i64 %asmresult1.i to i32
  br label %if.end193

if.end193:                                        ; preds = %if.else189, %if.then183
  %fvco.0.off0 = phi i32 [ %div187, %if.then183 ], [ %extract.t304, %if.else189 ]
  ret i32 %fvco.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll14xx_prepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.clk_pll14xx, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !52
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %or = or i32 %3, 16
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #7, !srcloc !53
  %or5 = or i32 %3, 528
  %7 = tail call i32 @llvm.bswap.i32(i32 %or5)
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #7, !srcloc !53
  %call.i = tail call i64 @ktime_get() #7
  %add.i.i = add i64 %call.i, 10000000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %if.end
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %.mask = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool.not.i = icmp eq i32 %.mask, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.cond.i.if.end11_crit_edge

for.cond.i.if.end11_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call13.i = tail call i64 @ktime_get() #7
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %clk_pll14xx_wait_lock.exit, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

clk_pll14xx_wait_lock.exit:                       ; preds = %land.lhs.true.i
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %.mask31 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask31)
  %tobool29.not.inv.i.not = icmp eq i32 %.mask31, 0
  br i1 %tobool29.not.inv.i.not, label %clk_pll14xx_wait_lock.exit.cleanup_crit_edge, label %clk_pll14xx_wait_lock.exit.if.end11_crit_edge

clk_pll14xx_wait_lock.exit.if.end11_crit_edge:    ; preds = %clk_pll14xx_wait_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

clk_pll14xx_wait_lock.exit.cleanup_crit_edge:     ; preds = %clk_pll14xx_wait_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %clk_pll14xx_wait_lock.exit.if.end11_crit_edge, %for.cond.i.if.end11_crit_edge
  %and12 = and i32 %or5, -17
  %16 = tail call i32 @llvm.bswap.i32(i32 %and12)
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #7, !srcloc !53
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %clk_pll14xx_wait_lock.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ 0, %entry.cleanup_crit_edge ], [ -110, %clk_pll14xx_wait_lock.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_pll14xx_unprepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.clk_pll14xx, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !52
  %3 = and i32 %2, -131073
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #7, !srcloc !53
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll14xx_is_prepared(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.clk_pll14xx, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !52
  %3 = lshr i32 %2, 17
  %.lobit = and i32 %3, 1
  ret i32 %.lobit
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll14xx_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readnone %prate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_table1 = getelementptr inbounds %struct.clk_pll14xx, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %rate_table1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rate_table1, align 4
  %rate_count = getelementptr inbounds %struct.clk_pll14xx, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %rate_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp18 = icmp sgt i32 %3, 0
  br i1 %cmp18, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.019 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.imx_pll14xx_rate_table, ptr %1, i32 %i.019
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %rate)
  %cmp3.not = icmp ugt i32 %5, %rate
  br i1 %cmp3.not, label %for.inc, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.end.loopexit, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo = add i32 %3, -1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ -1, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %arrayidx6 = getelementptr %struct.imx_pll14xx_rate_table, ptr %1, i32 %i.0.lcssa
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %for.end ], [ %5, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll1416x_set_rate(ptr noundef %hw, i32 noundef %drate, i32 noundef %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_table1.i = getelementptr inbounds %struct.clk_pll14xx, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %rate_table1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rate_table1.i, align 4
  %rate_count.i = getelementptr inbounds %struct.clk_pll14xx, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %rate_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.i = icmp sgt i32 %3, 0
  br i1 %cmp11.i, label %entry.for.body.i_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.cond.i.do.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.imx_pll14xx_rate_table, ptr %1, i32 %i.012.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %drate)
  %cmp3.i = icmp eq i32 %5, %drate
  br i1 %cmp3.i, label %imx_get_pll_settings.exit, label %for.cond.i

imx_get_pll_settings.exit:                        ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %imx_get_pll_settings.exit.do.end_crit_edge, label %if.end

imx_get_pll_settings.exit.do.end_crit_edge:       ; preds = %imx_get_pll_settings.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %imx_get_pll_settings.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %entry.do.end_crit_edge
  %call3 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #7
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %drate, ptr noundef %call3) #11
  br label %cleanup

if.end:                                           ; preds = %imx_get_pll_settings.exit
  %base = getelementptr inbounds %struct.clk_pll14xx, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !52
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %and.i = lshr i32 %9, 12
  %shr.i = and i32 %and.i, 1023
  %mdiv.i = getelementptr %struct.imx_pll14xx_rate_table, ptr %1, i32 %i.012.i, i32 2
  %10 = ptrtoint ptr %mdiv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mdiv.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %shr.i)
  %cmp.not.i = icmp eq i32 %11, %shr.i
  br i1 %cmp.not.i, label %clk_pll14xx_mp_change.exit, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

clk_pll14xx_mp_change.exit:                       ; preds = %if.end
  %and1.i = lshr i32 %9, 4
  %shr2.i = and i32 %and1.i, 63
  %pdiv.i = getelementptr %struct.imx_pll14xx_rate_table, ptr %1, i32 %i.012.i, i32 1
  %12 = ptrtoint ptr %pdiv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pdiv.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %shr2.i)
  %cmp3.i77.not = icmp eq i32 %13, %shr2.i
  br i1 %cmp3.i77.not, label %if.then9, label %clk_pll14xx_mp_change.exit.if.end12_crit_edge

clk_pll14xx_mp_change.exit.if.end12_crit_edge:    ; preds = %clk_pll14xx_mp_change.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then9:                                         ; preds = %clk_pll14xx_mp_change.exit
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %9, -8
  %sdiv = getelementptr %struct.imx_pll14xx_rate_table, ptr %1, i32 %i.012.i, i32 3
  %14 = ptrtoint ptr %sdiv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sdiv, align 4
  %or = or i32 %15, %and
  %16 = tail call i32 @llvm.bswap.i32(i32 %or)
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr11 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %16) #7, !srcloc !53
  br label %cleanup

if.end12:                                         ; preds = %clk_pll14xx_mp_change.exit.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #7, !srcloc !52
  %22 = or i32 %21, 32
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #7, !srcloc !53
  %25 = and i32 %22, -131073
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #7, !srcloc !53
  %28 = or i32 %25, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #7, !srcloc !53
  %31 = ptrtoint ptr %mdiv.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mdiv.i, align 4
  %shl26 = shl i32 %32, 12
  %pdiv = getelementptr %struct.imx_pll14xx_rate_table, ptr %1, i32 %i.012.i, i32 1
  %33 = ptrtoint ptr %pdiv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pdiv, align 4
  %shl27 = shl i32 %34, 4
  %or28 = or i32 %shl27, %shl26
  %sdiv29 = getelementptr %struct.imx_pll14xx_rate_table, ptr %1, i32 %i.012.i, i32 3
  %35 = ptrtoint ptr %sdiv29 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sdiv29, align 4
  %or31 = or i32 %or28, %36
  %37 = tail call i32 @llvm.bswap.i32(i32 %or31)
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  %add.ptr33 = getelementptr i8, ptr %39, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %37) #7, !srcloc !53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 644244) #7
  %41 = or i32 %21, 268566560
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #7, !srcloc !53
  %call.i = tail call i64 @ktime_get() #7
  %add.i.i = add i64 %call.i, 10000000
  br label %for.cond.i78

for.cond.i78:                                     ; preds = %land.lhs.true.i.for.cond.i78_crit_edge, %if.end12
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %.mask = and i32 %46, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool.not.i = icmp eq i32 %.mask, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.cond.i78.if.end39_crit_edge

for.cond.i78.if.end39_crit_edge:                  ; preds = %for.cond.i78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

land.lhs.true.i:                                  ; preds = %for.cond.i78
  %call13.i = tail call i64 @ktime_get() #7
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %clk_pll14xx_wait_lock.exit, label %land.lhs.true.i.for.cond.i78_crit_edge

land.lhs.true.i.for.cond.i78_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i78

clk_pll14xx_wait_lock.exit:                       ; preds = %land.lhs.true.i
  %47 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base, align 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %.mask84 = and i32 %49, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask84)
  %tobool29.not.inv.i.not = icmp eq i32 %.mask84, 0
  br i1 %tobool29.not.inv.i.not, label %clk_pll14xx_wait_lock.exit.cleanup_crit_edge, label %clk_pll14xx_wait_lock.exit.if.end39_crit_edge

clk_pll14xx_wait_lock.exit.if.end39_crit_edge:    ; preds = %clk_pll14xx_wait_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

clk_pll14xx_wait_lock.exit.cleanup_crit_edge:     ; preds = %clk_pll14xx_wait_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end39:                                         ; preds = %clk_pll14xx_wait_lock.exit.if.end39_crit_edge, %for.cond.i78.if.end39_crit_edge
  %50 = and i32 %41, -268435457
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #7, !srcloc !53
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %clk_pll14xx_wait_lock.exit.cleanup_crit_edge, %if.then9, %do.end
  %retval.0 = phi i32 [ 0, %if.end39 ], [ 0, %if.then9 ], [ -22, %do.end ], [ -110, %clk_pll14xx_wait_lock.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll1443x_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %parent_rate to i64
  %base = getelementptr inbounds %struct.clk_pll14xx, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !52
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !52
  %and10 = and i32 %3, 7
  %7 = and i32 %6, -65536
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = shl i32 %3, 4
  %mul = and i32 %9, 67043328
  %sext = shl nuw i32 %8, 16
  %conv14 = ashr exact i32 %sext, 16
  %add = add nsw i32 %conv14, %mul
  %conv15 = zext i32 %add to i64
  %mul16 = mul nuw i64 %conv15, %conv
  %10 = shl i32 %3, 12
  %mul17 = and i32 %10, 4128768
  %shl = shl nuw nsw i32 %mul17, %and10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul16)
  %cmp190 = icmp ult i64 %mul16, 4294967296
  br i1 %cmp190, label %if.then194, label %if.else200, !prof !54

if.then194:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv195 = trunc i64 %mul16 to i32
  %div198 = udiv i32 %conv195, %shl
  br label %if.end204

if.else200:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl, i64 %mul16) #12, !srcloc !55
  %asmresult1.i = extractvalue { i64, i64 } %11, 1
  %extract.t316 = trunc i64 %asmresult1.i to i32
  br label %if.end204

if.end204:                                        ; preds = %if.else200, %if.then194
  %fvco.0.off0 = phi i32 [ %div198, %if.then194 ], [ %extract.t316, %if.else200 ]
  ret i32 %fvco.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll1443x_set_rate(ptr noundef %hw, i32 noundef %drate, i32 noundef %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_table1.i = getelementptr inbounds %struct.clk_pll14xx, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %rate_table1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rate_table1.i, align 4
  %rate_count.i = getelementptr inbounds %struct.clk_pll14xx, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %rate_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.i = icmp sgt i32 %3, 0
  br i1 %cmp11.i, label %entry.for.body.i_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.cond.i.do.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.imx_pll14xx_rate_table, ptr %1, i32 %i.012.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %drate)
  %cmp3.i = icmp eq i32 %5, %drate
  br i1 %cmp3.i, label %imx_get_pll_settings.exit, label %for.cond.i

imx_get_pll_settings.exit:                        ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %imx_get_pll_settings.exit.do.end_crit_edge, label %if.end

imx_get_pll_settings.exit.do.end_crit_edge:       ; preds = %imx_get_pll_settings.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %imx_get_pll_settings.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %entry.do.end_crit_edge
  %call3 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #7
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8, i32 noundef %drate, ptr noundef %call3) #11
  br label %cleanup

if.end:                                           ; preds = %imx_get_pll_settings.exit
  %base = getelementptr inbounds %struct.clk_pll14xx, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !52
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %and.i = lshr i32 %9, 12
  %shr.i = and i32 %and.i, 1023
  %mdiv.i = getelementptr %struct.imx_pll14xx_rate_table, ptr %1, i32 %i.012.i, i32 2
  %10 = ptrtoint ptr %mdiv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mdiv.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %shr.i)
  %cmp.not.i = icmp eq i32 %11, %shr.i
  br i1 %cmp.not.i, label %clk_pll14xx_mp_change.exit, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

clk_pll14xx_mp_change.exit:                       ; preds = %if.end
  %and1.i = lshr i32 %9, 4
  %shr2.i = and i32 %and1.i, 63
  %pdiv.i = getelementptr %struct.imx_pll14xx_rate_table, ptr %1, i32 %i.012.i, i32 1
  %12 = ptrtoint ptr %pdiv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pdiv.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %shr2.i)
  %cmp3.i81.not = icmp eq i32 %13, %shr2.i
  br i1 %cmp3.i81.not, label %if.then9, label %clk_pll14xx_mp_change.exit.if.end15_crit_edge

clk_pll14xx_mp_change.exit.if.end15_crit_edge:    ; preds = %clk_pll14xx_mp_change.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then9:                                         ; preds = %clk_pll14xx_mp_change.exit
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %9, -8
  %sdiv = getelementptr %struct.imx_pll14xx_rate_table, ptr %1, i32 %i.012.i, i32 3
  %14 = ptrtoint ptr %sdiv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sdiv, align 4
  %or = or i32 %15, %and
  %16 = tail call i32 @llvm.bswap.i32(i32 %or)
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr11 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %16) #7, !srcloc !53
  %kdiv = getelementptr %struct.imx_pll14xx_rate_table, ptr %1, i32 %i.012.i, i32 4
  %19 = ptrtoint ptr %kdiv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %kdiv, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr14 = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %21) #7, !srcloc !53
  br label %cleanup

if.end15:                                         ; preds = %clk_pll14xx_mp_change.exit.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #7, !srcloc !52
  %27 = and i32 %26, -131073
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #7, !srcloc !53
  %30 = or i32 %27, 268435456
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #7, !srcloc !53
  %33 = ptrtoint ptr %mdiv.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mdiv.i, align 4
  %shl24 = shl i32 %34, 12
  %pdiv = getelementptr %struct.imx_pll14xx_rate_table, ptr %1, i32 %i.012.i, i32 1
  %35 = ptrtoint ptr %pdiv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pdiv, align 4
  %shl25 = shl i32 %36, 4
  %or26 = or i32 %shl25, %shl24
  %sdiv27 = getelementptr %struct.imx_pll14xx_rate_table, ptr %1, i32 %i.012.i, i32 3
  %37 = ptrtoint ptr %sdiv27 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sdiv27, align 4
  %or29 = or i32 %or26, %38
  %39 = tail call i32 @llvm.bswap.i32(i32 %or29)
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base, align 4
  %add.ptr31 = getelementptr i8, ptr %41, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %39) #7, !srcloc !53
  %kdiv32 = getelementptr %struct.imx_pll14xx_rate_table, ptr %1, i32 %i.012.i, i32 4
  %42 = ptrtoint ptr %kdiv32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %kdiv32, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 4
  %add.ptr35 = getelementptr i8, ptr %46, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %44) #7, !srcloc !53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 644244) #7
  %48 = or i32 %26, 268566528
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #7, !srcloc !53
  %call.i = tail call i64 @ktime_get() #7
  %add.i.i = add i64 %call.i, 10000000
  br label %for.cond.i82

for.cond.i82:                                     ; preds = %land.lhs.true.i.for.cond.i82_crit_edge, %if.end15
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base, align 4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %.mask = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool.not.i = icmp eq i32 %.mask, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.cond.i82.if.end41_crit_edge

for.cond.i82.if.end41_crit_edge:                  ; preds = %for.cond.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

land.lhs.true.i:                                  ; preds = %for.cond.i82
  %call13.i = tail call i64 @ktime_get() #7
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %clk_pll14xx_wait_lock.exit, label %land.lhs.true.i.for.cond.i82_crit_edge

land.lhs.true.i.for.cond.i82_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i82

clk_pll14xx_wait_lock.exit:                       ; preds = %land.lhs.true.i
  %54 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base, align 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %.mask88 = and i32 %56, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask88)
  %tobool29.not.inv.i.not = icmp eq i32 %.mask88, 0
  br i1 %tobool29.not.inv.i.not, label %clk_pll14xx_wait_lock.exit.cleanup_crit_edge, label %clk_pll14xx_wait_lock.exit.if.end41_crit_edge

clk_pll14xx_wait_lock.exit.if.end41_crit_edge:    ; preds = %clk_pll14xx_wait_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

clk_pll14xx_wait_lock.exit.cleanup_crit_edge:     ; preds = %clk_pll14xx_wait_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41:                                         ; preds = %clk_pll14xx_wait_lock.exit.if.end41_crit_edge, %for.cond.i82.if.end41_crit_edge
  %57 = and i32 %48, -268435457
  %58 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #7, !srcloc !53
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %clk_pll14xx_wait_lock.exit.cleanup_crit_edge, %if.then9, %do.end
  %retval.0 = phi i32 [ 0, %if.end41 ], [ 0, %if.then9 ], [ -22, %do.end ], [ -110, %clk_pll14xx_wait_lock.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !39, !41, !42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @imx_1443x_pll, !1, !"imx_1443x_pll", i1 false, i1 false}
!1 = !{!"../drivers/clk/imx/clk-pll14xx.c", i32 67, i32 24}
!2 = !{ptr @__ksymtab_imx_1443x_pll, !3, !"__ksymtab_imx_1443x_pll", i1 false, i1 false}
!3 = !{!"../drivers/clk/imx/clk-pll14xx.c", i32 72, i32 1}
!4 = !{ptr @imx_1443x_dram_pll, !5, !"imx_1443x_dram_pll", i1 false, i1 false}
!5 = !{!"../drivers/clk/imx/clk-pll14xx.c", i32 74, i32 24}
!6 = !{ptr @__ksymtab_imx_1443x_dram_pll, !7, !"__ksymtab_imx_1443x_dram_pll", i1 false, i1 false}
!7 = !{!"../drivers/clk/imx/clk-pll14xx.c", i32 80, i32 1}
!8 = !{ptr @imx_1416x_pll, !9, !"imx_1416x_pll", i1 false, i1 false}
!9 = !{!"../drivers/clk/imx/clk-pll14xx.c", i32 82, i32 24}
!10 = !{ptr @__ksymtab_imx_1416x_pll, !11, !"__ksymtab_imx_1416x_pll", i1 false, i1 false}
!11 = !{!"../drivers/clk/imx/clk-pll14xx.c", i32 87, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/imx/clk-pll14xx.c", i32 415, i32 3}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @imx_dev_clk_hw_pll14xx._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @imx_dev_clk_hw_pll14xx._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/imx/clk-pll14xx.c", i32 435, i32 3}
!20 = !{ptr @imx_dev_clk_hw_pll14xx._entry.3, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @imx_dev_clk_hw_pll14xx._entry_ptr.5, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__ksymtab_imx_dev_clk_hw_pll14xx, !23, !"__ksymtab_imx_dev_clk_hw_pll14xx", i1 false, i1 false}
!23 = !{!"../drivers/clk/imx/clk-pll14xx.c", i32 443, i32 1}
!24 = !{ptr @imx_pll1443x_tbl, !25, !"imx_pll1443x_tbl", i1 false, i1 false}
!25 = !{!"../drivers/clk/imx/clk-pll14xx.c", i32 58, i32 44}
!26 = !{ptr @imx_pll1416x_tbl, !27, !"imx_pll1416x_tbl", i1 false, i1 false}
!27 = !{!"../drivers/clk/imx/clk-pll14xx.c", i32 45, i32 44}
!28 = !{ptr @clk_pll1416x_min_ops, !29, !"clk_pll1416x_min_ops", i1 false, i1 false}
!29 = !{!"../drivers/clk/imx/clk-pll14xx.c", i32 372, i32 29}
!30 = !{ptr @clk_pll1416x_ops, !31, !"clk_pll1416x_ops", i1 false, i1 false}
!31 = !{!"../drivers/clk/imx/clk-pll14xx.c", i32 363, i32 29}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/imx/clk-pll14xx.c", i32 189, i32 3}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @clk_pll1416x_set_rate._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @clk_pll1416x_set_rate._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @clk_pll1443x_ops, !38, !"clk_pll1443x_ops", i1 false, i1 false}
!38 = !{!"../drivers/clk/imx/clk-pll14xx.c", i32 376, i32 29}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/imx/clk-pll14xx.c", i32 255, i32 3}
!41 = !{ptr @clk_pll1443x_set_rate._entry, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @clk_pll1443x_set_rate._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 4035674}
!53 = !{i64 4035256}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{i64 2148950640, i64 2148950920, i64 2148951254, i64 2148951588}
!56 = !{i64 2152569699}
!57 = !{i64 2152570153}
!58 = !{i64 2152575350}
