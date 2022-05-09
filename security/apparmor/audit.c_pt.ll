; ModuleID = '/llk/IR_all_yes/security/apparmor/audit.c_pt.bc'
source_filename = "../security/apparmor/audit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.common_audit_data = type { i8, %union.anon, %union.anon.136 }
%union.anon = type { %struct.path }
%struct.path = type { ptr, ptr }
%union.anon.136 = type { ptr }
%struct.apparmor_audit_data = type { i32, i32, ptr, ptr, ptr, ptr, i32, i32, %union.anon.137 }
%union.anon.137 = type { %struct.anon.138 }
%struct.anon.138 = type { ptr, %union.anon.139 }
%union.anon.139 = type { %struct.anon.143 }
%struct.anon.143 = type { i32, i32, ptr, ptr, i32 }
%struct.aa_label = type { %struct.kref, %struct.rb_node, %struct.callback_head, ptr, ptr, i32, i32, i32, [0 x ptr] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.aa_profile = type { %struct.aa_policy, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, %struct.aa_policydb, %struct.aa_file_rules, %struct.aa_caps, i32, ptr, %struct.aa_rlimit, i32, ptr, ptr, ptr, ptr, [9 x ptr], ptr, %struct.aa_label }
%struct.aa_policy = type { ptr, ptr, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.aa_policydb = type { ptr, [17 x i32] }
%struct.aa_file_rules = type { i32, ptr, %struct.aa_domain }
%struct.aa_domain = type { i32, ptr }
%struct.aa_caps = type { %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.aa_rlimit = type { i32, [16 x %struct.rlimit] }
%struct.rlimit = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.aa_ns = type { %struct.aa_policy, ptr, %struct.mutex, %struct.aa_ns_acct, ptr, %struct.list_head, %struct.atomic_t, i32, i32, i32, %struct.wait_queue_head, %struct.aa_labelset, %struct.list_head, [13 x ptr] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.aa_ns_acct = type { i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.aa_labelset = type { %struct.rwlock_t, %struct.rb_root }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.rb_root = type { ptr }
%struct.audit_krule = type { i32, i32, i32, i32, [64 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i64 }
%struct.audit_field = type { i32, %union.anon.164, i32 }
%union.anon.164 = type { %struct.anon.165 }
%struct.anon.165 = type { ptr, ptr }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"normal\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"quiet_denied\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"quiet\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"noquiet\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"all\00", [28 x i8] zeroinitializer }, align 32
@audit_mode_names = dso_local constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"security/apparmor/audit.c\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AppArmor WARN %s: ((!profile)): \00", [63 x i8] zeroinitializer }, align 32
@__func__.aa_audit = private unnamed_addr constant [9 x i8] c"aa_audit\00", align 1
@aa_g_profile_mode = external dso_local local_unnamed_addr global i32, align 4
@root_ns = external dso_local local_unnamed_addr global ptr, align 4
@aa_g_audit_header = external dso_local local_unnamed_addr global i8, align 1
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"apparmor=\22%s\22\00", [18 x i8] zeroinitializer }, align 32
@aa_audit_type = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" operation=\22%s\22\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" info=\22%s\22\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" error=%d\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" namespace=\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" profile=\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" label=\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" name=\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AUDIT\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ALLOWED\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DENIED\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HINT\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"STATUS\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ERROR\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"KILLED\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AUTO\00", [27 x i8] zeroinitializer }, align 32
@aa_g_audit = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967283, i64 4294967295]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 21, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 22, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 23, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 24, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 25, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"audit_mode_names\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 20, i32 19 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 126, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 60, i32 24 }
@___asan_gen_.51 = private unnamed_addr constant [14 x i8] c"aa_audit_type\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 28, i32 26 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 65, i32 24 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 69, i32 24 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 71, i32 25 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 81, i32 26 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 85, i32 25 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 88, i32 25 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 95, i32 24 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 29, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 30, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 31, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 32, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 33, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 34, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 35, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [29 x i8] c"../security/apparmor/audit.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 36, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @audit_mode_names, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @aa_audit_type, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_mode_names to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_audit_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aa_audit_msg(i32 noundef %type, ptr noundef %sa, ptr noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.common_audit_data, ptr %sa, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %type1 = getelementptr inbounds %struct.apparmor_audit_data, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %type1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %type, ptr %type1, align 4
  tail call void @common_lsm_audit(ptr noundef %sa, ptr noundef nonnull @audit_pre, ptr noundef %cb) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @common_lsm_audit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @audit_pre(ptr noundef %ab, ptr nocapture noundef readonly %ca) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_audit_header to i32))
  %0 = load i8, ptr @aa_g_audit_header, align 1, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = getelementptr inbounds %struct.common_audit_data, ptr %ca, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %type = getelementptr inbounds %struct.apparmor_audit_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %arrayidx = getelementptr [8 x ptr], ptr @aa_audit_type, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.7, ptr noundef %7) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = getelementptr inbounds %struct.common_audit_data, ptr %ca, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %op = getelementptr inbounds %struct.apparmor_audit_data, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %op, align 4
  %tobool1.not = icmp eq ptr %12, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.8, ptr noundef nonnull %12) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %8, align 4
  %info = getelementptr inbounds %struct.apparmor_audit_data, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info, align 4
  %tobool5.not = icmp eq ptr %16, null
  br i1 %tobool5.not, label %if.end4.if.end12_crit_edge, label %if.then6

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then6:                                         ; preds = %if.end4
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.9, ptr noundef nonnull %16) #6
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %8, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool8.not = icmp eq i32 %20, 0
  br i1 %tobool8.not, label %if.then6.if.end12_crit_edge, label %if.then9

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.10, i32 noundef %20) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.then6.if.end12_crit_edge, %if.end4.if.end12_crit_edge
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %8, align 4
  %label = getelementptr inbounds %struct.apparmor_audit_data, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %label, align 4
  %tobool13.not = icmp eq ptr %24, null
  br i1 %tobool13.not, label %if.end12.if.end26_crit_edge, label %if.then14

if.end12.if.end26_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then14:                                        ; preds = %if.end12
  %flags = getelementptr inbounds %struct.aa_label, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %and = and i32 %26, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.then14
  %size = getelementptr inbounds %struct.aa_label, ptr %24, i32 0, i32 7
  %27 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size, align 4
  %sub = add i32 %28, -1
  %arrayidx19 = getelementptr %struct.aa_label, ptr %24, i32 0, i32 8, i32 %sub
  %29 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx19, align 4
  %ns = getelementptr inbounds %struct.aa_profile, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ns, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @root_ns to i32))
  %33 = load ptr, ptr @root_ns, align 4
  %cmp.not = icmp eq ptr %32, %33
  br i1 %cmp.not, label %if.then18.if.end22_crit_edge, label %if.then20

if.then18.if.end22_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.11) #6
  %34 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ns, align 4
  %hname = getelementptr inbounds %struct.aa_policy, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %hname to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hname, align 4
  tail call void @audit_log_untrustedstring(ptr noundef %ab, ptr noundef %37) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.then18.if.end22_crit_edge
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.12) #6
  %hname24 = getelementptr inbounds %struct.aa_policy, ptr %30, i32 0, i32 1
  %38 = ptrtoint ptr %hname24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hname24, align 4
  tail call void @audit_log_untrustedstring(ptr noundef %ab, ptr noundef %39) #6
  br label %if.end26

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.13) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @root_ns to i32))
  %40 = load ptr, ptr @root_ns, align 4
  tail call void @aa_label_xaudit(ptr noundef %ab, ptr noundef %40, ptr noundef nonnull %24, i32 noundef 2, i32 noundef 2592) #6
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.end22, %if.end12.if.end26_crit_edge
  %41 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %8, align 4
  %name = getelementptr inbounds %struct.apparmor_audit_data, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name, align 4
  %tobool27.not = icmp eq ptr %44, null
  br i1 %tobool27.not, label %if.end26.if.end30_crit_edge, label %if.then28

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.14) #6
  %45 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %8, align 4
  %name29 = getelementptr inbounds %struct.apparmor_audit_data, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %name29 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %name29, align 4
  tail call void @audit_log_untrustedstring(ptr noundef %ab, ptr noundef %48) #6
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end26.if.end30_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_audit(i32 noundef %type, ptr noundef %profile, ptr noundef %sa, ptr noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %profile, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !61

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 126, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.aa_audit) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %type)
  %cmp = icmp eq i32 %type, 7
  br i1 %cmp, label %if.then24, label %if.end.if.end44_crit_edge

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then24:                                        ; preds = %if.end
  %0 = getelementptr inbounds %struct.common_audit_data, ptr %sa, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool25.not = icmp eq i32 %4, 0
  br i1 %tobool25.not, label %if.then34, label %if.else, !prof !62

if.then34:                                        ; preds = %if.then24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_g_audit to i32))
  %5 = load i32, ptr @aa_g_audit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then34.AUDIT_MODE.exit_crit_edge

if.then34.AUDIT_MODE.exit_crit_edge:              ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %AUDIT_MODE.exit

if.end.i:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  %audit.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 7
  %6 = ptrtoint ptr %audit.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %audit.i, align 4
  br label %AUDIT_MODE.exit

AUDIT_MODE.exit:                                  ; preds = %if.end.i, %if.then34.AUDIT_MODE.exit_crit_edge
  %retval.0.i = phi i32 [ %7, %if.end.i ], [ %5, %if.then34.AUDIT_MODE.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retval.0.i)
  %cmp35.not = icmp eq i32 %retval.0.i, 4
  br i1 %cmp35.not, label %AUDIT_MODE.exit.if.end44_crit_edge, label %AUDIT_MODE.exit.return_crit_edge

AUDIT_MODE.exit.return_crit_edge:                 ; preds = %AUDIT_MODE.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

AUDIT_MODE.exit.if.end44_crit_edge:               ; preds = %AUDIT_MODE.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.else:                                          ; preds = %if.then24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_g_profile_mode to i32))
  %8 = load i32, ptr @aa_g_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp38 = icmp eq i32 %8, 1
  br i1 %cmp38, label %if.else.if.end44_crit_edge, label %lor.lhs.false

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

lor.lhs.false:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %mode = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 8
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp39 = icmp eq i32 %10, 1
  %spec.select = select i1 %cmp39, i32 1, i32 2
  br label %if.end44

if.end44:                                         ; preds = %lor.lhs.false, %if.else.if.end44_crit_edge, %AUDIT_MODE.exit.if.end44_crit_edge, %if.end.if.end44_crit_edge
  %type.addr.0 = phi i32 [ %type, %if.end.if.end44_crit_edge ], [ 0, %AUDIT_MODE.exit.if.end44_crit_edge ], [ 1, %if.else.if.end44_crit_edge ], [ %spec.select, %lor.lhs.false ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_g_audit to i32))
  %11 = load i32, ptr @aa_g_audit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i103 = icmp eq i32 %11, 0
  br i1 %cmp.not.i103, label %if.end.i105, label %if.end44.AUDIT_MODE.exit107_crit_edge

if.end44.AUDIT_MODE.exit107_crit_edge:            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %AUDIT_MODE.exit107

if.end.i105:                                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %audit.i104 = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 7
  %12 = ptrtoint ptr %audit.i104 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %audit.i104, align 4
  br label %AUDIT_MODE.exit107

AUDIT_MODE.exit107:                               ; preds = %if.end.i105, %if.end44.AUDIT_MODE.exit107_crit_edge
  %retval.0.i106 = phi i32 [ %13, %if.end.i105 ], [ %11, %if.end44.AUDIT_MODE.exit107_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i106)
  %cmp46 = icmp eq i32 %retval.0.i106, 2
  br i1 %cmp46, label %AUDIT_MODE.exit107.if.then51_crit_edge, label %lor.lhs.false47

AUDIT_MODE.exit107.if.then51_crit_edge:           ; preds = %AUDIT_MODE.exit107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then51

lor.lhs.false47:                                  ; preds = %AUDIT_MODE.exit107
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type.addr.0)
  %cmp48 = icmp eq i32 %type.addr.0, 2
  br i1 %cmp48, label %land.lhs.true, label %lor.lhs.false47.if.end53_crit_edge

lor.lhs.false47.if.end53_crit_edge:               ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

land.lhs.true:                                    ; preds = %lor.lhs.false47
  br i1 %cmp.not.i103, label %if.end.i110, label %land.lhs.true.AUDIT_MODE.exit112_crit_edge

land.lhs.true.AUDIT_MODE.exit112_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %AUDIT_MODE.exit112

if.end.i110:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %audit.i109 = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 7
  %14 = ptrtoint ptr %audit.i109 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %audit.i109, align 4
  br label %AUDIT_MODE.exit112

AUDIT_MODE.exit112:                               ; preds = %if.end.i110, %land.lhs.true.AUDIT_MODE.exit112_crit_edge
  %retval.0.i111 = phi i32 [ %15, %if.end.i110 ], [ %11, %land.lhs.true.AUDIT_MODE.exit112_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i111)
  %cmp50 = icmp eq i32 %retval.0.i111, 2
  br i1 %cmp50, label %AUDIT_MODE.exit112.if.then51_crit_edge, label %AUDIT_MODE.exit112.if.end53_crit_edge

AUDIT_MODE.exit112.if.end53_crit_edge:            ; preds = %AUDIT_MODE.exit112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

AUDIT_MODE.exit112.if.then51_crit_edge:           ; preds = %AUDIT_MODE.exit112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then51

if.then51:                                        ; preds = %AUDIT_MODE.exit112.if.then51_crit_edge, %AUDIT_MODE.exit107.if.then51_crit_edge
  %16 = getelementptr inbounds %struct.common_audit_data, ptr %sa, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  br label %return

if.end53:                                         ; preds = %AUDIT_MODE.exit112.if.end53_crit_edge, %lor.lhs.false47.if.end53_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_g_profile_mode to i32))
  %21 = load i32, ptr @aa_g_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp54 = icmp eq i32 %21, 2
  br i1 %cmp54, label %if.end53.land.lhs.true58_crit_edge, label %lor.lhs.false55

if.end53.land.lhs.true58_crit_edge:               ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true58

lor.lhs.false55:                                  ; preds = %if.end53
  %mode56 = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 8
  %22 = ptrtoint ptr %mode56 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mode56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp57 = icmp eq i32 %23, 2
  br i1 %cmp57, label %lor.lhs.false55.land.lhs.true58_crit_edge, label %lor.lhs.false55.if.end61_crit_edge

lor.lhs.false55.if.end61_crit_edge:               ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

lor.lhs.false55.land.lhs.true58_crit_edge:        ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true58

land.lhs.true58:                                  ; preds = %lor.lhs.false55.land.lhs.true58_crit_edge, %if.end53.land.lhs.true58_crit_edge
  %spec.store.select = select i1 %cmp48, i32 6, i32 %type.addr.0
  br label %if.end61

if.end61:                                         ; preds = %land.lhs.true58, %lor.lhs.false55.if.end61_crit_edge
  %type.addr.1 = phi i32 [ %spec.store.select, %land.lhs.true58 ], [ %type.addr.0, %lor.lhs.false55.if.end61_crit_edge ]
  %label = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 25
  %24 = getelementptr inbounds %struct.common_audit_data, ptr %sa, i32 0, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %label62 = getelementptr inbounds %struct.apparmor_audit_data, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %label62 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %label, ptr %label62, align 4
  %28 = load ptr, ptr %24, align 4
  %type1.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %type1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %type.addr.1, ptr %type1.i, align 4
  tail call void @common_lsm_audit(ptr noundef %sa, ptr noundef nonnull @audit_pre, ptr noundef %cb) #6
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %24, align 4
  %type63 = getelementptr inbounds %struct.apparmor_audit_data, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %type63 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %type63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %33)
  %cmp64 = icmp eq i32 %33, 6
  br i1 %cmp64, label %if.then65, label %if.end61.if.end74_crit_edge

if.end61.if.end74_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

if.then65:                                        ; preds = %if.end61
  %34 = ptrtoint ptr %sa to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sa, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %35)
  %cmp67 = icmp eq i8 %35, 5
  br i1 %cmp67, label %land.lhs.true69, label %if.then65.cond.false_crit_edge

if.then65.cond.false_crit_edge:                   ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true69:                                  ; preds = %if.then65
  %u = getelementptr inbounds %struct.common_audit_data, ptr %sa, i32 0, i32 1
  %36 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %u, align 4
  %tobool70.not = icmp eq ptr %37, null
  br i1 %tobool70.not, label %land.lhs.true69.cond.false_crit_edge, label %land.lhs.true69.cond.end_crit_edge

land.lhs.true69.cond.end_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

land.lhs.true69.cond.false_crit_edge:             ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

cond.false:                                       ; preds = %land.lhs.true69.cond.false_crit_edge, %if.then65.cond.false_crit_edge
  %38 = tail call i32 @llvm.read_register.i32(metadata !50) #6
  %and.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.lhs.true69.cond.end_crit_edge
  %cond = phi ptr [ %41, %cond.false ], [ %37, %land.lhs.true69.cond.end_crit_edge ]
  %call73 = tail call i32 @send_sig_info(i32 noundef 9, ptr noundef null, ptr noundef %cond) #6
  br label %if.end74

if.end74:                                         ; preds = %cond.end, %if.end61.if.end74_crit_edge
  %42 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %24, align 4
  %type75 = getelementptr inbounds %struct.apparmor_audit_data, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %type75 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %type75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp76 = icmp eq i32 %45, 1
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %43, align 4
  br i1 %cmp76, label %if.then78, label %if.end74.return_crit_edge

if.end74.return_crit_edge:                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then78:                                        ; preds = %if.end74
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i32 %47, label %if.end.i113 [
    i32 -1, label %if.then78.return_crit_edge
    i32 -13, label %if.then78.return_crit_edge115
  ]

if.then78.return_crit_edge115:                    ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then78.return_crit_edge:                       ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.i113:                                      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

return:                                           ; preds = %if.end.i113, %if.then78.return_crit_edge, %if.then78.return_crit_edge115, %if.end74.return_crit_edge, %if.then51, %AUDIT_MODE.exit.return_crit_edge
  %retval.0 = phi i32 [ %20, %if.then51 ], [ 0, %AUDIT_MODE.exit.return_crit_edge ], [ %47, %if.end.i113 ], [ 0, %if.then78.return_crit_edge ], [ 0, %if.then78.return_crit_edge115 ], [ %47, %if.end74.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig_info(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aa_audit_rule_free(ptr noundef %vrule) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vrule, null
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %vrule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vrule, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %tobool.not.i = icmp eq ptr %1, null
  %or.cond = or i1 %cmp.i, %tobool.not.i
  br i1 %or.cond, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #6
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #6, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !62

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef 3) #6
  br label %if.end

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @aa_label_kref(ptr noundef nonnull %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %if.then.if.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %vrule) #6
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_audit_rule_init(i32 noundef %field, i32 noundef %op, ptr noundef %rulestr, ptr nocapture noundef writeonly %vrule) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %field)
  %cond = icmp eq i32 %field, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %op)
  %switch = icmp ult i32 %op, 2
  %or.cond = and i1 %cond, %switch
  br i1 %or.cond, label %sw.epilog, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end3

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %sw.epilog
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @root_ns to i32))
  %1 = load ptr, ptr @root_ns, align 4
  %unconfined = getelementptr inbounds %struct.aa_ns, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %unconfined to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unconfined, align 4
  %label = getelementptr inbounds %struct.aa_profile, ptr %3, i32 0, i32 25
  %call4 = tail call ptr @aa_label_parse(ptr noundef %label, ptr noundef %rulestr, i32 noundef 3264, i1 noundef zeroext true, i1 noundef zeroext false) #6
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %call7.i.i, align 8
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %aa_audit_rule_free.exit, label %if.end11

aa_audit_rule_free.exit:                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call4 to i32
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end11:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %vrule to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %vrule, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %aa_audit_rule_free.exit, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %aa_audit_rule_free.exit ], [ 0, %if.end11 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aa_label_parse(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_audit_rule_known(ptr nocapture noundef readonly %rule) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %field_count = getelementptr inbounds %struct.audit_krule, ptr %rule, i32 0, i32 6
  %0 = ptrtoint ptr %field_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %field_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6.not = icmp eq i32 %1, 0
  br i1 %cmp6.not, label %entry.cleanup1_crit_edge, label %for.body.lr.ph

entry.cleanup1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup1

for.body.lr.ph:                                   ; preds = %entry
  %fields = getelementptr inbounds %struct.audit_krule, ptr %rule, i32 0, i32 8
  %2 = ptrtoint ptr %fields to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fields, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.cond.cleanup1_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.cleanup1_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup1

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.audit_field, ptr %3, i32 %i.07
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %5)
  %cond = icmp eq i32 %5, 14
  br i1 %cond, label %for.body.cleanup1_crit_edge, label %for.cond

for.body.cleanup1_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup1

cleanup1:                                         ; preds = %for.body.cleanup1_crit_edge, %for.cond.cleanup1_crit_edge, %entry.cleanup1_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup1_crit_edge ], [ 0, %for.cond.cleanup1_crit_edge ], [ 1, %for.body.cleanup1_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_audit_rule_match(i32 noundef %sid, i32 noundef %field, i32 noundef %op, ptr nocapture noundef readonly %vrule) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @aa_secid_to_label(i32 noundef %sid) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %vrule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vrule, align 4
  %call2 = tail call zeroext i1 @aa_label_is_subset(ptr noundef nonnull %call, ptr noundef %1) #6
  %2 = xor i1 %call2, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %field)
  %cond = icmp eq i32 %field, 14
  br i1 %cond, label %sw.bb, label %if.end.sw.epilog8_crit_edge

if.end.sw.epilog8_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog8

sw.bb:                                            ; preds = %if.end
  %spec.select = zext i1 %call2 to i32
  %3 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %op, label %sw.bb.sw.epilog8_crit_edge [
    i32 0, label %sw.bb.cleanup_crit_edge
    i32 1, label %sw.bb6
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.sw.epilog8_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog8

sw.bb6:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %lnot.ext = zext i1 %2 to i32
  br label %cleanup

sw.epilog8:                                       ; preds = %sw.bb.sw.epilog8_crit_edge, %if.end.sw.epilog8_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog8, %sw.bb6, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog8 ], [ %lnot.ext, %sw.bb6 ], [ -2, %entry.cleanup_crit_edge ], [ %spec.select, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aa_secid_to_label(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @aa_label_is_subset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_untrustedstring(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_label_xaudit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_label_kref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind readonly }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48}
!llvm.named.register.sp = !{!50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/apparmor/audit.c", i32 21, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/apparmor/audit.c", i32 22, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/apparmor/audit.c", i32 23, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/apparmor/audit.c", i32 24, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../security/apparmor/audit.c", i32 25, i32 2}
!10 = !{ptr @audit_mode_names, !11, !"audit_mode_names", i1 false, i1 false}
!11 = !{!"../security/apparmor/audit.c", i32 20, i32 19}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/apparmor/audit.c", i32 126, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__func__.aa_audit, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../security/apparmor/audit.c", i32 60, i32 24}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../security/apparmor/audit.c", i32 65, i32 24}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../security/apparmor/audit.c", i32 69, i32 24}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../security/apparmor/audit.c", i32 71, i32 25}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../security/apparmor/audit.c", i32 81, i32 26}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../security/apparmor/audit.c", i32 85, i32 25}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../security/apparmor/audit.c", i32 88, i32 25}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../security/apparmor/audit.c", i32 95, i32 24}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../security/apparmor/audit.c", i32 29, i32 2}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../security/apparmor/audit.c", i32 30, i32 2}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../security/apparmor/audit.c", i32 31, i32 2}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../security/apparmor/audit.c", i32 32, i32 2}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../security/apparmor/audit.c", i32 33, i32 2}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../security/apparmor/audit.c", i32 34, i32 2}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../security/apparmor/audit.c", i32 35, i32 2}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../security/apparmor/audit.c", i32 36, i32 2}
!48 = !{ptr @aa_audit_type, !49, !"aa_audit_type", i1 false, i1 false}
!49 = !{!"../security/apparmor/audit.c", i32 28, i32 26}
!50 = !{!"sp"}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i8 0, i8 2}
!61 = !{!"branch_weights", i32 1, i32 2000}
!62 = !{!"branch_weights", i32 2000, i32 1}
!63 = !{i64 2148532801}
!64 = !{i64 2148447265, i64 2148447297, i64 2148447326, i64 2148447360, i64 2148447391, i64 2148447414}
!65 = !{i64 2149578771}
