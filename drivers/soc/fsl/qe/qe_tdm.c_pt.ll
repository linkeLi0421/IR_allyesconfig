; ModuleID = '/llk/IR_all_yes/drivers/soc/fsl/qe/qe_tdm.c_pt.bc'
source_filename = "../drivers/soc/fsl/qe/qe_tdm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ucc_of_parse_tdm\22, \22a\22\09"
module asm "\09.weak\09__crc_ucc_of_parse_tdm\09\09\09\09"
module asm "\09.long\09__crc_ucc_of_parse_tdm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ucc_of_parse_tdm:\09\09\09\09\09"
module asm "\09.asciz \09\22ucc_of_parse_tdm\22\09\09\09\09\09"
module asm "__kstrtabns_ucc_of_parse_tdm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ucc_tdm_init\22, \22a\22\09"
module asm "\09.weak\09__crc_ucc_tdm_init\09\09\09\09"
module asm "\09.long\09__crc_ucc_tdm_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ucc_tdm_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ucc_tdm_init\22\09\09\09\09\09"
module asm "__kstrtabns_ucc_tdm_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ucc_fast_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.ucc_tdm = type { i16, i32, ptr, ptr, i32, i32, i8, i32, i32 }
%struct.ucc_tdm_info = type { %struct.ucc_fast_info, %struct.si_mode_info }
%struct.si_mode_info = type { i8, i8, i8, i8, i8, i8, i8 }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl,rx-sync-clock\00", [46 x i8] zeroinitializer }, align 32
@ucc_of_parse_tdm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013QE-TDM: Invalid rx-sync-clock property\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ucc_of_parse_tdm\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/soc/fsl/qe/qe_tdm.c\00", [36 x i8] zeroinitializer }, align 32
@ucc_of_parse_tdm._entry_ptr = internal global ptr @ucc_of_parse_tdm._entry, section ".printk_index", align 4
@ucc_of_parse_tdm._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ucc_of_parse_tdm._entry_ptr.5 = internal global ptr @ucc_of_parse_tdm._entry.4, section ".printk_index", align 4
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl,tx-sync-clock\00", [46 x i8] zeroinitializer }, align 32
@ucc_of_parse_tdm._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013QE-TDM: Invalid tx-sync-clock property\0A\00", [54 x i8] zeroinitializer }, align 32
@ucc_of_parse_tdm._entry_ptr.9 = internal global ptr @ucc_of_parse_tdm._entry.7, section ".printk_index", align 4
@ucc_of_parse_tdm._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ucc_of_parse_tdm._entry_ptr.11 = internal global ptr @ucc_of_parse_tdm._entry.10, section ".printk_index", align 4
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,tx-timeslot-mask\00", [43 x i8] zeroinitializer }, align 32
@ucc_of_parse_tdm._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013QE-TDM: Invalid tx-timeslot-mask property\0A\00", [51 x i8] zeroinitializer }, align 32
@ucc_of_parse_tdm._entry_ptr.15 = internal global ptr @ucc_of_parse_tdm._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,rx-timeslot-mask\00", [43 x i8] zeroinitializer }, align 32
@ucc_of_parse_tdm._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013QE-TDM: Invalid rx-timeslot-mask property\0A\00", [51 x i8] zeroinitializer }, align 32
@ucc_of_parse_tdm._entry_ptr.19 = internal global ptr @ucc_of_parse_tdm._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsl,tdm-id\00", [21 x i8] zeroinitializer }, align 32
@ucc_of_parse_tdm._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013QE-TDM: No fsl,tdm-id property for this UCC\0A\00", [49 x i8] zeroinitializer }, align 32
@ucc_of_parse_tdm._entry_ptr.23 = internal global ptr @ucc_of_parse_tdm._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fsl,tdm-internal-loopback\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fsl,tdm-framer-type\00", [44 x i8] zeroinitializer }, align 32
@ucc_of_parse_tdm._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013QE-TDM: No tdm-framer-type property for UCC\0A\00", [49 x i8] zeroinitializer }, align 32
@ucc_of_parse_tdm._entry_ptr.28 = internal global ptr @ucc_of_parse_tdm._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl,siram-entry-id\00", [45 x i8] zeroinitializer }, align 32
@ucc_of_parse_tdm._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013QE-TDM: No siram entry id for UCC\0A\00", [59 x i8] zeroinitializer }, align 32
@ucc_of_parse_tdm._entry_ptr.32 = internal global ptr @ucc_of_parse_tdm._entry.30, section ".printk_index", align 4
@__kstrtab_ucc_of_parse_tdm = external dso_local constant [0 x i8], align 1
@__kstrtabns_ucc_of_parse_tdm = external dso_local constant [0 x i8], align 1
@__ksymtab_ucc_of_parse_tdm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ucc_of_parse_tdm to i32), ptr @__kstrtab_ucc_of_parse_tdm, ptr @__kstrtabns_ucc_of_parse_tdm }, section "___ksymtab+ucc_of_parse_tdm", align 4
@ucc_tdm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013QE-TDM: can not find tdm sixmr reg\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ucc_tdm_init\00", [19 x i8] zeroinitializer }, align 32
@ucc_tdm_init._entry_ptr = internal global ptr @ucc_tdm_init._entry, section ".printk_index", align 4
@__kstrtab_ucc_tdm_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ucc_tdm_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ucc_tdm_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ucc_tdm_init to i32), ptr @__kstrtab_ucc_tdm_init, ptr @__kstrtabns_ucc_tdm_init }, section "___ksymtab+ucc_tdm_init", align 4
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"e1\00", [29 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"t1\00", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 44, i32 30 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 49, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 53, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 57, i32 30 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 62, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 66, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 70, i32 39 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 72, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 77, i32 39 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 80, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 85, i32 39 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 88, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 94, i32 32 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 99, i32 30 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 102, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 110, i32 39 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 113, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 215, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 19, i32 30 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private constant [31 x i8] c"../drivers/soc/fsl/qe/qe_tdm.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 21, i32 35 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__ksymtab_ucc_of_parse_tdm, ptr @__ksymtab_ucc_tdm_init, ptr @ucc_of_parse_tdm._entry, ptr @ucc_of_parse_tdm._entry.10, ptr @ucc_of_parse_tdm._entry.13, ptr @ucc_of_parse_tdm._entry.17, ptr @ucc_of_parse_tdm._entry.21, ptr @ucc_of_parse_tdm._entry.26, ptr @ucc_of_parse_tdm._entry.30, ptr @ucc_of_parse_tdm._entry.4, ptr @ucc_of_parse_tdm._entry.7, ptr @ucc_of_parse_tdm._entry_ptr, ptr @ucc_of_parse_tdm._entry_ptr.11, ptr @ucc_of_parse_tdm._entry_ptr.15, ptr @ucc_of_parse_tdm._entry_ptr.19, ptr @ucc_of_parse_tdm._entry_ptr.23, ptr @ucc_of_parse_tdm._entry_ptr.28, ptr @ucc_of_parse_tdm._entry_ptr.32, ptr @ucc_of_parse_tdm._entry_ptr.5, ptr @ucc_of_parse_tdm._entry_ptr.9, ptr @ucc_tdm_init._entry, ptr @ucc_tdm_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.6, ptr @.str.8, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_of_parse_tdm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_of_parse_tdm._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_of_parse_tdm._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_of_parse_tdm._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_of_parse_tdm._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_of_parse_tdm._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_of_parse_tdm._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_of_parse_tdm._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_of_parse_tdm._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_tdm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ucc_of_parse_tdm(ptr noundef %np, ptr nocapture noundef %utdm, ptr nocapture noundef writeonly %ut_info) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !74
  %call = tail call ptr @of_get_property(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end11, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @qe_clock_source(ptr noundef nonnull %call) #5
  %rx_sync = getelementptr inbounds %struct.ucc_fast_info, ptr %ut_info, i32 0, i32 4
  %1 = ptrtoint ptr %rx_sync to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call1, ptr %rx_sync, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %call1)
  %cmp6 = icmp ugt i32 %call1, 41
  br i1 %cmp6, label %do.end, label %if.end14

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %cleanup

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end14:                                         ; preds = %if.then
  %call15 = tail call ptr @of_get_property(ptr noundef %np, ptr noundef nonnull @.str.6, ptr noundef null) #5
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %do.end37, label %if.then17

if.then17:                                        ; preds = %if.end14
  %call18 = tail call i32 @qe_clock_source(ptr noundef nonnull %call15) #5
  %tx_sync = getelementptr inbounds %struct.ucc_fast_info, ptr %ut_info, i32 0, i32 5
  %2 = ptrtoint ptr %tx_sync to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call18, ptr %tx_sync, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %call18)
  %cmp26 = icmp ugt i32 %call18, 42
  br i1 %cmp26, label %do.end30, label %if.end40

do.end30:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #8
  br label %cleanup

do.end37:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end40:                                         ; preds = %if.then17
  %call41 = call i32 @of_property_read_u32_index(ptr noundef %np, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end49, label %do.end46

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end49:                                         ; preds = %if.end40
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %tx_ts_mask = getelementptr inbounds %struct.ucc_tdm, ptr %utdm, i32 0, i32 7
  %5 = ptrtoint ptr %tx_ts_mask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tx_ts_mask, align 4
  %call50 = call i32 @of_property_read_u32_index(ptr noundef %np, ptr noundef nonnull @.str.16, i32 noundef 0, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end58, label %if.then52

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #8
  br label %cleanup

if.end58:                                         ; preds = %if.end49
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %rx_ts_mask = getelementptr inbounds %struct.ucc_tdm, ptr %utdm, i32 0, i32 8
  %8 = ptrtoint ptr %rx_ts_mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rx_ts_mask, align 4
  %call59 = call i32 @of_property_read_u32_index(ptr noundef %np, ptr noundef nonnull @.str.20, i32 noundef 0, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end67, label %if.then61

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #8
  br label %cleanup

if.end67:                                         ; preds = %if.end58
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %conv = trunc i32 %10 to i16
  %11 = ptrtoint ptr %utdm to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %utdm, align 4
  %conv69 = and i32 %10, 65535
  %tdm_num = getelementptr inbounds %struct.ucc_fast_info, ptr %ut_info, i32 0, i32 1
  %12 = ptrtoint ptr %tdm_num to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv69, ptr %tdm_num, align 4
  %call.i = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.24, ptr noundef null) #5
  %tobool.i.not = icmp eq ptr %call.i, null
  %spec.select = zext i1 %tobool.i.not to i32
  %13 = getelementptr inbounds %struct.ucc_tdm, ptr %utdm, i32 0, i32 5
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.select, ptr %13, align 4
  %call76 = call ptr @of_get_property(ptr noundef %np, ptr noundef nonnull @.str.25, ptr noundef null) #5
  %tobool77.not = icmp eq ptr %call76, null
  br i1 %tobool77.not, label %if.then78, label %if.end84

if.then78:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #8
  br label %cleanup

if.end84:                                         ; preds = %if.end67
  %call.i138 = call i32 @strcmp(ptr noundef nonnull %call76, ptr noundef nonnull dereferenceable(3) @.str.35) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %cmp.i = icmp eq i32 %call.i138, 0
  br i1 %cmp.i, label %if.end84.if.end89_crit_edge, label %if.else.i

if.end84.if.end89_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

if.else.i:                                        ; preds = %if.end84
  %call1.i = call i32 @strcmp(ptr noundef nonnull %call76, ptr noundef nonnull dereferenceable(3) @.str.36) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %if.else.i.if.end89_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else.i.if.end89_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

if.end89:                                         ; preds = %if.else.i.if.end89_crit_edge, %if.end84.if.end89_crit_edge
  %retval.0.i.ph = phi i32 [ 1, %if.end84.if.end89_crit_edge ], [ 0, %if.else.i.if.end89_crit_edge ]
  %tdm_framer_type = getelementptr inbounds %struct.ucc_tdm, ptr %utdm, i32 0, i32 4
  %15 = ptrtoint ptr %tdm_framer_type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i.ph, ptr %tdm_framer_type, align 4
  %call90 = call i32 @of_property_read_u32_index(ptr noundef %np, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end98, label %if.then92

if.then92:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #8
  br label %cleanup

if.end98:                                         ; preds = %if.end89
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %siram_entry_id = getelementptr inbounds %struct.ucc_tdm, ptr %utdm, i32 0, i32 1
  %18 = ptrtoint ptr %siram_entry_id to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %siram_entry_id, align 4
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i139 = icmp eq i32 %20, 0
  br i1 %cmp.i139, label %if.then.i, label %if.end98.cleanup_crit_edge

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  %si_info1.i = getelementptr inbounds %struct.ucc_tdm_info, ptr %ut_info, i32 0, i32 1
  %simr_crt.i = getelementptr inbounds %struct.ucc_tdm_info, ptr %ut_info, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %simr_crt.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %simr_crt.i, align 1
  %22 = ptrtoint ptr %si_info1.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %si_info1.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end98.cleanup_crit_edge, %if.then92, %if.else.i.cleanup_crit_edge, %if.then78, %if.then61, %if.then52, %do.end46, %do.end37, %do.end30, %do.end11, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end30 ], [ -22, %do.end46 ], [ -22, %if.then52 ], [ -22, %if.then61 ], [ -22, %if.then92 ], [ -22, %if.then78 ], [ -22, %do.end37 ], [ -22, %do.end11 ], [ -22, %if.else.i.cleanup_crit_edge ], [ 0, %if.end98.cleanup_crit_edge ], [ 0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qe_clock_source(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ucc_tdm_init(ptr nocapture noundef %utdm, ptr nocapture noundef readonly %ut_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %si_regs1 = getelementptr inbounds %struct.ucc_tdm, ptr %utdm, i32 0, i32 3
  %0 = ptrtoint ptr %si_regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %si_regs1, align 4
  %siram2 = getelementptr inbounds %struct.ucc_tdm, ptr %utdm, i32 0, i32 2
  %2 = ptrtoint ptr %siram2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %siram2, align 4
  %4 = ptrtoint ptr %ut_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ut_info, align 4
  %6 = ptrtoint ptr %utdm to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %utdm, align 4
  %siram_entry_id5 = getelementptr inbounds %struct.ucc_tdm, ptr %utdm, i32 0, i32 1
  %8 = ptrtoint ptr %siram_entry_id5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %siram_entry_id5, align 4
  %tdm_framer_type = getelementptr inbounds %struct.ucc_tdm, ptr %utdm, i32 0, i32 4
  %10 = ptrtoint ptr %tdm_framer_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tdm_framer_type, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %entry.if.end12_crit_edge [
    i32 0, label %entry.if.end12.sink.split_crit_edge
    i32 1, label %if.then10
  ]

entry.if.end12.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.sink.split

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.sink.split

if.end12.sink.split:                              ; preds = %if.then10, %entry.if.end12.sink.split_crit_edge
  %.sink = phi i8 [ 32, %if.then10 ], [ 24, %entry.if.end12.sink.split_crit_edge ]
  %num_of_ts = getelementptr inbounds %struct.ucc_tdm, ptr %utdm, i32 0, i32 6
  %13 = ptrtoint ptr %num_of_ts to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.sink, ptr %num_of_ts, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %entry.if.end12_crit_edge
  %conv13 = and i32 %5, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv13)
  %cmp14 = icmp eq i32 %conv13, 0
  %cond.v = select i1 %cmp14, i32 9, i32 253
  %cond = add i32 %cond.v, %5
  %cond.tr = trunc i32 %cond to i16
  %14 = shl i16 %cond.tr, 5
  %15 = and i16 %14, 8160
  %conv21 = or i16 %15, 2
  %num_of_ts22 = getelementptr inbounds %struct.ucc_tdm, ptr %utdm, i32 0, i32 6
  %16 = ptrtoint ptr %num_of_ts22 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_of_ts22, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp24248.not = icmp eq i8 %17, 0
  br i1 %cmp24248.not, label %if.end12.do.body55_crit_edge, label %for.body.lr.ph

if.end12.do.body55_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %.pre = shl i32 %9, 5
  br label %do.body55

for.body.lr.ph:                                   ; preds = %if.end12
  %tx_ts_mask = getelementptr inbounds %struct.ucc_tdm, ptr %utdm, i32 0, i32 7
  %mul = shl i32 %9, 5
  %rx_ts_mask = getelementptr inbounds %struct.ucc_tdm, ptr %utdm, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0249 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl26 = shl nuw i32 1, %i.0249
  %18 = ptrtoint ptr %tx_ts_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_ts_mask, align 4
  %and = and i32 %19, %shl26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %add33 = add i32 %i.0249, %mul
  %arrayidx34 = getelementptr i16, ptr %3, i32 %add33
  br i1 %tobool.not, label %do.body29, label %do.body

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx34, i16 %conv21) #5, !srcloc !75
  br label %if.end35

do.body29:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx34, i16 2) #5, !srcloc !75
  br label %if.end35

if.end35:                                         ; preds = %do.body29, %do.body
  %20 = ptrtoint ptr %rx_ts_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_ts_mask, align 4
  %and36 = and i32 %21, %shl26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %add51 = add nuw nsw i32 %i.0249, 512
  %add52 = add i32 %add51, %mul
  %arrayidx53 = getelementptr i16, ptr %3, i32 %add52
  br i1 %tobool37.not, label %do.body47, label %do.body39

do.body39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx53, i16 %conv21) #5, !srcloc !75
  br label %for.inc

do.body47:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx53, i16 2) #5, !srcloc !75
  br label %for.inc

for.inc:                                          ; preds = %do.body47, %do.body39
  %inc = add nuw nsw i32 %i.0249, 1
  %22 = ptrtoint ptr %num_of_ts22 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %num_of_ts22, align 4
  %conv23 = zext i8 %23 to i32
  %cmp24 = icmp ult i32 %inc, %conv23
  br i1 %cmp24, label %for.inc.for.body_crit_edge, label %for.inc.do.body55_crit_edge

for.inc.do.body55_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body55

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.body55:                                        ; preds = %for.inc.do.body55_crit_edge, %if.end12.do.body55_crit_edge
  %mul58.pre-phi = phi i32 [ %.pre, %if.end12.do.body55_crit_edge ], [ %mul, %for.inc.do.body55_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %num_of_ts22 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %num_of_ts22, align 4
  %conv60 = zext i8 %25 to i32
  %sub61 = add i32 %mul58.pre-phi, -1
  %add62 = add i32 %sub61, %conv60
  %arrayidx63 = getelementptr i16, ptr %3, i32 %add62
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx63) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  %27 = or i16 %26, 1
  %28 = ptrtoint ptr %num_of_ts22 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num_of_ts22, align 4
  %conv69 = zext i8 %29 to i32
  %add71 = add i32 %sub61, %conv69
  %arrayidx72 = getelementptr i16, ptr %3, i32 %add71
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx72, i16 %27) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %num_of_ts22 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %num_of_ts22, align 4
  %conv80 = zext i8 %31 to i32
  %sub81 = add i32 %mul58.pre-phi, 511
  %add82 = add i32 %sub81, %conv80
  %arrayidx83 = getelementptr i16, ptr %3, i32 %add82
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx83) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  %33 = or i16 %32, 1
  %34 = ptrtoint ptr %num_of_ts22 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %num_of_ts22, align 4
  %conv92 = zext i8 %35 to i32
  %add94 = add i32 %sub81, %conv92
  %arrayidx95 = getelementptr i16, ptr %3, i32 %add94
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx95, i16 %33) #5, !srcloc !75
  %.tr = trunc i32 %9 to i16
  %conv100 = shl i16 %.tr, 12
  %tdm_mode = getelementptr inbounds %struct.ucc_tdm, ptr %utdm, i32 0, i32 5
  %36 = ptrtoint ptr %tdm_mode to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tdm_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp101 = icmp eq i32 %37, 0
  %38 = or i16 %conv100, 2048
  %sixmr.0 = select i1 %cmp101, i16 %38, i16 %conv100
  %si_info = getelementptr inbounds %struct.ucc_tdm_info, ptr %ut_info, i32 0, i32 1
  %39 = ptrtoint ptr %si_info to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %si_info, align 4
  %conv112 = zext i8 %40 to i16
  %shl113 = shl nuw i16 %conv112, 8
  %simr_tfsd = getelementptr inbounds %struct.ucc_tdm_info, ptr %ut_info, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %simr_tfsd to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %simr_tfsd, align 1
  %conv115 = zext i8 %42 to i16
  %or116 = or i16 %sixmr.0, %conv115
  %or118 = or i16 %or116, %shl113
  %simr_crt = getelementptr inbounds %struct.ucc_tdm_info, ptr %ut_info, i32 0, i32 1, i32 2
  %43 = ptrtoint ptr %simr_crt to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %simr_crt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool121.not = icmp eq i8 %44, 0
  %45 = or i16 %or118, 64
  %sixmr.1 = select i1 %tobool121.not, i16 %or118, i16 %45
  %simr_sl = getelementptr inbounds %struct.ucc_tdm_info, ptr %ut_info, i32 0, i32 1, i32 3
  %46 = ptrtoint ptr %simr_sl to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %simr_sl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool128.not = icmp eq i8 %47, 0
  %48 = or i16 %sixmr.1, 32
  %sixmr.2 = select i1 %tobool128.not, i16 %sixmr.1, i16 %48
  %simr_ce = getelementptr inbounds %struct.ucc_tdm_info, ptr %ut_info, i32 0, i32 1, i32 4
  %49 = ptrtoint ptr %simr_ce to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %simr_ce, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool135.not = icmp eq i8 %50, 0
  %51 = or i16 %sixmr.2, 16
  %sixmr.3 = select i1 %tobool135.not, i16 %sixmr.2, i16 %51
  %simr_fe = getelementptr inbounds %struct.ucc_tdm_info, ptr %ut_info, i32 0, i32 1, i32 5
  %52 = ptrtoint ptr %simr_fe to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %simr_fe, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool142.not = icmp eq i8 %53, 0
  %54 = or i16 %sixmr.3, 8
  %sixmr.4 = select i1 %tobool142.not, i16 %sixmr.3, i16 %54
  %simr_gm = getelementptr inbounds %struct.ucc_tdm_info, ptr %ut_info, i32 0, i32 1, i32 6
  %55 = ptrtoint ptr %simr_gm to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %simr_gm, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool149.not = icmp eq i8 %56, 0
  %57 = or i16 %sixmr.4, 4
  %sixmr.5 = select i1 %tobool149.not, i16 %sixmr.4, i16 %57
  %58 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.37)
  switch i16 %7, label %do.end180 [
    i16 0, label %do.body156
    i16 1, label %do.body161
    i16 2, label %do.body167
    i16 3, label %do.body173
  ]

do.body156:                                       ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 %sixmr.5) #5, !srcloc !75
  br label %sw.epilog

do.body161:                                       ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %arrayidx165 = getelementptr [4 x i16], ptr %1, i32 0, i32 1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx165, i16 %sixmr.5) #5, !srcloc !75
  br label %sw.epilog

do.body167:                                       ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %arrayidx171 = getelementptr [4 x i16], ptr %1, i32 0, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx171, i16 %sixmr.5) #5, !srcloc !75
  br label %sw.epilog

do.body173:                                       ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  tail call void @arm_heavy_mb() #5
  %arrayidx177 = getelementptr [4 x i16], ptr %1, i32 0, i32 3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx177, i16 %sixmr.5) #5, !srcloc !75
  br label %sw.epilog

do.end180:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #7
  %call182 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end180, %do.body173, %do.body167, %do.body161, %do.body156
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !15, !16, !17, !19, !20, !22, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !40, !42, !44, !45, !46, !48, !50, !51, !52, !54, !56, !57, !58, !59, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/soc/fsl/qe/qe_tdm.c", i32 44, i32 30}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/soc/fsl/qe/qe_tdm.c", i32 49, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ucc_of_parse_tdm._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @ucc_of_parse_tdm._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @ucc_of_parse_tdm._entry.4, !9, !"_entry", i1 false, i1 false}
!9 = !{!"../drivers/soc/fsl/qe/qe_tdm.c", i32 53, i32 3}
!10 = !{ptr @ucc_of_parse_tdm._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/soc/fsl/qe/qe_tdm.c", i32 57, i32 30}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/soc/fsl/qe/qe_tdm.c", i32 62, i32 4}
!15 = !{ptr @ucc_of_parse_tdm._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @ucc_of_parse_tdm._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @ucc_of_parse_tdm._entry.10, !18, !"_entry", i1 false, i1 false}
!18 = !{!"../drivers/soc/fsl/qe/qe_tdm.c", i32 66, i32 3}
!19 = !{ptr @ucc_of_parse_tdm._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/soc/fsl/qe/qe_tdm.c", i32 70, i32 39}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/soc/fsl/qe/qe_tdm.c", i32 72, i32 3}
!24 = !{ptr @ucc_of_parse_tdm._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ucc_of_parse_tdm._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/soc/fsl/qe/qe_tdm.c", i32 77, i32 39}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/soc/fsl/qe/qe_tdm.c", i32 80, i32 3}
!30 = !{ptr @ucc_of_parse_tdm._entry.17, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ucc_of_parse_tdm._entry_ptr.19, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/soc/fsl/qe/qe_tdm.c", i32 85, i32 39}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/soc/fsl/qe/qe_tdm.c", i32 88, i32 3}
!36 = !{ptr @ucc_of_parse_tdm._entry.21, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ucc_of_parse_tdm._entry_ptr.23, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/soc/fsl/qe/qe_tdm.c", i32 94, i32 32}
!40 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/soc/fsl/qe/qe_tdm.c", i32 99, i32 30}
!42 = !{ptr @.str.27, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/soc/fsl/qe/qe_tdm.c", i32 102, i32 3}
!44 = !{ptr @ucc_of_parse_tdm._entry.26, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ucc_of_parse_tdm._entry_ptr.28, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.29, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/soc/fsl/qe/qe_tdm.c", i32 110, i32 39}
!48 = !{ptr @.str.31, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/soc/fsl/qe/qe_tdm.c", i32 113, i32 3}
!50 = !{ptr @ucc_of_parse_tdm._entry.30, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @ucc_of_parse_tdm._entry_ptr.32, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @__ksymtab_ucc_of_parse_tdm, !53, !"__ksymtab_ucc_of_parse_tdm", i1 false, i1 false}
!53 = !{!"../drivers/soc/fsl/qe/qe_tdm.c", i32 121, i32 1}
!54 = !{ptr @.str.33, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/soc/fsl/qe/qe_tdm.c", i32 215, i32 3}
!56 = !{ptr @.str.34, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ucc_tdm_init._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @ucc_tdm_init._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @__ksymtab_ucc_tdm_init, !60, !"__ksymtab_ucc_tdm_init", i1 false, i1 false}
!60 = !{!"../drivers/soc/fsl/qe/qe_tdm.c", i32 219, i32 1}
!61 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/soc/fsl/qe/qe_tdm.c", i32 19, i32 30}
!63 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/soc/fsl/qe/qe_tdm.c", i32 21, i32 35}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"auto-init"}
!75 = !{i64 687954}
!76 = !{i64 2153145615}
!77 = !{i64 688154}
!78 = !{i64 2153145889}
!79 = !{i64 2153147022}
!80 = !{i64 2153147304}
!81 = !{i64 2153147725}
!82 = !{i64 2153148032}
!83 = !{i64 2153148339}
!84 = !{i64 2153148646}
