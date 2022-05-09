; ModuleID = '/llk/IR_all_yes/drivers/memory/jedec_ddr_data.c_pt.bc'
source_filename = "../drivers/memory/jedec_ddr_data.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm "\09.section \22___kcrctab_gpl+lpddr2_jedec_addressing_table\22, \22a\22\09"
module asm "\09.weak\09__crc_lpddr2_jedec_addressing_table\09\09\09\09"
module asm "\09.long\09__crc_lpddr2_jedec_addressing_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lpddr2_jedec_addressing_table:\09\09\09\09\09"
module asm "\09.asciz \09\22lpddr2_jedec_addressing_table\22\09\09\09\09\09"
module asm "__kstrtabns_lpddr2_jedec_addressing_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+lpddr2_jedec_timings\22, \22a\22\09"
module asm "\09.weak\09__crc_lpddr2_jedec_timings\09\09\09\09"
module asm "\09.long\09__crc_lpddr2_jedec_timings\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lpddr2_jedec_timings:\09\09\09\09\09"
module asm "\09.asciz \09\22lpddr2_jedec_timings\22\09\09\09\09\09"
module asm "__kstrtabns_lpddr2_jedec_timings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+lpddr2_jedec_min_tck\22, \22a\22\09"
module asm "\09.weak\09__crc_lpddr2_jedec_min_tck\09\09\09\09"
module asm "\09.long\09__crc_lpddr2_jedec_min_tck\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lpddr2_jedec_min_tck:\09\09\09\09\09"
module asm "\09.asciz \09\22lpddr2_jedec_min_tck\22\09\09\09\09\09"
module asm "__kstrtabns_lpddr2_jedec_min_tck:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+lpddr2_jedec_manufacturer\22, \22a\22\09"
module asm "\09.weak\09__crc_lpddr2_jedec_manufacturer\09\09\09\09"
module asm "\09.long\09__crc_lpddr2_jedec_manufacturer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lpddr2_jedec_manufacturer:\09\09\09\09\09"
module asm "\09.asciz \09\22lpddr2_jedec_manufacturer\22\09\09\09\09\09"
module asm "__kstrtabns_lpddr2_jedec_manufacturer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lpddr2_addressing = type { i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lpddr2_timings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lpddr2_min_tck = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@lpddr2_jedec_addressing_table = dso_local constant { [11 x %struct.lpddr2_addressing], [60 x i8] } { [11 x %struct.lpddr2_addressing] [%struct.lpddr2_addressing { i32 2, i32 15600, i32 90000 }, %struct.lpddr2_addressing { i32 2, i32 15600, i32 90000 }, %struct.lpddr2_addressing { i32 2, i32 7800, i32 90000 }, %struct.lpddr2_addressing { i32 2, i32 7800, i32 90000 }, %struct.lpddr2_addressing { i32 3, i32 7800, i32 130000 }, %struct.lpddr2_addressing { i32 3, i32 3900, i32 130000 }, %struct.lpddr2_addressing { i32 3, i32 3900, i32 130000 }, %struct.lpddr2_addressing { i32 3, i32 3900, i32 210000 }, %struct.lpddr2_addressing { i32 2, i32 7800, i32 130000 }, %struct.lpddr2_addressing { i32 2, i32 3900, i32 130000 }, %struct.lpddr2_addressing zeroinitializer], [60 x i8] zeroinitializer }, align 32
@__kstrtab_lpddr2_jedec_addressing_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_lpddr2_jedec_addressing_table = external dso_local constant [0 x i8], align 1
@__ksymtab_lpddr2_jedec_addressing_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lpddr2_jedec_addressing_table to i32), ptr @__kstrtab_lpddr2_jedec_addressing_table, ptr @__kstrtabns_lpddr2_jedec_addressing_table }, section "___ksymtab_gpl+lpddr2_jedec_addressing_table", align 4
@lpddr2_jedec_timings = dso_local constant { [4 x %struct.lpddr2_timings], [64 x i8] } { [4 x %struct.lpddr2_timings] [%struct.lpddr2_timings { i32 200000000, i32 10000000, i32 21000, i32 18000, i32 15000, i32 42000, i32 10000, i32 10000, i32 7500, i32 7500, i32 15000, i32 5500, i32 6000, i32 50000, i32 90000, i32 360000, i32 1000000, i32 70000 }, %struct.lpddr2_timings { i32 266666666, i32 10000000, i32 21000, i32 18000, i32 15000, i32 42000, i32 10000, i32 7500, i32 7500, i32 7500, i32 15000, i32 5500, i32 6000, i32 50000, i32 90000, i32 360000, i32 1000000, i32 70000 }, %struct.lpddr2_timings { i32 400000000, i32 10000000, i32 21000, i32 18000, i32 15000, i32 42000, i32 10000, i32 7500, i32 7500, i32 7500, i32 15000, i32 5500, i32 6000, i32 50000, i32 90000, i32 360000, i32 1000000, i32 70000 }, %struct.lpddr2_timings { i32 533333333, i32 10000000, i32 21000, i32 18000, i32 15000, i32 42000, i32 10000, i32 7500, i32 7500, i32 7500, i32 15000, i32 5500, i32 5620, i32 50000, i32 90000, i32 360000, i32 1000000, i32 70000 }], [64 x i8] zeroinitializer }, align 32
@__kstrtab_lpddr2_jedec_timings = external dso_local constant [0 x i8], align 1
@__kstrtabns_lpddr2_jedec_timings = external dso_local constant [0 x i8], align 1
@__ksymtab_lpddr2_jedec_timings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lpddr2_jedec_timings to i32), ptr @__kstrtab_lpddr2_jedec_timings, ptr @__kstrtabns_lpddr2_jedec_timings }, section "___ksymtab_gpl+lpddr2_jedec_timings", align 4
@lpddr2_jedec_min_tck = dso_local constant { %struct.lpddr2_min_tck, [52 x i8] } { %struct.lpddr2_min_tck { i32 3, i32 3, i32 3, i32 3, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 8 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_lpddr2_jedec_min_tck = external dso_local constant [0 x i8], align 1
@__kstrtabns_lpddr2_jedec_min_tck = external dso_local constant [0 x i8], align 1
@__ksymtab_lpddr2_jedec_min_tck = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lpddr2_jedec_min_tck to i32), ptr @__kstrtab_lpddr2_jedec_min_tck, ptr @__kstrtabns_lpddr2_jedec_min_tck }, section "___ksymtab_gpl+lpddr2_jedec_min_tck", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Samsung\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Qimonda\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Elpida\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Etron\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Nanya\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Hynix\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Mosel\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Winbond\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ESMT\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Spansion\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SST\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ZMOS\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Intel\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Numonyx\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Micron\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"invalid\00", [24 x i8] zeroinitializer }, align 32
@__kstrtab_lpddr2_jedec_manufacturer = external dso_local constant [0 x i8], align 1
@__kstrtabns_lpddr2_jedec_manufacturer = external dso_local constant [0 x i8], align 1
@__ksymtab_lpddr2_jedec_manufacturer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lpddr2_jedec_manufacturer to i32), ptr @__kstrtab_lpddr2_jedec_manufacturer, ptr @__kstrtabns_lpddr2_jedec_manufacturer }, section "___ksymtab_gpl+lpddr2_jedec_manufacturer", align 4
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 11, i64 12, i64 13, i64 14, i64 254, i64 255]
@___asan_gen_.16 = private unnamed_addr constant [30 x i8] c"lpddr2_jedec_addressing_table\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 16, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [21 x i8] c"lpddr2_jedec_timings\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 32, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [21 x i8] c"lpddr2_jedec_min_tck\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 120, i32 29 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 139, i32 10 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 141, i32 10 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 143, i32 10 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 145, i32 10 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 147, i32 10 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 149, i32 10 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 151, i32 10 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 153, i32 10 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 155, i32 10 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 157, i32 10 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 159, i32 10 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 161, i32 10 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 163, i32 10 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 165, i32 10 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 167, i32 10 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private constant [35 x i8] c"../drivers/memory/jedec_ddr_data.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 172, i32 9 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__ksymtab_lpddr2_jedec_addressing_table, ptr @__ksymtab_lpddr2_jedec_manufacturer, ptr @__ksymtab_lpddr2_jedec_min_tck, ptr @__ksymtab_lpddr2_jedec_timings, ptr @lpddr2_jedec_addressing_table, ptr @lpddr2_jedec_timings, ptr @lpddr2_jedec_min_tck, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpddr2_jedec_addressing_table to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpddr2_jedec_timings to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpddr2_jedec_min_tck to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @lpddr2_jedec_manufacturer(i32 noundef %manufacturer_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %manufacturer_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %manufacturer_id, label %sw.epilog [
    i32 1, label %entry.return_crit_edge
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 6, label %sw.bb5
    i32 7, label %sw.bb6
    i32 8, label %sw.bb7
    i32 9, label %sw.bb8
    i32 11, label %sw.bb9
    i32 12, label %sw.bb10
    i32 13, label %sw.bb11
    i32 14, label %sw.bb12
    i32 254, label %sw.bb13
    i32 255, label %sw.bb14
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi ptr [ @.str.15, %sw.epilog ], [ @.str.14, %sw.bb14 ], [ @.str.13, %sw.bb13 ], [ @.str.12, %sw.bb12 ], [ @.str.11, %sw.bb11 ], [ @.str.10, %sw.bb10 ], [ @.str.9, %sw.bb9 ], [ @.str.8, %sw.bb8 ], [ @.str.7, %sw.bb7 ], [ @.str.6, %sw.bb6 ], [ @.str.5, %sw.bb5 ], [ @.str.4, %sw.bb4 ], [ @.str.3, %sw.bb3 ], [ @.str.2, %sw.bb2 ], [ @.str.1, %sw.bb1 ], [ @.str, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @lpddr2_jedec_addressing_table, !1, !"lpddr2_jedec_addressing_table", i1 false, i1 false}
!1 = !{!"../drivers/memory/jedec_ddr_data.c", i32 16, i32 2}
!2 = !{ptr @__ksymtab_lpddr2_jedec_addressing_table, !3, !"__ksymtab_lpddr2_jedec_addressing_table", i1 false, i1 false}
!3 = !{!"../drivers/memory/jedec_ddr_data.c", i32 28, i32 1}
!4 = !{ptr @lpddr2_jedec_timings, !5, !"lpddr2_jedec_timings", i1 false, i1 false}
!5 = !{!"../drivers/memory/jedec_ddr_data.c", i32 32, i32 2}
!6 = !{ptr @__ksymtab_lpddr2_jedec_timings, !7, !"__ksymtab_lpddr2_jedec_timings", i1 false, i1 false}
!7 = !{!"../drivers/memory/jedec_ddr_data.c", i32 118, i32 1}
!8 = !{ptr @lpddr2_jedec_min_tck, !9, !"lpddr2_jedec_min_tck", i1 false, i1 false}
!9 = !{!"../drivers/memory/jedec_ddr_data.c", i32 120, i32 29}
!10 = !{ptr @__ksymtab_lpddr2_jedec_min_tck, !11, !"__ksymtab_lpddr2_jedec_min_tck", i1 false, i1 false}
!11 = !{!"../drivers/memory/jedec_ddr_data.c", i32 133, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/memory/jedec_ddr_data.c", i32 139, i32 10}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/memory/jedec_ddr_data.c", i32 141, i32 10}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/memory/jedec_ddr_data.c", i32 143, i32 10}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/memory/jedec_ddr_data.c", i32 145, i32 10}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/memory/jedec_ddr_data.c", i32 147, i32 10}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/memory/jedec_ddr_data.c", i32 149, i32 10}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/memory/jedec_ddr_data.c", i32 151, i32 10}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/memory/jedec_ddr_data.c", i32 153, i32 10}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/memory/jedec_ddr_data.c", i32 155, i32 10}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/memory/jedec_ddr_data.c", i32 157, i32 10}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/memory/jedec_ddr_data.c", i32 159, i32 10}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/memory/jedec_ddr_data.c", i32 161, i32 10}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/memory/jedec_ddr_data.c", i32 163, i32 10}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/memory/jedec_ddr_data.c", i32 165, i32 10}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/memory/jedec_ddr_data.c", i32 167, i32 10}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/memory/jedec_ddr_data.c", i32 172, i32 9}
!44 = !{ptr @__ksymtab_lpddr2_jedec_manufacturer, !45, !"__ksymtab_lpddr2_jedec_manufacturer", i1 false, i1 false}
!45 = !{!"../drivers/memory/jedec_ddr_data.c", i32 174, i32 1}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
