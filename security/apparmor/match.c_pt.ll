; ModuleID = '/llk/IR_all_yes/security/apparmor/match.c_pt.bc'
source_filename = "../security/apparmor/match.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.aa_dfa = type { %struct.kref, i16, i32, [8 x ptr] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.table_header = type { i16, i16, i32, i32, [0 x i8] }
%struct.match_workbuf = type { i32, i32, i32, i32, [24 x i32] }

@nulldfa = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@stacksplitdfa = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@nulldfa_src = internal global { <{ [651 x i8], [517 x i8] }>, [304 x i8] } { <{ [651 x i8], [517 x i8] }> <{ [651 x i8] c"\1B^x=\00\00\00\18\00\00\04\90\00\00notflex\00\00\00\00\01\00\04\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\07\00\04\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\04\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\02\00\00\00\00\00\00\00\02\00\00\00\00\00\08\00\02\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\02\00\00\00\00\00\00\01", [517 x i8] zeroinitializer }>, [304 x i8] zeroinitializer }, align 32
@stacksplitdfa_src = internal global { <{ [822 x i8], [418 x i8] }>, [296 x i8] } { <{ [822 x i8], [418 x i8] }> <{ [822 x i8] c"\1B^x=\00\00\00\18\00\00\04\D8\00\00notflex\00\00\00\00\01\00\04\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\07\00\04\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\04\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\00\00\04\00\02\00\00\00\00\00\00\00\06\00\00\00\02\00\02\00\02\00\02\00\02\00\08\00\02\00\00\00\00\00\00\01\05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\01\00\03\00\04\00\01\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\02\00\00\00\00\00\00\01\05\00\00\00\01\00\02\00\03\00\04\00\05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\01\00\02\00\03\00\04\00\05", [418 x i8] zeroinitializer }>, [296 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@verify_dfa._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.4, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013AppArmor DFA state with invalid match flags\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"verify_dfa\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"security/apparmor/match.c\00", [38 x i8] zeroinitializer }, align 32
@verify_dfa._entry_ptr = internal global ptr @verify_dfa._entry, section ".printk_index", align 4
@verify_dfa._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013AppArmor DFA diff encoded transition state without header flag\00", [63 x i8] zeroinitializer }, align 32
@verify_dfa._entry_ptr.7 = internal global ptr @verify_dfa._entry.5, section ".printk_index", align 4
@verify_dfa._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013AppArmor DFA out of bad transition out of range\00", [46 x i8] zeroinitializer }, align 32
@verify_dfa._entry_ptr.10 = internal global ptr @verify_dfa._entry.8, section ".printk_index", align 4
@verify_dfa._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013AppArmor DFA out of bad transition state without header flag\00", [33 x i8] zeroinitializer }, align 32
@verify_dfa._entry_ptr.13 = internal global ptr @verify_dfa._entry.11, section ".printk_index", align 4
@verify_dfa._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013AppArmor DFA next/check upper bounds error\0A\00", [50 x i8] zeroinitializer }, align 32
@verify_dfa._entry_ptr.16 = internal global ptr @verify_dfa._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AppArmor WARN %s: ((!dfa)): \00", [35 x i8] zeroinitializer }, align 32
@__func__.leftmatch_fb = private unnamed_addr constant [13 x i8] c"leftmatch_fb\00", align 1
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AppArmor WARN %s: ((!str)): \00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"AppArmor WARN %s: ((!count)): \00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [9 x i64] [i64 7, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7]
@___asan_gen_.22 = private unnamed_addr constant [8 x i8] c"nulldfa\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 27, i32 16 }
@___asan_gen_.25 = private unnamed_addr constant [14 x i8] c"stacksplitdfa\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 32, i32 16 }
@___asan_gen_.28 = private unnamed_addr constant [12 x i8] c"nulldfa_src\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 24, i32 13 }
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"stacksplitdfa_src\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 29, i32 13 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 211, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 216, i32 5 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 222, i32 5 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 226, i32 5 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 231, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 713, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 714, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [29 x i8] c"../security/apparmor/match.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 716, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @verify_dfa._entry, ptr @verify_dfa._entry.11, ptr @verify_dfa._entry.14, ptr @verify_dfa._entry.5, ptr @verify_dfa._entry.8, ptr @verify_dfa._entry_ptr, ptr @verify_dfa._entry_ptr.10, ptr @verify_dfa._entry_ptr.13, ptr @verify_dfa._entry_ptr.16, ptr @verify_dfa._entry_ptr.7, ptr @nulldfa, ptr @stacksplitdfa, ptr @nulldfa_src, ptr @stacksplitdfa_src, ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nulldfa to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stacksplitdfa to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nulldfa_src to i32), i32 1168, i32 1472, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stacksplitdfa_src to i32), i32 1240, i32 1536, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_dfa._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_dfa._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_dfa._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_dfa._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_dfa._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_setup_dfa_engine() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @aa_dfa_unpack(ptr noundef nonnull @nulldfa_src, i32 noundef 1168, i32 noundef 260)
  store ptr %call, ptr @nulldfa, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @aa_dfa_unpack(ptr noundef nonnull @stacksplitdfa_src, i32 noundef 1240, i32 noundef 260)
  store ptr %call3, ptr @stacksplitdfa, align 4
  %cmp.i9 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i9, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %0 = load ptr, ptr @nulldfa, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.then5.aa_put_dfa.exit_crit_edge, label %if.then.i

if.then5.aa_put_dfa.exit_crit_edge:               ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_dfa.exit

if.then.i:                                        ; preds = %if.then5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %0, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr nonnull %0, i32 1, i32 3, i32 1) #10
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #10, !srcloc !49
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.aa_put_dfa.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !50

if.end5.i.i.i.i.i.aa_put_dfa.exit_crit_edge:      ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_dfa.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef 3) #10
  br label %aa_put_dfa.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !51
  tail call fastcc void @dfa_free(ptr noundef nonnull %0) #10
  br label %aa_put_dfa.exit

aa_put_dfa.exit:                                  ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_dfa.exit_crit_edge, %if.then5.aa_put_dfa.exit_crit_edge
  store ptr null, ptr @nulldfa, align 4
  %2 = load ptr, ptr @stacksplitdfa, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %aa_put_dfa.exit, %entry.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %2, %aa_put_dfa.exit ], [ %call, %entry.cleanup.sink.split_crit_edge ]
  %stacksplitdfa.sink = phi ptr [ @stacksplitdfa, %aa_put_dfa.exit ], [ @nulldfa, %entry.cleanup.sink.split_crit_edge ]
  %3 = ptrtoint ptr %.sink to i32
  %4 = ptrtoint ptr %stacksplitdfa.sink to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %stacksplitdfa.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %3, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aa_dfa_unpack(ptr nocapture noundef readonly %blob, i32 noundef %size, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 44) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end:                                           ; preds = %entry
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #10
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %size)
  %cmp = icmp ult i32 %size, 16
  br i1 %cmp, label %if.end.fail_crit_edge, label %if.end2

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end2:                                          ; preds = %if.end
  %2 = ptrtoint ptr %blob to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blob, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 459175997, i32 %3)
  %cmp3.not = icmp eq i32 %3, 459175997
  br i1 %cmp3.not, label %if.end5, label %if.end2.fail_crit_edge

if.end2.fail_crit_edge:                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end5:                                          ; preds = %if.end2
  %add.ptr = getelementptr i8, ptr %blob, i32 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %size)
  %cmp6 = icmp ugt i32 %5, %size
  br i1 %cmp6, label %if.end5.fail_crit_edge, label %if.end8

if.end5.fail_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end8:                                          ; preds = %if.end5
  %add.ptr9 = getelementptr i8, ptr %blob, i32 12
  %6 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr9, align 2
  %flags10 = getelementptr inbounds %struct.aa_dfa, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %flags10 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %flags10, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %7)
  %tobool12.not = icmp ult i16 %7, 4
  br i1 %tobool12.not, label %if.end14, label %if.end8.fail_crit_edge

if.end8.fail_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end14:                                         ; preds = %if.end8
  %max_oob = getelementptr inbounds %struct.aa_dfa, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %max_oob to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %max_oob, align 8
  %sub = sub i32 %size, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp16.not140 = icmp eq i32 %sub, 0
  br i1 %cmp16.not140, label %if.end14.while.end_crit_edge, label %while.body.lr.ph

if.end14.while.end_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end14
  %add.ptr15 = getelementptr i8, ptr %blob, i32 %5
  %10 = lshr i32 %flags, 6
  %and32 = and i32 %10, 63
  %and24 = and i32 %flags, 63
  br label %while.body

while.body:                                       ; preds = %if.end61.while.body_crit_edge, %while.body.lr.ph
  %data.0142 = phi ptr [ %add.ptr15, %while.body.lr.ph ], [ %add.ptr69, %if.end61.while.body_crit_edge ]
  %size.addr.0141 = phi i32 [ %sub, %while.body.lr.ph ], [ %sub74, %if.end61.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %size.addr.0141)
  %cmp.i = icmp ult i32 %size.addr.0141, 12
  br i1 %cmp.i, label %while.body.fail_crit_edge, label %if.end.i

while.body.fail_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end.i:                                         ; preds = %while.body
  %11 = ptrtoint ptr %data.0142 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %data.0142, align 2
  %sub.i = add i16 %12, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %sub.i)
  %cmp4.i = icmp ugt i16 %sub.i, 8
  br i1 %cmp4.i, label %if.end.i.fail_crit_edge, label %if.end7.i

if.end.i.fail_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end7.i:                                        ; preds = %if.end.i
  %add.ptr.i = getelementptr i8, ptr %data.0142, i32 2
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i, align 2
  %add.ptr8.i = getelementptr i8, ptr %data.0142, i32 8
  %15 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %data.0142, i32 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %14)
  %cmp16.i = icmp eq i16 %14, 4
  %17 = add i16 %14, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %17)
  %18 = icmp ult i16 %17, 2
  %19 = or i1 %cmp16.i, %18
  %or.cond150.not.i = xor i1 %19, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp26.i = icmp eq i32 %16, 0
  %or.cond151.i = select i1 %or.cond150.not.i, i1 true, i1 %cmp26.i
  br i1 %or.cond151.i, label %if.end7.i.fail_crit_edge, label %if.end29.i

if.end7.i.fail_crit_edge:                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end29.i:                                       ; preds = %if.end7.i
  %conv11.i = zext i16 %14 to i32
  %mul.i.i = mul i32 %16, %conv11.i
  %add1.i.i = add i32 %mul.i.i, 19
  %and.i.i = and i32 %add1.i.i, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %size.addr.0141)
  %cmp33.i = icmp ugt i32 %and.i.i, %size.addr.0141
  br i1 %cmp33.i, label %if.end29.i.fail_crit_edge, label %if.end36.i

if.end29.i.fail_crit_edge:                        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end36.i:                                       ; preds = %if.end29.i
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %and.i.i, i32 noundef 3520, i32 noundef -1) #14
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %if.end36.i.fail_crit_edge, label %if.then38.i

if.end36.i.fail_crit_edge:                        ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.then38.i:                                      ; preds = %if.end36.i
  %20 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %sub.i, ptr %call.i.i.i, align 4
  %td_flags42.i = getelementptr inbounds %struct.table_header, ptr %call.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %td_flags42.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %14, ptr %td_flags42.i, align 2
  %td_lolen44.i = getelementptr inbounds %struct.table_header, ptr %call.i.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %td_lolen44.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %16, ptr %td_lolen44.i, align 4
  %23 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i16 %14, label %if.else77.i [
    i16 1, label %for.body.preheader.i
    i16 2, label %for.body69.preheader.i
  ]

for.body.preheader.i:                             ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #12
  %td_data.i = getelementptr %struct.table_header, ptr %call.i.i.i, i32 0, i32 4
  %24 = call ptr @memcpy(ptr %td_data.i, ptr %add.ptr9.i, i32 %16)
  br label %if.end104.i

for.body69.preheader.i:                           ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #12
  %td_data62.i = getelementptr %struct.table_header, ptr %call.i.i.i, i32 0, i32 4
  %25 = shl nuw i32 %16, 1
  %26 = call ptr @memcpy(ptr %td_data62.i, ptr %add.ptr9.i, i32 %25)
  br label %if.end104.i

if.else77.i:                                      ; preds = %if.then38.i
  br i1 %cmp16.i, label %for.body93.preheader.i, label %fail.i

for.body93.preheader.i:                           ; preds = %if.else77.i
  call void @__sanitizer_cov_trace_pc() #12
  %td_data86.i = getelementptr %struct.table_header, ptr %call.i.i.i, i32 0, i32 4
  %27 = shl nuw i32 %16, 2
  %28 = call ptr @memcpy(ptr %td_data86.i, ptr %add.ptr9.i, i32 %27)
  br label %if.end104.i

if.end104.i:                                      ; preds = %for.body93.preheader.i, %for.body69.preheader.i, %for.body.preheader.i
  %call105.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call.i.i.i) #10
  br i1 %call105.i, label %if.then106.i, label %if.end104.i.if.end21_crit_edge

if.end104.i.if.end21_crit_edge:                   ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then106.i:                                     ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @vm_unmap_aliases() #10
  br label %if.end21

fail.i:                                           ; preds = %if.else77.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #10
  br label %fail

if.end21:                                         ; preds = %if.then106.i, %if.end104.i.if.end21_crit_edge
  %29 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %call.i.i.i, align 4
  %31 = zext i16 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %30, label %if.end21.fail_crit_edge [
    i16 0, label %sw.bb
    i16 6, label %sw.bb29
    i16 1, label %sw.bb37
    i16 3, label %if.end21.sw.bb44_crit_edge
    i16 7, label %if.end21.sw.bb44_crit_edge148
    i16 2, label %if.end21.sw.bb44_crit_edge149
    i16 4, label %sw.bb51
  ]

if.end21.sw.bb44_crit_edge149:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb44

if.end21.sw.bb44_crit_edge148:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb44

if.end21.sw.bb44_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb44

if.end21.fail_crit_edge:                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

sw.bb:                                            ; preds = %if.end21
  %32 = ptrtoint ptr %td_flags42.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %td_flags42.i, align 2
  %conv23 = zext i16 %33 to i32
  %and25 = and i32 %and24, %conv23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %sw.bb.fail_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb.fail_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

sw.bb29:                                          ; preds = %if.end21
  %34 = ptrtoint ptr %td_flags42.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %td_flags42.i, align 2
  %conv31 = zext i16 %35 to i32
  %and33 = and i32 %and32, %conv31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %sw.bb29.fail_crit_edge, label %sw.bb29.sw.epilog_crit_edge

sw.bb29.sw.epilog_crit_edge:                      ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb29.fail_crit_edge:                           ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

sw.bb37:                                          ; preds = %if.end21
  %36 = ptrtoint ptr %td_flags42.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %td_flags42.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %37)
  %cmp40.not = icmp eq i16 %37, 4
  br i1 %cmp40.not, label %sw.bb37.sw.epilog_crit_edge, label %sw.bb37.fail_crit_edge

sw.bb37.fail_crit_edge:                           ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

sw.bb37.sw.epilog_crit_edge:                      ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end21.sw.bb44_crit_edge, %if.end21.sw.bb44_crit_edge148, %if.end21.sw.bb44_crit_edge149
  %38 = ptrtoint ptr %td_flags42.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %td_flags42.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %39)
  %cmp47.not = icmp eq i16 %39, 2
  br i1 %cmp47.not, label %sw.bb44.sw.epilog_crit_edge, label %sw.bb44.fail_crit_edge

sw.bb44.fail_crit_edge:                           ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

sw.bb44.sw.epilog_crit_edge:                      ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end21
  %40 = ptrtoint ptr %td_flags42.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %td_flags42.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %41)
  %cmp54.not = icmp eq i16 %41, 1
  br i1 %cmp54.not, label %sw.bb51.sw.epilog_crit_edge, label %sw.bb51.fail_crit_edge

sw.bb51.fail_crit_edge:                           ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

sw.bb51.sw.epilog_crit_edge:                      ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb51.sw.epilog_crit_edge, %sw.bb44.sw.epilog_crit_edge, %sw.bb37.sw.epilog_crit_edge, %sw.bb29.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %idxprom = zext i16 %30 to i32
  %arrayidx = getelementptr %struct.aa_dfa, ptr %call7.i.i, i32 0, i32 3, i32 %idxprom
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx, align 4
  %tobool59.not = icmp eq ptr %43, null
  br i1 %tobool59.not, label %if.end61, label %sw.epilog.fail_crit_edge

sw.epilog.fail_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end61:                                         ; preds = %sw.epilog
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i.i.i, ptr %arrayidx, align 4
  %45 = ptrtoint ptr %td_lolen44.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %td_lolen44.i, align 4
  %47 = ptrtoint ptr %td_flags42.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %td_flags42.i, align 2
  %conv67 = zext i16 %48 to i32
  %mul.i = mul i32 %46, %conv67
  %add1.i = add i32 %mul.i, 19
  %and.i = and i32 %add1.i, -8
  %add.ptr69 = getelementptr i8, ptr %data.0142, i32 %and.i
  %sub74 = sub i32 %size.addr.0141, %and.i
  %cmp16.not = icmp eq i32 %sub74, 0
  br i1 %cmp16.not, label %if.end61.while.end_crit_edge, label %if.end61.while.body_crit_edge

if.end61.while.body_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end61.while.end_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end61.while.end_crit_edge, %if.end14.while.end_crit_edge
  %tables75 = getelementptr inbounds %struct.aa_dfa, ptr %call7.i.i, i32 0, i32 3
  %call76 = tail call fastcc i32 @verify_table_headers(ptr noundef %tables75, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %while.end.fail_crit_edge

while.end.fail_crit_edge:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end79:                                         ; preds = %while.end
  %and80 = and i32 %flags, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end79.cleanup_crit_edge, label %if.then82

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then82:                                        ; preds = %if.end79
  %call83 = tail call fastcc i32 @verify_dfa(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then82.cleanup_crit_edge, label %if.then82.fail_crit_edge

if.then82.fail_crit_edge:                         ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.then82.cleanup_crit_edge:                      ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

fail:                                             ; preds = %if.then82.fail_crit_edge, %while.end.fail_crit_edge, %sw.epilog.fail_crit_edge, %sw.bb51.fail_crit_edge, %sw.bb44.fail_crit_edge, %sw.bb37.fail_crit_edge, %sw.bb29.fail_crit_edge, %sw.bb.fail_crit_edge, %if.end21.fail_crit_edge, %fail.i, %if.end36.i.fail_crit_edge, %if.end29.i.fail_crit_edge, %if.end7.i.fail_crit_edge, %if.end.i.fail_crit_edge, %while.body.fail_crit_edge, %if.end8.fail_crit_edge, %if.end5.fail_crit_edge, %if.end2.fail_crit_edge, %if.end.fail_crit_edge, %entry.fail_crit_edge
  %error.0 = phi i32 [ -71, %if.end.fail_crit_edge ], [ -71, %if.end2.fail_crit_edge ], [ -71, %if.end5.fail_crit_edge ], [ -71, %if.end8.fail_crit_edge ], [ %call76, %while.end.fail_crit_edge ], [ %call83, %if.then82.fail_crit_edge ], [ -12, %entry.fail_crit_edge ], [ -71, %fail.i ], [ -71, %sw.bb.fail_crit_edge ], [ -71, %sw.bb29.fail_crit_edge ], [ -71, %sw.bb37.fail_crit_edge ], [ -71, %sw.bb44.fail_crit_edge ], [ -71, %sw.bb51.fail_crit_edge ], [ -71, %if.end21.fail_crit_edge ], [ -71, %sw.epilog.fail_crit_edge ], [ -71, %while.body.fail_crit_edge ], [ -71, %if.end.i.fail_crit_edge ], [ -71, %if.end29.i.fail_crit_edge ], [ -71, %if.end36.i.fail_crit_edge ], [ -71, %if.end7.i.fail_crit_edge ]
  %table.1 = phi ptr [ null, %if.end.fail_crit_edge ], [ null, %if.end2.fail_crit_edge ], [ null, %if.end5.fail_crit_edge ], [ null, %if.end8.fail_crit_edge ], [ null, %while.end.fail_crit_edge ], [ null, %if.then82.fail_crit_edge ], [ null, %entry.fail_crit_edge ], [ null, %fail.i ], [ null, %if.end7.i.fail_crit_edge ], [ null, %if.end36.i.fail_crit_edge ], [ null, %if.end29.i.fail_crit_edge ], [ null, %if.end.i.fail_crit_edge ], [ null, %while.body.fail_crit_edge ], [ %call.i.i.i, %sw.epilog.fail_crit_edge ], [ %call.i.i.i, %if.end21.fail_crit_edge ], [ %call.i.i.i, %sw.bb51.fail_crit_edge ], [ %call.i.i.i, %sw.bb44.fail_crit_edge ], [ %call.i.i.i, %sw.bb37.fail_crit_edge ], [ %call.i.i.i, %sw.bb29.fail_crit_edge ], [ %call.i.i.i, %sw.bb.fail_crit_edge ]
  tail call void @kvfree(ptr noundef %table.1) #10
  tail call fastcc void @dfa_free(ptr noundef %call7.i.i)
  %49 = inttoptr i32 %error.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.then82.cleanup_crit_edge, %if.end79.cleanup_crit_edge
  %retval.0 = phi ptr [ %49, %fail ], [ %call7.i.i, %if.then82.cleanup_crit_edge ], [ %call7.i.i, %if.end79.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aa_teardown_dfa_engine() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @stacksplitdfa, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %entry.aa_put_dfa.exit_crit_edge, label %if.then.i

entry.aa_put_dfa.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_dfa.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %0, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr nonnull %0, i32 1, i32 3, i32 1) #10
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #10, !srcloc !49
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.aa_put_dfa.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !50

if.end5.i.i.i.i.i.aa_put_dfa.exit_crit_edge:      ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_dfa.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef 3) #10
  br label %aa_put_dfa.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !51
  tail call fastcc void @dfa_free(ptr noundef nonnull %0) #10
  br label %aa_put_dfa.exit

aa_put_dfa.exit:                                  ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_dfa.exit_crit_edge, %entry.aa_put_dfa.exit_crit_edge
  %2 = load ptr, ptr @nulldfa, align 4
  %tobool.not.i1 = icmp eq ptr %2, null
  br i1 %tobool.not.i1, label %aa_put_dfa.exit.aa_put_dfa.exit10_crit_edge, label %if.then.i5

aa_put_dfa.exit.aa_put_dfa.exit10_crit_edge:      ; preds = %aa_put_dfa.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_dfa.exit10

if.then.i5:                                       ; preds = %aa_put_dfa.exit
  %call.i.i.i.i.i.i.i2 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %2, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr nonnull %2, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %2, ptr nonnull %2, i32 1, ptr nonnull elementtype(i32) %2) #10, !srcloc !49
  %asmresult.i.i.i.i.i.i.i.i3 = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i3)
  %cmp.i.i.i.i.i4 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i3, 1
  br i1 %cmp.i.i.i.i.i4, label %if.then.i.i9, label %if.end5.i.i.i.i.i7

if.end5.i.i.i.i.i7:                               ; preds = %if.then.i5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i3)
  %.not.i.i.i.i.i6 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i3, 0
  br i1 %.not.i.i.i.i.i6, label %if.end5.i.i.i.i.i7.aa_put_dfa.exit10_crit_edge, label %if.then10.i.i.i.i.i8, !prof !50

if.end5.i.i.i.i.i7.aa_put_dfa.exit10_crit_edge:   ; preds = %if.end5.i.i.i.i.i7
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_dfa.exit10

if.then10.i.i.i.i.i8:                             ; preds = %if.end5.i.i.i.i.i7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %2, i32 noundef 3) #10
  br label %aa_put_dfa.exit10

if.then.i.i9:                                     ; preds = %if.then.i5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !51
  tail call fastcc void @dfa_free(ptr noundef nonnull %2) #10
  br label %aa_put_dfa.exit10

aa_put_dfa.exit10:                                ; preds = %if.then.i.i9, %if.then10.i.i.i.i.i8, %if.end5.i.i.i.i.i7.aa_put_dfa.exit10_crit_edge, %aa_put_dfa.exit.aa_put_dfa.exit10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aa_dfa_free_kref(ptr noundef %kref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @dfa_free(ptr noundef %kref)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dfa_free(ptr noundef %dfa) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dfa, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.body.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @kvfree(ptr noundef %1) #10
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  %arrayidx.1 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.1, align 4
  tail call void @kvfree(ptr noundef %4) #10
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  tail call void @kvfree(ptr noundef %7) #10
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx.2, align 4
  %arrayidx.3 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.3, align 4
  tail call void @kvfree(ptr noundef %10) #10
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx.3, align 4
  %arrayidx.4 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.4, align 4
  tail call void @kvfree(ptr noundef %13) #10
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx.4, align 4
  %arrayidx.5 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 5
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.5, align 4
  tail call void @kvfree(ptr noundef %16) #10
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx.5, align 4
  %arrayidx.6 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 6
  %18 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.6, align 4
  tail call void @kvfree(ptr noundef %19) #10
  %20 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx.6, align 4
  %arrayidx.7 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 7
  %21 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.7, align 4
  tail call void @kvfree(ptr noundef %22) #10
  %23 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx.7, align 4
  tail call void @kfree(ptr noundef nonnull %dfa) #10
  br label %if.end

if.end:                                           ; preds = %for.body.preheader, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @verify_table_headers(ptr nocapture noundef readonly %tables, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tables, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %land.lhs.true

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tables, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.out_crit_edge, label %land.lhs.true3

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true3:                                   ; preds = %land.lhs.true
  %arrayidx4 = getelementptr ptr, ptr %tables, i32 7
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %land.lhs.true3.out_crit_edge, label %land.lhs.true6

land.lhs.true3.out_crit_edge:                     ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %arrayidx7 = getelementptr ptr, ptr %tables, i32 2
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %land.lhs.true6.out_crit_edge, label %if.end

land.lhs.true6.out_crit_edge:                     ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %land.lhs.true6
  %td_lolen = getelementptr inbounds %struct.table_header, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %td_lolen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %td_lolen, align 4
  %and = and i32 %flags, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end.if.end20_crit_edge, label %if.then11

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then11:                                        ; preds = %if.end
  %10 = ptrtoint ptr %tables to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tables, align 4
  %tobool13.not = icmp eq ptr %11, null
  br i1 %tobool13.not, label %if.then11.out_crit_edge, label %if.end15

if.then11.out_crit_edge:                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end15:                                         ; preds = %if.then11
  %td_lolen17 = getelementptr inbounds %struct.table_header, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %td_lolen17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %td_lolen17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp.not = icmp eq i32 %9, %13
  br i1 %cmp.not, label %if.end15.if.end20_crit_edge, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end20:                                         ; preds = %if.end15.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %14 = and i32 %flags, 4032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool22.not = icmp eq i32 %14, 0
  br i1 %tobool22.not, label %if.end20.if.end33_crit_edge, label %if.then23

if.end20.if.end33_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then23:                                        ; preds = %if.end20
  %arrayidx24 = getelementptr ptr, ptr %tables, i32 6
  %15 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx24, align 4
  %tobool25.not = icmp eq ptr %16, null
  br i1 %tobool25.not, label %if.then23.out_crit_edge, label %if.end27

if.then23.out_crit_edge:                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end27:                                         ; preds = %if.then23
  %td_lolen29 = getelementptr inbounds %struct.table_header, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %td_lolen29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %td_lolen29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %18)
  %cmp30.not = icmp eq i32 %9, %18
  br i1 %cmp30.not, label %if.end27.if.end33_crit_edge, label %if.end27.out_crit_edge

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.end33:                                         ; preds = %if.end27.if.end33_crit_edge, %if.end20.if.end33_crit_edge
  %td_lolen35 = getelementptr inbounds %struct.table_header, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %td_lolen35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %td_lolen35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %20)
  %cmp36.not = icmp eq i32 %9, %20
  br i1 %cmp36.not, label %if.end38, label %if.end33.out_crit_edge

if.end33.out_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end38:                                         ; preds = %if.end33
  %td_lolen40 = getelementptr inbounds %struct.table_header, ptr %5, i32 0, i32 3
  %21 = ptrtoint ptr %td_lolen40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %td_lolen40, align 4
  %td_lolen42 = getelementptr inbounds %struct.table_header, ptr %7, i32 0, i32 3
  %23 = ptrtoint ptr %td_lolen42 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %td_lolen42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp43.not = icmp eq i32 %22, %24
  br i1 %cmp43.not, label %if.end45, label %if.end38.out_crit_edge

if.end38.out_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end45:                                         ; preds = %if.end38
  %arrayidx46 = getelementptr ptr, ptr %tables, i32 4
  %25 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx46, align 4
  %tobool47.not = icmp eq ptr %26, null
  br i1 %tobool47.not, label %if.end45.if.end53_crit_edge, label %land.lhs.true48

if.end45.if.end53_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

land.lhs.true48:                                  ; preds = %if.end45
  %td_lolen50 = getelementptr inbounds %struct.table_header, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %td_lolen50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %td_lolen50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %28)
  %cmp51.not = icmp eq i32 %28, 256
  br i1 %cmp51.not, label %land.lhs.true48.if.end53_crit_edge, label %land.lhs.true48.out_crit_edge

land.lhs.true48.out_crit_edge:                    ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true48.if.end53_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.end53:                                         ; preds = %land.lhs.true48.if.end53_crit_edge, %if.end45.if.end53_crit_edge
  br label %out

out:                                              ; preds = %if.end53, %land.lhs.true48.out_crit_edge, %if.end38.out_crit_edge, %if.end33.out_crit_edge, %if.end27.out_crit_edge, %if.then23.out_crit_edge, %if.end15.out_crit_edge, %if.then11.out_crit_edge, %land.lhs.true6.out_crit_edge, %land.lhs.true3.out_crit_edge, %land.lhs.true.out_crit_edge, %entry.out_crit_edge
  %error.0 = phi i32 [ -71, %if.end15.out_crit_edge ], [ -71, %if.end27.out_crit_edge ], [ -71, %if.end33.out_crit_edge ], [ -71, %if.end38.out_crit_edge ], [ -71, %land.lhs.true48.out_crit_edge ], [ 0, %if.end53 ], [ -71, %if.then23.out_crit_edge ], [ -71, %if.then11.out_crit_edge ], [ -71, %land.lhs.true6.out_crit_edge ], [ -71, %land.lhs.true3.out_crit_edge ], [ -71, %land.lhs.true.out_crit_edge ], [ -71, %entry.out_crit_edge ]
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @verify_dfa(ptr nocapture noundef readonly %dfa) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %td_lolen = getelementptr inbounds %struct.table_header, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %td_lolen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %td_lolen, align 4
  %arrayidx2 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %td_lolen3 = getelementptr inbounds %struct.table_header, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %td_lolen3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %td_lolen3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup167_crit_edge, label %for.body.lr.ph

entry.cleanup167_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup167

for.body.lr.ph:                                   ; preds = %entry
  %td_data = getelementptr inbounds %struct.table_header, ptr %1, i32 0, i32 4
  %flags = getelementptr inbounds %struct.aa_dfa, ptr %dfa, i32 0, i32 1
  %arrayidx9 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 3
  %max_oob = getelementptr inbounds %struct.aa_dfa, ptr %dfa, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %if.end79
  %inc = add nuw i32 %i.0225, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.body98.lr.ph, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body98.lr.ph:                                 ; preds = %for.cond
  %td_data101 = getelementptr inbounds %struct.table_header, ptr %5, i32 0, i32 4
  %arrayidx110 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 2
  br label %for.body98

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0225 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx7 = getelementptr i32, ptr %td_data, i32 %i.0225
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool.not = icmp sgt i32 %9, -1
  br i1 %tobool.not, label %land.lhs.true, label %if.end16.thread

land.lhs.true:                                    ; preds = %for.body
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx9, align 4
  %td_data10 = getelementptr inbounds %struct.table_header, ptr %11, i32 0, i32 4
  %arrayidx12 = getelementptr i16, ptr %td_data10, i32 %i.0225
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx12, align 2
  %conv = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp13.not = icmp ugt i32 %3, %conv
  br i1 %cmp13.not, label %if.end16, label %land.lhs.true.cleanup167_crit_edge

land.lhs.true.cleanup167_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup167

if.end16:                                         ; preds = %land.lhs.true
  %and22 = and i32 %9, 1593835520
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end16.if.end44_crit_edge, label %if.end16.cleanup167.sink.split_crit_edge

if.end16.cleanup167.sink.split_crit_edge:         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup167.sink.split

if.end16.if.end44_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.end16.thread:                                  ; preds = %for.body
  %and22217 = and i32 %9, 1593835520
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22217)
  %tobool23.not218 = icmp eq i32 %and22217, 0
  br i1 %tobool23.not218, label %if.then33, label %if.end16.thread.cleanup167.sink.split_crit_edge

if.end16.thread.cleanup167.sink.split_crit_edge:  ; preds = %if.end16.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup167.sink.split

if.then33:                                        ; preds = %if.end16.thread
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags, align 4
  %16 = and i16 %15, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool36.not = icmp eq i16 %16, 0
  br i1 %tobool36.not, label %if.then33.cleanup167.sink.split_crit_edge, label %if.then33.if.end44_crit_edge

if.then33.if.end44_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then33.cleanup167.sink.split_crit_edge:        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup167.sink.split

if.end44:                                         ; preds = %if.then33.if.end44_crit_edge, %if.end16.if.end44_crit_edge
  %and50 = and i32 %9, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %.pre = and i32 %9, 16777215
  br i1 %tobool51.not, label %if.end44.if.end79_crit_edge, label %if.then52

if.end44.if.end79_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then52:                                        ; preds = %if.end44
  %17 = ptrtoint ptr %max_oob to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_oob, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.pre, i32 %18)
  %cmp59 = icmp ult i32 %.pre, %18
  br i1 %cmp59, label %if.then52.cleanup167.sink.split_crit_edge, label %if.end67

if.then52.cleanup167.sink.split_crit_edge:        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup167.sink.split

if.end67:                                         ; preds = %if.then52
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags, align 4
  %21 = and i16 %20, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool71.not = icmp eq i16 %21, 0
  br i1 %tobool71.not, label %if.end67.cleanup167.sink.split_crit_edge, label %if.end67.if.end79_crit_edge

if.end67.if.end79_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.end67.cleanup167.sink.split_crit_edge:         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup167.sink.split

if.end79:                                         ; preds = %if.end67.if.end79_crit_edge, %if.end44.if.end79_crit_edge
  %add = add nuw nsw i32 %.pre, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %7)
  %cmp86.not = icmp ult i32 %add, %7
  br i1 %cmp86.not, label %for.cond, label %if.end79.cleanup167.sink.split_crit_edge

if.end79.cleanup167.sink.split_crit_edge:         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup167.sink.split

for.cond95:                                       ; preds = %if.end108
  %inc120 = add nuw i32 %i.1227, 1
  %exitcond238.not = icmp eq i32 %inc120, %7
  br i1 %exitcond238.not, label %for.cond126.preheader.lr.ph, label %for.cond95.for.body98_crit_edge

for.cond95.for.body98_crit_edge:                  ; preds = %for.cond95
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body98

for.cond126.preheader.lr.ph:                      ; preds = %for.cond95
  %arrayidx143 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 3
  br label %for.cond126.preheader

for.body98:                                       ; preds = %for.cond95.for.body98_crit_edge, %for.body98.lr.ph
  %i.1227 = phi i32 [ 0, %for.body98.lr.ph ], [ %inc120, %for.cond95.for.body98_crit_edge ]
  %arrayidx103 = getelementptr i16, ptr %td_data101, i32 %i.1227
  %22 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx103, align 2
  %conv104 = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv104)
  %cmp105.not = icmp ugt i32 %3, %conv104
  br i1 %cmp105.not, label %if.end108, label %for.body98.cleanup167_crit_edge

for.body98.cleanup167_crit_edge:                  ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup167

if.end108:                                        ; preds = %for.body98
  %24 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx110, align 4
  %td_data111 = getelementptr inbounds %struct.table_header, ptr %25, i32 0, i32 4
  %arrayidx113 = getelementptr i16, ptr %td_data111, i32 %i.1227
  %26 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx113, align 2
  %conv114 = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv114)
  %cmp115.not = icmp ugt i32 %3, %conv114
  br i1 %cmp115.not, label %for.cond95, label %if.end108.cleanup167_crit_edge

if.end108.cleanup167_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup167

for.cond126.preheader:                            ; preds = %for.inc164.for.cond126.preheader_crit_edge, %for.cond126.preheader.lr.ph
  %i.2233 = phi i32 [ 0, %for.cond126.preheader.lr.ph ], [ %inc165, %for.inc164.for.cond126.preheader_crit_edge ]
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %td_data129228 = getelementptr inbounds %struct.table_header, ptr %29, i32 0, i32 4
  %arrayidx131229 = getelementptr i32, ptr %td_data129228, i32 %i.2233
  %30 = ptrtoint ptr %arrayidx131229 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx131229, align 4
  %32 = and i32 %31, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %32)
  %33 = icmp eq i32 %32, -2147483648
  br i1 %33, label %for.cond126.preheader.for.body141_crit_edge, label %for.cond126.preheader.for.inc164_crit_edge

for.cond126.preheader.for.inc164_crit_edge:       ; preds = %for.cond126.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc164

for.cond126.preheader.for.body141_crit_edge:      ; preds = %for.cond126.preheader
  br label %for.body141

for.body141:                                      ; preds = %if.end155.for.body141_crit_edge, %for.cond126.preheader.for.body141_crit_edge
  %34 = phi i32 [ %43, %if.end155.for.body141_crit_edge ], [ %31, %for.cond126.preheader.for.body141_crit_edge ]
  %arrayidx131231 = phi ptr [ %arrayidx131, %if.end155.for.body141_crit_edge ], [ %arrayidx131229, %for.cond126.preheader.for.body141_crit_edge ]
  %j.0230 = phi i32 [ %conv147, %if.end155.for.body141_crit_edge ], [ %i.2233, %for.cond126.preheader.for.body141_crit_edge ]
  %35 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx143, align 4
  %td_data144 = getelementptr inbounds %struct.table_header, ptr %36, i32 0, i32 4
  %arrayidx146 = getelementptr i16, ptr %td_data144, i32 %j.0230
  %37 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx146, align 2
  %conv147 = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0230, i32 %conv147)
  %cmp148 = icmp eq i32 %j.0230, %conv147
  br i1 %cmp148, label %for.body141.cleanup167_crit_edge, label %if.end151

for.body141.cleanup167_crit_edge:                 ; preds = %for.body141
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup167

if.end151:                                        ; preds = %for.body141
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0230, i32 %conv147)
  %cmp152 = icmp ugt i32 %j.0230, %conv147
  br i1 %cmp152, label %if.end151.for.inc164_crit_edge, label %if.end155

if.end151.for.inc164_crit_edge:                   ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc164

if.end155:                                        ; preds = %if.end151
  %or = or i32 %34, 1073741824
  %39 = ptrtoint ptr %arrayidx131231 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or, ptr %arrayidx131231, align 4
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  %td_data129 = getelementptr inbounds %struct.table_header, ptr %41, i32 0, i32 4
  %arrayidx131 = getelementptr i32, ptr %td_data129, i32 %conv147
  %42 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx131, align 4
  %44 = and i32 %43, -1073741824
  %45 = icmp eq i32 %44, -2147483648
  br i1 %45, label %if.end155.for.body141_crit_edge, label %if.end155.for.inc164_crit_edge

if.end155.for.inc164_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc164

if.end155.for.body141_crit_edge:                  ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body141

for.inc164:                                       ; preds = %if.end155.for.inc164_crit_edge, %if.end151.for.inc164_crit_edge, %for.cond126.preheader.for.inc164_crit_edge
  %inc165 = add nuw i32 %i.2233, 1
  %exitcond239.not = icmp eq i32 %inc165, %3
  br i1 %exitcond239.not, label %for.inc164.cleanup167_crit_edge, label %for.inc164.for.cond126.preheader_crit_edge

for.inc164.for.cond126.preheader_crit_edge:       ; preds = %for.inc164
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond126.preheader

for.inc164.cleanup167_crit_edge:                  ; preds = %for.inc164
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup167

cleanup167.sink.split:                            ; preds = %if.end79.cleanup167.sink.split_crit_edge, %if.end67.cleanup167.sink.split_crit_edge, %if.then52.cleanup167.sink.split_crit_edge, %if.then33.cleanup167.sink.split_crit_edge, %if.end16.thread.cleanup167.sink.split_crit_edge, %if.end16.cleanup167.sink.split_crit_edge
  %.str.sink = phi ptr [ @.str, %if.end16.thread.cleanup167.sink.split_crit_edge ], [ @.str, %if.end16.cleanup167.sink.split_crit_edge ], [ @.str.6, %if.then33.cleanup167.sink.split_crit_edge ], [ @.str.9, %if.then52.cleanup167.sink.split_crit_edge ], [ @.str.12, %if.end67.cleanup167.sink.split_crit_edge ], [ @.str.15, %if.end79.cleanup167.sink.split_crit_edge ]
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.sink) #15
  br label %cleanup167

cleanup167:                                       ; preds = %cleanup167.sink.split, %for.inc164.cleanup167_crit_edge, %for.body141.cleanup167_crit_edge, %if.end108.cleanup167_crit_edge, %for.body98.cleanup167_crit_edge, %land.lhs.true.cleanup167_crit_edge, %entry.cleanup167_crit_edge
  %error.0 = phi i32 [ -71, %entry.cleanup167_crit_edge ], [ -71, %cleanup167.sink.split ], [ -71, %for.body141.cleanup167_crit_edge ], [ 0, %for.inc164.cleanup167_crit_edge ], [ -71, %if.end108.cleanup167_crit_edge ], [ -71, %for.body98.cleanup167_crit_edge ], [ -71, %land.lhs.true.cleanup167_crit_edge ]
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_dfa_match_len(ptr nocapture noundef readonly %dfa, i32 noundef %start, ptr nocapture noundef readonly %str, i32 noundef %len) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %td_data = getelementptr inbounds %struct.table_header, ptr %1, i32 0, i32 4
  %arrayidx2 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %td_data3 = getelementptr inbounds %struct.table_header, ptr %3, i32 0, i32 4
  %arrayidx6 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx6, align 4
  %td_data7 = getelementptr inbounds %struct.table_header, ptr %5, i32 0, i32 4
  %arrayidx10 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx10, align 4
  %td_data11 = getelementptr inbounds %struct.table_header, ptr %7, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %cmp = icmp eq i32 %start, 0
  br i1 %cmp, label %entry.cleanup72_crit_edge, label %if.end

entry.cleanup72_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup72

if.end:                                           ; preds = %entry
  %arrayidx14 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx14, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.cond38.preheader, label %if.then15

for.cond38.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool39.not128 = icmp eq i32 %len, 0
  br i1 %tobool39.not128, label %for.cond38.preheader.cleanup72_crit_edge, label %for.cond38.preheader.do.body41.preheader_crit_edge

for.cond38.preheader.do.body41.preheader_crit_edge: ; preds = %for.cond38.preheader
  br label %do.body41.preheader

for.cond38.preheader.cleanup72_crit_edge:         ; preds = %for.cond38.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup72

if.then15:                                        ; preds = %if.end
  %td_data18 = getelementptr inbounds %struct.table_header, ptr %9, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool20.not123 = icmp eq i32 %len, 0
  br i1 %tobool20.not123, label %if.then15.cleanup72_crit_edge, label %if.then15.do.body.preheader_crit_edge

if.then15.do.body.preheader_crit_edge:            ; preds = %if.then15
  br label %do.body.preheader

if.then15.cleanup72_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup72

do.body.preheader:                                ; preds = %for.inc.do.body.preheader_crit_edge, %if.then15.do.body.preheader_crit_edge
  %state.0126 = phi i32 [ %state.2.le, %for.inc.do.body.preheader_crit_edge ], [ %start, %if.then15.do.body.preheader_crit_edge ]
  %len.addr.0125 = phi i32 [ %dec, %for.inc.do.body.preheader_crit_edge ], [ %len, %if.then15.do.body.preheader_crit_edge ]
  %str.addr.0124 = phi ptr [ %incdec.ptr, %for.inc.do.body.preheader_crit_edge ], [ %str, %if.then15.do.body.preheader_crit_edge ]
  br label %do.body

do.body:                                          ; preds = %cleanup.do.body_crit_edge, %do.body.preheader
  %str.addr.1 = phi ptr [ %incdec.ptr, %cleanup.do.body_crit_edge ], [ %str.addr.0124, %do.body.preheader ]
  %state.1 = phi i32 [ %state.2, %cleanup.do.body_crit_edge ], [ %state.0126, %do.body.preheader ]
  %arrayidx21 = getelementptr i32, ptr %td_data3, i32 %state.1
  %10 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx21, align 4
  %and = and i32 %11, 16777215
  %incdec.ptr = getelementptr i8, ptr %str.addr.1, i32 1
  %12 = ptrtoint ptr %str.addr.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %str.addr.1, align 1
  %idxprom = zext i8 %13 to i32
  %arrayidx22 = getelementptr i8, ptr %td_data18, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx22, align 1
  %conv = zext i8 %15 to i32
  %add = add nuw nsw i32 %and, %conv
  %arrayidx23 = getelementptr i16, ptr %td_data11, i32 %add
  %16 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx23, align 2
  %conv24 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %state.1, i32 %conv24)
  %cmp25.not = icmp eq i32 %state.1, %conv24
  br i1 %cmp25.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx35 = getelementptr i16, ptr %td_data7, i32 %add
  %18 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx35, align 2
  br label %for.inc

cleanup:                                          ; preds = %do.body
  %arrayidx28 = getelementptr i16, ptr %td_data, i32 %state.1
  %20 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx28, align 2
  %state.2 = zext i16 %21 to i32
  %switch = icmp slt i32 %11, 0
  br i1 %switch, label %cleanup.do.body_crit_edge, label %cleanup.for.inc_crit_edge

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

cleanup.do.body_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %cleanup.thread
  %.lcssa.sink = phi i16 [ %19, %cleanup.thread ], [ %21, %cleanup.for.inc_crit_edge ]
  %state.2.le = zext i16 %.lcssa.sink to i32
  %dec = add i32 %len.addr.0125, -1
  %tobool20.not = icmp eq i32 %dec, 0
  br i1 %tobool20.not, label %for.inc.cleanup72_crit_edge, label %for.inc.do.body.preheader_crit_edge

for.inc.do.body.preheader_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.preheader

for.inc.cleanup72_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup72

do.body41.preheader:                              ; preds = %for.inc68.do.body41.preheader_crit_edge, %for.cond38.preheader.do.body41.preheader_crit_edge
  %state.3131 = phi i32 [ %state.5.le, %for.inc68.do.body41.preheader_crit_edge ], [ %start, %for.cond38.preheader.do.body41.preheader_crit_edge ]
  %len.addr.1130 = phi i32 [ %dec69, %for.inc68.do.body41.preheader_crit_edge ], [ %len, %for.cond38.preheader.do.body41.preheader_crit_edge ]
  %str.addr.2129 = phi ptr [ %incdec.ptr46, %for.inc68.do.body41.preheader_crit_edge ], [ %str, %for.cond38.preheader.do.body41.preheader_crit_edge ]
  br label %do.body41

do.body41:                                        ; preds = %cleanup63.do.body41_crit_edge, %do.body41.preheader
  %str.addr.3 = phi ptr [ %incdec.ptr46, %cleanup63.do.body41_crit_edge ], [ %str.addr.2129, %do.body41.preheader ]
  %state.4 = phi i32 [ %state.5, %cleanup63.do.body41_crit_edge ], [ %state.3131, %do.body41.preheader ]
  %arrayidx43 = getelementptr i32, ptr %td_data3, i32 %state.4
  %22 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx43, align 4
  %and45 = and i32 %23, 16777215
  %incdec.ptr46 = getelementptr i8, ptr %str.addr.3, i32 1
  %24 = ptrtoint ptr %str.addr.3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %str.addr.3, align 1
  %conv47 = zext i8 %25 to i32
  %add48 = add nuw nsw i32 %and45, %conv47
  %arrayidx49 = getelementptr i16, ptr %td_data11, i32 %add48
  %26 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx49, align 2
  %conv50 = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %state.4, i32 %conv50)
  %cmp51.not = icmp eq i32 %state.4, %conv50
  br i1 %cmp51.not, label %cleanup63.thread, label %cleanup63

cleanup63.thread:                                 ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx61 = getelementptr i16, ptr %td_data7, i32 %add48
  %28 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx61, align 2
  br label %for.inc68

cleanup63:                                        ; preds = %do.body41
  %arrayidx54 = getelementptr i16, ptr %td_data, i32 %state.4
  %30 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx54, align 2
  %state.5 = zext i16 %31 to i32
  %switch103 = icmp slt i32 %23, 0
  br i1 %switch103, label %cleanup63.do.body41_crit_edge, label %cleanup63.for.inc68_crit_edge

cleanup63.for.inc68_crit_edge:                    ; preds = %cleanup63
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc68

cleanup63.do.body41_crit_edge:                    ; preds = %cleanup63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body41

for.inc68:                                        ; preds = %cleanup63.for.inc68_crit_edge, %cleanup63.thread
  %.lcssa149.sink = phi i16 [ %29, %cleanup63.thread ], [ %31, %cleanup63.for.inc68_crit_edge ]
  %state.5.le = zext i16 %.lcssa149.sink to i32
  %dec69 = add i32 %len.addr.1130, -1
  %tobool39.not = icmp eq i32 %dec69, 0
  br i1 %tobool39.not, label %for.inc68.cleanup72_crit_edge, label %for.inc68.do.body41.preheader_crit_edge

for.inc68.do.body41.preheader_crit_edge:          ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body41.preheader

for.inc68.cleanup72_crit_edge:                    ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup72

cleanup72:                                        ; preds = %for.inc68.cleanup72_crit_edge, %for.inc.cleanup72_crit_edge, %if.then15.cleanup72_crit_edge, %for.cond38.preheader.cleanup72_crit_edge, %entry.cleanup72_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup72_crit_edge ], [ %start, %for.cond38.preheader.cleanup72_crit_edge ], [ %start, %if.then15.cleanup72_crit_edge ], [ %state.5.le, %for.inc68.cleanup72_crit_edge ], [ %state.2.le, %for.inc.cleanup72_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_dfa_match(ptr nocapture noundef readonly %dfa, i32 noundef %start, ptr nocapture noundef readonly %str) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %td_data = getelementptr inbounds %struct.table_header, ptr %1, i32 0, i32 4
  %arrayidx2 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %td_data3 = getelementptr inbounds %struct.table_header, ptr %3, i32 0, i32 4
  %arrayidx6 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx6, align 4
  %td_data7 = getelementptr inbounds %struct.table_header, ptr %5, i32 0, i32 4
  %arrayidx10 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx10, align 4
  %td_data11 = getelementptr inbounds %struct.table_header, ptr %7, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %cmp = icmp eq i32 %start, 0
  br i1 %cmp, label %entry.cleanup70_crit_edge, label %if.end

entry.cleanup70_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup70

if.end:                                           ; preds = %entry
  %arrayidx14 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx14, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %while.cond38.preheader, label %if.then15

while.cond38.preheader:                           ; preds = %if.end
  %10 = ptrtoint ptr %str to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %str, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool39.not105 = icmp eq i8 %11, 0
  br i1 %tobool39.not105, label %while.cond38.preheader.cleanup70_crit_edge, label %while.cond38.preheader.do.body41_crit_edge

while.cond38.preheader.do.body41_crit_edge:       ; preds = %while.cond38.preheader
  br label %do.body41

while.cond38.preheader.cleanup70_crit_edge:       ; preds = %while.cond38.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup70

if.then15:                                        ; preds = %if.end
  %td_data18 = getelementptr inbounds %struct.table_header, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %str to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %str, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool20.not102 = icmp eq i8 %13, 0
  br i1 %tobool20.not102, label %if.then15.cleanup70_crit_edge, label %if.then15.do.body_crit_edge

if.then15.do.body_crit_edge:                      ; preds = %if.then15
  br label %do.body

if.then15.cleanup70_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup70

while.cond.loopexit:                              ; preds = %do.body
  %state.2.le = zext i16 %state.2.in to i32
  %14 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %incdec.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool20.not = icmp eq i8 %15, 0
  br i1 %tobool20.not, label %cleanup70.loopexit112, label %while.cond.loopexit.do.body.backedge_crit_edge

while.cond.loopexit.do.body.backedge_crit_edge:   ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.backedge

do.body:                                          ; preds = %do.body.backedge, %if.then15.do.body_crit_edge
  %str.addr.1 = phi ptr [ %incdec.ptr, %do.body.backedge ], [ %str, %if.then15.do.body_crit_edge ]
  %state.1 = phi i32 [ %state.1.be, %do.body.backedge ], [ %start, %if.then15.do.body_crit_edge ]
  %arrayidx21 = getelementptr i32, ptr %td_data3, i32 %state.1
  %16 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx21, align 4
  %and = and i32 %17, 16777215
  %incdec.ptr = getelementptr i8, ptr %str.addr.1, i32 1
  %18 = ptrtoint ptr %str.addr.1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %str.addr.1, align 1
  %idxprom = zext i8 %19 to i32
  %arrayidx22 = getelementptr i8, ptr %td_data18, i32 %idxprom
  %20 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx22, align 1
  %conv = zext i8 %21 to i32
  %add = add nuw nsw i32 %and, %conv
  %arrayidx23 = getelementptr i16, ptr %td_data11, i32 %add
  %22 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx23, align 2
  %conv24 = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %state.1, i32 %conv24)
  %cmp25.not = icmp eq i32 %state.1, %conv24
  %arrayidx35 = getelementptr i16, ptr %td_data7, i32 %add
  %arrayidx28 = getelementptr i16, ptr %td_data, i32 %state.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool31.not = icmp slt i32 %17, 0
  %state.2.in.in = select i1 %cmp25.not, ptr %arrayidx35, ptr %arrayidx28
  %not.cmp25.not = xor i1 %cmp25.not, true
  %24 = select i1 %not.cmp25.not, i1 %tobool31.not, i1 false
  %25 = ptrtoint ptr %state.2.in.in to i32
  call void @__asan_load2_noabort(i32 %25)
  %state.2.in = load i16, ptr %state.2.in.in, align 2
  %state.2 = zext i16 %state.2.in to i32
  br i1 %24, label %do.body.do.body.backedge_crit_edge, label %while.cond.loopexit

do.body.do.body.backedge_crit_edge:               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %do.body.do.body.backedge_crit_edge, %while.cond.loopexit.do.body.backedge_crit_edge
  %state.1.be = phi i32 [ %state.2, %do.body.do.body.backedge_crit_edge ], [ %state.2.le, %while.cond.loopexit.do.body.backedge_crit_edge ]
  br label %do.body

while.cond38.loopexit:                            ; preds = %do.body41
  %state.5.le = zext i16 %state.5.in to i32
  %26 = ptrtoint ptr %incdec.ptr46 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %incdec.ptr46, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool39.not = icmp eq i8 %27, 0
  br i1 %tobool39.not, label %cleanup70.loopexit, label %while.cond38.loopexit.do.body41.backedge_crit_edge

while.cond38.loopexit.do.body41.backedge_crit_edge: ; preds = %while.cond38.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body41.backedge

do.body41:                                        ; preds = %do.body41.backedge, %while.cond38.preheader.do.body41_crit_edge
  %str.addr.3 = phi ptr [ %incdec.ptr46, %do.body41.backedge ], [ %str, %while.cond38.preheader.do.body41_crit_edge ]
  %state.4 = phi i32 [ %state.4.be, %do.body41.backedge ], [ %start, %while.cond38.preheader.do.body41_crit_edge ]
  %arrayidx43 = getelementptr i32, ptr %td_data3, i32 %state.4
  %28 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx43, align 4
  %and45 = and i32 %29, 16777215
  %incdec.ptr46 = getelementptr i8, ptr %str.addr.3, i32 1
  %30 = ptrtoint ptr %str.addr.3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %str.addr.3, align 1
  %conv47 = zext i8 %31 to i32
  %add48 = add nuw nsw i32 %and45, %conv47
  %arrayidx49 = getelementptr i16, ptr %td_data11, i32 %add48
  %32 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx49, align 2
  %conv50 = zext i16 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %state.4, i32 %conv50)
  %cmp51.not = icmp eq i32 %state.4, %conv50
  %arrayidx61 = getelementptr i16, ptr %td_data7, i32 %add48
  %arrayidx54 = getelementptr i16, ptr %td_data, i32 %state.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool57.not = icmp slt i32 %29, 0
  %state.5.in.in = select i1 %cmp51.not, ptr %arrayidx61, ptr %arrayidx54
  %not.cmp51.not = xor i1 %cmp51.not, true
  %34 = select i1 %not.cmp51.not, i1 %tobool57.not, i1 false
  %35 = ptrtoint ptr %state.5.in.in to i32
  call void @__asan_load2_noabort(i32 %35)
  %state.5.in = load i16, ptr %state.5.in.in, align 2
  %state.5 = zext i16 %state.5.in to i32
  br i1 %34, label %do.body41.do.body41.backedge_crit_edge, label %while.cond38.loopexit

do.body41.do.body41.backedge_crit_edge:           ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body41.backedge

do.body41.backedge:                               ; preds = %do.body41.do.body41.backedge_crit_edge, %while.cond38.loopexit.do.body41.backedge_crit_edge
  %state.4.be = phi i32 [ %state.5, %do.body41.do.body41.backedge_crit_edge ], [ %state.5.le, %while.cond38.loopexit.do.body41.backedge_crit_edge ]
  br label %do.body41

cleanup70.loopexit:                               ; preds = %while.cond38.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  %state.5.le.le = zext i16 %state.5.in to i32
  br label %cleanup70

cleanup70.loopexit112:                            ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  %state.2.le.le = zext i16 %state.2.in to i32
  br label %cleanup70

cleanup70:                                        ; preds = %cleanup70.loopexit112, %cleanup70.loopexit, %if.then15.cleanup70_crit_edge, %while.cond38.preheader.cleanup70_crit_edge, %entry.cleanup70_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup70_crit_edge ], [ %start, %while.cond38.preheader.cleanup70_crit_edge ], [ %start, %if.then15.cleanup70_crit_edge ], [ %state.5.le.le, %cleanup70.loopexit ], [ %state.2.le.le, %cleanup70.loopexit112 ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_dfa_next(ptr nocapture noundef readonly %dfa, i32 noundef %state, i8 noundef zeroext %c) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %td_data = getelementptr inbounds %struct.table_header, ptr %1, i32 0, i32 4
  %arrayidx2 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %td_data3 = getelementptr inbounds %struct.table_header, ptr %3, i32 0, i32 4
  %arrayidx6 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx6, align 4
  %td_data7 = getelementptr inbounds %struct.table_header, ptr %5, i32 0, i32 4
  %arrayidx10 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx10, align 4
  %td_data11 = getelementptr inbounds %struct.table_header, ptr %7, i32 0, i32 4
  %arrayidx14 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx14, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %do.body34.preheader, label %if.then

do.body34.preheader:                              ; preds = %entry
  %conv39 = zext i8 %c to i32
  br label %do.body34

if.then:                                          ; preds = %entry
  %td_data17 = getelementptr inbounds %struct.table_header, ptr %9, i32 0, i32 4
  %idxprom = zext i8 %c to i32
  %arrayidx20 = getelementptr i8, ptr %td_data17, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx20, align 1
  %conv = zext i8 %11 to i32
  br label %do.body

do.body:                                          ; preds = %cleanup.do.body_crit_edge, %if.then
  %state.addr.0 = phi i32 [ %state, %if.then ], [ %state.addr.1, %cleanup.do.body_crit_edge ]
  %arrayidx19 = getelementptr i32, ptr %td_data3, i32 %state.addr.0
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx19, align 4
  %and = and i32 %13, 16777215
  %add = add nuw nsw i32 %and, %conv
  %arrayidx21 = getelementptr i16, ptr %td_data11, i32 %add
  %14 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx21, align 2
  %conv22 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %state.addr.0, i32 %conv22)
  %cmp.not = icmp eq i32 %state.addr.0, %conv22
  br i1 %cmp.not, label %do.body.if.end60.sink.split_crit_edge, label %cleanup

do.body.if.end60.sink.split_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.sink.split

cleanup:                                          ; preds = %do.body
  %arrayidx25 = getelementptr i16, ptr %td_data, i32 %state.addr.0
  %16 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx25, align 2
  %state.addr.1 = zext i16 %17 to i32
  %switch = icmp slt i32 %13, 0
  br i1 %switch, label %cleanup.do.body_crit_edge, label %cleanup.if.end60_crit_edge

cleanup.if.end60_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

cleanup.do.body_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body34:                                        ; preds = %cleanup55.do.body34_crit_edge, %do.body34.preheader
  %state.addr.2 = phi i32 [ %state.addr.3, %cleanup55.do.body34_crit_edge ], [ %state, %do.body34.preheader ]
  %arrayidx36 = getelementptr i32, ptr %td_data3, i32 %state.addr.2
  %18 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx36, align 4
  %and38 = and i32 %19, 16777215
  %add40 = add nuw nsw i32 %and38, %conv39
  %arrayidx41 = getelementptr i16, ptr %td_data11, i32 %add40
  %20 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx41, align 2
  %conv42 = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %state.addr.2, i32 %conv42)
  %cmp43.not = icmp eq i32 %state.addr.2, %conv42
  br i1 %cmp43.not, label %do.body34.if.end60.sink.split_crit_edge, label %cleanup55

do.body34.if.end60.sink.split_crit_edge:          ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.sink.split

cleanup55:                                        ; preds = %do.body34
  %arrayidx46 = getelementptr i16, ptr %td_data, i32 %state.addr.2
  %22 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx46, align 2
  %state.addr.3 = zext i16 %23 to i32
  %switch87 = icmp slt i32 %19, 0
  br i1 %switch87, label %cleanup55.do.body34_crit_edge, label %cleanup55.if.end60_crit_edge

cleanup55.if.end60_crit_edge:                     ; preds = %cleanup55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

cleanup55.do.body34_crit_edge:                    ; preds = %cleanup55
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body34

if.end60.sink.split:                              ; preds = %do.body34.if.end60.sink.split_crit_edge, %do.body.if.end60.sink.split_crit_edge
  %add40.lcssa.sink = phi i32 [ %add40, %do.body34.if.end60.sink.split_crit_edge ], [ %add, %do.body.if.end60.sink.split_crit_edge ]
  %arrayidx53 = getelementptr i16, ptr %td_data7, i32 %add40.lcssa.sink
  %24 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx53, align 2
  br label %if.end60

if.end60:                                         ; preds = %if.end60.sink.split, %cleanup55.if.end60_crit_edge, %cleanup.if.end60_crit_edge
  %state.addr.4.in = phi i16 [ %25, %if.end60.sink.split ], [ %23, %cleanup55.if.end60_crit_edge ], [ %17, %cleanup.if.end60_crit_edge ]
  %state.addr.4 = zext i16 %state.addr.4.in to i32
  ret i32 %state.addr.4
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_dfa_outofband_transition(ptr nocapture noundef readonly %dfa, i32 noundef %state) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %td_data = getelementptr inbounds %struct.table_header, ptr %1, i32 0, i32 4
  %arrayidx2 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %td_data3 = getelementptr inbounds %struct.table_header, ptr %3, i32 0, i32 4
  %arrayidx6 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx6, align 4
  %td_data7 = getelementptr inbounds %struct.table_header, ptr %5, i32 0, i32 4
  %arrayidx10 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx10, align 4
  %td_data11 = getelementptr inbounds %struct.table_header, ptr %7, i32 0, i32 4
  %arrayidx13 = getelementptr i32, ptr %td_data3, i32 %state
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx13, align 4
  %and = and i32 %9, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup30_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.cleanup30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30

do.body:                                          ; preds = %cleanup.do.body_crit_edge, %entry.do.body_crit_edge
  %state.addr.0 = phi i32 [ %state.addr.1, %cleanup.do.body_crit_edge ], [ %state, %entry.do.body_crit_edge ]
  %arrayidx15 = getelementptr i32, ptr %td_data3, i32 %state.addr.0
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx15, align 4
  %and16 = and i32 %11, 16777215
  %add = add nsw i32 %and16, -1
  %arrayidx17 = getelementptr i16, ptr %td_data11, i32 %add
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx17, align 2
  %conv = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %state.addr.0, i32 %conv)
  %cmp.not = icmp eq i32 %state.addr.0, %conv
  br i1 %cmp.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx27 = getelementptr i16, ptr %td_data7, i32 %add
  %14 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx27, align 2
  br label %cleanup30

cleanup:                                          ; preds = %do.body
  %arrayidx20 = getelementptr i16, ptr %td_data, i32 %state.addr.0
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx20, align 2
  %state.addr.1 = zext i16 %17 to i32
  %switch = icmp slt i32 %11, 0
  br i1 %switch, label %cleanup.do.body_crit_edge, label %cleanup.cleanup30_crit_edge

cleanup.cleanup30_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30

cleanup.do.body_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

cleanup30:                                        ; preds = %cleanup.cleanup30_crit_edge, %cleanup.thread, %entry.cleanup30_crit_edge
  %retval.0.shrunk = phi i16 [ 0, %entry.cleanup30_crit_edge ], [ %15, %cleanup.thread ], [ %17, %cleanup.cleanup30_crit_edge ]
  %retval.0 = zext i16 %retval.0.shrunk to i32
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_dfa_match_until(ptr nocapture noundef readonly %dfa, i32 noundef %start, ptr noundef %str, ptr nocapture noundef writeonly %retpos) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tables = getelementptr inbounds %struct.aa_dfa, ptr %dfa, i32 0, i32 3
  %arrayidx = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %td_data = getelementptr inbounds %struct.table_header, ptr %1, i32 0, i32 4
  %arrayidx2 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %td_data3 = getelementptr inbounds %struct.table_header, ptr %3, i32 0, i32 4
  %arrayidx6 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx6, align 4
  %td_data7 = getelementptr inbounds %struct.table_header, ptr %5, i32 0, i32 4
  %arrayidx10 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx10, align 4
  %td_data11 = getelementptr inbounds %struct.table_header, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %tables to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tables, align 4
  %td_data15 = getelementptr inbounds %struct.table_header, ptr %9, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %cmp = icmp eq i32 %start, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx18 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 4
  %10 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx18, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.while.cond42_crit_edge, label %if.then19

if.end.while.cond42_crit_edge:                    ; preds = %if.end
  br label %while.cond42

if.then19:                                        ; preds = %if.end
  %td_data22 = getelementptr inbounds %struct.table_header, ptr %11, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.then19
  %str.addr.0 = phi ptr [ %str, %if.then19 ], [ %incdec.ptr, %while.body.while.cond_crit_edge ]
  %state.0 = phi i32 [ %start, %if.then19 ], [ %state.1, %while.body.while.cond_crit_edge ]
  %12 = ptrtoint ptr %str.addr.0 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %str.addr.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool24.not = icmp eq i8 %13, 0
  br i1 %tobool24.not, label %while.cond.if.end66_crit_edge, label %while.body

while.cond.if.end66_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

while.body:                                       ; preds = %while.cond
  %arrayidx25 = getelementptr i32, ptr %td_data3, i32 %state.0
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx25, align 4
  %and = and i32 %15, 16777215
  %incdec.ptr = getelementptr i8, ptr %str.addr.0, i32 1
  %idxprom = zext i8 %13 to i32
  %arrayidx26 = getelementptr i8, ptr %td_data22, i32 %idxprom
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx26, align 1
  %conv = zext i8 %17 to i32
  %add = add nuw nsw i32 %and, %conv
  %arrayidx27 = getelementptr i16, ptr %td_data11, i32 %add
  %18 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx27, align 2
  %conv28 = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %state.0, i32 %conv28)
  %cmp29 = icmp eq i32 %state.0, %conv28
  %arrayidx32 = getelementptr i16, ptr %td_data7, i32 %add
  %arrayidx34 = getelementptr i16, ptr %td_data, i32 %state.0
  %state.1.in.in = select i1 %cmp29, ptr %arrayidx32, ptr %arrayidx34
  %20 = ptrtoint ptr %state.1.in.in to i32
  call void @__asan_load2_noabort(i32 %20)
  %state.1.in = load i16, ptr %state.1.in.in, align 2
  %state.1 = zext i16 %state.1.in to i32
  %arrayidx37 = getelementptr i32, ptr %td_data15, i32 %state.1
  %21 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx37, align 4
  %tobool38.not = icmp eq i32 %22, 0
  br i1 %tobool38.not, label %while.body.while.cond_crit_edge, label %if.end66.loopexit116.split.loop.exit

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.cond42:                                     ; preds = %while.body44.while.cond42_crit_edge, %if.end.while.cond42_crit_edge
  %str.addr.2 = phi ptr [ %incdec.ptr47, %while.body44.while.cond42_crit_edge ], [ %str, %if.end.while.cond42_crit_edge ]
  %state.3 = phi i32 [ %state.4, %while.body44.while.cond42_crit_edge ], [ %start, %if.end.while.cond42_crit_edge ]
  %23 = ptrtoint ptr %str.addr.2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %str.addr.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool43.not = icmp eq i8 %24, 0
  br i1 %tobool43.not, label %while.cond42.if.end66_crit_edge, label %while.body44

while.cond42.if.end66_crit_edge:                  ; preds = %while.cond42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

while.body44:                                     ; preds = %while.cond42
  %arrayidx45 = getelementptr i32, ptr %td_data3, i32 %state.3
  %25 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx45, align 4
  %and46 = and i32 %26, 16777215
  %incdec.ptr47 = getelementptr i8, ptr %str.addr.2, i32 1
  %conv48 = zext i8 %24 to i32
  %add49 = add nuw nsw i32 %and46, %conv48
  %arrayidx50 = getelementptr i16, ptr %td_data11, i32 %add49
  %27 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx50, align 2
  %conv51 = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %state.3, i32 %conv51)
  %cmp52 = icmp eq i32 %state.3, %conv51
  %arrayidx55 = getelementptr i16, ptr %td_data7, i32 %add49
  %arrayidx58 = getelementptr i16, ptr %td_data, i32 %state.3
  %state.4.in.in = select i1 %cmp52, ptr %arrayidx55, ptr %arrayidx58
  %29 = ptrtoint ptr %state.4.in.in to i32
  call void @__asan_load2_noabort(i32 %29)
  %state.4.in = load i16, ptr %state.4.in.in, align 2
  %state.4 = zext i16 %state.4.in to i32
  %arrayidx61 = getelementptr i32, ptr %td_data15, i32 %state.4
  %30 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx61, align 4
  %tobool62.not = icmp eq i32 %31, 0
  br i1 %tobool62.not, label %while.body44.while.cond42_crit_edge, label %if.end66.loopexit.split.loop.exit

while.body44.while.cond42_crit_edge:              ; preds = %while.body44
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond42

if.end66.loopexit.split.loop.exit:                ; preds = %while.body44
  call void @__sanitizer_cov_trace_pc() #12
  %state.4.le = zext i16 %state.4.in to i32
  br label %if.end66

if.end66.loopexit116.split.loop.exit:             ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %state.1.le = zext i16 %state.1.in to i32
  br label %if.end66

if.end66:                                         ; preds = %if.end66.loopexit116.split.loop.exit, %if.end66.loopexit.split.loop.exit, %while.cond42.if.end66_crit_edge, %while.cond.if.end66_crit_edge
  %str.addr.3 = phi ptr [ %incdec.ptr47, %if.end66.loopexit.split.loop.exit ], [ %incdec.ptr, %if.end66.loopexit116.split.loop.exit ], [ %str.addr.2, %while.cond42.if.end66_crit_edge ], [ %str.addr.0, %while.cond.if.end66_crit_edge ]
  %state.5 = phi i32 [ %state.4.le, %if.end66.loopexit.split.loop.exit ], [ %state.1.le, %if.end66.loopexit116.split.loop.exit ], [ %state.3, %while.cond42.if.end66_crit_edge ], [ %state.0, %while.cond.if.end66_crit_edge ]
  %32 = ptrtoint ptr %retpos to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %str.addr.3, ptr %retpos, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %state.5, %if.end66 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_dfa_matchn_until(ptr nocapture noundef readonly %dfa, i32 noundef %start, ptr noundef %str, i32 noundef %n, ptr nocapture noundef writeonly %retpos) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tables = getelementptr inbounds %struct.aa_dfa, ptr %dfa, i32 0, i32 3
  %arrayidx = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %td_data = getelementptr inbounds %struct.table_header, ptr %1, i32 0, i32 4
  %arrayidx2 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %td_data3 = getelementptr inbounds %struct.table_header, ptr %3, i32 0, i32 4
  %arrayidx6 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx6, align 4
  %td_data7 = getelementptr inbounds %struct.table_header, ptr %5, i32 0, i32 4
  %arrayidx10 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx10, align 4
  %td_data11 = getelementptr inbounds %struct.table_header, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %tables to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tables, align 4
  %td_data15 = getelementptr inbounds %struct.table_header, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %retpos to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %retpos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %cmp = icmp eq i32 %start, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx18 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 4
  %11 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx18, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %for.cond42.preheader, label %if.then19

for.cond42.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool43.not118 = icmp eq i32 %n, 0
  br i1 %tobool43.not118, label %for.cond42.preheader.if.end68_crit_edge, label %for.body44.preheader

for.cond42.preheader.if.end68_crit_edge:          ; preds = %for.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

for.body44.preheader:                             ; preds = %for.cond42.preheader
  %uglygep131 = getelementptr i8, ptr %str, i32 %n
  br label %for.body44

if.then19:                                        ; preds = %if.end
  %td_data22 = getelementptr inbounds %struct.table_header, ptr %12, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool24.not110 = icmp eq i32 %n, 0
  br i1 %tobool24.not110, label %if.then19.if.end68_crit_edge, label %for.body.preheader

if.then19.if.end68_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

for.body.preheader:                               ; preds = %if.then19
  %uglygep = getelementptr i8, ptr %str, i32 %n
  br label %for.body

for.cond:                                         ; preds = %for.body
  %dec = add i32 %n.addr.0112, -1
  %tobool24.not = icmp eq i32 %dec, 0
  br i1 %tobool24.not, label %for.cond.if.end68.loopexit132_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.if.end68.loopexit132_crit_edge:          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68.loopexit132

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %state.0113 = phi i32 [ %state.1, %for.cond.for.body_crit_edge ], [ %start, %for.body.preheader ]
  %n.addr.0112 = phi i32 [ %dec, %for.cond.for.body_crit_edge ], [ %n, %for.body.preheader ]
  %str.addr.0111 = phi ptr [ %incdec.ptr, %for.cond.for.body_crit_edge ], [ %str, %for.body.preheader ]
  %arrayidx25 = getelementptr i32, ptr %td_data3, i32 %state.0113
  %13 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx25, align 4
  %and = and i32 %14, 16777215
  %incdec.ptr = getelementptr i8, ptr %str.addr.0111, i32 1
  %15 = ptrtoint ptr %str.addr.0111 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %str.addr.0111, align 1
  %idxprom = zext i8 %16 to i32
  %arrayidx26 = getelementptr i8, ptr %td_data22, i32 %idxprom
  %17 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx26, align 1
  %conv = zext i8 %18 to i32
  %add = add nuw nsw i32 %and, %conv
  %arrayidx27 = getelementptr i16, ptr %td_data11, i32 %add
  %19 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx27, align 2
  %conv28 = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %state.0113, i32 %conv28)
  %cmp29 = icmp eq i32 %state.0113, %conv28
  %arrayidx32 = getelementptr i16, ptr %td_data7, i32 %add
  %arrayidx34 = getelementptr i16, ptr %td_data, i32 %state.0113
  %state.1.in.in = select i1 %cmp29, ptr %arrayidx32, ptr %arrayidx34
  %21 = ptrtoint ptr %state.1.in.in to i32
  call void @__asan_load2_noabort(i32 %21)
  %state.1.in = load i16, ptr %state.1.in.in, align 2
  %state.1 = zext i16 %state.1.in to i32
  %arrayidx37 = getelementptr i32, ptr %td_data15, i32 %state.1
  %22 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool38.not = icmp eq i32 %23, 0
  br i1 %tobool38.not, label %for.cond, label %for.body.if.end68.loopexit132_crit_edge

for.body.if.end68.loopexit132_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68.loopexit132

for.cond42:                                       ; preds = %for.body44
  %dec66 = add i32 %n.addr.1120, -1
  %tobool43.not = icmp eq i32 %dec66, 0
  br i1 %tobool43.not, label %for.cond42.if.end68.loopexit_crit_edge, label %for.cond42.for.body44_crit_edge

for.cond42.for.body44_crit_edge:                  ; preds = %for.cond42
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body44

for.cond42.if.end68.loopexit_crit_edge:           ; preds = %for.cond42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68.loopexit

for.body44:                                       ; preds = %for.cond42.for.body44_crit_edge, %for.body44.preheader
  %state.3121 = phi i32 [ %state.4, %for.cond42.for.body44_crit_edge ], [ %start, %for.body44.preheader ]
  %n.addr.1120 = phi i32 [ %dec66, %for.cond42.for.body44_crit_edge ], [ %n, %for.body44.preheader ]
  %str.addr.2119 = phi ptr [ %incdec.ptr47, %for.cond42.for.body44_crit_edge ], [ %str, %for.body44.preheader ]
  %arrayidx45 = getelementptr i32, ptr %td_data3, i32 %state.3121
  %24 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx45, align 4
  %and46 = and i32 %25, 16777215
  %incdec.ptr47 = getelementptr i8, ptr %str.addr.2119, i32 1
  %26 = ptrtoint ptr %str.addr.2119 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %str.addr.2119, align 1
  %conv48 = zext i8 %27 to i32
  %add49 = add nuw nsw i32 %and46, %conv48
  %arrayidx50 = getelementptr i16, ptr %td_data11, i32 %add49
  %28 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx50, align 2
  %conv51 = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %state.3121, i32 %conv51)
  %cmp52 = icmp eq i32 %state.3121, %conv51
  %arrayidx55 = getelementptr i16, ptr %td_data7, i32 %add49
  %arrayidx58 = getelementptr i16, ptr %td_data, i32 %state.3121
  %state.4.in.in = select i1 %cmp52, ptr %arrayidx55, ptr %arrayidx58
  %30 = ptrtoint ptr %state.4.in.in to i32
  call void @__asan_load2_noabort(i32 %30)
  %state.4.in = load i16, ptr %state.4.in.in, align 2
  %state.4 = zext i16 %state.4.in to i32
  %arrayidx61 = getelementptr i32, ptr %td_data15, i32 %state.4
  %31 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool62.not = icmp eq i32 %32, 0
  br i1 %tobool62.not, label %for.cond42, label %for.body44.if.end68.loopexit_crit_edge

for.body44.if.end68.loopexit_crit_edge:           ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68.loopexit

if.end68.loopexit:                                ; preds = %for.body44.if.end68.loopexit_crit_edge, %for.cond42.if.end68.loopexit_crit_edge
  %str.addr.3.ph = phi ptr [ %uglygep131, %for.cond42.if.end68.loopexit_crit_edge ], [ %incdec.ptr47, %for.body44.if.end68.loopexit_crit_edge ]
  %state.4.le = zext i16 %state.4.in to i32
  br label %if.end68

if.end68.loopexit132:                             ; preds = %for.body.if.end68.loopexit132_crit_edge, %for.cond.if.end68.loopexit132_crit_edge
  %str.addr.3.ph133 = phi ptr [ %uglygep, %for.cond.if.end68.loopexit132_crit_edge ], [ %incdec.ptr, %for.body.if.end68.loopexit132_crit_edge ]
  %state.1.le = zext i16 %state.1.in to i32
  br label %if.end68

if.end68:                                         ; preds = %if.end68.loopexit132, %if.end68.loopexit, %if.then19.if.end68_crit_edge, %for.cond42.preheader.if.end68_crit_edge
  %str.addr.3 = phi ptr [ %str, %for.cond42.preheader.if.end68_crit_edge ], [ %str, %if.then19.if.end68_crit_edge ], [ %str.addr.3.ph, %if.end68.loopexit ], [ %str.addr.3.ph133, %if.end68.loopexit132 ]
  %state.5 = phi i32 [ %start, %for.cond42.preheader.if.end68_crit_edge ], [ %start, %if.then19.if.end68_crit_edge ], [ %state.4.le, %if.end68.loopexit ], [ %state.1.le, %if.end68.loopexit132 ]
  %33 = ptrtoint ptr %retpos to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %str.addr.3, ptr %retpos, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %state.5, %if.end68 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_dfa_leftmatch(ptr noundef readonly %dfa, i32 noundef %start, ptr noundef readonly %str, ptr noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %wb = alloca %struct.match_workbuf, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %wb) #10
  %0 = call ptr @memset(ptr %wb, i32 0, i32 112)
  %arrayidx.i = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 3
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %td_data.i = getelementptr inbounds %struct.table_header, ptr %2, i32 0, i32 4
  %arrayidx2.i = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx2.i, align 4
  %td_data3.i = getelementptr inbounds %struct.table_header, ptr %4, i32 0, i32 4
  %arrayidx6.i = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 7
  %5 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx6.i, align 4
  %td_data7.i = getelementptr inbounds %struct.table_header, ptr %6, i32 0, i32 4
  %arrayidx10.i = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx10.i, align 4
  %td_data11.i = getelementptr inbounds %struct.table_header, ptr %8, i32 0, i32 4
  %tobool.not.i = icmp eq ptr %dfa, null
  br i1 %tobool.not.i, label %do.end.i, label %entry.if.end.i_crit_edge, !prof !52

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 713, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.leftmatch_fb) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %tobool38.not.i = icmp eq ptr %str, null
  br i1 %tobool38.not.i, label %do.end56.i, label %if.end.i.if.end62.i_crit_edge, !prof !52

if.end.i.if.end62.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62.i

do.end56.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 714, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.leftmatch_fb) #10
  br label %if.end62.i

if.end62.i:                                       ; preds = %do.end56.i, %if.end.i.if.end62.i_crit_edge
  %tobool110.not.i = icmp eq ptr %count, null
  br i1 %tobool110.not.i, label %do.end128.i, label %if.end62.i.if.end134.i_crit_edge, !prof !52

if.end62.i.if.end134.i_crit_edge:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134.i

do.end128.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 716, i32 noundef 9, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.leftmatch_fb) #10
  br label %if.end134.i

if.end134.i:                                      ; preds = %do.end128.i, %if.end62.i.if.end134.i_crit_edge
  %9 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %cmp.i = icmp eq i32 %start, 0
  br i1 %cmp.i, label %if.end134.i.leftmatch_fb.exit_crit_edge, label %if.end145.i

if.end134.i.leftmatch_fb.exit_crit_edge:          ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %leftmatch_fb.exit

if.end145.i:                                      ; preds = %if.end134.i
  %arrayidx147.i = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 4
  %10 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx147.i, align 4
  %tobool148.not.i = icmp eq ptr %11, null
  br i1 %tobool148.not.i, label %while.cond186.preheader.i, label %if.then149.i

while.cond186.preheader.i:                        ; preds = %if.end145.i
  %12 = ptrtoint ptr %str to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %str, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool187.not413.i = icmp eq i8 %13, 0
  br i1 %tobool187.not413.i, label %while.cond186.preheader.i.leftmatch_fb.exit_crit_edge, label %while.body188.lr.ph.i

while.cond186.preheader.i.leftmatch_fb.exit_crit_edge: ; preds = %while.cond186.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %leftmatch_fb.exit

while.body188.lr.ph.i:                            ; preds = %while.cond186.preheader.i
  %pos191.i = getelementptr inbounds %struct.match_workbuf, ptr %wb, i32 0, i32 1
  %len.i307.i = getelementptr inbounds %struct.match_workbuf, ptr %wb, i32 0, i32 2
  br label %while.body188.i

if.then149.i:                                     ; preds = %if.end145.i
  %td_data152.i = getelementptr inbounds %struct.table_header, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %str to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %str, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool154.not409.i = icmp eq i8 %15, 0
  br i1 %tobool154.not409.i, label %if.then149.i.leftmatch_fb.exit_crit_edge, label %while.body.lr.ph.i

if.then149.i.leftmatch_fb.exit_crit_edge:         ; preds = %if.then149.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %leftmatch_fb.exit

while.body.lr.ph.i:                               ; preds = %if.then149.i
  %pos155.i = getelementptr inbounds %struct.match_workbuf, ptr %wb, i32 0, i32 1
  %len.i.i = getelementptr inbounds %struct.match_workbuf, ptr %wb, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %str.addr.0411.i = phi ptr [ %str, %while.body.lr.ph.i ], [ %incdec.ptr.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %state.0410.i = phi i32 [ %start, %while.body.lr.ph.i ], [ %state.1.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %16 = ptrtoint ptr %pos155.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pos155.i, align 4
  %arrayidx156.i = getelementptr %struct.match_workbuf, ptr %wb, i32 0, i32 4, i32 %17
  %18 = ptrtoint ptr %arrayidx156.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %state.0410.i, ptr %arrayidx156.i, align 4
  %arrayidx157.i = getelementptr i32, ptr %td_data3.i, i32 %state.0410.i
  %19 = ptrtoint ptr %arrayidx157.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx157.i, align 4
  %and.i = and i32 %20, 16777215
  %incdec.ptr.i = getelementptr i8, ptr %str.addr.0411.i, i32 1
  %21 = ptrtoint ptr %str.addr.0411.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %str.addr.0411.i, align 1
  %idxprom.i = zext i8 %22 to i32
  %arrayidx158.i = getelementptr i8, ptr %td_data152.i, i32 %idxprom.i
  %23 = ptrtoint ptr %arrayidx158.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx158.i, align 1
  %conv.i = zext i8 %24 to i32
  %add.i = add nuw nsw i32 %and.i, %conv.i
  %arrayidx159.i = getelementptr i16, ptr %td_data11.i, i32 %add.i
  %25 = ptrtoint ptr %arrayidx159.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx159.i, align 2
  %conv160.i = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %state.0410.i, i32 %conv160.i)
  %cmp161.i = icmp eq i32 %state.0410.i, %conv160.i
  %arrayidx164.i = getelementptr i16, ptr %td_data7.i, i32 %add.i
  %arrayidx166.i = getelementptr i16, ptr %td_data.i, i32 %state.0410.i
  %state.1.in.in.i = select i1 %cmp161.i, ptr %arrayidx164.i, ptr %arrayidx166.i
  %27 = ptrtoint ptr %state.1.in.in.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %state.1.in.i = load i16, ptr %state.1.in.in.i, align 2
  %state.1.i = zext i16 %state.1.in.i to i32
  %28 = ptrtoint ptr %pos155.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pos155.i, align 4
  %arrayidx.i.i = getelementptr %struct.match_workbuf, ptr %wb, i32 0, i32 4, i32 %29
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %state.1.i)
  %cmp.i.i = icmp ult i32 %31, %state.1.i
  br i1 %cmp.i.i, label %while.cond.backedge.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %while.body.i
  %state.1.i.le52 = zext i16 %state.1.in.i to i32
  %32 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end7.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %i.025.i.i = phi i32 [ 0, %for.cond.preheader.i.i ], [ %inc.i.i, %if.end7.i.i.for.body.i.i_crit_edge ]
  %pos.024.i.i = phi i32 [ %29, %for.cond.preheader.i.i ], [ %dec.i.i, %if.end7.i.i.for.body.i.i_crit_edge ]
  %arrayidx4.i.i = getelementptr %struct.match_workbuf, ptr %wb, i32 0, i32 4, i32 %pos.024.i.i
  %34 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %state.1.i.le52)
  %cmp5.i.i = icmp eq i32 %35, %state.1.i.le52
  br i1 %cmp5.i.i, label %for.body.i.i.if.then169.i_crit_edge, label %if.end7.i.i

for.body.i.i.if.then169.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then169.i

if.end7.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pos.024.i.i)
  %cmp8.i.i = icmp eq i32 %pos.024.i.i, 0
  %pos.0.op.i.i = add i32 %pos.024.i.i, -1
  %dec.i.i = select i1 %cmp8.i.i, i32 23, i32 %pos.0.op.i.i
  %inc.i.i = add i32 %i.025.i.i, 1
  %cmp2.not.i.i = icmp ugt i32 %inc.i.i, %33
  br i1 %cmp2.not.i.i, label %if.end7.i.i.if.then169.i_crit_edge, label %if.end7.i.i.for.body.i.i_crit_edge

if.end7.i.i.for.body.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

if.end7.i.i.if.then169.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then169.i

if.then169.i:                                     ; preds = %if.end7.i.i.if.then169.i_crit_edge, %for.body.i.i.if.then169.i_crit_edge
  %adjust.0.i = phi i32 [ %i.025.i.i, %for.body.i.i.if.then169.i_crit_edge ], [ %inc.i.i, %if.end7.i.i.if.then169.i_crit_edge ]
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  %td_data.i.i = getelementptr inbounds %struct.table_header, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx2.i, align 4
  %td_data3.i.i = getelementptr inbounds %struct.table_header, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx6.i, align 4
  %td_data7.i.i = getelementptr inbounds %struct.table_header, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx10.i, align 4
  %td_data11.i.i = getelementptr inbounds %struct.table_header, ptr %43, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %state.1.in.i)
  %cmp.i303.i = icmp eq i16 %state.1.in.i, 0
  br i1 %cmp.i303.i, label %if.then169.i.out.i.thread_crit_edge, label %if.end.i.i

if.then169.i.out.i.thread_crit_edge:              ; preds = %if.then169.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.thread

if.end.i.i:                                       ; preds = %if.then169.i
  %44 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx147.i, align 4
  %tobool.not.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i, label %while.cond38.preheader.i.i, label %if.then15.i.i

while.cond38.preheader.i.i:                       ; preds = %if.end.i.i
  %46 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %incdec.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool39.not105.i.i = icmp eq i8 %47, 0
  br i1 %tobool39.not105.i.i, label %while.cond38.preheader.i.i.out.i_crit_edge, label %while.cond38.preheader.i.i.do.body41.i.i_crit_edge

while.cond38.preheader.i.i.do.body41.i.i_crit_edge: ; preds = %while.cond38.preheader.i.i
  br label %do.body41.i.i

while.cond38.preheader.i.i.out.i_crit_edge:       ; preds = %while.cond38.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.then15.i.i:                                    ; preds = %if.end.i.i
  %td_data18.i.i = getelementptr inbounds %struct.table_header, ptr %45, i32 0, i32 4
  %48 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %incdec.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool20.not102.i.i = icmp eq i8 %49, 0
  br i1 %tobool20.not102.i.i, label %if.then15.i.i.out.i_crit_edge, label %if.then15.i.i.do.body.i.i_crit_edge

if.then15.i.i.do.body.i.i_crit_edge:              ; preds = %if.then15.i.i
  br label %do.body.i.i

if.then15.i.i.out.i_crit_edge:                    ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

while.cond.loopexit.i.i:                          ; preds = %do.body.i.i
  %state.2.i.i.le = zext i16 %state.2.in.i.i to i32
  %50 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %incdec.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool20.not.i.i = icmp eq i8 %51, 0
  br i1 %tobool20.not.i.i, label %out.i.loopexit72, label %while.cond.loopexit.i.i.do.body.i.i.backedge_crit_edge

while.cond.loopexit.i.i.do.body.i.i.backedge_crit_edge: ; preds = %while.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.backedge

do.body.i.i:                                      ; preds = %do.body.i.i.backedge, %if.then15.i.i.do.body.i.i_crit_edge
  %str.addr.1.i.i = phi ptr [ %incdec.ptr.i.i, %do.body.i.i.backedge ], [ %incdec.ptr.i, %if.then15.i.i.do.body.i.i_crit_edge ]
  %state.1.i.i = phi i32 [ %state.1.i.i.be, %do.body.i.i.backedge ], [ %state.1.i.le52, %if.then15.i.i.do.body.i.i_crit_edge ]
  %arrayidx21.i.i = getelementptr i32, ptr %td_data3.i.i, i32 %state.1.i.i
  %52 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx21.i.i, align 4
  %and.i.i = and i32 %53, 16777215
  %incdec.ptr.i.i = getelementptr i8, ptr %str.addr.1.i.i, i32 1
  %54 = ptrtoint ptr %str.addr.1.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %str.addr.1.i.i, align 1
  %idxprom.i.i = zext i8 %55 to i32
  %arrayidx22.i.i = getelementptr i8, ptr %td_data18.i.i, i32 %idxprom.i.i
  %56 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx22.i.i, align 1
  %conv.i.i = zext i8 %57 to i32
  %add.i.i = add nuw nsw i32 %and.i.i, %conv.i.i
  %arrayidx23.i.i = getelementptr i16, ptr %td_data11.i.i, i32 %add.i.i
  %58 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx23.i.i, align 2
  %conv24.i.i = zext i16 %59 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %state.1.i.i, i32 %conv24.i.i)
  %cmp25.not.i.i = icmp eq i32 %state.1.i.i, %conv24.i.i
  %arrayidx35.i.i = getelementptr i16, ptr %td_data7.i.i, i32 %add.i.i
  %arrayidx28.i.i = getelementptr i16, ptr %td_data.i.i, i32 %state.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool31.not.i.i = icmp slt i32 %53, 0
  %state.2.in.in.i.i = select i1 %cmp25.not.i.i, ptr %arrayidx35.i.i, ptr %arrayidx28.i.i
  %not.cmp25.not.i.i = xor i1 %cmp25.not.i.i, true
  %60 = select i1 %not.cmp25.not.i.i, i1 %tobool31.not.i.i, i1 false
  %61 = ptrtoint ptr %state.2.in.in.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %state.2.in.i.i = load i16, ptr %state.2.in.in.i.i, align 2
  %state.2.i.i = zext i16 %state.2.in.i.i to i32
  br i1 %60, label %do.body.i.i.do.body.i.i.backedge_crit_edge, label %while.cond.loopexit.i.i

do.body.i.i.do.body.i.i.backedge_crit_edge:       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.backedge

do.body.i.i.backedge:                             ; preds = %do.body.i.i.do.body.i.i.backedge_crit_edge, %while.cond.loopexit.i.i.do.body.i.i.backedge_crit_edge
  %state.1.i.i.be = phi i32 [ %state.2.i.i, %do.body.i.i.do.body.i.i.backedge_crit_edge ], [ %state.2.i.i.le, %while.cond.loopexit.i.i.do.body.i.i.backedge_crit_edge ]
  br label %do.body.i.i

while.cond38.loopexit.i.i:                        ; preds = %do.body41.i.i
  %state.5.i.i.le = zext i16 %state.5.in.i.i to i32
  %62 = ptrtoint ptr %incdec.ptr46.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %incdec.ptr46.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool39.not.i.i = icmp eq i8 %63, 0
  br i1 %tobool39.not.i.i, label %out.i.loopexit71, label %while.cond38.loopexit.i.i.do.body41.i.i.backedge_crit_edge

while.cond38.loopexit.i.i.do.body41.i.i.backedge_crit_edge: ; preds = %while.cond38.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body41.i.i.backedge

do.body41.i.i:                                    ; preds = %do.body41.i.i.backedge, %while.cond38.preheader.i.i.do.body41.i.i_crit_edge
  %str.addr.3.i.i = phi ptr [ %incdec.ptr46.i.i, %do.body41.i.i.backedge ], [ %incdec.ptr.i, %while.cond38.preheader.i.i.do.body41.i.i_crit_edge ]
  %state.4.i.i = phi i32 [ %state.4.i.i.be, %do.body41.i.i.backedge ], [ %state.1.i.le52, %while.cond38.preheader.i.i.do.body41.i.i_crit_edge ]
  %arrayidx43.i.i = getelementptr i32, ptr %td_data3.i.i, i32 %state.4.i.i
  %64 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx43.i.i, align 4
  %and45.i.i = and i32 %65, 16777215
  %incdec.ptr46.i.i = getelementptr i8, ptr %str.addr.3.i.i, i32 1
  %66 = ptrtoint ptr %str.addr.3.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %str.addr.3.i.i, align 1
  %conv47.i.i = zext i8 %67 to i32
  %add48.i.i = add nuw nsw i32 %and45.i.i, %conv47.i.i
  %arrayidx49.i.i = getelementptr i16, ptr %td_data11.i.i, i32 %add48.i.i
  %68 = ptrtoint ptr %arrayidx49.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx49.i.i, align 2
  %conv50.i.i = zext i16 %69 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %state.4.i.i, i32 %conv50.i.i)
  %cmp51.not.i.i = icmp eq i32 %state.4.i.i, %conv50.i.i
  %arrayidx61.i.i = getelementptr i16, ptr %td_data7.i.i, i32 %add48.i.i
  %arrayidx54.i.i = getelementptr i16, ptr %td_data.i.i, i32 %state.4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool57.not.i.i = icmp slt i32 %65, 0
  %state.5.in.in.i.i = select i1 %cmp51.not.i.i, ptr %arrayidx61.i.i, ptr %arrayidx54.i.i
  %not.cmp51.not.i.i = xor i1 %cmp51.not.i.i, true
  %70 = select i1 %not.cmp51.not.i.i, i1 %tobool57.not.i.i, i1 false
  %71 = ptrtoint ptr %state.5.in.in.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %state.5.in.i.i = load i16, ptr %state.5.in.in.i.i, align 2
  %state.5.i.i = zext i16 %state.5.in.i.i to i32
  br i1 %70, label %do.body41.i.i.do.body41.i.i.backedge_crit_edge, label %while.cond38.loopexit.i.i

do.body41.i.i.do.body41.i.i.backedge_crit_edge:   ; preds = %do.body41.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body41.i.i.backedge

do.body41.i.i.backedge:                           ; preds = %do.body41.i.i.do.body41.i.i.backedge_crit_edge, %while.cond38.loopexit.i.i.do.body41.i.i.backedge_crit_edge
  %state.4.i.i.be = phi i32 [ %state.5.i.i, %do.body41.i.i.do.body41.i.i.backedge_crit_edge ], [ %state.5.i.i.le, %while.cond38.loopexit.i.i.do.body41.i.i.backedge_crit_edge ]
  br label %do.body41.i.i

while.cond.backedge.i:                            ; preds = %while.body.i
  %add174.i = add i32 %29, 1
  %and175.i = and i32 %add174.i, 23
  %72 = ptrtoint ptr %pos155.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %and175.i, ptr %pos155.i, align 4
  %73 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len.i.i, align 4
  %add177.i = add i32 %74, 1
  %and178.i = and i32 %add177.i, 23
  store i32 %and178.i, ptr %len.i.i, align 4
  %75 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %count, align 4
  %inc.i = add i32 %76, 1
  store i32 %inc.i, ptr %count, align 4
  %77 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %incdec.ptr.i, align 1
  %tobool154.not.i = icmp eq i8 %78, 0
  br i1 %tobool154.not.i, label %leftmatch_fb.exit.loopexit39, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body188.i:                                  ; preds = %cleanup226.i.while.body188.i_crit_edge, %while.body188.lr.ph.i
  %str.addr.1415.i = phi ptr [ %str, %while.body188.lr.ph.i ], [ %incdec.ptr195.i, %cleanup226.i.while.body188.i_crit_edge ]
  %state.4414.i = phi i32 [ %start, %while.body188.lr.ph.i ], [ %state.5.i, %cleanup226.i.while.body188.i_crit_edge ]
  %79 = ptrtoint ptr %pos191.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pos191.i, align 4
  %arrayidx192.i = getelementptr %struct.match_workbuf, ptr %wb, i32 0, i32 4, i32 %80
  %81 = ptrtoint ptr %arrayidx192.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %state.4414.i, ptr %arrayidx192.i, align 4
  %arrayidx193.i = getelementptr i32, ptr %td_data3.i, i32 %state.4414.i
  %82 = ptrtoint ptr %arrayidx193.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx193.i, align 4
  %and194.i = and i32 %83, 16777215
  %incdec.ptr195.i = getelementptr i8, ptr %str.addr.1415.i, i32 1
  %84 = ptrtoint ptr %str.addr.1415.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %str.addr.1415.i, align 1
  %conv196.i = zext i8 %85 to i32
  %add197.i = add nuw nsw i32 %and194.i, %conv196.i
  %arrayidx198.i = getelementptr i16, ptr %td_data11.i, i32 %add197.i
  %86 = ptrtoint ptr %arrayidx198.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %arrayidx198.i, align 2
  %conv199.i = zext i16 %87 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %state.4414.i, i32 %conv199.i)
  %cmp200.i = icmp eq i32 %state.4414.i, %conv199.i
  %arrayidx203.i = getelementptr i16, ptr %td_data7.i, i32 %add197.i
  %arrayidx206.i = getelementptr i16, ptr %td_data.i, i32 %state.4414.i
  %state.5.in.in.i = select i1 %cmp200.i, ptr %arrayidx203.i, ptr %arrayidx206.i
  %88 = ptrtoint ptr %state.5.in.in.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %state.5.in.i = load i16, ptr %state.5.in.in.i, align 2
  %state.5.i = zext i16 %state.5.in.i to i32
  %89 = ptrtoint ptr %pos191.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %pos191.i, align 4
  %arrayidx.i305.i = getelementptr %struct.match_workbuf, ptr %wb, i32 0, i32 4, i32 %90
  %91 = ptrtoint ptr %arrayidx.i305.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i305.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %state.5.i)
  %cmp.i306.i = icmp ult i32 %92, %state.5.i
  br i1 %cmp.i306.i, label %cleanup226.i, label %for.cond.preheader.i308.i

for.cond.preheader.i308.i:                        ; preds = %while.body188.i
  %state.5.i.le55 = zext i16 %state.5.in.i to i32
  %93 = ptrtoint ptr %len.i307.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %len.i307.i, align 4
  br label %for.body.i313.i

for.body.i313.i:                                  ; preds = %if.end7.i319.i.for.body.i313.i_crit_edge, %for.cond.preheader.i308.i
  %i.025.i309.i = phi i32 [ 0, %for.cond.preheader.i308.i ], [ %inc.i317.i, %if.end7.i319.i.for.body.i313.i_crit_edge ]
  %pos.024.i310.i = phi i32 [ %90, %for.cond.preheader.i308.i ], [ %dec.i316.i, %if.end7.i319.i.for.body.i313.i_crit_edge ]
  %arrayidx4.i311.i = getelementptr %struct.match_workbuf, ptr %wb, i32 0, i32 4, i32 %pos.024.i310.i
  %95 = ptrtoint ptr %arrayidx4.i311.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx4.i311.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %state.5.i.le55)
  %cmp5.i312.i = icmp eq i32 %96, %state.5.i.le55
  br i1 %cmp5.i312.i, label %for.body.i313.i.if.then210.i_crit_edge, label %if.end7.i319.i

for.body.i313.i.if.then210.i_crit_edge:           ; preds = %for.body.i313.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then210.i

if.end7.i319.i:                                   ; preds = %for.body.i313.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pos.024.i310.i)
  %cmp8.i314.i = icmp eq i32 %pos.024.i310.i, 0
  %pos.0.op.i315.i = add i32 %pos.024.i310.i, -1
  %dec.i316.i = select i1 %cmp8.i314.i, i32 23, i32 %pos.0.op.i315.i
  %inc.i317.i = add i32 %i.025.i309.i, 1
  %cmp2.not.i318.i = icmp ugt i32 %inc.i317.i, %94
  br i1 %cmp2.not.i318.i, label %if.end7.i319.i.if.then210.i_crit_edge, label %if.end7.i319.i.for.body.i313.i_crit_edge

if.end7.i319.i.for.body.i313.i_crit_edge:         ; preds = %if.end7.i319.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i313.i

if.end7.i319.i.if.then210.i_crit_edge:            ; preds = %if.end7.i319.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then210.i

if.then210.i:                                     ; preds = %if.end7.i319.i.if.then210.i_crit_edge, %for.body.i313.i.if.then210.i_crit_edge
  %adjust189.0.i = phi i32 [ %i.025.i309.i, %for.body.i313.i.if.then210.i_crit_edge ], [ %inc.i317.i, %if.end7.i319.i.if.then210.i_crit_edge ]
  %97 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx.i, align 4
  %td_data.i324.i = getelementptr inbounds %struct.table_header, ptr %98, i32 0, i32 4
  %99 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx2.i, align 4
  %td_data3.i326.i = getelementptr inbounds %struct.table_header, ptr %100, i32 0, i32 4
  %101 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx6.i, align 4
  %td_data7.i328.i = getelementptr inbounds %struct.table_header, ptr %102, i32 0, i32 4
  %103 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx10.i, align 4
  %td_data11.i330.i = getelementptr inbounds %struct.table_header, ptr %104, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %state.5.in.i)
  %cmp.i331.i = icmp eq i16 %state.5.in.i, 0
  br i1 %cmp.i331.i, label %if.then210.i.out.i.thread_crit_edge, label %if.end.i334.i

if.then210.i.out.i.thread_crit_edge:              ; preds = %if.then210.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.thread

if.end.i334.i:                                    ; preds = %if.then210.i
  %105 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx147.i, align 4
  %tobool.not.i333.i = icmp eq ptr %106, null
  br i1 %tobool.not.i333.i, label %while.cond38.preheader.i336.i, label %if.then15.i339.i

while.cond38.preheader.i336.i:                    ; preds = %if.end.i334.i
  %107 = ptrtoint ptr %incdec.ptr195.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %incdec.ptr195.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool39.not105.i335.i = icmp eq i8 %108, 0
  br i1 %tobool39.not105.i335.i, label %while.cond38.preheader.i336.i.out.i_crit_edge, label %while.cond38.preheader.i336.i.do.body41.i389.i_crit_edge

while.cond38.preheader.i336.i.do.body41.i389.i_crit_edge: ; preds = %while.cond38.preheader.i336.i
  br label %do.body41.i389.i

while.cond38.preheader.i336.i.out.i_crit_edge:    ; preds = %while.cond38.preheader.i336.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.then15.i339.i:                                 ; preds = %if.end.i334.i
  %td_data18.i337.i = getelementptr inbounds %struct.table_header, ptr %106, i32 0, i32 4
  %109 = ptrtoint ptr %incdec.ptr195.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %incdec.ptr195.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool20.not102.i338.i = icmp eq i8 %110, 0
  br i1 %tobool20.not102.i338.i, label %if.then15.i339.i.out.i_crit_edge, label %if.then15.i339.i.do.body.i365.i_crit_edge

if.then15.i339.i.do.body.i365.i_crit_edge:        ; preds = %if.then15.i339.i
  br label %do.body.i365.i

if.then15.i339.i.out.i_crit_edge:                 ; preds = %if.then15.i339.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

while.cond.loopexit.i342.i:                       ; preds = %do.body.i365.i
  %state.2.i364.i.le = zext i16 %state.2.in.i363.i to i32
  %111 = ptrtoint ptr %incdec.ptr.i350.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %incdec.ptr.i350.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool20.not.i341.i = icmp eq i8 %112, 0
  br i1 %tobool20.not.i341.i, label %out.i.loopexit67, label %while.cond.loopexit.i342.i.do.body.i365.i.backedge_crit_edge

while.cond.loopexit.i342.i.do.body.i365.i.backedge_crit_edge: ; preds = %while.cond.loopexit.i342.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i365.i.backedge

do.body.i365.i:                                   ; preds = %do.body.i365.i.backedge, %if.then15.i339.i.do.body.i365.i_crit_edge
  %str.addr.1.i346.i = phi ptr [ %incdec.ptr.i350.i, %do.body.i365.i.backedge ], [ %incdec.ptr195.i, %if.then15.i339.i.do.body.i365.i_crit_edge ]
  %state.1.i347.i = phi i32 [ %state.1.i347.i.be, %do.body.i365.i.backedge ], [ %state.5.i.le55, %if.then15.i339.i.do.body.i365.i_crit_edge ]
  %arrayidx21.i348.i = getelementptr i32, ptr %td_data3.i326.i, i32 %state.1.i347.i
  %113 = ptrtoint ptr %arrayidx21.i348.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx21.i348.i, align 4
  %and.i349.i = and i32 %114, 16777215
  %incdec.ptr.i350.i = getelementptr i8, ptr %str.addr.1.i346.i, i32 1
  %115 = ptrtoint ptr %str.addr.1.i346.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %str.addr.1.i346.i, align 1
  %idxprom.i351.i = zext i8 %116 to i32
  %arrayidx22.i352.i = getelementptr i8, ptr %td_data18.i337.i, i32 %idxprom.i351.i
  %117 = ptrtoint ptr %arrayidx22.i352.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx22.i352.i, align 1
  %conv.i353.i = zext i8 %118 to i32
  %add.i354.i = add nuw nsw i32 %and.i349.i, %conv.i353.i
  %arrayidx23.i355.i = getelementptr i16, ptr %td_data11.i330.i, i32 %add.i354.i
  %119 = ptrtoint ptr %arrayidx23.i355.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %arrayidx23.i355.i, align 2
  %conv24.i356.i = zext i16 %120 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %state.1.i347.i, i32 %conv24.i356.i)
  %cmp25.not.i357.i = icmp eq i32 %state.1.i347.i, %conv24.i356.i
  %arrayidx35.i358.i = getelementptr i16, ptr %td_data7.i328.i, i32 %add.i354.i
  %arrayidx28.i359.i = getelementptr i16, ptr %td_data.i324.i, i32 %state.1.i347.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool31.not.i360.i = icmp slt i32 %114, 0
  %state.2.in.in.i361.i = select i1 %cmp25.not.i357.i, ptr %arrayidx35.i358.i, ptr %arrayidx28.i359.i
  %not.cmp25.not.i362.i = xor i1 %cmp25.not.i357.i, true
  %121 = select i1 %not.cmp25.not.i362.i, i1 %tobool31.not.i360.i, i1 false
  %122 = ptrtoint ptr %state.2.in.in.i361.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %state.2.in.i363.i = load i16, ptr %state.2.in.in.i361.i, align 2
  %state.2.i364.i = zext i16 %state.2.in.i363.i to i32
  br i1 %121, label %do.body.i365.i.do.body.i365.i.backedge_crit_edge, label %while.cond.loopexit.i342.i

do.body.i365.i.do.body.i365.i.backedge_crit_edge: ; preds = %do.body.i365.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i365.i.backedge

do.body.i365.i.backedge:                          ; preds = %do.body.i365.i.do.body.i365.i.backedge_crit_edge, %while.cond.loopexit.i342.i.do.body.i365.i.backedge_crit_edge
  %state.1.i347.i.be = phi i32 [ %state.2.i364.i, %do.body.i365.i.do.body.i365.i.backedge_crit_edge ], [ %state.2.i364.i.le, %while.cond.loopexit.i342.i.do.body.i365.i.backedge_crit_edge ]
  br label %do.body.i365.i

while.cond38.loopexit.i368.i:                     ; preds = %do.body41.i389.i
  %state.5.i388.i.le = zext i16 %state.5.in.i387.i to i32
  %123 = ptrtoint ptr %incdec.ptr46.i376.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %incdec.ptr46.i376.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool39.not.i367.i = icmp eq i8 %124, 0
  br i1 %tobool39.not.i367.i, label %out.i.loopexit, label %while.cond38.loopexit.i368.i.do.body41.i389.i.backedge_crit_edge

while.cond38.loopexit.i368.i.do.body41.i389.i.backedge_crit_edge: ; preds = %while.cond38.loopexit.i368.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body41.i389.i.backedge

do.body41.i389.i:                                 ; preds = %do.body41.i389.i.backedge, %while.cond38.preheader.i336.i.do.body41.i389.i_crit_edge
  %str.addr.3.i372.i = phi ptr [ %incdec.ptr46.i376.i, %do.body41.i389.i.backedge ], [ %incdec.ptr195.i, %while.cond38.preheader.i336.i.do.body41.i389.i_crit_edge ]
  %state.4.i373.i = phi i32 [ %state.4.i373.i.be, %do.body41.i389.i.backedge ], [ %state.5.i.le55, %while.cond38.preheader.i336.i.do.body41.i389.i_crit_edge ]
  %arrayidx43.i374.i = getelementptr i32, ptr %td_data3.i326.i, i32 %state.4.i373.i
  %125 = ptrtoint ptr %arrayidx43.i374.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx43.i374.i, align 4
  %and45.i375.i = and i32 %126, 16777215
  %incdec.ptr46.i376.i = getelementptr i8, ptr %str.addr.3.i372.i, i32 1
  %127 = ptrtoint ptr %str.addr.3.i372.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %str.addr.3.i372.i, align 1
  %conv47.i377.i = zext i8 %128 to i32
  %add48.i378.i = add nuw nsw i32 %and45.i375.i, %conv47.i377.i
  %arrayidx49.i379.i = getelementptr i16, ptr %td_data11.i330.i, i32 %add48.i378.i
  %129 = ptrtoint ptr %arrayidx49.i379.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %arrayidx49.i379.i, align 2
  %conv50.i380.i = zext i16 %130 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %state.4.i373.i, i32 %conv50.i380.i)
  %cmp51.not.i381.i = icmp eq i32 %state.4.i373.i, %conv50.i380.i
  %arrayidx61.i382.i = getelementptr i16, ptr %td_data7.i328.i, i32 %add48.i378.i
  %arrayidx54.i383.i = getelementptr i16, ptr %td_data.i324.i, i32 %state.4.i373.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool57.not.i384.i = icmp slt i32 %126, 0
  %state.5.in.in.i385.i = select i1 %cmp51.not.i381.i, ptr %arrayidx61.i382.i, ptr %arrayidx54.i383.i
  %not.cmp51.not.i386.i = xor i1 %cmp51.not.i381.i, true
  %131 = select i1 %not.cmp51.not.i386.i, i1 %tobool57.not.i384.i, i1 false
  %132 = ptrtoint ptr %state.5.in.in.i385.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %state.5.in.i387.i = load i16, ptr %state.5.in.in.i385.i, align 2
  %state.5.i388.i = zext i16 %state.5.in.i387.i to i32
  br i1 %131, label %do.body41.i389.i.do.body41.i389.i.backedge_crit_edge, label %while.cond38.loopexit.i368.i

do.body41.i389.i.do.body41.i389.i.backedge_crit_edge: ; preds = %do.body41.i389.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body41.i389.i.backedge

do.body41.i389.i.backedge:                        ; preds = %do.body41.i389.i.do.body41.i389.i.backedge_crit_edge, %while.cond38.loopexit.i368.i.do.body41.i389.i.backedge_crit_edge
  %state.4.i373.i.be = phi i32 [ %state.5.i388.i, %do.body41.i389.i.do.body41.i389.i.backedge_crit_edge ], [ %state.5.i388.i.le, %while.cond38.loopexit.i368.i.do.body41.i389.i.backedge_crit_edge ]
  br label %do.body41.i389.i

cleanup226.i:                                     ; preds = %while.body188.i
  %add216.i = add i32 %90, 1
  %and217.i = and i32 %add216.i, 23
  %133 = ptrtoint ptr %pos191.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %and217.i, ptr %pos191.i, align 4
  %134 = ptrtoint ptr %len.i307.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %len.i307.i, align 4
  %add220.i = add i32 %135, 1
  %and221.i = and i32 %add220.i, 23
  store i32 %and221.i, ptr %len.i307.i, align 4
  %136 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %count, align 4
  %inc225.i = add i32 %137, 1
  store i32 %inc225.i, ptr %count, align 4
  %138 = ptrtoint ptr %incdec.ptr195.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %incdec.ptr195.i, align 1
  %tobool187.not.i = icmp eq i8 %139, 0
  br i1 %tobool187.not.i, label %leftmatch_fb.exit.loopexit, label %cleanup226.i.while.body188.i_crit_edge

cleanup226.i.while.body188.i_crit_edge:           ; preds = %cleanup226.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body188.i

out.i.loopexit:                                   ; preds = %while.cond38.loopexit.i368.i
  call void @__sanitizer_cov_trace_pc() #12
  %state.5.i388.i.le.le = zext i16 %state.5.in.i387.i to i32
  br label %out.i

out.i.loopexit67:                                 ; preds = %while.cond.loopexit.i342.i
  call void @__sanitizer_cov_trace_pc() #12
  %state.2.i364.i.le.le = zext i16 %state.2.in.i363.i to i32
  br label %out.i

out.i.loopexit71:                                 ; preds = %while.cond38.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %state.5.i.i.le.le = zext i16 %state.5.in.i.i to i32
  br label %out.i

out.i.loopexit72:                                 ; preds = %while.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %state.2.i.i.le.le = zext i16 %state.2.in.i.i to i32
  br label %out.i

out.i:                                            ; preds = %out.i.loopexit72, %out.i.loopexit71, %out.i.loopexit67, %out.i.loopexit, %if.then15.i339.i.out.i_crit_edge, %while.cond38.preheader.i336.i.out.i_crit_edge, %if.then15.i.i.out.i_crit_edge, %while.cond38.preheader.i.i.out.i_crit_edge
  %adjust.0.sink.i = phi i32 [ %adjust189.0.i, %if.then15.i339.i.out.i_crit_edge ], [ %adjust189.0.i, %while.cond38.preheader.i336.i.out.i_crit_edge ], [ %adjust.0.i, %if.then15.i.i.out.i_crit_edge ], [ %adjust.0.i, %while.cond38.preheader.i.i.out.i_crit_edge ], [ %adjust189.0.i, %out.i.loopexit ], [ %adjust189.0.i, %out.i.loopexit67 ], [ %adjust.0.i, %out.i.loopexit71 ], [ %adjust.0.i, %out.i.loopexit72 ]
  %state.7.i = phi i32 [ %state.5.i.le55, %if.then15.i339.i.out.i_crit_edge ], [ %state.5.i.le55, %while.cond38.preheader.i336.i.out.i_crit_edge ], [ %state.1.i.le52, %if.then15.i.i.out.i_crit_edge ], [ %state.1.i.le52, %while.cond38.preheader.i.i.out.i_crit_edge ], [ %state.5.i388.i.le.le, %out.i.loopexit ], [ %state.2.i364.i.le.le, %out.i.loopexit67 ], [ %state.5.i.i.le.le, %out.i.loopexit71 ], [ %state.2.i.i.le.le, %out.i.loopexit72 ]
  %140 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %count, align 4
  %sub.i = sub i32 %141, %adjust.0.sink.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state.7.i)
  %tobool231.not.i = icmp eq i32 %state.7.i, 0
  br i1 %tobool231.not.i, label %out.i.out.i.thread_crit_edge, label %out.i._crit_edge

out.i._crit_edge:                                 ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %142

out.i.out.i.thread_crit_edge:                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.thread

out.i.thread:                                     ; preds = %out.i.out.i.thread_crit_edge, %if.then210.i.out.i.thread_crit_edge, %if.then169.i.out.i.thread_crit_edge
  br label %142

142:                                              ; preds = %out.i.thread, %out.i._crit_edge
  %state.7.i5 = phi i32 [ 0, %out.i.thread ], [ %state.7.i, %out.i._crit_edge ]
  %143 = phi i32 [ 0, %out.i.thread ], [ %sub.i, %out.i._crit_edge ]
  %144 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %count, align 4
  br label %leftmatch_fb.exit

leftmatch_fb.exit.loopexit:                       ; preds = %cleanup226.i
  call void @__sanitizer_cov_trace_pc() #12
  %state.5.i.le = zext i16 %state.5.in.i to i32
  br label %leftmatch_fb.exit

leftmatch_fb.exit.loopexit39:                     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  %state.1.i.le = zext i16 %state.1.in.i to i32
  br label %leftmatch_fb.exit

leftmatch_fb.exit:                                ; preds = %leftmatch_fb.exit.loopexit39, %leftmatch_fb.exit.loopexit, %142, %if.then149.i.leftmatch_fb.exit_crit_edge, %while.cond186.preheader.i.leftmatch_fb.exit_crit_edge, %if.end134.i.leftmatch_fb.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end134.i.leftmatch_fb.exit_crit_edge ], [ %start, %if.then149.i.leftmatch_fb.exit_crit_edge ], [ %start, %while.cond186.preheader.i.leftmatch_fb.exit_crit_edge ], [ %state.7.i5, %142 ], [ %state.5.i.le, %leftmatch_fb.exit.loopexit ], [ %state.1.i.le, %leftmatch_fb.exit.loopexit39 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %wb) #10
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vm_unmap_aliases() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @nulldfa, !1, !"nulldfa", i1 false, i1 false}
!1 = !{!"../security/apparmor/match.c", i32 27, i32 16}
!2 = !{ptr @stacksplitdfa, !3, !"stacksplitdfa", i1 false, i1 false}
!3 = !{!"../security/apparmor/match.c", i32 32, i32 16}
!4 = !{ptr @nulldfa_src, !5, !"nulldfa_src", i1 false, i1 false}
!5 = !{!"../security/apparmor/match.c", i32 24, i32 13}
!6 = !{ptr @stacksplitdfa_src, !7, !"stacksplitdfa_src", i1 false, i1 false}
!7 = !{!"../security/apparmor/match.c", i32 29, i32 13}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../security/apparmor/match.c", i32 211, i32 4}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @verify_dfa._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @verify_dfa._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../security/apparmor/match.c", i32 216, i32 5}
!16 = !{ptr @verify_dfa._entry.5, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @verify_dfa._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../security/apparmor/match.c", i32 222, i32 5}
!20 = !{ptr @verify_dfa._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @verify_dfa._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../security/apparmor/match.c", i32 226, i32 5}
!24 = !{ptr @verify_dfa._entry.11, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @verify_dfa._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../security/apparmor/match.c", i32 231, i32 4}
!28 = !{ptr @verify_dfa._entry.14, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @verify_dfa._entry_ptr.16, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../security/apparmor/match.c", i32 713, i32 2}
!32 = !{ptr @__func__.leftmatch_fb, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../security/apparmor/match.c", i32 714, i32 2}
!35 = distinct !{null, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../security/apparmor/match.c", i32 715, i32 2}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../security/apparmor/match.c", i32 716, i32 2}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 2148319242}
!49 = !{i64 2148233706, i64 2148233738, i64 2148233767, i64 2148233801, i64 2148233832, i64 2148233855}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{i64 2149969468}
!52 = !{!"branch_weights", i32 1, i32 2000}
