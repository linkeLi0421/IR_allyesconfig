; ModuleID = '/llk/IR_all_yes/security/apparmor/task.c_pt.bc'
source_filename = "../security/apparmor/task.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lsm_blob_sizes = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.111, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.43 }
%struct.llist_node = type { ptr }
%union.anon.43 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.45 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.111 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.30 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.30 = type { %struct.callback_head }
%struct.aa_label = type { %struct.kref, %struct.rb_node, %struct.callback_head, ptr, ptr, i32, i32, i32, [0 x ptr] }
%struct.kref = type { %struct.refcount_struct }
%struct.aa_proxy = type { %struct.kref, ptr }
%struct.aa_profile = type { %struct.aa_policy, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, %struct.aa_policydb, %struct.aa_file_rules, %struct.aa_caps, i32, ptr, %struct.aa_rlimit, i32, ptr, ptr, ptr, ptr, [9 x ptr], ptr, %struct.aa_label }
%struct.aa_policy = type { ptr, ptr, %struct.list_head, %struct.list_head }
%struct.aa_policydb = type { ptr, [17 x i32] }
%struct.aa_file_rules = type { i32, ptr, %struct.aa_domain }
%struct.aa_domain = type { i32, ptr }
%struct.aa_caps = type { %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct }
%struct.aa_rlimit = type { i32, [16 x %struct.rlimit] }
%struct.rlimit = type { i32, i32 }
%struct.aa_task_ctx = type { ptr, ptr, ptr, i64 }

@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"security/apparmor/task.c\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"AppArmor WARN %s: ((!label)): \00", [33 x i8] zeroinitializer }, align 32
@__func__.aa_replace_current_label = private unnamed_addr constant [25 x i8] c"aa_replace_current_label\00", align 1
@__func__.aa_set_current_hat = private unnamed_addr constant [19 x i8] c"aa_set_current_hat\00", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"AppArmor WARN %s: ((!cred_label(new))): \00", [55 x i8] zeroinitializer }, align 32
@__func__.aa_restore_previous_label = private unnamed_addr constant [26 x i8] c"aa_restore_previous_label\00", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"security/apparmor/include/label.h\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AppArmor WARN %s: ((!l->proxy)): \00", [62 x i8] zeroinitializer }, align 32
@__func__.aa_get_newest_label = private unnamed_addr constant [20 x i8] c"aa_get_newest_label\00", align 1
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"AppArmor WARN %s: ((!l->proxy->label)): \00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AppArmor WARN %s: ((!tmp)): \00", [35 x i8] zeroinitializer }, align 32
@aa_get_label_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__aa_task_raw_label.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"security/apparmor/include/cred.h\00", [63 x i8] zeroinitializer }, align 32
@__func__.aa_cred_raw_label = private unnamed_addr constant [18 x i8] c"aa_cred_raw_label\00", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@apparmor_blob_sizes = external dso_local local_unnamed_addr global %struct.lsm_blob_sizes, align 4
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"security/apparmor/include/task.h\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AppArmor WARN %s: ((!ctx)): \00", [35 x i8] zeroinitializer }, align 32
@__func__.aa_clear_task_ctx_trans = private unnamed_addr constant [24 x i8] c"aa_clear_task_ctx_trans\00", align 1
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AppArmor WARN %s: ((!blob)): \00", [34 x i8] zeroinitializer }, align 32
@__func__.cred_label = private unnamed_addr constant [11 x i8] c"cred_label\00", align 1
@__func__.set_cred_label = private unnamed_addr constant [15 x i8] c"set_cred_label\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 47, i32 2 }
@___asan_gen_.23 = private constant [28 x i8] c"../security/apparmor/task.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 172, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 695, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 424, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 425, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 431, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [37 x i8] c"../security/apparmor/include/label.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 401, i32 7 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 76, i32 27 }
@___asan_gen_.50 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 723, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [36 x i8] c"../security/apparmor/include/task.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 71, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [36 x i8] c"../security/apparmor/include/cred.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 26, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aa_get_task_label(ptr noundef %task) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !47) #6
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !57
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %real_cred.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 98
  %4 = ptrtoint ptr %real_cred.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %real_cred.i, align 4
  %call.i2 = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool.not.i3 = icmp eq i32 %call.i2, 0
  br i1 %tobool.not.i3, label %land.lhs.true.i4, label %rcu_read_lock.exit.do.end7.i_crit_edge

rcu_read_lock.exit.do.end7.i_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i

land.lhs.true.i4:                                 ; preds = %rcu_read_lock.exit
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i4.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i4.do.end7.i_crit_edge:             ; preds = %land.lhs.true.i4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i4
  %.b10.i = load i1, ptr @__aa_task_raw_label.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i5

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i

if.then.i5:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @__aa_task_raw_label.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 76, ptr noundef nonnull @.str.10) #6
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i5, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i4.do.end7.i_crit_edge, %rcu_read_lock.exit.do.end7.i_crit_edge
  %security.i.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @apparmor_blob_sizes to i32))
  %8 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %8
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %do.end7.i.cred_label.exit.i.i_crit_edge, !prof !58

do.end7.i.cred_label.exit.i.i_crit_edge:          ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cred_label.exit.i.i

do.end.i.i.i:                                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.cred_label) #6
  br label %cred_label.exit.i.i

cred_label.exit.i.i:                              ; preds = %do.end.i.i.i, %do.end7.i.cred_label.exit.i.i_crit_edge
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %cred_label.exit.i.i.__aa_task_raw_label.exit_crit_edge, !prof !58

cred_label.exit.i.i.__aa_task_raw_label.exit_crit_edge: ; preds = %cred_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__aa_task_raw_label.exit

do.end.i.i:                                       ; preds = %cred_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.aa_cred_raw_label) #6
  br label %__aa_task_raw_label.exit

__aa_task_raw_label.exit:                         ; preds = %do.end.i.i, %cred_label.exit.i.i.__aa_task_raw_label.exit_crit_edge
  %call1 = tail call fastcc ptr @aa_get_newest_label(ptr noundef %10)
  %call.i6 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i6, label %__aa_task_raw_label.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i9

__aa_task_raw_label.exit.rcu_read_unlock.exit_crit_edge: ; preds = %__aa_task_raw_label.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i9:                                 ; preds = %__aa_task_raw_label.exit
  %call1.i7 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7)
  %tobool.not.i8 = icmp eq i32 %call1.i7, 0
  br i1 %tobool.not.i8, label %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i11

land.lhs.true.i9.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i11:                               ; preds = %land.lhs.true.i9
  %.b4.i10 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i10, label %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, label %if.then.i12

land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i12:                                      ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.12) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i12, %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, %__aa_task_raw_label.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !59
  %11 = tail call i32 @llvm.read_register.i32(metadata !47) #6
  %and.i.i.i.i.i13 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i13 to ptr
  %preempt_count.i.i.i.i14 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i14, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i14, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  ret ptr %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @aa_get_newest_label(ptr noundef %l) unnamed_addr #2 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  %tobool.not = icmp eq ptr %l, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.aa_label, ptr %l, i32 0, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then.i118, label %if.then2

if.then2:                                         ; preds = %if.end
  %proxy = getelementptr inbounds %struct.aa_label, ptr %l, i32 0, i32 3
  %2 = ptrtoint ptr %proxy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proxy, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.end, label %if.then2.if.end20_crit_edge, !prof !58

if.then2.if.end20_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 424, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.aa_get_newest_label) #6
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.then2.if.end20_crit_edge
  %4 = ptrtoint ptr %proxy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proxy, align 4
  %label = getelementptr inbounds %struct.aa_proxy, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %label, align 4
  %tobool33.not = icmp eq ptr %7, null
  br i1 %tobool33.not, label %do.end51, label %if.end20.if.end57_crit_edge, !prof !58

if.end20.if.end57_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

do.end51:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 425, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.aa_get_newest_label) #6
  br label %if.end57

if.end57:                                         ; preds = %do.end51, %if.end20.if.end57_crit_edge
  %8 = ptrtoint ptr %proxy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %proxy, align 4
  %label68 = getelementptr inbounds %struct.aa_proxy, ptr %9, i32 0, i32 1
  %10 = tail call i32 @llvm.read_register.i32(metadata !47) #6
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !57
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i.i, label %if.end57.do.body.i.preheader_crit_edge, label %land.lhs.true.i.i

if.end57.do.body.i.preheader_crit_edge:           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.preheader

land.lhs.true.i.i:                                ; preds = %if.end57
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.do.body.i.preheader_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.do.body.i.preheader_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.preheader

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.do.body.i.preheader_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.do.body.i.preheader_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.preheader

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #6
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.then.i.i, %land.lhs.true2.i.i.do.body.i.preheader_crit_edge, %land.lhs.true.i.i.do.body.i.preheader_crit_edge, %if.end57.do.body.i.preheader_crit_edge
  br label %do.body.i

do.body.i:                                        ; preds = %kref_get_unless_zero.exit.i.do.body.i_crit_edge, %do.body.i.preheader
  %14 = ptrtoint ptr %label68 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %label68, align 4
  %call.i = call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.body.i.do.end8.i_crit_edge

do.body.i.do.end8.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %call3.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b17.i = load i1, ptr @aa_get_label_rcu.__warned, align 1
  br i1 %.b17.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @aa_get_label_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 401, ptr noundef nonnull @.str.10) #6
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %do.body.i.do.end8.i_crit_edge
  %tobool11.not.i = icmp eq ptr %15, null
  br i1 %tobool11.not.i, label %do.end8.i.do.end14.i_crit_edge, label %land.rhs.i

do.end8.i.do.end14.i_crit_edge:                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14.i

land.rhs.i:                                       ; preds = %do.end8.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #6
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %15, i32 noundef 4) #6
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %land.rhs.i
  %18 = phi i32 [ %17, %land.rhs.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %19 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i.i.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %18, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %15, i32 noundef 4) #6
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #6
  %20 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %15, i32 1, i32 3, i32 1) #6
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %22 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %15, ptr nonnull %15, i32 %21, i32 %add.i.i.i.i.i, ptr nonnull elementtype(i32) %15) #6, !srcloc !60
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %21
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !61

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %23 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %24, 1
  %25 = or i32 %add5.i.i.i.i.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i.i.i = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !61

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef nonnull %15, i32 noundef 0) #6
  %26 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %27 = phi i32 [ %24, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  %tobool12.i.i.i.i.not.i = icmp eq i32 %27, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #6
  br i1 %tobool12.i.i.i.i.not.i, label %kref_get_unless_zero.exit.i.do.body.i_crit_edge, label %kref_get_unless_zero.exit.i.do.end14.i_crit_edge

kref_get_unless_zero.exit.i.do.end14.i_crit_edge: ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14.i

kref_get_unless_zero.exit.i.do.body.i_crit_edge:  ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.end14.i:                                       ; preds = %kref_get_unless_zero.exit.i.do.end14.i_crit_edge, %do.end8.i.do.end14.i_crit_edge
  %call.i18.i = call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i18.i, label %do.end14.i.aa_get_label_rcu.exit_crit_edge, label %land.lhs.true.i21.i

do.end14.i.aa_get_label_rcu.exit_crit_edge:       ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aa_get_label_rcu.exit

land.lhs.true.i21.i:                              ; preds = %do.end14.i
  %call1.i19.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19.i)
  %tobool.not.i20.i = icmp eq i32 %call1.i19.i, 0
  br i1 %tobool.not.i20.i, label %land.lhs.true.i21.i.aa_get_label_rcu.exit_crit_edge, label %land.lhs.true2.i23.i

land.lhs.true.i21.i.aa_get_label_rcu.exit_crit_edge: ; preds = %land.lhs.true.i21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aa_get_label_rcu.exit

land.lhs.true2.i23.i:                             ; preds = %land.lhs.true.i21.i
  %.b4.i22.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22.i, label %land.lhs.true2.i23.i.aa_get_label_rcu.exit_crit_edge, label %if.then.i24.i

land.lhs.true2.i23.i.aa_get_label_rcu.exit_crit_edge: ; preds = %land.lhs.true2.i23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aa_get_label_rcu.exit

if.then.i24.i:                                    ; preds = %land.lhs.true2.i23.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.12) #6
  br label %aa_get_label_rcu.exit

aa_get_label_rcu.exit:                            ; preds = %if.then.i24.i, %land.lhs.true2.i23.i.aa_get_label_rcu.exit_crit_edge, %land.lhs.true.i21.i.aa_get_label_rcu.exit_crit_edge, %do.end14.i.aa_get_label_rcu.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !59
  %28 = call i32 @llvm.read_register.i32(metadata !47) #6
  %and.i.i.i.i.i25.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i25.i to ptr
  %preempt_count.i.i.i.i26.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i26.i, align 4
  %sub.i.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i26.i, align 4
  call void @rcu_read_unlock_strict() #6
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br i1 %tobool11.not.i, label %do.end89, label %aa_get_label_rcu.exit.return_crit_edge, !prof !58

aa_get_label_rcu.exit.return_crit_edge:           ; preds = %aa_get_label_rcu.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end89:                                         ; preds = %aa_get_label_rcu.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 431, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.aa_get_newest_label) #6
  br label %return

if.then.i118:                                     ; preds = %if.end
  %call.i.i.i.i.i.i.i117 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %l, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr nonnull %l, i32 1, i32 3, i32 1) #6
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %l, ptr nonnull %l, i32 1, ptr nonnull elementtype(i32) %l) #6, !srcloc !62
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i118.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !58

if.then.i118.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i118
  %add.i.i.i.i.i119 = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %33 = or i32 %add.i.i.i.i.i119, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %.not.i.i.i.i.i120 = icmp sgt i32 %33, -1
  br i1 %.not.i.i.i.i.i120, label %if.else.i.i.i.i.i.return_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !61

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.return_crit_edge:               ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i118.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i118.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %l, i32 noundef %.sink.i.i.i.i.i) #6
  br label %return

return:                                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.return_crit_edge, %do.end89, %aa_get_label_rcu.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ null, %do.end89 ], [ %15, %aa_get_label_rcu.exit.return_crit_edge ], [ %l, %if.else.i.i.i.i.i.return_crit_edge ], [ %l, %if.end15.sink.split.i.i.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_replace_current_label(ptr noundef %label) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !47) #6
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i, align 16
  %security.i.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @apparmor_blob_sizes to i32))
  %8 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %8
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %entry.cred_label.exit.i.i_crit_edge, !prof !58

entry.cred_label.exit.i.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cred_label.exit.i.i

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.cred_label) #6
  br label %cred_label.exit.i.i

cred_label.exit.i.i:                              ; preds = %do.end.i.i.i, %entry.cred_label.exit.i.i_crit_edge
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %cred_label.exit.i.i.aa_current_raw_label.exit_crit_edge, !prof !58

cred_label.exit.i.i.aa_current_raw_label.exit_crit_edge: ; preds = %cred_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aa_current_raw_label.exit

do.end.i.i:                                       ; preds = %cred_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.aa_cred_raw_label) #6
  br label %aa_current_raw_label.exit

aa_current_raw_label.exit:                        ; preds = %do.end.i.i, %cred_label.exit.i.i.aa_current_raw_label.exit_crit_edge
  %11 = tail call i32 @llvm.read_register.i32(metadata !47) #6
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %security.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 215
  %15 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %security.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @apparmor_blob_sizes, i32 0, i32 6) to i32))
  %17 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @apparmor_blob_sizes, i32 0, i32 6), align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %17
  %tobool.not = icmp eq ptr %label, null
  br i1 %tobool.not, label %do.end, label %aa_current_raw_label.exit.if.end_crit_edge, !prof !58

aa_current_raw_label.exit.if.end_crit_edge:       ; preds = %aa_current_raw_label.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %aa_current_raw_label.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 47, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.aa_replace_current_label) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %aa_current_raw_label.exit.if.end_crit_edge
  %cmp = icmp eq ptr %10, %label
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.end30

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end30:                                         ; preds = %if.end
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 99
  %20 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cred, align 16
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 98
  %22 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %real_cred, align 4
  %cmp40.not = icmp eq ptr %21, %23
  br i1 %cmp40.not, label %if.end42, label %do.end30.cleanup_crit_edge

do.end30.cleanup_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end42:                                         ; preds = %do.end30
  %call43 = tail call ptr @prepare_creds() #6
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %if.end42.cleanup_crit_edge, label %if.end46

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 8
  %tobool47.not = icmp eq ptr %25, null
  br i1 %tobool47.not, label %if.end46.if.end55_crit_edge, label %land.lhs.true

if.end46.if.end55_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

land.lhs.true:                                    ; preds = %if.end46
  %flags = getelementptr inbounds %struct.aa_label, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %and = and i32 %27, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool49.not = icmp eq i32 %and, 0
  br i1 %tobool49.not, label %land.lhs.true.if.end55_crit_edge, label %if.then.i

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then.i:                                        ; preds = %land.lhs.true
  %call53 = tail call fastcc ptr @aa_get_newest_label(ptr noundef nonnull %25)
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call53, ptr %add.ptr.i, align 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %25, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr nonnull %25, i32 1, i32 3, i32 1) #6
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %25, ptr nonnull %25, i32 1, ptr nonnull elementtype(i32) %25) #6, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end55_crit_edge, label %if.then10.i.i.i.i.i, !prof !61

if.end5.i.i.i.i.i.if.end55_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %25, i32 noundef 3) #6
  br label %if.end55

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @aa_label_kref(ptr noundef nonnull %25) #6
  br label %if.end55

if.end55:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end55_crit_edge, %land.lhs.true.if.end55_crit_edge, %if.end46.if.end55_crit_edge
  %flags56 = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 5
  %30 = ptrtoint ptr %flags56 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags56, align 4
  %and57 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %lor.lhs.false, label %if.end55.if.then67_crit_edge

if.end55.if.then67_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then67

lor.lhs.false:                                    ; preds = %if.end55
  %vec = getelementptr inbounds %struct.aa_label, ptr %10, i32 0, i32 8
  %size = getelementptr inbounds %struct.aa_label, ptr %10, i32 0, i32 7
  %32 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size, align 4
  %sub = add i32 %33, -1
  %arrayidx59 = getelementptr ptr, ptr %vec, i32 %sub
  %34 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx59, align 4
  %ns = getelementptr inbounds %struct.aa_profile, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ns, align 4
  %vec60 = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 8
  %size62 = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 7
  %38 = ptrtoint ptr %size62 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size62, align 4
  %sub63 = add i32 %39, -1
  %arrayidx64 = getelementptr ptr, ptr %vec60, i32 %sub63
  %40 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx64, align 4
  %ns65 = getelementptr inbounds %struct.aa_profile, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %ns65 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ns65, align 4
  %cmp66.not = icmp eq ptr %37, %43
  br i1 %cmp66.not, label %lor.lhs.false.if.end71_crit_edge, label %lor.lhs.false.if.then67_crit_edge

lor.lhs.false.if.then67_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then67

lor.lhs.false.if.end71_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then67:                                        ; preds = %lor.lhs.false.if.then67_crit_edge, %if.end55.if.then67_crit_edge
  %44 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task, align 8
  %security.i93 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 215
  %46 = ptrtoint ptr %security.i93 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %security.i93, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @apparmor_blob_sizes, i32 0, i32 6) to i32))
  %48 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @apparmor_blob_sizes, i32 0, i32 6), align 4
  %add.ptr.i94 = getelementptr i8, ptr %47, i32 %48
  tail call fastcc void @aa_clear_task_ctx_trans(ptr noundef %add.ptr.i94)
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %lor.lhs.false.if.end71_crit_edge
  br i1 %tobool.not, label %if.end71.aa_get_label.exit_crit_edge, label %if.then.i97

if.end71.aa_get_label.exit_crit_edge:             ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %aa_get_label.exit

if.then.i97:                                      ; preds = %if.end71
  %call.i.i.i.i.i.i.i96 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %label, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr nonnull %label, i32 1, i32 3, i32 1) #6
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %label, ptr nonnull %label, i32 1, ptr nonnull elementtype(i32) %label) #6, !srcloc !62
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i97.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !58

if.then.i97.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i97
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %50 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %.not.i.i.i.i.i98 = icmp sgt i32 %50, -1
  br i1 %.not.i.i.i.i.i98, label %if.else.i.i.i.i.i.aa_get_label.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !61

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.aa_get_label.exit_crit_edge:    ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aa_get_label.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i97.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i97.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %label, i32 noundef %.sink.i.i.i.i.i) #6
  br label %aa_get_label.exit

aa_get_label.exit:                                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.aa_get_label.exit_crit_edge, %if.end71.aa_get_label.exit_crit_edge
  %security.i99 = getelementptr inbounds %struct.cred, ptr %call43, i32 0, i32 23
  %51 = ptrtoint ptr %security.i99 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %security.i99, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @apparmor_blob_sizes to i32))
  %53 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i100 = getelementptr i8, ptr %52, i32 %53
  %tobool.not.i101 = icmp eq ptr %add.ptr.i100, null
  br i1 %tobool.not.i101, label %do.end.i, label %aa_get_label.exit.cred_label.exit_crit_edge, !prof !58

aa_get_label.exit.cred_label.exit_crit_edge:      ; preds = %aa_get_label.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cred_label.exit

do.end.i:                                         ; preds = %aa_get_label.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.cred_label) #6
  br label %cred_label.exit

cred_label.exit:                                  ; preds = %do.end.i, %aa_get_label.exit.cred_label.exit_crit_edge
  %54 = ptrtoint ptr %add.ptr.i100 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr.i100, align 4
  %tobool.not.i102 = icmp eq ptr %55, null
  br i1 %tobool.not.i102, label %cred_label.exit.aa_put_label.exit111_crit_edge, label %if.then.i106

cred_label.exit.aa_put_label.exit111_crit_edge:   ; preds = %cred_label.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %aa_put_label.exit111

if.then.i106:                                     ; preds = %cred_label.exit
  %call.i.i.i.i.i.i.i103 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %55, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr nonnull %55, i32 1, i32 3, i32 1) #6
  %56 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %55, ptr nonnull %55, i32 1, ptr nonnull elementtype(i32) %55) #6, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i104 = extractvalue { i32, i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i104)
  %cmp.i.i.i.i.i105 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i104, 1
  br i1 %cmp.i.i.i.i.i105, label %if.then.i.i110, label %if.end5.i.i.i.i.i108

if.end5.i.i.i.i.i108:                             ; preds = %if.then.i106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i104)
  %.not.i.i.i.i.i107 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i104, 0
  br i1 %.not.i.i.i.i.i107, label %if.end5.i.i.i.i.i108.aa_put_label.exit111_crit_edge, label %if.then10.i.i.i.i.i109, !prof !61

if.end5.i.i.i.i.i108.aa_put_label.exit111_crit_edge: ; preds = %if.end5.i.i.i.i.i108
  call void @__sanitizer_cov_trace_pc() #8
  br label %aa_put_label.exit111

if.then10.i.i.i.i.i109:                           ; preds = %if.end5.i.i.i.i.i108
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %55, i32 noundef 3) #6
  br label %aa_put_label.exit111

if.then.i.i110:                                   ; preds = %if.then.i106
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @aa_label_kref(ptr noundef nonnull %55) #6
  br label %aa_put_label.exit111

aa_put_label.exit111:                             ; preds = %if.then.i.i110, %if.then10.i.i.i.i.i109, %if.end5.i.i.i.i.i108.aa_put_label.exit111_crit_edge, %cred_label.exit.aa_put_label.exit111_crit_edge
  %57 = ptrtoint ptr %security.i99 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %security.i99, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @apparmor_blob_sizes to i32))
  %59 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i113 = getelementptr i8, ptr %58, i32 %59
  %tobool.not.i114 = icmp eq ptr %add.ptr.i113, null
  br i1 %tobool.not.i114, label %do.end.i115, label %aa_put_label.exit111.set_cred_label.exit_crit_edge, !prof !58

aa_put_label.exit111.set_cred_label.exit_crit_edge: ; preds = %aa_put_label.exit111
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_cred_label.exit

do.end.i115:                                      ; preds = %aa_put_label.exit111
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 35, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.set_cred_label) #6
  br label %set_cred_label.exit

set_cred_label.exit:                              ; preds = %do.end.i115, %aa_put_label.exit111.set_cred_label.exit_crit_edge
  %60 = ptrtoint ptr %add.ptr.i113 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %label, ptr %add.ptr.i113, align 4
  %call74 = tail call i32 @commit_creds(ptr noundef nonnull %call43) #6
  br label %cleanup

cleanup:                                          ; preds = %set_cred_label.exit, %if.end42.cleanup_crit_edge, %do.end30.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %set_cred_label.exit ], [ 0, %if.end.cleanup_crit_edge ], [ -16, %do.end30.cleanup_crit_edge ], [ -12, %if.end42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_creds() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aa_clear_task_ctx_trans(ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !58

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.aa_clear_task_ctx_trans) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %previous = getelementptr inbounds %struct.aa_task_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %previous to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %previous, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.aa_put_label.exit_crit_edge, label %if.then.i

if.end.aa_put_label.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %aa_put_label.exit

if.then.i:                                        ; preds = %if.end
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
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !61

if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aa_put_label.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef 3) #6
  br label %aa_put_label.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @aa_label_kref(ptr noundef nonnull %1) #6
  br label %aa_put_label.exit

aa_put_label.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, %if.end.aa_put_label.exit_crit_edge
  %onexec = getelementptr inbounds %struct.aa_task_ctx, ptr %ctx, i32 0, i32 1
  %3 = ptrtoint ptr %onexec to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %onexec, align 4
  %tobool.not.i32 = icmp eq ptr %4, null
  br i1 %tobool.not.i32, label %aa_put_label.exit.aa_put_label.exit41_crit_edge, label %if.then.i36

aa_put_label.exit.aa_put_label.exit41_crit_edge:  ; preds = %aa_put_label.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %aa_put_label.exit41

if.then.i36:                                      ; preds = %aa_put_label.exit
  %call.i.i.i.i.i.i.i33 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %4, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr nonnull %4, i32 1, i32 3, i32 1) #6
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #6, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i34 = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i34)
  %cmp.i.i.i.i.i35 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i34, 1
  br i1 %cmp.i.i.i.i.i35, label %if.then.i.i40, label %if.end5.i.i.i.i.i38

if.end5.i.i.i.i.i38:                              ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i34)
  %.not.i.i.i.i.i37 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i34, 0
  br i1 %.not.i.i.i.i.i37, label %if.end5.i.i.i.i.i38.aa_put_label.exit41_crit_edge, label %if.then10.i.i.i.i.i39, !prof !61

if.end5.i.i.i.i.i38.aa_put_label.exit41_crit_edge: ; preds = %if.end5.i.i.i.i.i38
  call void @__sanitizer_cov_trace_pc() #8
  br label %aa_put_label.exit41

if.then10.i.i.i.i.i39:                            ; preds = %if.end5.i.i.i.i.i38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %4, i32 noundef 3) #6
  br label %aa_put_label.exit41

if.then.i.i40:                                    ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @aa_label_kref(ptr noundef nonnull %4) #6
  br label %aa_put_label.exit41

aa_put_label.exit41:                              ; preds = %if.then.i.i40, %if.then10.i.i.i.i.i39, %if.end5.i.i.i.i.i38.aa_put_label.exit41_crit_edge, %aa_put_label.exit.aa_put_label.exit41_crit_edge
  %6 = ptrtoint ptr %previous to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %previous, align 8
  %7 = ptrtoint ptr %onexec to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %onexec, align 4
  %token = getelementptr inbounds %struct.aa_task_ctx, ptr %ctx, i32 0, i32 3
  %8 = ptrtoint ptr %token to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %token, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @commit_creds(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_set_current_onexec(ptr noundef %label, i1 noundef zeroext %stack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !47) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %security.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 215
  %4 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %security.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @apparmor_blob_sizes, i32 0, i32 6) to i32))
  %6 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @apparmor_blob_sizes, i32 0, i32 6), align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %6
  %tobool.not.i = icmp eq ptr %label, null
  br i1 %tobool.not.i, label %entry.aa_get_label.exit_crit_edge, label %if.then.i

entry.aa_get_label.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %aa_get_label.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %label, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr nonnull %label, i32 1, i32 3, i32 1) #6
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %label, ptr nonnull %label, i32 1, ptr nonnull elementtype(i32) %label) #6, !srcloc !62
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !58

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.aa_get_label.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !61

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.aa_get_label.exit_crit_edge:    ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aa_get_label.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %label, i32 noundef %.sink.i.i.i.i.i) #6
  br label %aa_get_label.exit

aa_get_label.exit:                                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.aa_get_label.exit_crit_edge, %entry.aa_get_label.exit_crit_edge
  %onexec = getelementptr inbounds %struct.aa_task_ctx, ptr %add.ptr.i, i32 0, i32 1
  %9 = ptrtoint ptr %onexec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %onexec, align 4
  %tobool.not.i7 = icmp eq ptr %10, null
  br i1 %tobool.not.i7, label %aa_get_label.exit.aa_put_label.exit_crit_edge, label %if.then.i9

aa_get_label.exit.aa_put_label.exit_crit_edge:    ; preds = %aa_get_label.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %aa_put_label.exit

if.then.i9:                                       ; preds = %aa_get_label.exit
  %call.i.i.i.i.i.i.i8 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %10, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr nonnull %10, i32 1, i32 3, i32 1) #6
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %10, ptr nonnull %10, i32 1, ptr nonnull elementtype(i32) %10) #6, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i10 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i10, label %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !61

if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aa_put_label.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %10, i32 noundef 3) #6
  br label %aa_put_label.exit

if.then.i.i:                                      ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @aa_label_kref(ptr noundef nonnull %10) #6
  br label %aa_put_label.exit

aa_put_label.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, %aa_get_label.exit.aa_put_label.exit_crit_edge
  %12 = ptrtoint ptr %onexec to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %label, ptr %onexec, align 4
  %conv = zext i1 %stack to i64
  %token = getelementptr inbounds %struct.aa_task_ctx, ptr %add.ptr.i, i32 0, i32 3
  %13 = ptrtoint ptr %token to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv, ptr %token, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_set_current_hat(ptr noundef %label, i64 noundef %token) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !47) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %security.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 215
  %4 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %security.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @apparmor_blob_sizes, i32 0, i32 6) to i32))
  %6 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @apparmor_blob_sizes, i32 0, i32 6), align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %6
  %call2 = tail call ptr @prepare_creds() #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %tobool3.not = icmp eq ptr %label, null
  br i1 %tobool3.not, label %do.end, label %do.body.if.end20_crit_edge, !prof !58

do.body.if.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 123, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.aa_set_current_hat) #6
  br label %if.end20

if.end20:                                         ; preds = %do.end, %do.body.if.end20_crit_edge
  %previous = getelementptr inbounds %struct.aa_task_ctx, ptr %add.ptr.i, i32 0, i32 2
  %7 = ptrtoint ptr %previous to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %previous, align 8
  %tobool29.not = icmp eq ptr %8, null
  br i1 %tobool29.not, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end20
  %security.i57 = getelementptr inbounds %struct.cred, ptr %call2, i32 0, i32 23
  %9 = ptrtoint ptr %security.i57 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %security.i57, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @apparmor_blob_sizes to i32))
  %11 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i58 = getelementptr i8, ptr %10, i32 %11
  %tobool.not.i = icmp eq ptr %add.ptr.i58, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then30.cred_label.exit_crit_edge, !prof !58

if.then30.cred_label.exit_crit_edge:              ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cred_label.exit

do.end.i:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.cred_label) #6
  br label %cred_label.exit

cred_label.exit:                                  ; preds = %do.end.i, %if.then30.cred_label.exit_crit_edge
  %12 = ptrtoint ptr %add.ptr.i58 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i58, align 4
  %14 = ptrtoint ptr %previous to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %previous, align 8
  %token33 = getelementptr inbounds %struct.aa_task_ctx, ptr %add.ptr.i, i32 0, i32 3
  %15 = ptrtoint ptr %token33 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %token, ptr %token33, align 8
  br label %if.end39

if.else:                                          ; preds = %if.end20
  %token34 = getelementptr inbounds %struct.aa_task_ctx, ptr %add.ptr.i, i32 0, i32 3
  %16 = ptrtoint ptr %token34 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %token34, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %token)
  %cmp = icmp eq i64 %17, %token
  br i1 %cmp, label %if.then35, label %if.else37

if.then35:                                        ; preds = %if.else
  %security.i59 = getelementptr inbounds %struct.cred, ptr %call2, i32 0, i32 23
  %18 = ptrtoint ptr %security.i59 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %security.i59, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @apparmor_blob_sizes to i32))
  %20 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i60 = getelementptr i8, ptr %19, i32 %20
  %tobool.not.i61 = icmp eq ptr %add.ptr.i60, null
  br i1 %tobool.not.i61, label %do.end.i62, label %if.then35.cred_label.exit63_crit_edge, !prof !58

if.then35.cred_label.exit63_crit_edge:            ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cred_label.exit63

do.end.i62:                                       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.cred_label) #6
  br label %cred_label.exit63

cred_label.exit63:                                ; preds = %do.end.i62, %if.then35.cred_label.exit63_crit_edge
  %21 = ptrtoint ptr %add.ptr.i60 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i60, align 4
  %tobool.not.i64 = icmp eq ptr %22, null
  br i1 %tobool.not.i64, label %cred_label.exit63.if.end39_crit_edge, label %if.then.i

cred_label.exit63.if.end39_crit_edge:             ; preds = %cred_label.exit63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then.i:                                        ; preds = %cred_label.exit63
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %22, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr nonnull %22, i32 1, i32 3, i32 1) #6
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %22, ptr nonnull %22, i32 1, ptr nonnull elementtype(i32) %22) #6, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end39_crit_edge, label %if.then10.i.i.i.i.i, !prof !61

if.end5.i.i.i.i.i.if.end39_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %22, i32 noundef 3) #6
  br label %if.end39

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @aa_label_kref(ptr noundef nonnull %22) #6
  br label %if.end39

if.else37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @abort_creds(ptr noundef nonnull %call2) #6
  br label %cleanup

if.end39:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end39_crit_edge, %cred_label.exit63.if.end39_crit_edge, %cred_label.exit
  %call40 = tail call fastcc ptr @aa_get_newest_label(ptr noundef %label)
  %security.i65 = getelementptr inbounds %struct.cred, ptr %call2, i32 0, i32 23
  %24 = ptrtoint ptr %security.i65 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %security.i65, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @apparmor_blob_sizes to i32))
  %26 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i66 = getelementptr i8, ptr %25, i32 %26
  %tobool.not.i67 = icmp eq ptr %add.ptr.i66, null
  br i1 %tobool.not.i67, label %do.end.i68, label %if.end39.set_cred_label.exit_crit_edge, !prof !58

if.end39.set_cred_label.exit_crit_edge:           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_cred_label.exit

do.end.i68:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 35, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.set_cred_label) #6
  br label %set_cred_label.exit

set_cred_label.exit:                              ; preds = %do.end.i68, %if.end39.set_cred_label.exit_crit_edge
  %27 = ptrtoint ptr %add.ptr.i66 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call40, ptr %add.ptr.i66, align 4
  %onexec = getelementptr inbounds %struct.aa_task_ctx, ptr %add.ptr.i, i32 0, i32 1
  %28 = ptrtoint ptr %onexec to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %onexec, align 4
  %tobool.not.i69 = icmp eq ptr %29, null
  br i1 %tobool.not.i69, label %set_cred_label.exit.aa_put_label.exit78_crit_edge, label %if.then.i73

set_cred_label.exit.aa_put_label.exit78_crit_edge: ; preds = %set_cred_label.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %aa_put_label.exit78

if.then.i73:                                      ; preds = %set_cred_label.exit
  %call.i.i.i.i.i.i.i70 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %29, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr nonnull %29, i32 1, i32 3, i32 1) #6
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %29, ptr nonnull %29, i32 1, ptr nonnull elementtype(i32) %29) #6, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i71 = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i71)
  %cmp.i.i.i.i.i72 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i71, 1
  br i1 %cmp.i.i.i.i.i72, label %if.then.i.i77, label %if.end5.i.i.i.i.i75

if.end5.i.i.i.i.i75:                              ; preds = %if.then.i73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i71)
  %.not.i.i.i.i.i74 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i71, 0
  br i1 %.not.i.i.i.i.i74, label %if.end5.i.i.i.i.i75.aa_put_label.exit78_crit_edge, label %if.then10.i.i.i.i.i76, !prof !61

if.end5.i.i.i.i.i75.aa_put_label.exit78_crit_edge: ; preds = %if.end5.i.i.i.i.i75
  call void @__sanitizer_cov_trace_pc() #8
  br label %aa_put_label.exit78

if.then10.i.i.i.i.i76:                            ; preds = %if.end5.i.i.i.i.i75
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %29, i32 noundef 3) #6
  br label %aa_put_label.exit78

if.then.i.i77:                                    ; preds = %if.then.i73
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @aa_label_kref(ptr noundef nonnull %29) #6
  br label %aa_put_label.exit78

aa_put_label.exit78:                              ; preds = %if.then.i.i77, %if.then10.i.i.i.i.i76, %if.end5.i.i.i.i.i75.aa_put_label.exit78_crit_edge, %set_cred_label.exit.aa_put_label.exit78_crit_edge
  %31 = ptrtoint ptr %onexec to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %onexec, align 4
  %call42 = tail call i32 @commit_creds(ptr noundef nonnull %call2) #6
  br label %cleanup

cleanup:                                          ; preds = %aa_put_label.exit78, %if.else37, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %aa_put_label.exit78 ], [ -13, %if.else37 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @abort_creds(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_restore_previous_label(i64 noundef %token) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !47) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %security.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 215
  %4 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %security.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @apparmor_blob_sizes, i32 0, i32 6) to i32))
  %6 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @apparmor_blob_sizes, i32 0, i32 6), align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %6
  %token2 = getelementptr inbounds %struct.aa_task_ctx, ptr %add.ptr.i, i32 0, i32 3
  %7 = ptrtoint ptr %token2 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %token2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %token)
  %cmp.not = icmp eq i64 %8, %token
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %previous = getelementptr inbounds %struct.aa_task_ctx, ptr %add.ptr.i, i32 0, i32 2
  %9 = ptrtoint ptr %previous to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %previous, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @prepare_creds() #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %security.i49 = getelementptr inbounds %struct.cred, ptr %call5, i32 0, i32 23
  %11 = ptrtoint ptr %security.i49 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %security.i49, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @apparmor_blob_sizes to i32))
  %13 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i50 = getelementptr i8, ptr %12, i32 %13
  %tobool.not.i = icmp eq ptr %add.ptr.i50, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end8.cred_label.exit_crit_edge, !prof !58

if.end8.cred_label.exit_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cred_label.exit

do.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.cred_label) #6
  br label %cred_label.exit

cred_label.exit:                                  ; preds = %do.end.i, %if.end8.cred_label.exit_crit_edge
  %14 = ptrtoint ptr %add.ptr.i50 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i50, align 4
  %tobool.not.i51 = icmp eq ptr %15, null
  br i1 %tobool.not.i51, label %cred_label.exit.aa_put_label.exit_crit_edge, label %if.then.i

cred_label.exit.aa_put_label.exit_crit_edge:      ; preds = %cred_label.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %aa_put_label.exit

if.then.i:                                        ; preds = %cred_label.exit
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %15, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr nonnull %15, i32 1, i32 3, i32 1) #6
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %15, ptr nonnull %15, i32 1, ptr nonnull elementtype(i32) %15) #6, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !61

if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aa_put_label.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %15, i32 noundef 3) #6
  br label %aa_put_label.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @aa_label_kref(ptr noundef nonnull %15) #6
  br label %aa_put_label.exit

aa_put_label.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, %cred_label.exit.aa_put_label.exit_crit_edge
  %17 = ptrtoint ptr %previous to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %previous, align 8
  %call11 = tail call fastcc ptr @aa_get_newest_label(ptr noundef %18)
  %19 = ptrtoint ptr %security.i49 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %security.i49, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @apparmor_blob_sizes to i32))
  %21 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i53 = getelementptr i8, ptr %20, i32 %21
  %tobool.not.i54 = icmp eq ptr %add.ptr.i53, null
  br i1 %tobool.not.i54, label %do.end.i55, label %aa_put_label.exit.set_cred_label.exit_crit_edge, !prof !58

aa_put_label.exit.set_cred_label.exit_crit_edge:  ; preds = %aa_put_label.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_cred_label.exit

do.end.i55:                                       ; preds = %aa_put_label.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 35, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.set_cred_label) #6
  br label %set_cred_label.exit

set_cred_label.exit:                              ; preds = %do.end.i55, %aa_put_label.exit.set_cred_label.exit_crit_edge
  %22 = ptrtoint ptr %add.ptr.i53 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call11, ptr %add.ptr.i53, align 4
  %23 = ptrtoint ptr %security.i49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %security.i49, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @apparmor_blob_sizes to i32))
  %25 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i57 = getelementptr i8, ptr %24, i32 %25
  %tobool.not.i58 = icmp eq ptr %add.ptr.i57, null
  br i1 %tobool.not.i58, label %do.end.i59, label %set_cred_label.exit.cred_label.exit60_crit_edge, !prof !58

set_cred_label.exit.cred_label.exit60_crit_edge:  ; preds = %set_cred_label.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cred_label.exit60

do.end.i59:                                       ; preds = %set_cred_label.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.cred_label) #6
  br label %cred_label.exit60

cred_label.exit60:                                ; preds = %do.end.i59, %set_cred_label.exit.cred_label.exit60_crit_edge
  %26 = ptrtoint ptr %add.ptr.i57 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i57, align 4
  %tobool13.not = icmp eq ptr %27, null
  br i1 %tobool13.not, label %do.end, label %cred_label.exit60.if.end30_crit_edge, !prof !58

cred_label.exit60.if.end30_crit_edge:             ; preds = %cred_label.exit60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

do.end:                                           ; preds = %cred_label.exit60
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 172, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.aa_restore_previous_label) #6
  br label %if.end30

if.end30:                                         ; preds = %do.end, %cred_label.exit60.if.end30_crit_edge
  tail call fastcc void @aa_clear_task_ctx_trans(ptr noundef %add.ptr.i)
  %call39 = tail call i32 @commit_creds(ptr noundef nonnull %call5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end30 ], [ -13, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_label_kref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !13, !15, !16, !17, !19, !20, !21, !23, !25, !27, !28, !30, !31, !33, !35, !36, !38, !40, !41, !42, !44, !45}
!llvm.named.register.sp = !{!47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/apparmor/task.c", i32 47, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.aa_replace_current_label, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../security/apparmor/task.c", i32 52, i32 6}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../security/apparmor/task.c", i32 52, i32 24}
!8 = !{ptr @__func__.aa_set_current_hat, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../security/apparmor/task.c", i32 123, i32 2}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/apparmor/task.c", i32 172, i32 2}
!12 = !{ptr @__func__.aa_restore_previous_label, !11, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!15 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../security/apparmor/include/label.h", i32 424, i32 3}
!19 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__func__.aa_get_newest_label, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../security/apparmor/include/label.h", i32 425, i32 3}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../security/apparmor/include/label.h", i32 431, i32 3}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../security/apparmor/include/label.h", i32 401, i32 7}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../security/apparmor/include/cred.h", i32 76, i32 27}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @__func__.aa_cred_raw_label, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../security/apparmor/include/cred.h", i32 51, i32 2}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../security/apparmor/include/cred.h", i32 89, i32 27}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../security/apparmor/include/task.h", i32 71, i32 2}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @__func__.aa_clear_task_ctx_trans, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../security/apparmor/include/cred.h", i32 26, i32 2}
!44 = !{ptr @__func__.cred_label, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @__func__.set_cred_label, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../security/apparmor/include/cred.h", i32 35, i32 2}
!47 = !{!"sp"}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 2149219193}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{i64 2149219459}
!60 = !{i64 884345, i64 884369, i64 884390, i64 884407, i64 884424}
!61 = !{!"branch_weights", i32 2000, i32 1}
!62 = !{i64 2148402139, i64 2148402171, i64 2148402200, i64 2148402234, i64 2148402265, i64 2148402288}
!63 = !{i64 2148490164}
!64 = !{i64 2148404604, i64 2148404636, i64 2148404665, i64 2148404699, i64 2148404730, i64 2148404753}
!65 = !{i64 2149447376}
