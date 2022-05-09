; ModuleID = '/llk/IR_all_yes/drivers/memory/of_memory.c_pt.bc'
source_filename = "../drivers/memory/of_memory.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+of_get_min_tck\22, \22a\22\09"
module asm "\09.weak\09__crc_of_get_min_tck\09\09\09\09"
module asm "\09.long\09__crc_of_get_min_tck\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_min_tck:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_min_tck\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_min_tck:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+of_get_ddr_timings\22, \22a\22\09"
module asm "\09.weak\09__crc_of_get_ddr_timings\09\09\09\09"
module asm "\09.long\09__crc_of_get_ddr_timings\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_ddr_timings:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_ddr_timings\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_ddr_timings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+of_lpddr3_get_min_tck\22, \22a\22\09"
module asm "\09.weak\09__crc_of_lpddr3_get_min_tck\09\09\09\09"
module asm "\09.long\09__crc_of_lpddr3_get_min_tck\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_lpddr3_get_min_tck:\09\09\09\09\09"
module asm "\09.asciz \09\22of_lpddr3_get_min_tck\22\09\09\09\09\09"
module asm "__kstrtabns_of_lpddr3_get_min_tck:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+of_lpddr3_get_ddr_timings\22, \22a\22\09"
module asm "\09.weak\09__crc_of_lpddr3_get_ddr_timings\09\09\09\09"
module asm "\09.long\09__crc_of_lpddr3_get_ddr_timings\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_lpddr3_get_ddr_timings:\09\09\09\09\09"
module asm "\09.asciz \09\22of_lpddr3_get_ddr_timings\22\09\09\09\09\09"
module asm "__kstrtabns_of_lpddr3_get_ddr_timings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+of_lpddr2_get_info\22, \22a\22\09"
module asm "\09.weak\09__crc_of_lpddr2_get_info\09\09\09\09"
module asm "\09.long\09__crc_of_lpddr2_get_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_lpddr2_get_info:\09\09\09\09\09"
module asm "\09.asciz \09\22of_lpddr2_get_info\22\09\09\09\09\09"
module asm "__kstrtabns_of_lpddr2_get_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lpddr2_min_tck = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lpddr2_timings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lpddr3_min_tck = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lpddr3_timings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lpddr2_info = type { i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tRPab-min-tck\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tRCD-min-tck\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tWR-min-tck\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tRASmin-min-tck\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tRRD-min-tck\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tWTR-min-tck\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tXP-min-tck\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tRTP-min-tck\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tCKE-min-tck\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tCKESR-min-tck\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tFAW-min-tck\00", [19 x i8] zeroinitializer }, align 32
@of_get_min_tck._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 58, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Using default min-tck values\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"of_get_min_tck\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/memory/of_memory.c\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@of_get_min_tck._entry_ptr = internal global ptr @of_get_min_tck._entry, section ".printk_index", align 4
@lpddr2_jedec_min_tck = external dso_local constant %struct.lpddr2_min_tck, align 4
@__kstrtab_of_get_min_tck = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_min_tck = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_min_tck = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_min_tck to i32), ptr @__kstrtab_of_get_min_tck, ptr @__kstrtabns_of_get_min_tck }, section "___ksymtab+of_get_min_tck", align 4
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"jedec,lpddr2-timings\00", [43 x i8] zeroinitializer }, align 32
@of_get_ddr_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.13, i32 120, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unsupported memory type\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"of_get_ddr_timings\00", [45 x i8] zeroinitializer }, align 32
@of_get_ddr_timings._entry_ptr = internal global ptr @of_get_ddr_timings._entry, section ".printk_index", align 4
@of_get_ddr_timings._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.13, i32 149, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Using default memory timings\0A\00", [34 x i8] zeroinitializer }, align 32
@of_get_ddr_timings._entry_ptr.21 = internal global ptr @of_get_ddr_timings._entry.19, section ".printk_index", align 4
@lpddr2_jedec_timings = external dso_local constant [4 x %struct.lpddr2_timings], align 4
@__kstrtab_of_get_ddr_timings = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_ddr_timings = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_ddr_timings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_ddr_timings to i32), ptr @__kstrtab_of_get_ddr_timings, ptr @__kstrtabns_of_get_ddr_timings }, section "___ksymtab+of_get_ddr_timings", align 4
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tRFC-min-tck\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tRPpb-min-tck\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tRC-min-tck\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tRAS-min-tck\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tW2W-C2C-min-tck\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tR2R-C2C-min-tck\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tWL-min-tck\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tDQSCK-min-tck\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tRL-min-tck\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tXSR-min-tck\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tMRD-min-tck\00", [19 x i8] zeroinitializer }, align 32
@of_lpddr3_get_min_tck._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.13, i32 197, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Errors while parsing min-tck values\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"of_lpddr3_get_min_tck\00", [42 x i8] zeroinitializer }, align 32
@of_lpddr3_get_min_tck._entry_ptr = internal global ptr @of_lpddr3_get_min_tck._entry, section ".printk_index", align 4
@of_lpddr3_get_min_tck._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.34, ptr @.str.13, i32 205, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@of_lpddr3_get_min_tck._entry_ptr.36 = internal global ptr @of_lpddr3_get_min_tck._entry.35, section ".printk_index", align 4
@__kstrtab_of_lpddr3_get_min_tck = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_lpddr3_get_min_tck = external dso_local constant [0 x i8], align 1
@__ksymtab_of_lpddr3_get_min_tck = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_lpddr3_get_min_tck to i32), ptr @__kstrtab_of_lpddr3_get_min_tck, ptr @__kstrtabns_of_lpddr3_get_min_tck }, section "___ksymtab+of_lpddr3_get_min_tck", align 4
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"jedec,lpddr3-timings\00", [43 x i8] zeroinitializer }, align 32
@of_lpddr3_get_ddr_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.38, ptr @.str.13, i32 267, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"of_lpddr3_get_ddr_timings\00", [38 x i8] zeroinitializer }, align 32
@of_lpddr3_get_ddr_timings._entry_ptr = internal global ptr @of_lpddr3_get_ddr_timings._entry, section ".printk_index", align 4
@of_lpddr3_get_ddr_timings._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.13, i32 296, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to get timings\0A\00", [41 x i8] zeroinitializer }, align 32
@of_lpddr3_get_ddr_timings._entry_ptr.41 = internal global ptr @of_lpddr3_get_ddr_timings._entry.39, section ".printk_index", align 4
@__kstrtab_of_lpddr3_get_ddr_timings = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_lpddr3_get_ddr_timings = external dso_local constant [0 x i8], align 1
@__ksymtab_of_lpddr3_get_ddr_timings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_lpddr3_get_ddr_timings to i32), ptr @__kstrtab_of_lpddr3_get_ddr_timings, ptr @__kstrtabns_of_lpddr3_get_ddr_timings }, section "___ksymtab+of_lpddr3_get_ddr_timings", align 4
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"revision-id1\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"revision-id2\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"io-width\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"density\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"jedec,lpddr2-s4\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"jedec,lpddr2-s2\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"jedec,lpddr2-nvm\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compatible\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"samsung,\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qimonda,\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"elpida,\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"etron,\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nanya,\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hynix,\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mosel,\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"winbond,\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"esmt,\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spansion,\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sst,\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"zmos,\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"intel,\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"numonyx,\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"micron,\00", [24 x i8] zeroinitializer }, align 32
@__kstrtab_of_lpddr2_get_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_lpddr2_get_info = external dso_local constant [0 x i8], align 1
@__ksymtab_of_lpddr2_get_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_lpddr2_get_info to i32), ptr @__kstrtab_of_lpddr2_get_info, ptr @__kstrtabns_of_lpddr2_get_info }, section "___ksymtab+of_lpddr2_get_info", align 4
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max-freq\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"min-freq\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tRPab\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tRCD\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tWR\00", [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tRAS-min\00", [23 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tRRD\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tWTR\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tXP\00", [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tRTP\00", [27 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tCKESR\00", [25 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tDQSCK-max\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tFAW\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tZQCS\00", [26 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tZQCL\00", [26 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tZQinit\00", [24 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tRAS-max-ns\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tDQSCK-max-derated\00", [45 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tRFC\00", [27 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tRPpb\00", [26 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tRC\00", [28 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tRAS\00", [27 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tW2W-C2C\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tR2R-C2C\00", [23 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tXSR\00", [27 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tCKE\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tMRD\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 38, i32 34 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 39, i32 34 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 40, i32 34 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 41, i32 34 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 42, i32 34 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 43, i32 34 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 44, i32 34 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 45, i32 34 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 46, i32 34 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 47, i32 34 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 48, i32 34 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 58, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 117, i32 16 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 120, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 149, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 174, i32 34 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 177, i32 34 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 179, i32 34 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 180, i32 34 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 184, i32 34 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 185, i32 34 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 186, i32 34 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 187, i32 34 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 188, i32 34 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 190, i32 34 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 194, i32 34 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 197, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 205, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 264, i32 16 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 267, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 296, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 320, i32 33 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 324, i32 33 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 328, i32 33 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 334, i32 33 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 340, i32 34 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 342, i32 39 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 344, i32 39 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 349, i32 30 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 359, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 360, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 361, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 362, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 363, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 364, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 365, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 366, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 367, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 368, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 369, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 370, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 371, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 372, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 373, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 68, i32 33 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 69, i32 34 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 70, i32 34 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 71, i32 34 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 72, i32 34 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 73, i32 34 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 74, i32 34 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 75, i32 34 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 76, i32 34 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 77, i32 34 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 78, i32 34 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 79, i32 34 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 80, i32 34 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 81, i32 34 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 82, i32 34 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 83, i32 34 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 84, i32 34 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 85, i32 34 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 216, i32 33 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 218, i32 34 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 221, i32 34 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 223, i32 34 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 224, i32 34 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 228, i32 34 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 229, i32 34 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 231, i32 34 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 233, i32 34 }
@___asan_gen_.372 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.373 = private constant [30 x i8] c"../drivers/memory/of_memory.c\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 235, i32 34 }
@llvm.compiler.used = appending global [106 x ptr] [ptr @__ksymtab_of_get_ddr_timings, ptr @__ksymtab_of_get_min_tck, ptr @__ksymtab_of_lpddr2_get_info, ptr @__ksymtab_of_lpddr3_get_ddr_timings, ptr @__ksymtab_of_lpddr3_get_min_tck, ptr @of_get_ddr_timings._entry, ptr @of_get_ddr_timings._entry.19, ptr @of_get_ddr_timings._entry_ptr, ptr @of_get_ddr_timings._entry_ptr.21, ptr @of_get_min_tck._entry, ptr @of_get_min_tck._entry_ptr, ptr @of_lpddr3_get_ddr_timings._entry, ptr @of_lpddr3_get_ddr_timings._entry.39, ptr @of_lpddr3_get_ddr_timings._entry_ptr, ptr @of_lpddr3_get_ddr_timings._entry_ptr.41, ptr @of_lpddr3_get_min_tck._entry, ptr @of_lpddr3_get_min_tck._entry.35, ptr @of_lpddr3_get_min_tck._entry_ptr, ptr @of_lpddr3_get_min_tck._entry_ptr.36, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92], section "llvm.metadata"
@0 = internal global [94 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_min_tck._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_ddr_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_ddr_timings._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_lpddr3_get_min_tck._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_lpddr3_get_min_tck._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_lpddr3_get_ddr_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_lpddr3_get_ddr_timings._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @of_get_min_tck(ptr noundef %np, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end:                                           ; preds = %entry
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef nonnull %call.i, i32 noundef 1, i32 noundef 0) #6
  %0 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #6
  %tRCD = getelementptr inbounds %struct.lpddr2_min_tck, ptr %call.i, i32 0, i32 1
  %call.i.i62 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.1, ptr noundef %tRCD, i32 noundef 1, i32 noundef 0) #6
  %1 = tail call i32 @llvm.smin.i32(i32 %call.i.i62, i32 0) #6
  %or3 = or i32 %1, %0
  %tWR = getelementptr inbounds %struct.lpddr2_min_tck, ptr %call.i, i32 0, i32 2
  %call.i.i63 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.2, ptr noundef %tWR, i32 noundef 1, i32 noundef 0) #6
  %2 = tail call i32 @llvm.smin.i32(i32 %call.i.i63, i32 0) #6
  %or5 = or i32 %or3, %2
  %tRASmin = getelementptr inbounds %struct.lpddr2_min_tck, ptr %call.i, i32 0, i32 3
  %call.i.i64 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.3, ptr noundef %tRASmin, i32 noundef 1, i32 noundef 0) #6
  %3 = tail call i32 @llvm.smin.i32(i32 %call.i.i64, i32 0) #6
  %or7 = or i32 %or5, %3
  %tRRD = getelementptr inbounds %struct.lpddr2_min_tck, ptr %call.i, i32 0, i32 4
  %call.i.i65 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.4, ptr noundef %tRRD, i32 noundef 1, i32 noundef 0) #6
  %4 = tail call i32 @llvm.smin.i32(i32 %call.i.i65, i32 0) #6
  %or9 = or i32 %or7, %4
  %tWTR = getelementptr inbounds %struct.lpddr2_min_tck, ptr %call.i, i32 0, i32 5
  %call.i.i66 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.5, ptr noundef %tWTR, i32 noundef 1, i32 noundef 0) #6
  %5 = tail call i32 @llvm.smin.i32(i32 %call.i.i66, i32 0) #6
  %or11 = or i32 %or9, %5
  %tXP = getelementptr inbounds %struct.lpddr2_min_tck, ptr %call.i, i32 0, i32 6
  %call.i.i67 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.6, ptr noundef %tXP, i32 noundef 1, i32 noundef 0) #6
  %6 = tail call i32 @llvm.smin.i32(i32 %call.i.i67, i32 0) #6
  %or13 = or i32 %or11, %6
  %tRTP = getelementptr inbounds %struct.lpddr2_min_tck, ptr %call.i, i32 0, i32 7
  %call.i.i68 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.7, ptr noundef %tRTP, i32 noundef 1, i32 noundef 0) #6
  %7 = tail call i32 @llvm.smin.i32(i32 %call.i.i68, i32 0) #6
  %or15 = or i32 %or13, %7
  %tCKE = getelementptr inbounds %struct.lpddr2_min_tck, ptr %call.i, i32 0, i32 8
  %call.i.i69 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.8, ptr noundef %tCKE, i32 noundef 1, i32 noundef 0) #6
  %8 = tail call i32 @llvm.smin.i32(i32 %call.i.i69, i32 0) #6
  %or17 = or i32 %or15, %8
  %tCKESR = getelementptr inbounds %struct.lpddr2_min_tck, ptr %call.i, i32 0, i32 9
  %call.i.i70 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.9, ptr noundef %tCKESR, i32 noundef 1, i32 noundef 0) #6
  %9 = tail call i32 @llvm.smin.i32(i32 %call.i.i70, i32 0) #6
  %or19 = or i32 %or17, %9
  %tFAW = getelementptr inbounds %struct.lpddr2_min_tck, ptr %call.i, i32 0, i32 10
  %call.i.i71 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.10, ptr noundef %tFAW, i32 noundef 1, i32 noundef 0) #6
  %10 = tail call i32 @llvm.smin.i32(i32 %call.i.i71, i32 0) #6
  %or21 = or i32 %or19, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or21)
  %tobool22.not = icmp eq i32 %or21, 0
  br i1 %tobool22.not, label %if.end.cleanup_crit_edge, label %if.then23

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef nonnull %call.i) #6
  br label %do.end

do.end:                                           ; preds = %if.then23, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ @lpddr2_jedec_min_tck, %do.end ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @of_get_ddr_timings(ptr noundef %np_ddr, ptr noundef %dev, i32 noundef %device_type, ptr nocapture noundef writeonly %nr_frequencies) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device_type.off = add i32 %device_type, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %device_type.off)
  %switch = icmp ult i32 %device_type.off, 2
  br i1 %switch, label %entry.sw.epilog_crit_edge, label %do.end

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %entry.sw.epilog_crit_edge
  %tim_compat.0 = phi ptr [ null, %do.end ], [ @.str.16, %entry.sw.epilog_crit_edge ]
  %call = tail call ptr @of_get_next_child(ptr noundef %np_ddr, ptr noundef null) #6
  %cmp.not56 = icmp eq ptr %call, null
  br i1 %cmp.not56, label %sw.epilog.do.end28_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  br label %for.body

sw.epilog.do.end28_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.epilog.for.body_crit_edge
  %np_tim.058 = phi ptr [ %call2, %for.body.for.body_crit_edge ], [ %call, %sw.epilog.for.body_crit_edge ]
  %arr_sz.057 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %sw.epilog.for.body_crit_edge ]
  %call1 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %np_tim.058, ptr noundef %tim_compat.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp ne i32 %call1, 0
  %inc = zext i1 %tobool.not to i32
  %spec.select = add i32 %arr_sz.057, %inc
  %call2 = tail call ptr @of_get_next_child(ptr noundef %np_ddr, ptr noundef nonnull %np_tim.058) #6
  %cmp.not = icmp eq ptr %call2, null
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool3.not = icmp eq i32 %spec.select, 0
  br i1 %tobool3.not, label %for.end.do.end28_crit_edge, label %if.then4

for.end.do.end28_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28

if.then4:                                         ; preds = %for.end
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.select, i32 72) #6
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %if.then4.do.end28_crit_edge, label %if.end6, !prof !202

if.then4.do.end28_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28

if.end6:                                          ; preds = %if.then4
  %2 = extractvalue { i32, i1 } %0, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %2, i32 noundef 3520) #6
  %tobool7.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool7.not, label %if.end6.do.end28_crit_edge, label %if.end9

if.end6.do.end28_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28

if.end9:                                          ; preds = %if.end6
  %call10 = tail call ptr @of_get_next_child(ptr noundef %np_ddr, ptr noundef null) #6
  %cmp12.not59 = icmp eq ptr %call10, null
  br i1 %cmp12.not59, label %if.end9.cleanup_crit_edge, label %if.end9.for.body13_crit_edge

if.end9.for.body13_crit_edge:                     ; preds = %if.end9
  br label %for.body13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body13:                                       ; preds = %for.inc23.for.body13_crit_edge, %if.end9.for.body13_crit_edge
  %np_tim.161 = phi ptr [ %call24, %for.inc23.for.body13_crit_edge ], [ %call10, %if.end9.for.body13_crit_edge ]
  %i.060 = phi i32 [ %i.1, %for.inc23.for.body13_crit_edge ], [ 0, %if.end9.for.body13_crit_edge ]
  %call14 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %np_tim.161, ptr noundef %tim_compat.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.body13.for.inc23_crit_edge, label %if.then16

for.body13.for.inc23_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc23

if.then16:                                        ; preds = %for.body13
  %arrayidx = getelementptr %struct.lpddr2_timings, ptr %call5.i.i, i32 %i.060
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.65, ptr noundef %arrayidx, i32 noundef 1, i32 noundef 0) #6
  %3 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #6
  %min_freq.i = getelementptr %struct.lpddr2_timings, ptr %call5.i.i, i32 %i.060, i32 1
  %call.i.i85.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.66, ptr noundef %min_freq.i, i32 noundef 1, i32 noundef 0) #6
  %4 = tail call i32 @llvm.smin.i32(i32 %call.i.i85.i, i32 0) #6
  %or.i = or i32 %4, %3
  %tRPab.i = getelementptr %struct.lpddr2_timings, ptr %call5.i.i, i32 %i.060, i32 2
  %call.i.i86.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.67, ptr noundef %tRPab.i, i32 noundef 1, i32 noundef 0) #6
  %5 = tail call i32 @llvm.smin.i32(i32 %call.i.i86.i, i32 0) #6
  %or3.i = or i32 %or.i, %5
  %tRCD.i = getelementptr %struct.lpddr2_timings, ptr %call5.i.i, i32 %i.060, i32 3
  %call.i.i87.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.68, ptr noundef %tRCD.i, i32 noundef 1, i32 noundef 0) #6
  %6 = tail call i32 @llvm.smin.i32(i32 %call.i.i87.i, i32 0) #6
  %or5.i = or i32 %or3.i, %6
  %tWR.i = getelementptr %struct.lpddr2_timings, ptr %call5.i.i, i32 %i.060, i32 4
  %call.i.i88.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.69, ptr noundef %tWR.i, i32 noundef 1, i32 noundef 0) #6
  %7 = tail call i32 @llvm.smin.i32(i32 %call.i.i88.i, i32 0) #6
  %or7.i = or i32 %or5.i, %7
  %tRAS_min.i = getelementptr %struct.lpddr2_timings, ptr %call5.i.i, i32 %i.060, i32 5
  %call.i.i89.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.70, ptr noundef %tRAS_min.i, i32 noundef 1, i32 noundef 0) #6
  %8 = tail call i32 @llvm.smin.i32(i32 %call.i.i89.i, i32 0) #6
  %or9.i = or i32 %or7.i, %8
  %tRRD.i = getelementptr %struct.lpddr2_timings, ptr %call5.i.i, i32 %i.060, i32 6
  %call.i.i90.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.71, ptr noundef %tRRD.i, i32 noundef 1, i32 noundef 0) #6
  %9 = tail call i32 @llvm.smin.i32(i32 %call.i.i90.i, i32 0) #6
  %or11.i = or i32 %or9.i, %9
  %tWTR.i = getelementptr %struct.lpddr2_timings, ptr %call5.i.i, i32 %i.060, i32 7
  %call.i.i91.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.72, ptr noundef %tWTR.i, i32 noundef 1, i32 noundef 0) #6
  %10 = tail call i32 @llvm.smin.i32(i32 %call.i.i91.i, i32 0) #6
  %or13.i = or i32 %or11.i, %10
  %tXP.i = getelementptr %struct.lpddr2_timings, ptr %call5.i.i, i32 %i.060, i32 8
  %call.i.i92.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.73, ptr noundef %tXP.i, i32 noundef 1, i32 noundef 0) #6
  %11 = tail call i32 @llvm.smin.i32(i32 %call.i.i92.i, i32 0) #6
  %or15.i = or i32 %or13.i, %11
  %tRTP.i = getelementptr %struct.lpddr2_timings, ptr %call5.i.i, i32 %i.060, i32 9
  %call.i.i93.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.74, ptr noundef %tRTP.i, i32 noundef 1, i32 noundef 0) #6
  %12 = tail call i32 @llvm.smin.i32(i32 %call.i.i93.i, i32 0) #6
  %or17.i = or i32 %or15.i, %12
  %tCKESR.i = getelementptr %struct.lpddr2_timings, ptr %call5.i.i, i32 %i.060, i32 10
  %call.i.i94.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.75, ptr noundef %tCKESR.i, i32 noundef 1, i32 noundef 0) #6
  %13 = tail call i32 @llvm.smin.i32(i32 %call.i.i94.i, i32 0) #6
  %or19.i = or i32 %or17.i, %13
  %tDQSCK_max.i = getelementptr %struct.lpddr2_timings, ptr %call5.i.i, i32 %i.060, i32 11
  %call.i.i95.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.76, ptr noundef %tDQSCK_max.i, i32 noundef 1, i32 noundef 0) #6
  %14 = tail call i32 @llvm.smin.i32(i32 %call.i.i95.i, i32 0) #6
  %or21.i = or i32 %or19.i, %14
  %tFAW.i = getelementptr %struct.lpddr2_timings, ptr %call5.i.i, i32 %i.060, i32 13
  %call.i.i96.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.77, ptr noundef %tFAW.i, i32 noundef 1, i32 noundef 0) #6
  %15 = tail call i32 @llvm.smin.i32(i32 %call.i.i96.i, i32 0) #6
  %or23.i = or i32 %or21.i, %15
  %tZQCS.i = getelementptr %struct.lpddr2_timings, ptr %call5.i.i, i32 %i.060, i32 14
  %call.i.i97.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.78, ptr noundef %tZQCS.i, i32 noundef 1, i32 noundef 0) #6
  %16 = tail call i32 @llvm.smin.i32(i32 %call.i.i97.i, i32 0) #6
  %or25.i = or i32 %or23.i, %16
  %tZQCL.i = getelementptr %struct.lpddr2_timings, ptr %call5.i.i, i32 %i.060, i32 15
  %call.i.i98.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.79, ptr noundef %tZQCL.i, i32 noundef 1, i32 noundef 0) #6
  %17 = tail call i32 @llvm.smin.i32(i32 %call.i.i98.i, i32 0) #6
  %or27.i = or i32 %or25.i, %17
  %tZQinit.i = getelementptr %struct.lpddr2_timings, ptr %call5.i.i, i32 %i.060, i32 16
  %call.i.i99.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.80, ptr noundef %tZQinit.i, i32 noundef 1, i32 noundef 0) #6
  %18 = tail call i32 @llvm.smin.i32(i32 %call.i.i99.i, i32 0) #6
  %or29.i = or i32 %or27.i, %18
  %tRAS_max_ns.i = getelementptr %struct.lpddr2_timings, ptr %call5.i.i, i32 %i.060, i32 17
  %call.i.i100.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.81, ptr noundef %tRAS_max_ns.i, i32 noundef 1, i32 noundef 0) #6
  %19 = tail call i32 @llvm.smin.i32(i32 %call.i.i100.i, i32 0) #6
  %or31.i = or i32 %or29.i, %19
  %tDQSCK_max_derated.i = getelementptr %struct.lpddr2_timings, ptr %call5.i.i, i32 %i.060, i32 12
  %call.i.i101.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.82, ptr noundef %tDQSCK_max_derated.i, i32 noundef 1, i32 noundef 0) #6
  %20 = tail call i32 @llvm.smin.i32(i32 %call.i.i101.i, i32 0) #6
  %or33.i = or i32 %or31.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or33.i)
  %tobool18.not = icmp eq i32 %or33.i, 0
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef nonnull %call5.i.i) #6
  br label %do.end28

if.end20:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %inc21 = add i32 %i.060, 1
  br label %for.inc23

for.inc23:                                        ; preds = %if.end20, %for.body13.for.inc23_crit_edge
  %i.1 = phi i32 [ %inc21, %if.end20 ], [ %i.060, %for.body13.for.inc23_crit_edge ]
  %call24 = tail call ptr @of_get_next_child(ptr noundef %np_ddr, ptr noundef nonnull %np_tim.161) #6
  %cmp12.not = icmp eq ptr %call24, null
  br i1 %cmp12.not, label %for.inc23.cleanup_crit_edge, label %for.inc23.for.body13_crit_edge

for.inc23.for.body13_crit_edge:                   ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body13

for.inc23.cleanup_crit_edge:                      ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end28:                                         ; preds = %if.then19, %if.end6.do.end28_crit_edge, %if.then4.do.end28_crit_edge, %for.end.do.end28_crit_edge, %sw.epilog.do.end28_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.20) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %for.inc23.cleanup_crit_edge, %if.end9.cleanup_crit_edge
  %storemerge = phi i32 [ 4, %do.end28 ], [ %spec.select, %if.end9.cleanup_crit_edge ], [ %spec.select, %for.inc23.cleanup_crit_edge ]
  %retval.0 = phi ptr [ @lpddr2_jedec_timings, %do.end28 ], [ %call5.i.i, %if.end9.cleanup_crit_edge ], [ %call5.i.i, %for.inc23.cleanup_crit_edge ]
  %21 = ptrtoint ptr %nr_frequencies to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %storemerge, ptr %nr_frequencies, align 4
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @of_lpddr3_get_min_tck(ptr noundef %np, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 84, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.do.end47_crit_edge, label %if.end

entry.do.end47_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end47

if.end:                                           ; preds = %entry
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.22, ptr noundef nonnull %call.i, i32 noundef 1, i32 noundef 0) #6
  %0 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #6
  %tRRD = getelementptr inbounds %struct.lpddr3_min_tck, ptr %call.i, i32 0, i32 1
  %call.i.i116 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.4, ptr noundef %tRRD, i32 noundef 1, i32 noundef 0) #6
  %1 = tail call i32 @llvm.smin.i32(i32 %call.i.i116, i32 0) #6
  %or3 = or i32 %1, %0
  %tRPab = getelementptr inbounds %struct.lpddr3_min_tck, ptr %call.i, i32 0, i32 2
  %call.i.i117 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef %tRPab, i32 noundef 1, i32 noundef 0) #6
  %2 = tail call i32 @llvm.smin.i32(i32 %call.i.i117, i32 0) #6
  %or5 = or i32 %or3, %2
  %tRPpb = getelementptr inbounds %struct.lpddr3_min_tck, ptr %call.i, i32 0, i32 3
  %call.i.i118 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.23, ptr noundef %tRPpb, i32 noundef 1, i32 noundef 0) #6
  %3 = tail call i32 @llvm.smin.i32(i32 %call.i.i118, i32 0) #6
  %or7 = or i32 %or5, %3
  %tRCD = getelementptr inbounds %struct.lpddr3_min_tck, ptr %call.i, i32 0, i32 4
  %call.i.i119 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.1, ptr noundef %tRCD, i32 noundef 1, i32 noundef 0) #6
  %4 = tail call i32 @llvm.smin.i32(i32 %call.i.i119, i32 0) #6
  %or9 = or i32 %or7, %4
  %tRC = getelementptr inbounds %struct.lpddr3_min_tck, ptr %call.i, i32 0, i32 5
  %call.i.i120 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.24, ptr noundef %tRC, i32 noundef 1, i32 noundef 0) #6
  %5 = tail call i32 @llvm.smin.i32(i32 %call.i.i120, i32 0) #6
  %or11 = or i32 %or9, %5
  %tRAS = getelementptr inbounds %struct.lpddr3_min_tck, ptr %call.i, i32 0, i32 6
  %call.i.i121 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.25, ptr noundef %tRAS, i32 noundef 1, i32 noundef 0) #6
  %6 = tail call i32 @llvm.smin.i32(i32 %call.i.i121, i32 0) #6
  %or13 = or i32 %or11, %6
  %tWTR = getelementptr inbounds %struct.lpddr3_min_tck, ptr %call.i, i32 0, i32 7
  %call.i.i122 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.5, ptr noundef %tWTR, i32 noundef 1, i32 noundef 0) #6
  %7 = tail call i32 @llvm.smin.i32(i32 %call.i.i122, i32 0) #6
  %or15 = or i32 %or13, %7
  %tWR = getelementptr inbounds %struct.lpddr3_min_tck, ptr %call.i, i32 0, i32 8
  %call.i.i123 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.2, ptr noundef %tWR, i32 noundef 1, i32 noundef 0) #6
  %8 = tail call i32 @llvm.smin.i32(i32 %call.i.i123, i32 0) #6
  %or17 = or i32 %or15, %8
  %tRTP = getelementptr inbounds %struct.lpddr3_min_tck, ptr %call.i, i32 0, i32 9
  %call.i.i124 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.7, ptr noundef %tRTP, i32 noundef 1, i32 noundef 0) #6
  %9 = tail call i32 @llvm.smin.i32(i32 %call.i.i124, i32 0) #6
  %or19 = or i32 %or17, %9
  %tW2W_C2C = getelementptr inbounds %struct.lpddr3_min_tck, ptr %call.i, i32 0, i32 10
  %call.i.i125 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.26, ptr noundef %tW2W_C2C, i32 noundef 1, i32 noundef 0) #6
  %10 = tail call i32 @llvm.smin.i32(i32 %call.i.i125, i32 0) #6
  %or21 = or i32 %or19, %10
  %tR2R_C2C = getelementptr inbounds %struct.lpddr3_min_tck, ptr %call.i, i32 0, i32 11
  %call.i.i126 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.27, ptr noundef %tR2R_C2C, i32 noundef 1, i32 noundef 0) #6
  %11 = tail call i32 @llvm.smin.i32(i32 %call.i.i126, i32 0) #6
  %or23 = or i32 %or21, %11
  %tWL = getelementptr inbounds %struct.lpddr3_min_tck, ptr %call.i, i32 0, i32 12
  %call.i.i127 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.28, ptr noundef %tWL, i32 noundef 1, i32 noundef 0) #6
  %12 = tail call i32 @llvm.smin.i32(i32 %call.i.i127, i32 0) #6
  %or25 = or i32 %or23, %12
  %tDQSCK = getelementptr inbounds %struct.lpddr3_min_tck, ptr %call.i, i32 0, i32 13
  %call.i.i128 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.29, ptr noundef %tDQSCK, i32 noundef 1, i32 noundef 0) #6
  %13 = tail call i32 @llvm.smin.i32(i32 %call.i.i128, i32 0) #6
  %or27 = or i32 %or25, %13
  %tRL = getelementptr inbounds %struct.lpddr3_min_tck, ptr %call.i, i32 0, i32 14
  %call.i.i129 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.30, ptr noundef %tRL, i32 noundef 1, i32 noundef 0) #6
  %14 = tail call i32 @llvm.smin.i32(i32 %call.i.i129, i32 0) #6
  %or29 = or i32 %or27, %14
  %tFAW = getelementptr inbounds %struct.lpddr3_min_tck, ptr %call.i, i32 0, i32 15
  %call.i.i130 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.10, ptr noundef %tFAW, i32 noundef 1, i32 noundef 0) #6
  %15 = tail call i32 @llvm.smin.i32(i32 %call.i.i130, i32 0) #6
  %or31 = or i32 %or29, %15
  %tXSR = getelementptr inbounds %struct.lpddr3_min_tck, ptr %call.i, i32 0, i32 16
  %call.i.i131 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.31, ptr noundef %tXSR, i32 noundef 1, i32 noundef 0) #6
  %16 = tail call i32 @llvm.smin.i32(i32 %call.i.i131, i32 0) #6
  %or33 = or i32 %or31, %16
  %tXP = getelementptr inbounds %struct.lpddr3_min_tck, ptr %call.i, i32 0, i32 17
  %call.i.i132 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.6, ptr noundef %tXP, i32 noundef 1, i32 noundef 0) #6
  %17 = tail call i32 @llvm.smin.i32(i32 %call.i.i132, i32 0) #6
  %or35 = or i32 %or33, %17
  %tCKE = getelementptr inbounds %struct.lpddr3_min_tck, ptr %call.i, i32 0, i32 18
  %call.i.i133 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.8, ptr noundef %tCKE, i32 noundef 1, i32 noundef 0) #6
  %18 = tail call i32 @llvm.smin.i32(i32 %call.i.i133, i32 0) #6
  %or37 = or i32 %or35, %18
  %tCKESR = getelementptr inbounds %struct.lpddr3_min_tck, ptr %call.i, i32 0, i32 19
  %call.i.i134 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.9, ptr noundef %tCKESR, i32 noundef 1, i32 noundef 0) #6
  %19 = tail call i32 @llvm.smin.i32(i32 %call.i.i134, i32 0) #6
  %or39 = or i32 %or37, %19
  %tMRD = getelementptr inbounds %struct.lpddr3_min_tck, ptr %call.i, i32 0, i32 20
  %call.i.i135 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.32, ptr noundef %tMRD, i32 noundef 1, i32 noundef 0) #6
  %20 = tail call i32 @llvm.smin.i32(i32 %call.i.i135, i32 0) #6
  %or41 = or i32 %or39, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or41)
  %tobool42.not = icmp eq i32 %or41, 0
  br i1 %tobool42.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.33) #9
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef nonnull %call.i) #6
  br label %do.end47

do.end47:                                         ; preds = %do.end, %entry.do.end47_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end47 ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @of_lpddr3_get_ddr_timings(ptr noundef %np_ddr, ptr noundef %dev, i32 noundef %device_type, ptr nocapture noundef writeonly %nr_frequencies) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %device_type)
  %cond = icmp eq i32 %device_type, 6
  br i1 %cond, label %entry.sw.epilog_crit_edge, label %do.end

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %entry.sw.epilog_crit_edge
  %tim_compat.0 = phi ptr [ null, %do.end ], [ @.str.37, %entry.sw.epilog_crit_edge ]
  %call = tail call ptr @of_get_next_child(ptr noundef %np_ddr, ptr noundef null) #6
  %cmp.not56 = icmp eq ptr %call, null
  br i1 %cmp.not56, label %sw.epilog.do.end28_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  br label %for.body

sw.epilog.do.end28_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.epilog.for.body_crit_edge
  %np_tim.058 = phi ptr [ %call2, %for.body.for.body_crit_edge ], [ %call, %sw.epilog.for.body_crit_edge ]
  %arr_sz.057 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %sw.epilog.for.body_crit_edge ]
  %call1 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %np_tim.058, ptr noundef %tim_compat.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp ne i32 %call1, 0
  %inc = zext i1 %tobool.not to i32
  %spec.select = add i32 %arr_sz.057, %inc
  %call2 = tail call ptr @of_get_next_child(ptr noundef %np_ddr, ptr noundef nonnull %np_tim.058) #6
  %cmp.not = icmp eq ptr %call2, null
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool3.not = icmp eq i32 %spec.select, 0
  br i1 %tobool3.not, label %for.end.do.end28_crit_edge, label %if.then4

for.end.do.end28_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28

if.then4:                                         ; preds = %for.end
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.select, i32 92) #6
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %if.then4.do.end28_crit_edge, label %if.end6, !prof !202

if.then4.do.end28_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28

if.end6:                                          ; preds = %if.then4
  %2 = extractvalue { i32, i1 } %0, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %2, i32 noundef 3520) #6
  %tobool7.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool7.not, label %if.end6.do.end28_crit_edge, label %if.end9

if.end6.do.end28_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28

if.end9:                                          ; preds = %if.end6
  %call10 = tail call ptr @of_get_next_child(ptr noundef %np_ddr, ptr noundef null) #6
  %cmp12.not59 = icmp eq ptr %call10, null
  br i1 %cmp12.not59, label %if.end9.cleanup_crit_edge, label %if.end9.for.body13_crit_edge

if.end9.for.body13_crit_edge:                     ; preds = %if.end9
  br label %for.body13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body13:                                       ; preds = %for.inc23.for.body13_crit_edge, %if.end9.for.body13_crit_edge
  %np_tim.161 = phi ptr [ %call24, %for.inc23.for.body13_crit_edge ], [ %call10, %if.end9.for.body13_crit_edge ]
  %i.060 = phi i32 [ %i.1, %for.inc23.for.body13_crit_edge ], [ 0, %if.end9.for.body13_crit_edge ]
  %call14 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %np_tim.161, ptr noundef %tim_compat.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.body13.for.inc23_crit_edge, label %if.then16

for.body13.for.inc23_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc23

if.then16:                                        ; preds = %for.body13
  %arrayidx = getelementptr %struct.lpddr3_timings, ptr %call5.i.i, i32 %i.060
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.83, ptr noundef %arrayidx, i32 noundef 1, i32 noundef 0) #6
  %3 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #6
  %min_freq.i = getelementptr %struct.lpddr3_timings, ptr %call5.i.i, i32 %i.060, i32 1
  %call.i.i95.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.66, ptr noundef %min_freq.i, i32 noundef 1, i32 noundef 0) #6
  %4 = tail call i32 @llvm.smin.i32(i32 %call.i.i95.i, i32 0) #6
  %or.i = or i32 %4, %3
  %tRFC.i = getelementptr %struct.lpddr3_timings, ptr %call5.i.i, i32 %i.060, i32 2
  %call.i.i96.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.84, ptr noundef %tRFC.i, i32 noundef 1, i32 noundef 0) #6
  %5 = tail call i32 @llvm.smin.i32(i32 %call.i.i96.i, i32 0) #6
  %or3.i = or i32 %or.i, %5
  %tRRD.i = getelementptr %struct.lpddr3_timings, ptr %call5.i.i, i32 %i.060, i32 3
  %call.i.i97.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.71, ptr noundef %tRRD.i, i32 noundef 1, i32 noundef 0) #6
  %6 = tail call i32 @llvm.smin.i32(i32 %call.i.i97.i, i32 0) #6
  %or5.i = or i32 %or3.i, %6
  %tRPab.i = getelementptr %struct.lpddr3_timings, ptr %call5.i.i, i32 %i.060, i32 4
  %call.i.i98.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.67, ptr noundef %tRPab.i, i32 noundef 1, i32 noundef 0) #6
  %7 = tail call i32 @llvm.smin.i32(i32 %call.i.i98.i, i32 0) #6
  %or7.i = or i32 %or5.i, %7
  %tRPpb.i = getelementptr %struct.lpddr3_timings, ptr %call5.i.i, i32 %i.060, i32 5
  %call.i.i99.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.85, ptr noundef %tRPpb.i, i32 noundef 1, i32 noundef 0) #6
  %8 = tail call i32 @llvm.smin.i32(i32 %call.i.i99.i, i32 0) #6
  %or9.i = or i32 %or7.i, %8
  %tRCD.i = getelementptr %struct.lpddr3_timings, ptr %call5.i.i, i32 %i.060, i32 6
  %call.i.i100.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.68, ptr noundef %tRCD.i, i32 noundef 1, i32 noundef 0) #6
  %9 = tail call i32 @llvm.smin.i32(i32 %call.i.i100.i, i32 0) #6
  %or11.i = or i32 %or9.i, %9
  %tRC.i = getelementptr %struct.lpddr3_timings, ptr %call5.i.i, i32 %i.060, i32 7
  %call.i.i101.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.86, ptr noundef %tRC.i, i32 noundef 1, i32 noundef 0) #6
  %10 = tail call i32 @llvm.smin.i32(i32 %call.i.i101.i, i32 0) #6
  %or13.i = or i32 %or11.i, %10
  %tRAS.i = getelementptr %struct.lpddr3_timings, ptr %call5.i.i, i32 %i.060, i32 8
  %call.i.i102.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.87, ptr noundef %tRAS.i, i32 noundef 1, i32 noundef 0) #6
  %11 = tail call i32 @llvm.smin.i32(i32 %call.i.i102.i, i32 0) #6
  %or15.i = or i32 %or13.i, %11
  %tWTR.i = getelementptr %struct.lpddr3_timings, ptr %call5.i.i, i32 %i.060, i32 9
  %call.i.i103.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.72, ptr noundef %tWTR.i, i32 noundef 1, i32 noundef 0) #6
  %12 = tail call i32 @llvm.smin.i32(i32 %call.i.i103.i, i32 0) #6
  %or17.i = or i32 %or15.i, %12
  %tWR.i = getelementptr %struct.lpddr3_timings, ptr %call5.i.i, i32 %i.060, i32 10
  %call.i.i104.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.69, ptr noundef %tWR.i, i32 noundef 1, i32 noundef 0) #6
  %13 = tail call i32 @llvm.smin.i32(i32 %call.i.i104.i, i32 0) #6
  %or19.i = or i32 %or17.i, %13
  %tRTP.i = getelementptr %struct.lpddr3_timings, ptr %call5.i.i, i32 %i.060, i32 11
  %call.i.i105.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.74, ptr noundef %tRTP.i, i32 noundef 1, i32 noundef 0) #6
  %14 = tail call i32 @llvm.smin.i32(i32 %call.i.i105.i, i32 0) #6
  %or21.i = or i32 %or19.i, %14
  %tW2W_C2C.i = getelementptr %struct.lpddr3_timings, ptr %call5.i.i, i32 %i.060, i32 12
  %call.i.i106.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.88, ptr noundef %tW2W_C2C.i, i32 noundef 1, i32 noundef 0) #6
  %15 = tail call i32 @llvm.smin.i32(i32 %call.i.i106.i, i32 0) #6
  %or23.i = or i32 %or21.i, %15
  %tR2R_C2C.i = getelementptr %struct.lpddr3_timings, ptr %call5.i.i, i32 %i.060, i32 13
  %call.i.i107.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.89, ptr noundef %tR2R_C2C.i, i32 noundef 1, i32 noundef 0) #6
  %16 = tail call i32 @llvm.smin.i32(i32 %call.i.i107.i, i32 0) #6
  %or25.i = or i32 %or23.i, %16
  %tFAW.i = getelementptr %struct.lpddr3_timings, ptr %call5.i.i, i32 %i.060, i32 17
  %call.i.i108.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.77, ptr noundef %tFAW.i, i32 noundef 1, i32 noundef 0) #6
  %17 = tail call i32 @llvm.smin.i32(i32 %call.i.i108.i, i32 0) #6
  %or27.i = or i32 %or25.i, %17
  %tXSR.i = getelementptr %struct.lpddr3_timings, ptr %call5.i.i, i32 %i.060, i32 18
  %call.i.i109.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.90, ptr noundef %tXSR.i, i32 noundef 1, i32 noundef 0) #6
  %18 = tail call i32 @llvm.smin.i32(i32 %call.i.i109.i, i32 0) #6
  %or29.i = or i32 %or27.i, %18
  %tXP.i = getelementptr %struct.lpddr3_timings, ptr %call5.i.i, i32 %i.060, i32 19
  %call.i.i110.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.73, ptr noundef %tXP.i, i32 noundef 1, i32 noundef 0) #6
  %19 = tail call i32 @llvm.smin.i32(i32 %call.i.i110.i, i32 0) #6
  %or31.i = or i32 %or29.i, %19
  %tCKE.i = getelementptr %struct.lpddr3_timings, ptr %call5.i.i, i32 %i.060, i32 20
  %call.i.i111.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.91, ptr noundef %tCKE.i, i32 noundef 1, i32 noundef 0) #6
  %20 = tail call i32 @llvm.smin.i32(i32 %call.i.i111.i, i32 0) #6
  %or33.i = or i32 %or31.i, %20
  %tCKESR.i = getelementptr %struct.lpddr3_timings, ptr %call5.i.i, i32 %i.060, i32 21
  %call.i.i112.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.75, ptr noundef %tCKESR.i, i32 noundef 1, i32 noundef 0) #6
  %21 = tail call i32 @llvm.smin.i32(i32 %call.i.i112.i, i32 0) #6
  %or35.i = or i32 %or33.i, %21
  %tMRD.i = getelementptr %struct.lpddr3_timings, ptr %call5.i.i, i32 %i.060, i32 22
  %call.i.i113.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np_tim.161, ptr noundef nonnull @.str.92, ptr noundef %tMRD.i, i32 noundef 1, i32 noundef 0) #6
  %22 = tail call i32 @llvm.smin.i32(i32 %call.i.i113.i, i32 0) #6
  %or37.i = or i32 %or35.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or37.i)
  %tobool18.not = icmp eq i32 %or37.i, 0
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef nonnull %call5.i.i) #6
  br label %do.end28

if.end20:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %inc21 = add i32 %i.060, 1
  br label %for.inc23

for.inc23:                                        ; preds = %if.end20, %for.body13.for.inc23_crit_edge
  %i.1 = phi i32 [ %inc21, %if.end20 ], [ %i.060, %for.body13.for.inc23_crit_edge ]
  %call24 = tail call ptr @of_get_next_child(ptr noundef %np_ddr, ptr noundef nonnull %np_tim.161) #6
  %cmp12.not = icmp eq ptr %call24, null
  br i1 %cmp12.not, label %for.inc23.cleanup_crit_edge, label %for.inc23.for.body13_crit_edge

for.inc23.for.body13_crit_edge:                   ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body13

for.inc23.cleanup_crit_edge:                      ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end28:                                         ; preds = %if.then19, %if.end6.do.end28_crit_edge, %if.then4.do.end28_crit_edge, %for.end.do.end28_crit_edge, %sw.epilog.do.end28_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.40) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %for.inc23.cleanup_crit_edge, %if.end9.cleanup_crit_edge
  %storemerge = phi i32 [ 0, %do.end28 ], [ %spec.select, %if.end9.cleanup_crit_edge ], [ %spec.select, %for.inc23.cleanup_crit_edge ]
  %retval.0 = phi ptr [ null, %do.end28 ], [ %call5.i.i, %if.end9.cleanup_crit_edge ], [ %call5.i.i, %for.inc23.cleanup_crit_edge ]
  %23 = ptrtoint ptr %nr_frequencies to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %storemerge, ptr %nr_frequencies, align 4
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @of_lpddr2_get_info(ptr noundef %np, ptr noundef %dev) #0 align 64 {
entry:
  %info = alloca %struct.lpddr2_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %info) #6
  %0 = call ptr @memset(ptr %info, i32 0, i32 24)
  %revision_id1 = getelementptr inbounds %struct.lpddr2_info, ptr %info, i32 0, i32 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.42, ptr noundef %revision_id1, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %revision_id1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -2, ptr %revision_id1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %revision_id2 = getelementptr inbounds %struct.lpddr2_info, ptr %info, i32 0, i32 5
  %call.i.i156 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.43, ptr noundef %revision_id2, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i156)
  %tobool3.not = icmp sgt i32 %call.i.i156, -1
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %revision_id2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -2, ptr %revision_id2, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %io_width = getelementptr inbounds %struct.lpddr2_info, ptr %info, i32 0, i32 2
  %call.i.i157 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.44, ptr noundef %io_width, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i157)
  %tobool8.not = icmp sgt i32 %call.i.i157, -1
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %3 = ptrtoint ptr %io_width to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_width, align 4
  %div = sdiv i32 32, %4
  %sub = add nsw i32 %div, -1
  store i32 %sub, ptr %io_width, align 4
  %density = getelementptr inbounds %struct.lpddr2_info, ptr %info, i32 0, i32 1
  %call.i.i158 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.45, ptr noundef %density, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i158)
  %tobool14.not = icmp sgt i32 %call.i.i158, -1
  br i1 %tobool14.not, label %if.end16, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %5 = ptrtoint ptr %density to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %density, align 4
  %7 = call i32 @llvm.cttz.i32(i32 %6, i1 true), !range !203
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %iszero = icmp eq i32 %6, 0
  %.op = add nsw i32 %7, -6
  %sub18 = select i1 %iszero, i32 -7, i32 %.op
  %8 = ptrtoint ptr %density to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub18, ptr %density, align 4
  %call20 = call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str.46) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %info, align 4
  br label %if.end35

if.else:                                          ; preds = %if.end16
  %call23 = call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str.47) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.else27, label %if.then25

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %info, align 4
  br label %if.end35

if.else27:                                        ; preds = %if.else
  %call28 = call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str.48) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.else27.cleanup_crit_edge, label %if.then30

if.else27.cleanup_crit_edge:                      ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then30:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %info, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.then25, %if.then22
  %call36 = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.49, ptr noundef null) #6
  %call37 = call ptr @of_prop_next_string(ptr noundef %call36, ptr noundef null) #6
  %tobool38.not159 = icmp eq ptr %call37, null
  br i1 %tobool38.not159, label %if.end35.for.end_crit_edge, label %if.end35.for.body_crit_edge

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  br label %for.body

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end35.for.body_crit_edge
  %cp.0160 = phi ptr [ %call113, %for.inc.for.body_crit_edge ], [ %call37, %if.end35.for.body_crit_edge ]
  %call39 = call i32 @strcasecmp(ptr noundef nonnull %cp.0160, ptr noundef nonnull @.str.50)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %for.body.for.end.sink.split_crit_edge, label %if.end42

for.body.for.end.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.sink.split

if.end42:                                         ; preds = %for.body
  %call43 = call i32 @strcasecmp(ptr noundef nonnull %cp.0160, ptr noundef nonnull @.str.51)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end42.for.end.sink.split_crit_edge, label %if.end47

if.end42.for.end.sink.split_crit_edge:            ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.sink.split

if.end47:                                         ; preds = %if.end42
  %call48 = call i32 @strcasecmp(ptr noundef nonnull %cp.0160, ptr noundef nonnull @.str.52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end47.for.end.sink.split_crit_edge, label %if.end52

if.end47.for.end.sink.split_crit_edge:            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.sink.split

if.end52:                                         ; preds = %if.end47
  %call53 = call i32 @strcasecmp(ptr noundef nonnull %cp.0160, ptr noundef nonnull @.str.53)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end52.for.end.sink.split_crit_edge, label %if.end57

if.end52.for.end.sink.split_crit_edge:            ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.sink.split

if.end57:                                         ; preds = %if.end52
  %call58 = call i32 @strcasecmp(ptr noundef nonnull %cp.0160, ptr noundef nonnull @.str.54)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end57.for.end.sink.split_crit_edge, label %if.end62

if.end57.for.end.sink.split_crit_edge:            ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.sink.split

if.end62:                                         ; preds = %if.end57
  %call63 = call i32 @strcasecmp(ptr noundef nonnull %cp.0160, ptr noundef nonnull @.str.55)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end62.for.end.sink.split_crit_edge, label %if.end67

if.end62.for.end.sink.split_crit_edge:            ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.sink.split

if.end67:                                         ; preds = %if.end62
  %call68 = call i32 @strcasecmp(ptr noundef nonnull %cp.0160, ptr noundef nonnull @.str.56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end67.for.end.sink.split_crit_edge, label %if.end72

if.end67.for.end.sink.split_crit_edge:            ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.sink.split

if.end72:                                         ; preds = %if.end67
  %call73 = call i32 @strcasecmp(ptr noundef nonnull %cp.0160, ptr noundef nonnull @.str.57)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end72.for.end.sink.split_crit_edge, label %if.end77

if.end72.for.end.sink.split_crit_edge:            ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.sink.split

if.end77:                                         ; preds = %if.end72
  %call78 = call i32 @strcasecmp(ptr noundef nonnull %cp.0160, ptr noundef nonnull @.str.58)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end77.for.end.sink.split_crit_edge, label %if.end82

if.end77.for.end.sink.split_crit_edge:            ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.sink.split

if.end82:                                         ; preds = %if.end77
  %call83 = call i32 @strcasecmp(ptr noundef nonnull %cp.0160, ptr noundef nonnull @.str.59)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end82.for.end.sink.split_crit_edge, label %if.end87

if.end82.for.end.sink.split_crit_edge:            ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.sink.split

if.end87:                                         ; preds = %if.end82
  %call88 = call i32 @strcasecmp(ptr noundef nonnull %cp.0160, ptr noundef nonnull @.str.60)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end87.for.end.sink.split_crit_edge, label %if.end92

if.end87.for.end.sink.split_crit_edge:            ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.sink.split

if.end92:                                         ; preds = %if.end87
  %call93 = call i32 @strcasecmp(ptr noundef nonnull %cp.0160, ptr noundef nonnull @.str.61)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end92.for.end.sink.split_crit_edge, label %if.end97

if.end92.for.end.sink.split_crit_edge:            ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.sink.split

if.end97:                                         ; preds = %if.end92
  %call98 = call i32 @strcasecmp(ptr noundef nonnull %cp.0160, ptr noundef nonnull @.str.62)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end97.for.end.sink.split_crit_edge, label %if.end102

if.end97.for.end.sink.split_crit_edge:            ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.sink.split

if.end102:                                        ; preds = %if.end97
  %call103 = call i32 @strcasecmp(ptr noundef nonnull %cp.0160, ptr noundef nonnull @.str.63)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end102.for.end.sink.split_crit_edge, label %if.end107

if.end102.for.end.sink.split_crit_edge:           ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.sink.split

if.end107:                                        ; preds = %if.end102
  %call108 = call i32 @strcasecmp(ptr noundef nonnull %cp.0160, ptr noundef nonnull @.str.64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end107.for.end.sink.split_crit_edge, label %for.inc

if.end107.for.end.sink.split_crit_edge:           ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.sink.split

for.inc:                                          ; preds = %if.end107
  %call113 = call ptr @of_prop_next_string(ptr noundef %call36, ptr noundef nonnull %cp.0160) #6
  %tobool38.not = icmp eq ptr %call113, null
  br i1 %tobool38.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end.sink.split:                               ; preds = %if.end107.for.end.sink.split_crit_edge, %if.end102.for.end.sink.split_crit_edge, %if.end97.for.end.sink.split_crit_edge, %if.end92.for.end.sink.split_crit_edge, %if.end87.for.end.sink.split_crit_edge, %if.end82.for.end.sink.split_crit_edge, %if.end77.for.end.sink.split_crit_edge, %if.end72.for.end.sink.split_crit_edge, %if.end67.for.end.sink.split_crit_edge, %if.end62.for.end.sink.split_crit_edge, %if.end57.for.end.sink.split_crit_edge, %if.end52.for.end.sink.split_crit_edge, %if.end47.for.end.sink.split_crit_edge, %if.end42.for.end.sink.split_crit_edge, %for.body.for.end.sink.split_crit_edge
  %.sink = phi i32 [ 1, %for.body.for.end.sink.split_crit_edge ], [ 2, %if.end42.for.end.sink.split_crit_edge ], [ 3, %if.end47.for.end.sink.split_crit_edge ], [ 4, %if.end52.for.end.sink.split_crit_edge ], [ 5, %if.end57.for.end.sink.split_crit_edge ], [ 6, %if.end62.for.end.sink.split_crit_edge ], [ 7, %if.end67.for.end.sink.split_crit_edge ], [ 8, %if.end72.for.end.sink.split_crit_edge ], [ 9, %if.end77.for.end.sink.split_crit_edge ], [ 11, %if.end82.for.end.sink.split_crit_edge ], [ 12, %if.end87.for.end.sink.split_crit_edge ], [ 13, %if.end92.for.end.sink.split_crit_edge ], [ 14, %if.end97.for.end.sink.split_crit_edge ], [ 254, %if.end102.for.end.sink.split_crit_edge ], [ 255, %if.end107.for.end.sink.split_crit_edge ]
  %manufacturer_id111 = getelementptr inbounds %struct.lpddr2_info, ptr %info, i32 0, i32 3
  %12 = ptrtoint ptr %manufacturer_id111 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %manufacturer_id111, align 4
  br label %for.end

for.end:                                          ; preds = %for.end.sink.split, %for.inc.for.end_crit_edge, %if.end35.for.end_crit_edge
  %manufacturer_id114 = getelementptr inbounds %struct.lpddr2_info, ptr %info, i32 0, i32 3
  %13 = ptrtoint ptr %manufacturer_id114 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %manufacturer_id114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool115.not = icmp eq i32 %14, 0
  br i1 %tobool115.not, label %if.then116, label %for.end.if.end118_crit_edge

for.end.if.end118_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

if.then116:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %manufacturer_id114 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -2, ptr %manufacturer_id114, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %for.end.if.end118_crit_edge
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #6
  %tobool120.not = icmp eq ptr %call.i, null
  br i1 %tobool120.not, label %if.end118.cleanup_crit_edge, label %if.then121

if.end118.cleanup_crit_edge:                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then121:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  %16 = call ptr @memcpy(ptr %call.i, ptr %info, i32 24)
  br label %cleanup

cleanup:                                          ; preds = %if.then121, %if.end118.cleanup_crit_edge, %if.else27.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end6.cleanup_crit_edge ], [ null, %if.end10.cleanup_crit_edge ], [ null, %if.else27.cleanup_crit_edge ], [ %call.i, %if.then121 ], [ null, %if.end118.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %info) #6
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !70, !71, !72, !74, !75, !77, !79, !81, !82, !83, !85, !86, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191}
!llvm.module.flags = !{!193, !194, !195, !196, !197, !198, !199, !200}
!llvm.ident = !{!201}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/memory/of_memory.c", i32 38, i32 34}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/memory/of_memory.c", i32 39, i32 34}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/memory/of_memory.c", i32 40, i32 34}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/memory/of_memory.c", i32 41, i32 34}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/memory/of_memory.c", i32 42, i32 34}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/memory/of_memory.c", i32 43, i32 34}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/memory/of_memory.c", i32 44, i32 34}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/memory/of_memory.c", i32 45, i32 34}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/memory/of_memory.c", i32 46, i32 34}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/memory/of_memory.c", i32 47, i32 34}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/memory/of_memory.c", i32 48, i32 34}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/memory/of_memory.c", i32 58, i32 2}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @of_get_min_tck._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @of_get_min_tck._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @__ksymtab_of_get_min_tck, !31, !"__ksymtab_of_get_min_tck", i1 false, i1 false}
!31 = !{!"../drivers/memory/of_memory.c", i32 61, i32 1}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/memory/of_memory.c", i32 117, i32 16}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/memory/of_memory.c", i32 120, i32 3}
!36 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @of_get_ddr_timings._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @of_get_ddr_timings._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/memory/of_memory.c", i32 149, i32 2}
!41 = !{ptr @of_get_ddr_timings._entry.19, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @of_get_ddr_timings._entry_ptr.21, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @__ksymtab_of_get_ddr_timings, !44, !"__ksymtab_of_get_ddr_timings", i1 false, i1 false}
!44 = !{!"../drivers/memory/of_memory.c", i32 153, i32 1}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/memory/of_memory.c", i32 174, i32 34}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/memory/of_memory.c", i32 177, i32 34}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/memory/of_memory.c", i32 179, i32 34}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/memory/of_memory.c", i32 180, i32 34}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/memory/of_memory.c", i32 184, i32 34}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/memory/of_memory.c", i32 185, i32 34}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/memory/of_memory.c", i32 186, i32 34}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/memory/of_memory.c", i32 187, i32 34}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/memory/of_memory.c", i32 188, i32 34}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/memory/of_memory.c", i32 190, i32 34}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/memory/of_memory.c", i32 194, i32 34}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/memory/of_memory.c", i32 197, i32 3}
!69 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @of_lpddr3_get_min_tck._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @of_lpddr3_get_min_tck._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @of_lpddr3_get_min_tck._entry.35, !73, !"_entry", i1 false, i1 false}
!73 = !{!"../drivers/memory/of_memory.c", i32 205, i32 2}
!74 = !{ptr @of_lpddr3_get_min_tck._entry_ptr.36, !73, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @__ksymtab_of_lpddr3_get_min_tck, !76, !"__ksymtab_of_lpddr3_get_min_tck", i1 false, i1 false}
!76 = !{!"../drivers/memory/of_memory.c", i32 208, i32 1}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/memory/of_memory.c", i32 264, i32 16}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/memory/of_memory.c", i32 267, i32 3}
!81 = !{ptr @of_lpddr3_get_ddr_timings._entry, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @of_lpddr3_get_ddr_timings._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/memory/of_memory.c", i32 296, i32 2}
!85 = !{ptr @of_lpddr3_get_ddr_timings._entry.39, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @of_lpddr3_get_ddr_timings._entry_ptr.41, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @__ksymtab_of_lpddr3_get_ddr_timings, !88, !"__ksymtab_of_lpddr3_get_ddr_timings", i1 false, i1 false}
!88 = !{!"../drivers/memory/of_memory.c", i32 300, i32 1}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/memory/of_memory.c", i32 320, i32 33}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/memory/of_memory.c", i32 324, i32 33}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/memory/of_memory.c", i32 328, i32 33}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/memory/of_memory.c", i32 334, i32 33}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/memory/of_memory.c", i32 340, i32 34}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/memory/of_memory.c", i32 342, i32 39}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/memory/of_memory.c", i32 344, i32 39}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/memory/of_memory.c", i32 349, i32 30}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/memory/of_memory.c", i32 359, i32 3}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/memory/of_memory.c", i32 360, i32 3}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/memory/of_memory.c", i32 361, i32 3}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/memory/of_memory.c", i32 362, i32 3}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/memory/of_memory.c", i32 363, i32 3}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/memory/of_memory.c", i32 364, i32 3}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/memory/of_memory.c", i32 365, i32 3}
!119 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/memory/of_memory.c", i32 366, i32 3}
!121 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/memory/of_memory.c", i32 367, i32 3}
!123 = !{ptr @.str.59, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/memory/of_memory.c", i32 368, i32 3}
!125 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/memory/of_memory.c", i32 369, i32 3}
!127 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/memory/of_memory.c", i32 370, i32 3}
!129 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/memory/of_memory.c", i32 371, i32 3}
!131 = !{ptr @.str.63, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/memory/of_memory.c", i32 372, i32 3}
!133 = !{ptr @.str.64, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/memory/of_memory.c", i32 373, i32 3}
!135 = !{ptr @__ksymtab_of_lpddr2_get_info, !136, !"__ksymtab_of_lpddr2_get_info", i1 false, i1 false}
!136 = !{!"../drivers/memory/of_memory.c", i32 387, i32 1}
!137 = !{ptr @.str.65, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/memory/of_memory.c", i32 68, i32 33}
!139 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/memory/of_memory.c", i32 69, i32 34}
!141 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/memory/of_memory.c", i32 70, i32 34}
!143 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/memory/of_memory.c", i32 71, i32 34}
!145 = !{ptr @.str.69, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/memory/of_memory.c", i32 72, i32 34}
!147 = !{ptr @.str.70, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/memory/of_memory.c", i32 73, i32 34}
!149 = !{ptr @.str.71, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/memory/of_memory.c", i32 74, i32 34}
!151 = !{ptr @.str.72, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/memory/of_memory.c", i32 75, i32 34}
!153 = !{ptr @.str.73, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/memory/of_memory.c", i32 76, i32 34}
!155 = !{ptr @.str.74, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/memory/of_memory.c", i32 77, i32 34}
!157 = !{ptr @.str.75, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/memory/of_memory.c", i32 78, i32 34}
!159 = !{ptr @.str.76, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/memory/of_memory.c", i32 79, i32 34}
!161 = !{ptr @.str.77, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/memory/of_memory.c", i32 80, i32 34}
!163 = !{ptr @.str.78, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/memory/of_memory.c", i32 81, i32 34}
!165 = !{ptr @.str.79, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/memory/of_memory.c", i32 82, i32 34}
!167 = !{ptr @.str.80, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/memory/of_memory.c", i32 83, i32 34}
!169 = !{ptr @.str.81, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/memory/of_memory.c", i32 84, i32 34}
!171 = !{ptr @.str.82, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/memory/of_memory.c", i32 85, i32 34}
!173 = !{ptr @.str.83, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/memory/of_memory.c", i32 216, i32 33}
!175 = !{ptr @.str.84, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/memory/of_memory.c", i32 218, i32 34}
!177 = !{ptr @.str.85, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/memory/of_memory.c", i32 221, i32 34}
!179 = !{ptr @.str.86, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/memory/of_memory.c", i32 223, i32 34}
!181 = !{ptr @.str.87, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/memory/of_memory.c", i32 224, i32 34}
!183 = !{ptr @.str.88, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/memory/of_memory.c", i32 228, i32 34}
!185 = !{ptr @.str.89, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/memory/of_memory.c", i32 229, i32 34}
!187 = !{ptr @.str.90, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/memory/of_memory.c", i32 231, i32 34}
!189 = !{ptr @.str.91, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/memory/of_memory.c", i32 233, i32 34}
!191 = !{ptr @.str.92, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/memory/of_memory.c", i32 235, i32 34}
!193 = !{i32 1, !"wchar_size", i32 2}
!194 = !{i32 1, !"min_enum_size", i32 4}
!195 = !{i32 8, !"branch-target-enforcement", i32 0}
!196 = !{i32 8, !"sign-return-address", i32 0}
!197 = !{i32 8, !"sign-return-address-all", i32 0}
!198 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!199 = !{i32 7, !"uwtable", i32 1}
!200 = !{i32 7, !"frame-pointer", i32 2}
!201 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!202 = !{!"branch_weights", i32 1, i32 2000}
!203 = !{i32 0, i32 33}
