; ModuleID = '/llk/IR_all_yes/security/apparmor/policy_ns.c_pt.bc'
source_filename = "../security/apparmor/policy_ns.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.aa_ns = type { %struct.aa_policy, ptr, %struct.mutex, %struct.aa_ns_acct, ptr, %struct.list_head, %struct.atomic_t, i32, i32, i32, %struct.wait_queue_head, %struct.aa_labelset, %struct.list_head, [13 x ptr] }
%struct.aa_policy = type { ptr, ptr, %struct.list_head, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.aa_ns_acct = type { i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.aa_labelset = type { %struct.rwlock_t, %struct.rb_root }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.aa_profile = type { %struct.aa_policy, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, %struct.aa_policydb, %struct.aa_file_rules, %struct.aa_caps, i32, ptr, %struct.aa_rlimit, i32, ptr, ptr, ptr, ptr, [9 x ptr], ptr, %struct.aa_label }
%struct.aa_policydb = type { ptr, [17 x i32] }
%struct.aa_file_rules = type { i32, ptr, %struct.aa_domain }
%struct.aa_domain = type { i32, ptr }
%struct.aa_caps = type { %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.aa_rlimit = type { i32, [16 x %struct.rlimit] }
%struct.rlimit = type { i32, i32 }
%struct.aa_label = type { %struct.kref, %struct.rb_node, %struct.callback_head, ptr, ptr, i32, i32, i32, [0 x ptr] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rb_node = type { i32, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"---\00", [28 x i8] zeroinitializer }, align 32
@aa_hidden_ns_name = dso_local global { ptr, [28 x i8] } { ptr @.str, [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"//\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"security/apparmor/policy_ns.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"AppArmor WARN %s: ((!mutex_is_locked(&parent->lock))): \00", [40 x i8] zeroinitializer }, align 32
@__func__.__aa_find_or_create_ns = private unnamed_addr constant [23 x i8] c"__aa_find_or_create_ns\00", align 1
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"root\00", [27 x i8] zeroinitializer }, align 32
@root_ns = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__policy_strn_find.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"security/apparmor/include/lib.h\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"AppArmor WARN %s: ((!parent)): \00", [32 x i8] zeroinitializer }, align 32
@__func__.__aa_create_ns = private unnamed_addr constant [15 x i8] c"__aa_create_ns\00", align 1
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AppArmor WARN %s: ((!name)): \00", [34 x i8] zeroinitializer }, align 32
@__aa_create_ns._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__aa_create_ns._entry = internal constant %struct.pi_entry { ptr @.str.14, ptr @__func__.__aa_create_ns, ptr @.str.3, i32 260, ptr null, ptr null }, align 1
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013AppArmor: Failed to create interface for ns %s\0A\00", [46 x i8] zeroinitializer }, align 32
@__aa_create_ns._entry_ptr = internal global ptr @__aa_create_ns._entry, section ".printk_index", align 4
@aa_g_debug = external dso_local local_unnamed_addr global i8, align 1
@alloc_ns._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@alloc_ns.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 0, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apparmor\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"alloc_ns\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AppArmor: %s(%p)\0A\00", [46 x i8] zeroinitializer }, align 32
@alloc_ns.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ns->lock\00", [22 x i8] zeroinitializer }, align 32
@alloc_ns.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ns->wait\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unconfined\00", [21 x i8] zeroinitializer }, align 32
@nulldfa = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 27, i32 33 }
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"aa_hidden_ns_name\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 27, i32 13 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 65, i32 10 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 205, i32 30 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 287, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 392, i32 27 }
@___asan_gen_.43 = private unnamed_addr constant [8 x i8] c"root_ns\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 26, i32 15 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 695, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [35 x i8] c"../security/apparmor/include/lib.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 196, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 723, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 248, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 249, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 259, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 92, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 100, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 101, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [33 x i8] c"../security/apparmor/policy_ns.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 104, i32 36 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__aa_create_ns._entry, ptr @__aa_create_ns._entry_ptr, ptr @.str, ptr @aa_hidden_ns_name, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @root_ns, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @alloc_ns._rs, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @alloc_ns.__key, ptr @.str.18, ptr @alloc_ns.__key.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_hidden_ns_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @root_ns to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_ns._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_ns.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_ns.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @aa_ns_visible(ptr noundef readnone %curr, ptr noundef readonly %view, i1 noundef zeroext %subns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %curr, %view
  %subns.not = xor i1 %subns, true
  %brmerge = or i1 %cmp, %subns.not
  br i1 %brmerge, label %entry.return_crit_edge, label %entry.for.cond_crit_edge

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %view.addr.0 = phi ptr [ %1, %for.body.for.cond_crit_edge ], [ %view, %entry.for.cond_crit_edge ]
  %tobool3.not = icmp eq ptr %view.addr.0, null
  br i1 %tobool3.not, label %for.cond.return.loopexit_crit_edge, label %for.body

for.cond.return.loopexit_crit_edge:               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %return.loopexit

for.body:                                         ; preds = %for.cond
  %parent = getelementptr inbounds %struct.aa_ns, ptr %view.addr.0, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %cmp4 = icmp eq ptr %1, %curr
  br i1 %cmp4, label %for.body.return.loopexit_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.body.return.loopexit_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %return.loopexit

return.loopexit:                                  ; preds = %for.body.return.loopexit_crit_edge, %for.cond.return.loopexit_crit_edge
  %2 = xor i1 %tobool3.not, true
  br label %return

return:                                           ; preds = %return.loopexit, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp, %entry.return_crit_edge ], [ %2, %return.loopexit ]
  ret i1 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aa_ns_name(ptr noundef readonly %curr, ptr noundef readonly %view, i1 noundef zeroext %subns) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %curr, %view
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  br i1 %subns, label %if.end.for.cond.i_crit_edge, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end.for.cond.i_crit_edge:                      ; preds = %if.end
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.for.cond.i_crit_edge
  %view.addr.0.i = phi ptr [ %1, %for.body.i.for.cond.i_crit_edge ], [ %view, %if.end.for.cond.i_crit_edge ]
  %tobool3.not.i = icmp eq ptr %view.addr.0.i, null
  br i1 %tobool3.not.i, label %for.cond.i.if.end6_crit_edge, label %for.body.i

for.cond.i.if.end6_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

for.body.i:                                       ; preds = %for.cond.i
  %parent.i = getelementptr inbounds %struct.aa_ns, ptr %view.addr.0.i, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %cmp4.i = icmp eq ptr %1, %curr
  br i1 %cmp4.i, label %if.then1, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

if.then1:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %hname = getelementptr inbounds %struct.aa_policy, ptr %view, i32 0, i32 1
  %2 = ptrtoint ptr %hname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hname, align 4
  %hname3 = getelementptr inbounds %struct.aa_policy, ptr %curr, i32 0, i32 1
  %4 = ptrtoint ptr %hname3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hname3, align 4
  %call4 = tail call i32 @strlen(ptr noundef %5) #14
  %add.ptr = getelementptr i8, ptr %3, i32 %call4
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 2
  br label %return

if.end6:                                          ; preds = %for.cond.i.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %6 = load ptr, ptr @aa_hidden_ns_name, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then1, %entry.return_crit_edge
  %retval.0 = phi ptr [ %add.ptr5, %if.then1 ], [ %6, %if.end6 ], [ @.str.1, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aa_free_ns(ptr noundef %ns) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ns, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  tail call void @aa_policy_destroy(ptr noundef nonnull %ns) #11
  %labels = getelementptr inbounds %struct.aa_ns, ptr %ns, i32 0, i32 11
  tail call void @aa_labelset_destroy(ptr noundef %labels) #11
  %parent = getelementptr inbounds %struct.aa_ns, ptr %ns, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.aa_put_ns.exit_crit_edge, label %if.then.i

if.end.aa_put_ns.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %aa_put_ns.exit

if.then.i:                                        ; preds = %if.end
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unconfined.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.then.i.aa_put_ns.exit_crit_edge, label %if.then.i.i

if.then.i.aa_put_ns.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %aa_put_ns.exit

if.then.i.i:                                      ; preds = %if.then.i
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %3, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !62
  tail call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #11, !srcloc !63
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !64

if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %aa_put_ns.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef 3) #11
  br label %aa_put_ns.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !65
  tail call void @aa_label_kref(ptr noundef %label.i.i) #11
  br label %aa_put_ns.exit

aa_put_ns.exit:                                   ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge, %if.then.i.aa_put_ns.exit_crit_edge, %if.end.aa_put_ns.exit_crit_edge
  %unconfined = getelementptr inbounds %struct.aa_ns, ptr %ns, i32 0, i32 4
  %5 = ptrtoint ptr %unconfined to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %unconfined, align 4
  %ns1 = getelementptr inbounds %struct.aa_profile, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %ns1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %ns1, align 4
  %8 = load ptr, ptr %unconfined, align 4
  tail call void @aa_free_profile(ptr noundef %8) #11
  tail call void @kfree_sensitive(ptr noundef nonnull %ns) #11
  br label %return

return:                                           ; preds = %aa_put_ns.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_policy_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_labelset_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_free_profile(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aa_findn_ns(ptr noundef %root, ptr nocapture noundef readonly %name, i32 noundef %n) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !52) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !66
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %sub_ns = getelementptr inbounds %struct.aa_ns, ptr %root, i32 0, i32 5
  %call.i.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.do.end.i.i_crit_edge

rcu_read_lock.exit.do.end.i.i_crit_edge:          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b25.i.i = load i1, ptr @__policy_strn_find.__warned, align 1
  br i1 %.b25.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__policy_strn_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 196, ptr noundef nonnull @.str.9) #11
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %rcu_read_lock.exit.do.end.i.i_crit_edge
  %4 = ptrtoint ptr %sub_ns to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn26.i.i = load volatile ptr, ptr %sub_ns, align 4
  %cmp.not28.i.i = icmp eq ptr %.pn26.i.i, %sub_ns
  br i1 %cmp.not28.i.i, label %do.end.i.i.aa_get_ns.exit_crit_edge, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %for.body.i.i

do.end.i.i.aa_get_ns.exit_crit_edge:              ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %aa_get_ns.exit

for.body.i.i:                                     ; preds = %for.cond.backedge.i.i.for.body.i.i_crit_edge, %do.end.i.i.for.body.i.i_crit_edge
  %.pn29.i.i = phi ptr [ %.pn.i.i, %for.cond.backedge.i.i.for.body.i.i_crit_edge ], [ %.pn26.i.i, %do.end.i.i.for.body.i.i_crit_edge ]
  %policy.030.i.i = getelementptr i8, ptr %.pn29.i.i, i32 -8
  %5 = ptrtoint ptr %policy.030.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %policy.030.i.i, align 4
  %call.i.i.i = tail call i32 @strncmp(ptr noundef %6, ptr noundef %name, i32 noundef %n) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %for.body.i.i.for.cond.backedge.i.i_crit_edge

for.body.i.i.for.cond.backedge.i.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i.i

land.rhs.i.i.i:                                   ; preds = %for.body.i.i
  %arrayidx.i.i.i = getelementptr i8, ptr %6, i32 %n
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not.i.i.i = icmp eq i8 %8, 0
  br i1 %tobool1.not.i.i.i, label %__aa_findn_ns.exit, label %land.rhs.i.i.i.for.cond.backedge.i.i_crit_edge

land.rhs.i.i.i.for.cond.backedge.i.i_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i.i

for.cond.backedge.i.i:                            ; preds = %land.rhs.i.i.i.for.cond.backedge.i.i_crit_edge, %for.body.i.i.for.cond.backedge.i.i_crit_edge
  %9 = ptrtoint ptr %.pn29.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i.i = load volatile ptr, ptr %.pn29.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %sub_ns
  br i1 %cmp.not.i.i, label %for.cond.backedge.i.i.aa_get_ns.exit_crit_edge, label %for.cond.backedge.i.i.for.body.i.i_crit_edge

for.cond.backedge.i.i.for.body.i.i_crit_edge:     ; preds = %for.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.cond.backedge.i.i.aa_get_ns.exit_crit_edge:   ; preds = %for.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %aa_get_ns.exit

__aa_findn_ns.exit:                               ; preds = %land.rhs.i.i.i
  %policy.030.i.i.le = getelementptr i8, ptr %.pn29.i.i, i32 -8
  %tobool.not.i2 = icmp eq ptr %policy.030.i.i.le, null
  br i1 %tobool.not.i2, label %__aa_findn_ns.exit.aa_get_ns.exit_crit_edge, label %if.then.i4

__aa_findn_ns.exit.aa_get_ns.exit_crit_edge:      ; preds = %__aa_findn_ns.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %aa_get_ns.exit

if.then.i4:                                       ; preds = %__aa_findn_ns.exit
  %unconfined.i = getelementptr i8, ptr %.pn29.i.i, i32 128
  %10 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %unconfined.i, align 4
  %tobool.not.i.i3 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i3, label %if.then.i4.aa_get_ns.exit_crit_edge, label %if.then.i.i5

if.then.i4.aa_get_ns.exit_crit_edge:              ; preds = %if.then.i4
  call void @__sanitizer_cov_trace_pc() #13
  br label %aa_get_ns.exit

if.then.i.i5:                                     ; preds = %if.then.i4
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %11, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #11
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #11, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i5.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !68

if.then.i.i5.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i5
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.aa_get_ns.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !64

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.aa_get_ns.exit_crit_edge:     ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %aa_get_ns.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i5.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i5.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef %.sink.i.i.i.i.i.i) #11
  br label %aa_get_ns.exit

aa_get_ns.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.aa_get_ns.exit_crit_edge, %if.then.i4.aa_get_ns.exit_crit_edge, %__aa_findn_ns.exit.aa_get_ns.exit_crit_edge, %for.cond.backedge.i.i.aa_get_ns.exit_crit_edge, %do.end.i.i.aa_get_ns.exit_crit_edge
  %retval.0.i.i17 = phi ptr [ null, %__aa_findn_ns.exit.aa_get_ns.exit_crit_edge ], [ %policy.030.i.i.le, %if.then.i4.aa_get_ns.exit_crit_edge ], [ %policy.030.i.i.le, %if.else.i.i.i.i.i.i.aa_get_ns.exit_crit_edge ], [ %policy.030.i.i.le, %if.end15.sink.split.i.i.i.i.i.i ], [ null, %do.end.i.i.aa_get_ns.exit_crit_edge ], [ null, %for.cond.backedge.i.i.aa_get_ns.exit_crit_edge ]
  %call.i6 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i6, label %aa_get_ns.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i9

aa_get_ns.exit.rcu_read_unlock.exit_crit_edge:    ; preds = %aa_get_ns.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i9:                                 ; preds = %aa_get_ns.exit
  %call1.i7 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7)
  %tobool.not.i8 = icmp eq i32 %call1.i7, 0
  br i1 %tobool.not.i8, label %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i11

land.lhs.true.i9.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i11:                               ; preds = %land.lhs.true.i9
  %.b4.i10 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i10, label %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, label %if.then.i12

land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i12:                                      ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.10) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i12, %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, %aa_get_ns.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !69
  %14 = tail call i32 @llvm.read_register.i32(metadata !52) #11
  %and.i.i.i.i.i13 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i13 to ptr
  %preempt_count.i.i.i.i14 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i14, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i14, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %retval.0.i.i17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aa_find_ns(ptr noundef %root, ptr nocapture noundef readonly %name) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %name) #14
  %call1 = tail call ptr @aa_findn_ns(ptr noundef %root, ptr noundef %name, i32 noundef %call)
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__aa_lookupn_ns(ptr noundef %view, ptr noundef %hname, i32 noundef %n) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @strnstr(ptr noundef %hname, ptr noundef nonnull @.str.2, i32 noundef %n) #11
  %tobool.not65 = icmp eq ptr %call, null
  br i1 %tobool.not65, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %split.069 = phi ptr [ %call7, %if.end.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %ns.068 = phi ptr [ %policy.030.i.i.le, %if.end.for.body_crit_edge ], [ %view, %entry.for.body_crit_edge ]
  %n.addr.067 = phi i32 [ %sub, %if.end.for.body_crit_edge ], [ %n, %entry.for.body_crit_edge ]
  %hname.addr.066 = phi ptr [ %add.ptr, %if.end.for.body_crit_edge ], [ %hname, %entry.for.body_crit_edge ]
  %sub_ns = getelementptr inbounds %struct.aa_ns, ptr %ns.068, i32 0, i32 5
  %sub.ptr.lhs.cast = ptrtoint ptr %split.069 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %hname.addr.066 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call.i.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %for.body.do.end.i.i_crit_edge

for.body.do.end.i.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %for.body
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b25.i.i = load i1, ptr @__policy_strn_find.__warned, align 1
  br i1 %.b25.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__policy_strn_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 196, ptr noundef nonnull @.str.9) #11
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %for.body.do.end.i.i_crit_edge
  %0 = ptrtoint ptr %sub_ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn26.i.i = load volatile ptr, ptr %sub_ns, align 4
  %cmp.not28.i.i = icmp eq ptr %.pn26.i.i, %sub_ns
  br i1 %cmp.not28.i.i, label %do.end.i.i.cleanup_crit_edge, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %for.body.i.i

do.end.i.i.cleanup_crit_edge:                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i.i:                                     ; preds = %for.cond.backedge.i.i.for.body.i.i_crit_edge, %do.end.i.i.for.body.i.i_crit_edge
  %.pn29.i.i = phi ptr [ %.pn.i.i, %for.cond.backedge.i.i.for.body.i.i_crit_edge ], [ %.pn26.i.i, %do.end.i.i.for.body.i.i_crit_edge ]
  %policy.030.i.i = getelementptr i8, ptr %.pn29.i.i, i32 -8
  %1 = ptrtoint ptr %policy.030.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %policy.030.i.i, align 4
  %call.i.i.i = tail call i32 @strncmp(ptr noundef %2, ptr noundef %hname.addr.066, i32 noundef %sub.ptr.sub) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %for.body.i.i.for.cond.backedge.i.i_crit_edge

for.body.i.i.for.cond.backedge.i.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i.i

land.rhs.i.i.i:                                   ; preds = %for.body.i.i
  %arrayidx.i.i.i = getelementptr i8, ptr %2, i32 %sub.ptr.sub
  %3 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not.i.i.i = icmp eq i8 %4, 0
  br i1 %tobool1.not.i.i.i, label %__aa_findn_ns.exit, label %land.rhs.i.i.i.for.cond.backedge.i.i_crit_edge

land.rhs.i.i.i.for.cond.backedge.i.i_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i.i

for.cond.backedge.i.i:                            ; preds = %land.rhs.i.i.i.for.cond.backedge.i.i_crit_edge, %for.body.i.i.for.cond.backedge.i.i_crit_edge
  %5 = ptrtoint ptr %.pn29.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i.i = load volatile ptr, ptr %.pn29.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %sub_ns
  br i1 %cmp.not.i.i, label %for.cond.backedge.i.i.cleanup_crit_edge, label %for.cond.backedge.i.i.for.body.i.i_crit_edge

for.cond.backedge.i.i.for.body.i.i_crit_edge:     ; preds = %for.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.cond.backedge.i.i.cleanup_crit_edge:          ; preds = %for.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

__aa_findn_ns.exit:                               ; preds = %land.rhs.i.i.i
  %policy.030.i.i.le = getelementptr i8, ptr %.pn29.i.i, i32 -8
  %tobool2.not = icmp eq ptr %policy.030.i.i.le, null
  br i1 %tobool2.not, label %__aa_findn_ns.exit.cleanup_crit_edge, label %if.end

__aa_findn_ns.exit.cleanup_crit_edge:             ; preds = %__aa_findn_ns.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %__aa_findn_ns.exit
  %add.ptr = getelementptr i8, ptr %split.069, i32 2
  %sub.ptr.lhs.cast3 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub5.neg = sub i32 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast3
  %sub = add i32 %sub.ptr.sub5.neg, %n.addr.067
  %call7 = tail call ptr @strnstr(ptr noundef %add.ptr, ptr noundef nonnull @.str.2, i32 noundef %sub) #11
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %hname.addr.0.lcssa = phi ptr [ %hname, %entry.for.end_crit_edge ], [ %add.ptr, %if.end.for.end_crit_edge ]
  %n.addr.0.lcssa = phi i32 [ %n, %entry.for.end_crit_edge ], [ %sub, %if.end.for.end_crit_edge ]
  %ns.0.lcssa = phi ptr [ %view, %entry.for.end_crit_edge ], [ %policy.030.i.i.le, %if.end.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.lcssa)
  %tobool8.not = icmp eq i32 %n.addr.0.lcssa, 0
  br i1 %tobool8.not, label %for.end.cleanup_crit_edge, label %if.then9

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then9:                                         ; preds = %for.end
  %sub_ns10 = getelementptr inbounds %struct.aa_ns, ptr %ns.0.lcssa, i32 0, i32 5
  %call.i.i28 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i28)
  %tobool.not.i.i29 = icmp eq i32 %call.i.i28, 0
  br i1 %tobool.not.i.i29, label %land.lhs.true.i.i32, label %if.then9.do.end.i.i38_crit_edge

if.then9.do.end.i.i38_crit_edge:                  ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i38

land.lhs.true.i.i32:                              ; preds = %if.then9
  %call1.i.i30 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i30)
  %tobool2.not.i.i31 = icmp eq i32 %call1.i.i30, 0
  br i1 %tobool2.not.i.i31, label %land.lhs.true.i.i32.do.end.i.i38_crit_edge, label %land.lhs.true3.i.i34

land.lhs.true.i.i32.do.end.i.i38_crit_edge:       ; preds = %land.lhs.true.i.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i38

land.lhs.true3.i.i34:                             ; preds = %land.lhs.true.i.i32
  %.b25.i.i33 = load i1, ptr @__policy_strn_find.__warned, align 1
  br i1 %.b25.i.i33, label %land.lhs.true3.i.i34.do.end.i.i38_crit_edge, label %if.then.i.i35

land.lhs.true3.i.i34.do.end.i.i38_crit_edge:      ; preds = %land.lhs.true3.i.i34
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i38

if.then.i.i35:                                    ; preds = %land.lhs.true3.i.i34
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__policy_strn_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 196, ptr noundef nonnull @.str.9) #11
  br label %do.end.i.i38

do.end.i.i38:                                     ; preds = %if.then.i.i35, %land.lhs.true3.i.i34.do.end.i.i38_crit_edge, %land.lhs.true.i.i32.do.end.i.i38_crit_edge, %if.then9.do.end.i.i38_crit_edge
  %6 = ptrtoint ptr %sub_ns10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn26.i.i36 = load volatile ptr, ptr %sub_ns10, align 4
  %cmp.not28.i.i37 = icmp eq ptr %.pn26.i.i36, %sub_ns10
  br i1 %cmp.not28.i.i37, label %do.end.i.i38.cleanup_crit_edge, label %do.end.i.i38.for.body.i.i43_crit_edge

do.end.i.i38.for.body.i.i43_crit_edge:            ; preds = %do.end.i.i38
  br label %for.body.i.i43

do.end.i.i38.cleanup_crit_edge:                   ; preds = %do.end.i.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i.i43:                                   ; preds = %for.cond.backedge.i.i49.for.body.i.i43_crit_edge, %do.end.i.i38.for.body.i.i43_crit_edge
  %.pn29.i.i39 = phi ptr [ %.pn.i.i47, %for.cond.backedge.i.i49.for.body.i.i43_crit_edge ], [ %.pn26.i.i36, %do.end.i.i38.for.body.i.i43_crit_edge ]
  %policy.030.i.i40 = getelementptr i8, ptr %.pn29.i.i39, i32 -8
  %7 = ptrtoint ptr %policy.030.i.i40 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %policy.030.i.i40, align 4
  %call.i.i.i41 = tail call i32 @strncmp(ptr noundef %8, ptr noundef %hname.addr.0.lcssa, i32 noundef %n.addr.0.lcssa) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i41)
  %tobool.not.i.i.i42 = icmp eq i32 %call.i.i.i41, 0
  br i1 %tobool.not.i.i.i42, label %land.rhs.i.i.i46, label %for.body.i.i43.for.cond.backedge.i.i49_crit_edge

for.body.i.i43.for.cond.backedge.i.i49_crit_edge: ; preds = %for.body.i.i43
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i.i49

land.rhs.i.i.i46:                                 ; preds = %for.body.i.i43
  %arrayidx.i.i.i44 = getelementptr i8, ptr %8, i32 %n.addr.0.lcssa
  %9 = ptrtoint ptr %arrayidx.i.i.i44 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.i.i44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool1.not.i.i.i45 = icmp eq i8 %10, 0
  br i1 %tobool1.not.i.i.i45, label %cleanup.loopexit.split.loop.exit, label %land.rhs.i.i.i46.for.cond.backedge.i.i49_crit_edge

land.rhs.i.i.i46.for.cond.backedge.i.i49_crit_edge: ; preds = %land.rhs.i.i.i46
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i.i49

for.cond.backedge.i.i49:                          ; preds = %land.rhs.i.i.i46.for.cond.backedge.i.i49_crit_edge, %for.body.i.i43.for.cond.backedge.i.i49_crit_edge
  %11 = ptrtoint ptr %.pn29.i.i39 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i.i47 = load volatile ptr, ptr %.pn29.i.i39, align 4
  %cmp.not.i.i48 = icmp eq ptr %.pn.i.i47, %sub_ns10
  br i1 %cmp.not.i.i48, label %for.cond.backedge.i.i49.cleanup_crit_edge, label %for.cond.backedge.i.i49.for.body.i.i43_crit_edge

for.cond.backedge.i.i49.for.body.i.i43_crit_edge: ; preds = %for.cond.backedge.i.i49
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i43

for.cond.backedge.i.i49.cleanup_crit_edge:        ; preds = %for.cond.backedge.i.i49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.loopexit.split.loop.exit:                 ; preds = %land.rhs.i.i.i46
  call void @__sanitizer_cov_trace_pc() #13
  %policy.030.i.i40.le = getelementptr i8, ptr %.pn29.i.i39, i32 -8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit, %for.cond.backedge.i.i49.cleanup_crit_edge, %do.end.i.i38.cleanup_crit_edge, %for.end.cleanup_crit_edge, %__aa_findn_ns.exit.cleanup_crit_edge, %for.cond.backedge.i.i.cleanup_crit_edge, %do.end.i.i.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %for.end.cleanup_crit_edge ], [ null, %do.end.i.i38.cleanup_crit_edge ], [ %policy.030.i.i40.le, %cleanup.loopexit.split.loop.exit ], [ null, %for.cond.backedge.i.i49.cleanup_crit_edge ], [ null, %for.cond.backedge.i.i.cleanup_crit_edge ], [ null, %__aa_findn_ns.exit.cleanup_crit_edge ], [ null, %do.end.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnstr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aa_lookupn_ns(ptr noundef %view, ptr noundef %name, i32 noundef %n) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !52) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !66
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call ptr @__aa_lookupn_ns(ptr noundef %view, ptr noundef %name, i32 noundef %n)
  %tobool.not.i2 = icmp eq ptr %call, null
  br i1 %tobool.not.i2, label %rcu_read_lock.exit.aa_get_ns.exit_crit_edge, label %if.then.i3

rcu_read_lock.exit.aa_get_ns.exit_crit_edge:      ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %aa_get_ns.exit

if.then.i3:                                       ; preds = %rcu_read_lock.exit
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unconfined.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then.i3.aa_get_ns.exit_crit_edge, label %if.then.i.i

if.then.i3.aa_get_ns.exit_crit_edge:              ; preds = %if.then.i3
  call void @__sanitizer_cov_trace_pc() #13
  br label %aa_get_ns.exit

if.then.i.i:                                      ; preds = %if.then.i3
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %5, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #11, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !68

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.aa_get_ns.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !64

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.aa_get_ns.exit_crit_edge:     ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %aa_get_ns.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef %.sink.i.i.i.i.i.i) #11
  br label %aa_get_ns.exit

aa_get_ns.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.aa_get_ns.exit_crit_edge, %if.then.i3.aa_get_ns.exit_crit_edge, %rcu_read_lock.exit.aa_get_ns.exit_crit_edge
  %call.i4 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i4, label %aa_get_ns.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i7

aa_get_ns.exit.rcu_read_unlock.exit_crit_edge:    ; preds = %aa_get_ns.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i7:                                 ; preds = %aa_get_ns.exit
  %call1.i5 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5)
  %tobool.not.i6 = icmp eq i32 %call1.i5, 0
  br i1 %tobool.not.i6, label %land.lhs.true.i7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i9

land.lhs.true.i7.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i9:                                ; preds = %land.lhs.true.i7
  %.b4.i8 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8, label %land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge, label %if.then.i10

land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i10:                                      ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.10) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i10, %land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i7.rcu_read_unlock.exit_crit_edge, %aa_get_ns.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !69
  %8 = tail call i32 @llvm.read_register.i32(metadata !52) #11
  %and.i.i.i.i.i11 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i11 to ptr
  %preempt_count.i.i.i.i12 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i12, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i12, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__aa_find_or_create_ns(ptr noundef %parent, ptr noundef %name, ptr noundef %dir) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.aa_ns, ptr %parent, i32 0, i32 2
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock) #11
  br i1 %call, label %entry.if.end_crit_edge, label %do.end, !prof !64

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 287, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.__aa_find_or_create_ns) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %sub_ns = getelementptr inbounds %struct.aa_ns, ptr %parent, i32 0, i32 5
  %call.i = tail call i32 @strlen(ptr noundef %name) #15
  %call.i.i.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %if.end.do.end.i.i.i_crit_edge

if.end.do.end.i.i.i_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.do.end.i.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.do.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b25.i.i.i = load i1, ptr @__policy_strn_find.__warned, align 1
  br i1 %.b25.i.i.i, label %land.lhs.true3.i.i.i.do.end.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.do.end.i.i.i_crit_edge:      ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__policy_strn_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 196, ptr noundef nonnull @.str.9) #11
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.do.end.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end.i.i.i_crit_edge, %if.end.do.end.i.i.i_crit_edge
  %0 = ptrtoint ptr %sub_ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn26.i.i.i = load volatile ptr, ptr %sub_ns, align 4
  %cmp.not28.i.i.i = icmp eq ptr %.pn26.i.i.i, %sub_ns
  br i1 %cmp.not28.i.i.i, label %do.end.i.i.i.if.then26_crit_edge, label %do.end.i.i.i.for.body.i.i.i_crit_edge

do.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %do.end.i.i.i
  br label %for.body.i.i.i

do.end.i.i.i.if.then26_crit_edge:                 ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

for.body.i.i.i:                                   ; preds = %for.cond.backedge.i.i.i.for.body.i.i.i_crit_edge, %do.end.i.i.i.for.body.i.i.i_crit_edge
  %.pn29.i.i.i = phi ptr [ %.pn.i.i.i, %for.cond.backedge.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn26.i.i.i, %do.end.i.i.i.for.body.i.i.i_crit_edge ]
  %policy.030.i.i.i = getelementptr i8, ptr %.pn29.i.i.i, i32 -8
  %1 = ptrtoint ptr %policy.030.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %policy.030.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @strncmp(ptr noundef %2, ptr noundef %name, i32 noundef %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.rhs.i.i.i.i, label %for.body.i.i.i.for.cond.backedge.i.i.i_crit_edge

for.body.i.i.i.for.cond.backedge.i.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %for.body.i.i.i
  %arrayidx.i.i.i.i = getelementptr i8, ptr %2, i32 %call.i
  %3 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not.i.i.i.i = icmp eq i8 %4, 0
  br i1 %tobool1.not.i.i.i.i, label %__aa_find_ns.exit, label %land.rhs.i.i.i.i.for.cond.backedge.i.i.i_crit_edge

land.rhs.i.i.i.i.for.cond.backedge.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i.i.i

for.cond.backedge.i.i.i:                          ; preds = %land.rhs.i.i.i.i.for.cond.backedge.i.i.i_crit_edge, %for.body.i.i.i.for.cond.backedge.i.i.i_crit_edge
  %5 = ptrtoint ptr %.pn29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i.i.i = load volatile ptr, ptr %.pn29.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %sub_ns
  br i1 %cmp.not.i.i.i, label %for.cond.backedge.i.i.i.if.then26_crit_edge, label %for.cond.backedge.i.i.i.for.body.i.i.i_crit_edge

for.cond.backedge.i.i.i.for.body.i.i.i_crit_edge: ; preds = %for.cond.backedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

for.cond.backedge.i.i.i.if.then26_crit_edge:      ; preds = %for.cond.backedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

__aa_find_ns.exit:                                ; preds = %land.rhs.i.i.i.i
  %policy.030.i.i.i.le = getelementptr i8, ptr %.pn29.i.i.i, i32 -8
  %tobool.not.i = icmp eq ptr %policy.030.i.i.i.le, null
  br i1 %tobool.not.i, label %__aa_find_ns.exit.if.then26_crit_edge, label %if.then.i

__aa_find_ns.exit.if.then26_crit_edge:            ; preds = %__aa_find_ns.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

if.then.i:                                        ; preds = %__aa_find_ns.exit
  %unconfined.i = getelementptr i8, ptr %.pn29.i.i.i, i32 128
  %6 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unconfined.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.then.i.if.end29_crit_edge, label %if.then.i.i

if.then.i.if.end29_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then.i.i:                                      ; preds = %if.then.i
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %7, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #11
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #11, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !68

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.end29_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !64

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end29_crit_edge:           ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef %.sink.i.i.i.i.i.i) #11
  br label %if.end29

if.then26:                                        ; preds = %__aa_find_ns.exit.if.then26_crit_edge, %for.cond.backedge.i.i.i.if.then26_crit_edge, %do.end.i.i.i.if.then26_crit_edge
  %call27 = tail call fastcc ptr @__aa_create_ns(ptr noundef %parent, ptr noundef %name, ptr noundef %dir)
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end29_crit_edge, %if.then.i.if.end29_crit_edge
  %ns.0 = phi ptr [ %call27, %if.then26 ], [ inttoptr (i32 -17 to ptr), %if.then.i.if.end29_crit_edge ], [ inttoptr (i32 -17 to ptr), %if.else.i.i.i.i.i.i.if.end29_crit_edge ], [ inttoptr (i32 -17 to ptr), %if.end15.sink.split.i.i.i.i.i.i ]
  ret ptr %ns.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__aa_create_ns(ptr noundef %parent, ptr noundef %name, ptr noundef %dir) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %parent, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !68

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 248, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.__aa_create_ns) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %name, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !68

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 249, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.__aa_create_ns) #11
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %lock = getelementptr inbounds %struct.aa_ns, ptr %parent, i32 0, i32 2
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock) #11
  br i1 %call, label %if.end50.if.end85_crit_edge, label %do.end79, !prof !64

if.end50.if.end85_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

do.end79:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 250, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.__aa_create_ns) #11
  br label %if.end85

if.end85:                                         ; preds = %do.end79, %if.end50.if.end85_crit_edge
  %hname = getelementptr inbounds %struct.aa_policy, ptr %parent, i32 0, i32 1
  %0 = ptrtoint ptr %hname to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hname, align 4
  %call95 = tail call fastcc ptr @alloc_ns(ptr noundef %1, ptr noundef %name)
  %tobool96.not = icmp eq ptr %call95, null
  br i1 %tobool96.not, label %if.end85.cleanup_crit_edge, label %if.end99

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end99:                                         ; preds = %if.end85
  %level = getelementptr inbounds %struct.aa_ns, ptr %parent, i32 0, i32 8
  %2 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %level, align 4
  %add = add i32 %3, 1
  %level100 = getelementptr inbounds %struct.aa_ns, ptr %call95, i32 0, i32 8
  %4 = ptrtoint ptr %level100 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %level100, align 4
  %lock101 = getelementptr inbounds %struct.aa_ns, ptr %call95, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock101, i32 noundef %add) #11
  %arrayidx = getelementptr %struct.aa_ns, ptr %parent, i32 0, i32 13, i32 2
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call103 = tail call i32 @__aafs_ns_mkdir(ptr noundef nonnull %call95, ptr noundef %6, ptr noundef %name, ptr noundef %dir) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end119, label %if.then105

if.then105:                                       ; preds = %if.end99
  %call106 = tail call i32 @___ratelimit(ptr noundef nonnull @__aa_create_ns._rs, ptr noundef nonnull @__func__.__aa_create_ns) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.then105.if.end116_crit_edge, label %do.end111

if.then105.if.end116_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end116

do.end111:                                        ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %call95 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call95, align 4
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %8) #16
  br label %if.end116

if.end116:                                        ; preds = %do.end111, %if.then105.if.end116_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock101) #11
  tail call void @aa_free_ns(ptr noundef nonnull %call95)
  %9 = inttoptr i32 %call103 to ptr
  br label %cleanup

if.end119:                                        ; preds = %if.end99
  br i1 %tobool.not, label %if.end119.aa_get_ns.exit_crit_edge, label %if.then.i

if.end119.aa_get_ns.exit_crit_edge:               ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  br label %aa_get_ns.exit

if.then.i:                                        ; preds = %if.end119
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %parent, i32 0, i32 4
  %10 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %unconfined.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.then.i.aa_get_ns.exit_crit_edge, label %if.then.i.i

if.then.i.aa_get_ns.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %aa_get_ns.exit

if.then.i.i:                                      ; preds = %if.then.i
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %11, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #11
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #11, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !68

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.aa_get_ns.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !64

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.aa_get_ns.exit_crit_edge:     ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %aa_get_ns.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef %.sink.i.i.i.i.i.i) #11
  br label %aa_get_ns.exit

aa_get_ns.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.aa_get_ns.exit_crit_edge, %if.then.i.aa_get_ns.exit_crit_edge, %if.end119.aa_get_ns.exit_crit_edge
  %parent121 = getelementptr inbounds %struct.aa_ns, ptr %call95, i32 0, i32 1
  %14 = ptrtoint ptr %parent121 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %parent, ptr %parent121, align 4
  %list = getelementptr inbounds %struct.aa_policy, ptr %call95, i32 0, i32 2
  %sub_ns = getelementptr inbounds %struct.aa_ns, ptr %parent, i32 0, i32 5
  %15 = ptrtoint ptr %sub_ns to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sub_ns, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %sub_ns, ptr noundef %16) #11
  br i1 %call.i.i, label %if.end.i.i, label %aa_get_ns.exit.if.then.i153_crit_edge

aa_get_ns.exit.if.then.i153_crit_edge:            ; preds = %aa_get_ns.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i153

if.end.i.i:                                       ; preds = %aa_get_ns.exit
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %list, align 4
  %prev2.i.i = getelementptr inbounds %struct.aa_policy, ptr %call95, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %sub_ns, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !70
  %19 = ptrtoint ptr %sub_ns to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %list, ptr %sub_ns, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %20 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list, ptr %prev37.i.i, align 4
  br label %if.then.i153

if.then.i153:                                     ; preds = %if.end.i.i, %aa_get_ns.exit.if.then.i153_crit_edge
  %unconfined.i151 = getelementptr inbounds %struct.aa_ns, ptr %call95, i32 0, i32 4
  %21 = ptrtoint ptr %unconfined.i151 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %unconfined.i151, align 4
  %tobool.not.i.i152 = icmp eq ptr %22, null
  br i1 %tobool.not.i.i152, label %if.then.i153.aa_get_ns.exit164_crit_edge, label %if.then.i.i158

if.then.i153.aa_get_ns.exit164_crit_edge:         ; preds = %if.then.i153
  call void @__sanitizer_cov_trace_pc() #13
  br label %aa_get_ns.exit164

if.then.i.i158:                                   ; preds = %if.then.i153
  %label.i.i154 = getelementptr inbounds %struct.aa_profile, ptr %22, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i155 = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i154, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %label.i.i154, i32 1, i32 3, i32 1) #11
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i154, ptr %label.i.i154, i32 1, ptr elementtype(i32) %label.i.i154) #11, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i156 = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i156)
  %tobool1.not.i.i.i.i.i.i157 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i156, 0
  br i1 %tobool1.not.i.i.i.i.i.i157, label %if.then.i.i158.if.end15.sink.split.i.i.i.i.i.i163_crit_edge, label %if.else.i.i.i.i.i.i161, !prof !68

if.then.i.i158.if.end15.sink.split.i.i.i.i.i.i163_crit_edge: ; preds = %if.then.i.i158
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i163

if.else.i.i.i.i.i.i161:                           ; preds = %if.then.i.i158
  %add.i.i.i.i.i.i159 = add i32 %asmresult.i.i.i.i.i.i.i.i156, 1
  %24 = or i32 %add.i.i.i.i.i.i159, %asmresult.i.i.i.i.i.i.i.i156
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %.not.i.i.i.i.i.i160 = icmp sgt i32 %24, -1
  br i1 %.not.i.i.i.i.i.i160, label %if.else.i.i.i.i.i.i161.aa_get_ns.exit164_crit_edge, label %if.else.i.i.i.i.i.i161.if.end15.sink.split.i.i.i.i.i.i163_crit_edge, !prof !64

if.else.i.i.i.i.i.i161.if.end15.sink.split.i.i.i.i.i.i163_crit_edge: ; preds = %if.else.i.i.i.i.i.i161
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i163

if.else.i.i.i.i.i.i161.aa_get_ns.exit164_crit_edge: ; preds = %if.else.i.i.i.i.i.i161
  call void @__sanitizer_cov_trace_pc() #13
  br label %aa_get_ns.exit164

if.end15.sink.split.i.i.i.i.i.i163:               ; preds = %if.else.i.i.i.i.i.i161.if.end15.sink.split.i.i.i.i.i.i163_crit_edge, %if.then.i.i158.if.end15.sink.split.i.i.i.i.i.i163_crit_edge
  %.sink.i.i.i.i.i.i162 = phi i32 [ 2, %if.then.i.i158.if.end15.sink.split.i.i.i.i.i.i163_crit_edge ], [ 1, %if.else.i.i.i.i.i.i161.if.end15.sink.split.i.i.i.i.i.i163_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i154, i32 noundef %.sink.i.i.i.i.i.i162) #11
  br label %aa_get_ns.exit164

aa_get_ns.exit164:                                ; preds = %if.end15.sink.split.i.i.i.i.i.i163, %if.else.i.i.i.i.i.i161.aa_get_ns.exit164_crit_edge, %if.then.i153.aa_get_ns.exit164_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock101) #11
  br label %cleanup

cleanup:                                          ; preds = %aa_get_ns.exit164, %if.end116, %if.end85.cleanup_crit_edge
  %retval.0 = phi ptr [ %9, %if.end116 ], [ %call95, %aa_get_ns.exit164 ], [ inttoptr (i32 -12 to ptr), %if.end85.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aa_prepare_ns(ptr noundef %parent, ptr noundef %name) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.aa_ns, ptr %parent, i32 0, i32 2
  %level = getelementptr inbounds %struct.aa_ns, ptr %parent, i32 0, i32 8
  %0 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %level, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef %1) #11
  %sub_ns = getelementptr inbounds %struct.aa_ns, ptr %parent, i32 0, i32 5
  %call.i = tail call i32 @strlen(ptr noundef %name) #15
  %call.i.i.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %entry.do.end.i.i.i_crit_edge

entry.do.end.i.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.do.end.i.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.do.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b25.i.i.i = load i1, ptr @__policy_strn_find.__warned, align 1
  br i1 %.b25.i.i.i, label %land.lhs.true3.i.i.i.do.end.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.do.end.i.i.i_crit_edge:      ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__policy_strn_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 196, ptr noundef nonnull @.str.9) #11
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.do.end.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end.i.i.i_crit_edge, %entry.do.end.i.i.i_crit_edge
  %2 = ptrtoint ptr %sub_ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn26.i.i.i = load volatile ptr, ptr %sub_ns, align 4
  %cmp.not28.i.i.i = icmp eq ptr %.pn26.i.i.i, %sub_ns
  br i1 %cmp.not28.i.i.i, label %do.end.i.i.i.if.then_crit_edge, label %do.end.i.i.i.for.body.i.i.i_crit_edge

do.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %do.end.i.i.i
  br label %for.body.i.i.i

do.end.i.i.i.if.then_crit_edge:                   ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body.i.i.i:                                   ; preds = %for.cond.backedge.i.i.i.for.body.i.i.i_crit_edge, %do.end.i.i.i.for.body.i.i.i_crit_edge
  %.pn29.i.i.i = phi ptr [ %.pn.i.i.i, %for.cond.backedge.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn26.i.i.i, %do.end.i.i.i.for.body.i.i.i_crit_edge ]
  %policy.030.i.i.i = getelementptr i8, ptr %.pn29.i.i.i, i32 -8
  %3 = ptrtoint ptr %policy.030.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %policy.030.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @strncmp(ptr noundef %4, ptr noundef %name, i32 noundef %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.rhs.i.i.i.i, label %for.body.i.i.i.for.cond.backedge.i.i.i_crit_edge

for.body.i.i.i.for.cond.backedge.i.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %for.body.i.i.i
  %arrayidx.i.i.i.i = getelementptr i8, ptr %4, i32 %call.i
  %5 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not.i.i.i.i = icmp eq i8 %6, 0
  br i1 %tobool1.not.i.i.i.i, label %__aa_find_ns.exit, label %land.rhs.i.i.i.i.for.cond.backedge.i.i.i_crit_edge

land.rhs.i.i.i.i.for.cond.backedge.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i.i.i

for.cond.backedge.i.i.i:                          ; preds = %land.rhs.i.i.i.i.for.cond.backedge.i.i.i_crit_edge, %for.body.i.i.i.for.cond.backedge.i.i.i_crit_edge
  %7 = ptrtoint ptr %.pn29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i.i.i = load volatile ptr, ptr %.pn29.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %sub_ns
  br i1 %cmp.not.i.i.i, label %for.cond.backedge.i.i.i.if.then_crit_edge, label %for.cond.backedge.i.i.i.for.body.i.i.i_crit_edge

for.cond.backedge.i.i.i.for.body.i.i.i_crit_edge: ; preds = %for.cond.backedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

for.cond.backedge.i.i.i.if.then_crit_edge:        ; preds = %for.cond.backedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

__aa_find_ns.exit:                                ; preds = %land.rhs.i.i.i.i
  %policy.030.i.i.i.le = getelementptr i8, ptr %.pn29.i.i.i, i32 -8
  %tobool.not.i = icmp eq ptr %policy.030.i.i.i.le, null
  br i1 %tobool.not.i, label %__aa_find_ns.exit.if.then_crit_edge, label %if.then.i

__aa_find_ns.exit.if.then_crit_edge:              ; preds = %__aa_find_ns.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then.i:                                        ; preds = %__aa_find_ns.exit
  %unconfined.i = getelementptr i8, ptr %.pn29.i.i.i, i32 128
  %8 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unconfined.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.then.i.if.end_crit_edge, label %if.then.i.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i.i:                                      ; preds = %if.then.i
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %9, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #11
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #11, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !68

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !64

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end_crit_edge:             ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef %.sink.i.i.i.i.i.i) #11
  br label %if.end

if.then:                                          ; preds = %__aa_find_ns.exit.if.then_crit_edge, %for.cond.backedge.i.i.i.if.then_crit_edge, %do.end.i.i.i.if.then_crit_edge
  %call2 = tail call fastcc ptr @__aa_create_ns(ptr noundef %parent, ptr noundef %name, ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.then, %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end_crit_edge, %if.then.i.if.end_crit_edge
  %ns.0 = phi ptr [ %call2, %if.then ], [ %policy.030.i.i.i.le, %if.then.i.if.end_crit_edge ], [ %policy.030.i.i.i.le, %if.else.i.i.i.i.i.i.if.end_crit_edge ], [ %policy.030.i.i.i.le, %if.end15.sink.split.i.i.i.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret ptr %ns.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__aa_remove_ns(ptr noundef %ns) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr inbounds %struct.aa_policy, ptr %ns, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_rcu.exit_crit_edge

entry.list_del_rcu.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.aa_policy, ptr %ns, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %entry.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.aa_policy, ptr %ns, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call fastcc void @destroy_ns(ptr noundef %ns)
  %tobool.not.i = icmp eq ptr %ns, null
  br i1 %tobool.not.i, label %list_del_rcu.exit.aa_put_ns.exit_crit_edge, label %if.then.i

list_del_rcu.exit.aa_put_ns.exit_crit_edge:       ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %aa_put_ns.exit

if.then.i:                                        ; preds = %list_del_rcu.exit
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %ns, i32 0, i32 4
  %7 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %unconfined.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.then.i.aa_put_ns.exit_crit_edge, label %if.then.i.i

if.then.i.aa_put_ns.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %aa_put_ns.exit

if.then.i.i:                                      ; preds = %if.then.i
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %8, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !62
  tail call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #11
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #11, !srcloc !63
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !64

if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %aa_put_ns.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef 3) #11
  br label %aa_put_ns.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !65
  tail call void @aa_label_kref(ptr noundef %label.i.i) #11
  br label %aa_put_ns.exit

aa_put_ns.exit:                                   ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge, %if.then.i.aa_put_ns.exit_crit_edge, %list_del_rcu.exit.aa_put_ns.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @destroy_ns(ptr noundef %ns) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ns, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.aa_ns, ptr %ns, i32 0, i32 2
  %level = getelementptr inbounds %struct.aa_ns, ptr %ns, i32 0, i32 8
  %0 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %level, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef %1) #11
  %profiles = getelementptr inbounds %struct.aa_policy, ptr %ns, i32 0, i32 3
  tail call void @__aa_profile_list_release(ptr noundef %profiles) #11
  %sub_ns = getelementptr inbounds %struct.aa_ns, ptr %ns, i32 0, i32 5
  %2 = ptrtoint ptr %sub_ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sub_ns, align 4
  %cmp.not.i30 = icmp eq ptr %3, %sub_ns
  br i1 %cmp.not.i30, label %if.end.__ns_list_release.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.__ns_list_release.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ns_list_release.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn.in.i31 = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %3, %if.end.for.body.i_crit_edge ]
  %ns.0.i = getelementptr i8, ptr %.pn.in.i31, i32 -8
  %4 = ptrtoint ptr %.pn.in.i31 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i31, align 4
  tail call void @__aa_remove_ns(ptr noundef %ns.0.i) #11
  %cmp.not.i = icmp eq ptr %.pn.i, %sub_ns
  br i1 %cmp.not.i, label %for.body.i.__ns_list_release.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.__ns_list_release.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ns_list_release.exit

__ns_list_release.exit:                           ; preds = %for.body.i.__ns_list_release.exit_crit_edge, %if.end.__ns_list_release.exit_crit_edge
  %parent = getelementptr inbounds %struct.aa_ns, ptr %ns, i32 0, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %__ns_list_release.exit.if.end17_crit_edge, label %if.then2

__ns_list_release.exit.if.end17_crit_edge:        ; preds = %__ns_list_release.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then2:                                         ; preds = %__ns_list_release.exit
  call void @__sanitizer_cov_trace_pc() #13
  %labels = getelementptr inbounds %struct.aa_ns, ptr %ns, i32 0, i32 11
  %call = tail call i32 @_raw_write_lock_irqsave(ptr noundef %labels) #11
  %unconfined = getelementptr inbounds %struct.aa_ns, ptr %ns, i32 0, i32 4
  %7 = ptrtoint ptr %unconfined to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %unconfined, align 4
  %label = getelementptr inbounds %struct.aa_profile, ptr %8, i32 0, i32 25
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 4
  %unconfined5 = getelementptr inbounds %struct.aa_ns, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %unconfined5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %unconfined5, align 4
  %label6 = getelementptr inbounds %struct.aa_profile, ptr %12, i32 0, i32 25
  tail call void @__aa_proxy_redirect(ptr noundef %label, ptr noundef %label6) #11
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %labels, i32 noundef %call) #11
  br label %if.end17

if.end17:                                         ; preds = %if.then2, %__ns_list_release.exit.if.end17_crit_edge
  tail call void @__aafs_ns_rmdir(ptr noundef nonnull %ns) #11
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %return

return:                                           ; preds = %if.end17, %entry.return_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_alloc_root_ns() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @alloc_ns(ptr noundef null, ptr noundef nonnull @.str.5)
  store ptr %call, ptr @root_ns, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_ns(ptr noundef %prefix, ptr noundef %name) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 324) #17
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_debug to i32))
  %1 = load i8, ptr @aa_g_debug, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.body1

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alloc_ns.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alloc_ns, %land.lhs.true)) #11
          to label %do.end11 [label %land.lhs.true], !srcloc !72

land.lhs.true:                                    ; preds = %do.body1
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @alloc_ns._rs, ptr noundef nonnull @.str.16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end11_crit_edge, label %if.then8

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @alloc_ns.descriptor, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, ptr noundef %call7.i.i) #11
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %land.lhs.true.do.end11_crit_edge, %do.body1, %entry.do.end11_crit_edge
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %do.end11.cleanup_crit_edge, label %if.end14

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %do.end11
  %call15 = tail call zeroext i1 @aa_policy_init(ptr noundef nonnull %call7.i.i, ptr noundef %prefix, ptr noundef %name, i32 noundef 3264) #11
  br i1 %call15, label %if.end17, label %if.end14.fail_ns_crit_edge

if.end14.fail_ns_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_ns

if.end17:                                         ; preds = %if.end14
  %sub_ns = getelementptr inbounds %struct.aa_ns, ptr %call7.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %sub_ns to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %sub_ns, ptr %sub_ns, align 4
  %prev.i = getelementptr inbounds %struct.aa_ns, ptr %call7.i.i, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sub_ns, ptr %prev.i, align 8
  %rawdata_list = getelementptr inbounds %struct.aa_ns, ptr %call7.i.i, i32 0, i32 12
  %4 = ptrtoint ptr %rawdata_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %rawdata_list, ptr %rawdata_list, align 8
  %prev.i58 = getelementptr inbounds %struct.aa_ns, ptr %call7.i.i, i32 0, i32 12, i32 1
  %5 = ptrtoint ptr %prev.i58 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rawdata_list, ptr %prev.i58, align 4
  %lock = getelementptr inbounds %struct.aa_ns, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.18, ptr noundef nonnull @alloc_ns.__key) #11
  %wait = getelementptr inbounds %struct.aa_ns, ptr %call7.i.i, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.20, ptr noundef nonnull @alloc_ns.__key.19) #11
  %call24 = tail call ptr @aa_alloc_profile(ptr noundef nonnull @.str.21, ptr noundef null, i32 noundef 3264) #11
  %unconfined = getelementptr inbounds %struct.aa_ns, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %unconfined to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call24, ptr %unconfined, align 8
  %tobool26.not = icmp eq ptr %call24, null
  br i1 %tobool26.not, label %fail_unconfined, label %if.end28

if.end28:                                         ; preds = %if.end17
  %flags = getelementptr inbounds %struct.aa_profile, ptr %call24, i32 0, i32 25, i32 5
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %or = or i32 %8, 154
  store i32 %or, ptr %flags, align 4
  %9 = ptrtoint ptr %unconfined to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %unconfined, align 8
  %mode = getelementptr inbounds %struct.aa_profile, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %mode, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nulldfa to i32))
  %12 = load ptr, ptr @nulldfa, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %aa_get_dfa.exit.thread, label %if.then.i

aa_get_dfa.exit.thread:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %unconfined to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %unconfined, align 8
  %dfa71 = getelementptr inbounds %struct.aa_profile, ptr %14, i32 0, i32 13, i32 1
  %15 = ptrtoint ptr %dfa71 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %dfa71, align 4
  br label %aa_get_dfa.exit69

if.then.i:                                        ; preds = %if.end28
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %12, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull %12, i32 1, i32 3, i32 1) #11
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %12, ptr nonnull %12, i32 1, ptr nonnull elementtype(i32) %12) #11, !srcloc !67
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !68

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %17 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.aa_get_dfa.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !64

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.aa_get_dfa.exit_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %aa_get_dfa.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %12, i32 noundef %.sink.i.i.i.i.i) #11
  br label %aa_get_dfa.exit

aa_get_dfa.exit:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.aa_get_dfa.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nulldfa to i32))
  %.pr = load ptr, ptr @nulldfa, align 4
  %18 = ptrtoint ptr %unconfined to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %unconfined, align 8
  %dfa = getelementptr inbounds %struct.aa_profile, ptr %19, i32 0, i32 13, i32 1
  %20 = ptrtoint ptr %dfa to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %12, ptr %dfa, align 4
  %tobool.not.i59 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i59, label %aa_get_dfa.exit.aa_get_dfa.exit69_crit_edge, label %if.then.i63

aa_get_dfa.exit.aa_get_dfa.exit69_crit_edge:      ; preds = %aa_get_dfa.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %aa_get_dfa.exit69

if.then.i63:                                      ; preds = %aa_get_dfa.exit
  %call.i.i.i.i.i.i.i60 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %.pr, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull %.pr, i32 1, i32 3, i32 1) #11
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %.pr, ptr nonnull %.pr, i32 1, ptr nonnull elementtype(i32) %.pr) #11, !srcloc !67
  %asmresult.i.i.i.i.i.i.i61 = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i61)
  %tobool1.not.i.i.i.i.i62 = icmp eq i32 %asmresult.i.i.i.i.i.i.i61, 0
  br i1 %tobool1.not.i.i.i.i.i62, label %if.then.i63.if.end15.sink.split.i.i.i.i.i68_crit_edge, label %if.else.i.i.i.i.i66, !prof !68

if.then.i63.if.end15.sink.split.i.i.i.i.i68_crit_edge: ; preds = %if.then.i63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i68

if.else.i.i.i.i.i66:                              ; preds = %if.then.i63
  %add.i.i.i.i.i64 = add i32 %asmresult.i.i.i.i.i.i.i61, 1
  %22 = or i32 %add.i.i.i.i.i64, %asmresult.i.i.i.i.i.i.i61
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %.not.i.i.i.i.i65 = icmp sgt i32 %22, -1
  br i1 %.not.i.i.i.i.i65, label %if.else.i.i.i.i.i66.aa_get_dfa.exit69_crit_edge, label %if.else.i.i.i.i.i66.if.end15.sink.split.i.i.i.i.i68_crit_edge, !prof !64

if.else.i.i.i.i.i66.if.end15.sink.split.i.i.i.i.i68_crit_edge: ; preds = %if.else.i.i.i.i.i66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i68

if.else.i.i.i.i.i66.aa_get_dfa.exit69_crit_edge:  ; preds = %if.else.i.i.i.i.i66
  call void @__sanitizer_cov_trace_pc() #13
  br label %aa_get_dfa.exit69

if.end15.sink.split.i.i.i.i.i68:                  ; preds = %if.else.i.i.i.i.i66.if.end15.sink.split.i.i.i.i.i68_crit_edge, %if.then.i63.if.end15.sink.split.i.i.i.i.i68_crit_edge
  %.sink.i.i.i.i.i67 = phi i32 [ 2, %if.then.i63.if.end15.sink.split.i.i.i.i.i68_crit_edge ], [ 1, %if.else.i.i.i.i.i66.if.end15.sink.split.i.i.i.i.i68_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %.pr, i32 noundef %.sink.i.i.i.i.i67) #11
  br label %aa_get_dfa.exit69

aa_get_dfa.exit69:                                ; preds = %if.end15.sink.split.i.i.i.i.i68, %if.else.i.i.i.i.i66.aa_get_dfa.exit69_crit_edge, %aa_get_dfa.exit.aa_get_dfa.exit69_crit_edge, %aa_get_dfa.exit.thread
  %23 = phi ptr [ null, %aa_get_dfa.exit.thread ], [ null, %aa_get_dfa.exit.aa_get_dfa.exit69_crit_edge ], [ %.pr, %if.else.i.i.i.i.i66.aa_get_dfa.exit69_crit_edge ], [ %.pr, %if.end15.sink.split.i.i.i.i.i68 ]
  %24 = ptrtoint ptr %unconfined to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %unconfined, align 8
  %policy = getelementptr inbounds %struct.aa_profile, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %policy to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %policy, align 4
  %27 = load ptr, ptr %unconfined, align 8
  %ns37 = getelementptr inbounds %struct.aa_profile, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %ns37 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i, ptr %ns37, align 4
  %uniq_null = getelementptr inbounds %struct.aa_ns, ptr %call7.i.i, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %uniq_null, i32 noundef 4) #11
  %29 = ptrtoint ptr %uniq_null to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 0, ptr %uniq_null, align 4
  %labels = getelementptr inbounds %struct.aa_ns, ptr %call7.i.i, i32 0, i32 11
  tail call void @aa_labelset_init(ptr noundef %labels) #11
  br label %cleanup

fail_unconfined:                                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %hname = getelementptr inbounds %struct.aa_policy, ptr %call7.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %hname to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hname, align 4
  tail call void @kfree_sensitive(ptr noundef %31) #11
  br label %fail_ns

fail_ns:                                          ; preds = %fail_unconfined, %if.end14.fail_ns_crit_edge
  tail call void @kfree_sensitive(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %fail_ns, %aa_get_dfa.exit69, %do.end11.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %aa_get_dfa.exit69 ], [ null, %fail_ns ], [ null, %do.end11.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @aa_free_root_ns() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @root_ns, align 4
  store ptr null, ptr @root_ns, align 4
  tail call fastcc void @destroy_ns(ptr noundef %0)
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %entry.aa_put_ns.exit_crit_edge, label %if.then.i

entry.aa_put_ns.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %aa_put_ns.exit

if.then.i:                                        ; preds = %entry
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %0, i32 0, i32 4
  %1 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %unconfined.i, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.then.i.aa_put_ns.exit_crit_edge, label %if.then.i.i

if.then.i.aa_put_ns.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %aa_put_ns.exit

if.then.i.i:                                      ; preds = %if.then.i
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %2, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !62
  tail call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #11
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #11, !srcloc !63
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !64

if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %aa_put_ns.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef 3) #11
  br label %aa_put_ns.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !65
  tail call void @aa_label_kref(ptr noundef %label.i.i) #11
  br label %aa_put_ns.exit

aa_put_ns.exit:                                   ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge, %if.then.i.aa_put_ns.exit_crit_edge, %entry.aa_put_ns.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_label_kref(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__aafs_ns_mkdir(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__aa_profile_list_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__aa_proxy_redirect(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__aafs_ns_rmdir(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @aa_policy_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aa_alloc_profile(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_labelset_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !14, !16, !18, !19, !20, !22, !23, !24, !26, !27, !29, !30, !32, !34, !35, !36, !37, !38, !40, !41, !42, !43, !44, !46, !47, !49, !50}
!llvm.named.register.sp = !{!52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/apparmor/policy_ns.c", i32 27, i32 33}
!2 = !{ptr @aa_hidden_ns_name, !3, !"aa_hidden_ns_name", i1 false, i1 false}
!3 = !{!"../security/apparmor/policy_ns.c", i32 27, i32 13}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/apparmor/policy_ns.c", i32 65, i32 10}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/apparmor/policy_ns.c", i32 205, i32 30}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../security/apparmor/policy_ns.c", i32 287, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__func__.__aa_find_or_create_ns, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/apparmor/policy_ns.c", i32 392, i32 27}
!14 = !{ptr @root_ns, !15, !"root_ns", i1 false, i1 false}
!15 = !{!"../security/apparmor/policy_ns.c", i32 26, i32 15}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../security/apparmor/include/lib.h", i32 196, i32 2}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../security/apparmor/policy_ns.c", i32 248, i32 2}
!29 = !{ptr @__func__.__aa_create_ns, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../security/apparmor/policy_ns.c", i32 249, i32 2}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../security/apparmor/policy_ns.c", i32 259, i32 3}
!34 = !{ptr @__aa_create_ns._rs, !33, !"_rs", i1 false, i1 false}
!35 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @__aa_create_ns._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @__aa_create_ns._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @alloc_ns._rs, !39, !"_rs", i1 false, i1 false}
!39 = !{!"../security/apparmor/policy_ns.c", i32 92, i32 2}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @alloc_ns.descriptor, !39, !"descriptor", i1 false, i1 false}
!44 = !{ptr @alloc_ns.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../security/apparmor/policy_ns.c", i32 100, i32 2}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @alloc_ns.__key.19, !48, !"__key", i1 false, i1 false}
!48 = !{!"../security/apparmor/policy_ns.c", i32 101, i32 2}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../security/apparmor/policy_ns.c", i32 104, i32 36}
!52 = !{!"sp"}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i64 2148555735}
!63 = !{i64 2148470175, i64 2148470207, i64 2148470236, i64 2148470270, i64 2148470301, i64 2148470324}
!64 = !{!"branch_weights", i32 2000, i32 1}
!65 = !{i64 2149875885}
!66 = !{i64 2149925428}
!67 = !{i64 2148467710, i64 2148467742, i64 2148467771, i64 2148467805, i64 2148467836, i64 2148467859}
!68 = !{!"branch_weights", i32 1, i32 2000}
!69 = !{i64 2149925694}
!70 = !{i64 2151427940}
!71 = !{i8 0, i8 2}
!72 = !{i64 2148289995, i64 2148290000, i64 2148290013, i64 2148290057, i64 2148290091, i64 2148290112}
