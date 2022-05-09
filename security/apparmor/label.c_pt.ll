; ModuleID = '/llk/IR_all_yes/security/apparmor/label.c_pt.bc'
source_filename = "../security/apparmor/label.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.aa_perms = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lsm_blob_sizes = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.aa_proxy = type { %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.aa_label = type { %struct.kref, %struct.rb_node, %struct.callback_head, ptr, ptr, i32, i32, i32, [0 x ptr] }
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
%struct.aa_ns = type { %struct.aa_policy, ptr, %struct.mutex, %struct.aa_ns_acct, ptr, %struct.list_head, %struct.atomic_t, i32, i32, i32, %struct.wait_queue_head, %struct.aa_labelset, %struct.list_head, [13 x ptr] }
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
%struct.label_it = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.111, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.45 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.111 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.30 }
%struct.kgid_t = type { i32 }
%union.anon.30 = type { %struct.callback_head }
%struct.aa_dfa = type { %struct.kref, i16, i32, [8 x ptr] }
%struct.table_header = type { i16, i16, i32, i32, [0 x i8] }

@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"security/apparmor/label.c\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AppArmor WARN %s: ((!orig)): \00", [34 x i8] zeroinitializer }, align 32
@__func__.__aa_proxy_redirect = private unnamed_addr constant [20 x i8] c"__aa_proxy_redirect\00", align 1
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AppArmor WARN %s: ((!new)): \00", [35 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__aa_proxy_redirect.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AppArmor WARN %s: ((n < 1)): \00", [34 x i8] zeroinitializer }, align 32
@__func__.aa_vec_unique = private unnamed_addr constant [14 x i8] c"aa_vec_unique\00", align 1
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AppArmor WARN %s: ((!vec)): \00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AppArmor WARN %s: ((dups < 0)): \00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"AppArmor WARN %s: ((!label)): \00", [33 x i8] zeroinitializer }, align 32
@__func__.aa_label_destroy = private unnamed_addr constant [17 x i8] c"aa_label_destroy\00", align 1
@.str.8 = internal constant { [169 x i8], [55 x i8] } { [169 x i8] c"AppArmor WARN %s: ((((label)->flags & FLAG_PROFILE) && (!list_empty(&label->vec[0]->base.profiles) && (&label->vec[0]->base.profiles)->prev != ((void *) 0x122 + 0)))): \00", [55 x i8] zeroinitializer }, align 32
@__func__.aa_label_kref = private unnamed_addr constant [14 x i8] c"aa_label_kref\00", align 1
@.str.9 = internal constant { [161 x i8], [63 x i8] } { [161 x i8] c"AppArmor WARN %s: ((((label)->flags & FLAG_PROFILE) && (!list_empty(&label->vec[0]->base.list) && (&label->vec[0]->base.list)->prev != ((void *) 0x122 + 0)))): \00", [63 x i8] zeroinitializer }, align 32
@__func__.aa_label_init = private unnamed_addr constant [14 x i8] c"aa_label_init\00", align 1
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AppArmor WARN %s: ((size < 1)): \00", [63 x i8] zeroinitializer }, align 32
@__func__.aa_label_alloc = private unnamed_addr constant [15 x i8] c"aa_label_alloc\00", align 1
@aa_g_debug = external dso_local local_unnamed_addr global i8, align 1
@aa_label_alloc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@aa_label_alloc.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @__func__.aa_label_alloc, ptr @.str, ptr @.str.13, i8 0, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apparmor\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AppArmor: %s (%p)\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.aa_label_next_confined = private unnamed_addr constant [23 x i8] c"aa_label_next_confined\00", align 1
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AppArmor WARN %s: ((i < 0)): \00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AppArmor WARN %s: ((!set)): \00", [35 x i8] zeroinitializer }, align 32
@__func__.__aa_label_next_not_in_set = private unnamed_addr constant [27 x i8] c"__aa_label_next_not_in_set\00", align 1
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AppArmor WARN %s: ((!I)): \00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AppArmor WARN %s: ((I->i < 0)): \00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"AppArmor WARN %s: ((I->i > set->size)): \00", [55 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AppArmor WARN %s: ((!sub)): \00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AppArmor WARN %s: ((I->j < 0)): \00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"AppArmor WARN %s: ((I->j > sub->size)): \00", [55 x i8] zeroinitializer }, align 32
@__func__.aa_label_is_subset = private unnamed_addr constant [19 x i8] c"aa_label_is_subset\00", align 1
@__func__.aa_label_is_unconfined_subset = private unnamed_addr constant [30 x i8] c"aa_label_is_unconfined_subset\00", align 1
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"AppArmor WARN %s: ((!ls)): \00", [36 x i8] zeroinitializer }, align 32
@__func__.aa_label_remove = private unnamed_addr constant [16 x i8] c"aa_label_remove\00", align 1
@__func__.aa_label_find = private unnamed_addr constant [14 x i8] c"aa_label_find\00", align 1
@__func__.aa_label_insert = private unnamed_addr constant [16 x i8] c"aa_label_insert\00", align 1
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AppArmor WARN %s: ((!a)): \00", [37 x i8] zeroinitializer }, align 32
@__func__.aa_label_next_in_merge = private unnamed_addr constant [23 x i8] c"aa_label_next_in_merge\00", align 1
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AppArmor WARN %s: ((!b)): \00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"AppArmor WARN %s: ((I->i > a->size)): \00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"AppArmor WARN %s: ((I->j > b->size)): \00", [57 x i8] zeroinitializer }, align 32
@__func__.aa_label_find_merge = private unnamed_addr constant [20 x i8] c"aa_label_find_merge\00", align 1
@__func__.aa_label_merge = private unnamed_addr constant [15 x i8] c"aa_label_merge\00", align 1
@allperms = external dso_local local_unnamed_addr global %struct.aa_perms, align 4
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"AppArmor WARN %s: ((!ns)): \00", [36 x i8] zeroinitializer }, align 32
@__func__.aa_update_label_name = private unnamed_addr constant [21 x i8] c"aa_update_label_name\00", align 1
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"AppArmor WARN %s: ((!str && size != 0)): \00", [54 x i8] zeroinitializer }, align 32
@__func__.aa_label_snxprint = private unnamed_addr constant [18 x i8] c"aa_label_snxprint\00", align 1
@root_ns = external dso_local local_unnamed_addr global ptr, align 4
@.str.29 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"=\00", [30 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"AppArmor WARN %s: ((len < 0)): \00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"//&\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unconfined\00", [21 x i8] zeroinitializer }, align 32
@aa_hidden_ns_name = external dso_local local_unnamed_addr global ptr, align 4
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" (%s)\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AppArmor WARN %s: ((!strp)): \00", [34 x i8] zeroinitializer }, align 32
@__func__.aa_label_asxprint = private unnamed_addr constant [18 x i8] c"aa_label_asxprint\00", align 1
@__func__.aa_label_acntsxprint = private unnamed_addr constant [21 x i8] c"aa_label_acntsxprint\00", align 1
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"AppArmor WARN %s: ((!ab)): \00", [36 x i8] zeroinitializer }, align 32
@__func__.aa_label_xaudit = private unnamed_addr constant [16 x i8] c"aa_label_xaudit\00", align 1
@aa_label_xaudit._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@aa_label_xaudit.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @__func__.aa_label_xaudit, ptr @.str, ptr @.str.37, i8 1, i8 -75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"AppArmor: label print error\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AppArmor WARN %s: ((!f)): \00", [37 x i8] zeroinitializer }, align 32
@__func__.aa_label_seq_xprint = private unnamed_addr constant [20 x i8] c"aa_label_seq_xprint\00", align 1
@aa_label_seq_xprint._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@aa_label_seq_xprint.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @__func__.aa_label_seq_xprint, ptr @.str, ptr @.str.37, i8 1, i8 -68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s (%s)\00", [24 x i8] zeroinitializer }, align 32
@__func__.aa_label_xprintk = private unnamed_addr constant [17 x i8] c"aa_label_xprintk\00", align 1
@aa_label_xprintk._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@aa_label_xprintk.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @__func__.aa_label_xprintk, ptr @.str, ptr @.str.37, i8 1, i8 -63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@aa_label_xprintk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @__func__.aa_label_xprintk, ptr @.str, i32 1802, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\016%s\00", [27 x i8] zeroinitializer }, align 32
@aa_label_xprintk._entry_ptr = internal global ptr @aa_label_xprintk._entry, section ".printk_index", align 4
@aa_label_xprintk._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @__func__.aa_label_xprintk, ptr @.str, i32 1806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\016%s (%s)\00", [22 x i8] zeroinitializer }, align 32
@aa_label_xprintk._entry_ptr.43 = internal global ptr @aa_label_xprintk._entry.41, section ".printk_index", align 4
@aa_label_xprintk._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @__func__.aa_label_xprintk, ptr @.str, i32 1808, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@aa_label_xprintk._entry_ptr.45 = internal global ptr @aa_label_xprintk._entry.44, section ".printk_index", align 4
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AppArmor WARN %s: ((!base)): \00", [34 x i8] zeroinitializer }, align 32
@__func__.aa_label_strn_parse = private unnamed_addr constant [20 x i8] c"aa_label_strn_parse\00", align 1
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AppArmor WARN %s: ((!str)): \00", [35 x i8] zeroinitializer }, align 32
@__func__.aa_labelset_destroy = private unnamed_addr constant [20 x i8] c"aa_labelset_destroy\00", align 1
@__func__.aa_labelset_init = private unnamed_addr constant [17 x i8] c"aa_labelset_init\00", align 1
@aa_labelset_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ls->lock\00", [22 x i8] zeroinitializer }, align 32
@__func__.__aa_labelset_update_subtree = private unnamed_addr constant [29 x i8] c"__aa_labelset_update_subtree\00", align 1
@.str.49 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"AppArmor WARN %s: ((!mutex_is_locked(&ns->lock))): \00", [44 x i8] zeroinitializer }, align 32
@__func__.unique = private unnamed_addr constant [7 x i8] c"unique\00", align 1
@.str.50 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"AppArmor WARN %s: ((res > 0)): vec not sorted\00", [50 x i8] zeroinitializer }, align 32
@__func__.profile_cmp = private unnamed_addr constant [12 x i8] c"profile_cmp\00", align 1
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"AppArmor WARN %s: ((!a->ns)): \00", [33 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"AppArmor WARN %s: ((!b->ns)): \00", [33 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"AppArmor WARN %s: ((!a->base.hname)): \00", [57 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"AppArmor WARN %s: ((!b->base.hname)): \00", [57 x i8] zeroinitializer }, align 32
@__func__.ns_cmp = private unnamed_addr constant [7 x i8] c"ns_cmp\00", align 1
@__func__.__label_remove = private unnamed_addr constant [15 x i8] c"__label_remove\00", align 1
@__func__.__label_replace = private unnamed_addr constant [16 x i8] c"__label_replace\00", align 1
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AppArmor WARN %s: ((!old)): \00", [35 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"AppArmor WARN %s: ((new->flags & FLAG_IN_TREE)): \00", [46 x i8] zeroinitializer }, align 32
@__func__.__label_insert = private unnamed_addr constant [15 x i8] c"__label_insert\00", align 1
@.str.57 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"AppArmor WARN %s: (((&(((((&((label)->vec[0])))[(((label)->size)) - 1])->ns))->labels) != ls)): \00", [63 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"AppArmor WARN %s: ((label->flags & FLAG_IN_TREE)): \00", [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"AppArmor WARN %s: ((!__label_replace(this, label))): \00", [42 x i8] zeroinitializer }, align 32
@__func__.label_cmp = private unnamed_addr constant [10 x i8] c"label_cmp\00", align 1
@__func__.vec_cmp = private unnamed_addr constant [8 x i8] c"vec_cmp\00", align 1
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"AppArmor WARN %s: ((!*a)): \00", [36 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"AppArmor WARN %s: ((!*b)): \00", [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"AppArmor WARN %s: ((an <= 0)): \00", [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"AppArmor WARN %s: ((bn <= 0)): \00", [32 x i8] zeroinitializer }, align 32
@__func__.vec_find = private unnamed_addr constant [9 x i8] c"vec_find\00", align 1
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AppArmor WARN %s: ((!*vec)): \00", [34 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"AppArmor WARN %s: ((n <= 0)): \00", [33 x i8] zeroinitializer }, align 32
@__func__.__vec_find = private unnamed_addr constant [11 x i8] c"__vec_find\00", align 1
@__func__.vec_create_and_insert_label = private unnamed_addr constant [28 x i8] c"vec_create_and_insert_label\00", align 1
@__func__.__label_find = private unnamed_addr constant [13 x i8] c"__label_find\00", align 1
@.str.66 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"security/apparmor/include/label.h\00", [62 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AppArmor WARN %s: ((!l->proxy)): \00", [62 x i8] zeroinitializer }, align 32
@__func__.aa_get_newest_label = private unnamed_addr constant [20 x i8] c"aa_get_newest_label\00", align 1
@.str.68 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"AppArmor WARN %s: ((!l->proxy->label)): \00", [55 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AppArmor WARN %s: ((!tmp)): \00", [35 x i8] zeroinitializer }, align 32
@aa_get_label_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.70 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.73 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__func__.__label_find_merge = private unnamed_addr constant [19 x i8] c"__label_find_merge\00", align 1
@__func__.label_merge_cmp = private unnamed_addr constant [16 x i8] c"label_merge_cmp\00", align 1
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AppArmor WARN %s: ((!z)): \00", [37 x i8] zeroinitializer }, align 32
@__func__.label_merge_insert = private unnamed_addr constant [19 x i8] c"label_merge_insert\00", align 1
@.str.75 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"AppArmor WARN %s: ((a->size < 0)): \00", [60 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"AppArmor WARN %s: ((b->size < 0)): \00", [60 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"AppArmor WARN %s: ((new->size < a->size + b->size)): \00", [42 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"AppArmor WARN %s: ((!new->vec[k]->label.proxy)): \00", [46 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"AppArmor WARN %s: ((!new->vec[k]->label.proxy->label)): \00", [39 x i8] zeroinitializer }, align 32
@__func__.vec_unconfined = private unnamed_addr constant [15 x i8] c"vec_unconfined\00", align 1
@nullperms = external dso_local local_unnamed_addr global %struct.aa_perms, align 4
@.str.81 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c":\00", [30 x i8] zeroinitializer }, align 32
@__func__.aa_profile_snxprint = private unnamed_addr constant [20 x i8] c"aa_profile_snxprint\00", align 1
@aa_profile_mode_names = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c":%s:%s\00", [25 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mixed\00", [26 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"-\00", [30 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.87 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"security/apparmor/include/cred.h\00", [63 x i8] zeroinitializer }, align 32
@__func__.aa_cred_raw_label = private unnamed_addr constant [18 x i8] c"aa_cred_raw_label\00", align 1
@apparmor_blob_sizes = external dso_local local_unnamed_addr global %struct.lsm_blob_sizes, align 4
@.str.88 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AppArmor WARN %s: ((!blob)): \00", [34 x i8] zeroinitializer }, align 32
@__func__.cred_label = private unnamed_addr constant [11 x i8] c"cred_label\00", align 1
@stacksplitdfa = external dso_local local_unnamed_addr global ptr, align 4
@__func__.__labelset_update = private unnamed_addr constant [18 x i8] c"__labelset_update\00", align 1
@__func__.vec_is_stale = private unnamed_addr constant [13 x i8] c"vec_is_stale\00", align 1
@__func__.__label_update = private unnamed_addr constant [15 x i8] c"__label_update\00", align 1
@.str.89 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"AppArmor WARN %s: ((!mutex_is_locked(&(((((&((label)->vec[0])))[(((label)->size)) - 1])->ns))->lock))): \00", [55 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"AppArmor WARN %s: ((!label->vec[i])): \00", [57 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"AppArmor WARN %s: ((!new->vec[i])): \00", [59 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"AppArmor WARN %s: ((!new->vec[i]->label.proxy)): \00", [46 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"AppArmor WARN %s: ((!new->vec[i]->label.proxy->label)): \00", [39 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"AppArmor WARN %s: ((tmp == label)): \00", [59 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [135 x i8], [57 x i8] } { [135 x i8] c"AppArmor WARN %s: (((((((&((label)->vec[0])))[(((label)->size)) - 1])->ns)) != (((((&((new)->vec[0])))[(((new)->size)) - 1])->ns)))): \00", [57 x i8] zeroinitializer }, align 32
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 77, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 78, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 81, i32 8 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 266, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 267, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 302, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 314, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 378, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 380, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 399, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 429, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 477, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 500, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 501, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 502, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 503, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 504, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 505, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 506, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 775, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 963, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 964, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 967, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 969, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1450, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1631, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1636, i32 29 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1637, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1645, i32 31 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1658, i32 31 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1658, i32 37 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1666, i32 29 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1691, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1741, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1748, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1767, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1776, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1782, i32 17 }
@___asan_gen_.225 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1799, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1802, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1805, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1808, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1894, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1895, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2006, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2151, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 235, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 141, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 142, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 143, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 144, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 631, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 634, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 669, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 671, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 691, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 170, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 172, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 173, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 174, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 840, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 841, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 424, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 425, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 431, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant [37 x i8] c"../security/apparmor/include/label.h\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 401, i32 7 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 695, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 723, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1011, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1059, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1061, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1063, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1069, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1070, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1279, i32 55 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1547, i32 30 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1571, i32 12 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1576, i32 10 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 51, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [36 x i8] c"../security/apparmor/include/cred.h\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 26, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2056, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2069, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2071, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2072, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2073, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2085, i32 4 }
@___asan_gen_.384 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.385 = private constant [29 x i8] c"../security/apparmor/label.c\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2095, i32 3 }
@llvm.compiler.used = appending global [100 x ptr] [ptr @aa_label_xprintk._entry, ptr @aa_label_xprintk._entry.41, ptr @aa_label_xprintk._entry.44, ptr @aa_label_xprintk._entry_ptr, ptr @aa_label_xprintk._entry_ptr.43, ptr @aa_label_xprintk._entry_ptr.45, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @aa_label_alloc._rs, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @aa_label_xaudit._rs, ptr @.str.37, ptr @.str.38, ptr @aa_label_seq_xprint._rs, ptr @.str.39, ptr @aa_label_xprintk._rs, ptr @.str.40, ptr @.str.42, ptr @.str.46, ptr @.str.47, ptr @aa_labelset_init.__key, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 169, i32 224, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 161, i32 224, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_label_alloc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_label_xaudit._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_label_seq_xprint._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_label_xprintk._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_label_xprintk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_label_xprintk._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_label_xprintk._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_labelset_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 135, i32 192, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aa_proxy_kref(ptr noundef %kref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %kref, null
  br i1 %tobool.not.i, label %entry.free_proxy.exit_crit_edge, label %do.end.i

entry.free_proxy.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_proxy.exit

do.end.i:                                         ; preds = %entry
  %label.i = getelementptr inbounds %struct.aa_proxy, ptr %kref, i32 0, i32 1
  %0 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %label.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %do.end.i.aa_put_label.exit.i_crit_edge, label %if.then.i.i

do.end.i.aa_put_label.exit.i_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_put_label.exit.i

if.then.i.i:                                      ; preds = %do.end.i
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !305
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #12, !srcloc !306
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.aa_put_label.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !307

if.end5.i.i.i.i.i.i.aa_put_label.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_put_label.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef 3) #12
  br label %aa_put_label.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !308
  tail call void @aa_label_kref(ptr noundef nonnull %1) #12, !callees !309
  br label %aa_put_label.exit.i

aa_put_label.exit.i:                              ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.aa_put_label.exit.i_crit_edge, %do.end.i.aa_put_label.exit.i_crit_edge
  %3 = ptrtoint ptr %kref to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 0, ptr %kref, align 4
  %4 = ptrtoint ptr %label.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr inttoptr (i32 97 to ptr), ptr %label.i, align 4
  tail call void @kfree(ptr noundef nonnull %kref) #12
  br label %free_proxy.exit

free_proxy.exit:                                  ; preds = %aa_put_label.exit.i, %entry.free_proxy.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aa_alloc_proxy(ptr noundef %label, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %gfp, 256
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i20.i.i, !prof !307

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit

if.end.i20.i.i:                                   ; preds = %entry
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i20.i.i.kzalloc.exit_crit_edge

if.end.i20.i.i.kzalloc.exit_crit_edge:            ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i20.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i21.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i20.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 8) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.if.end_crit_edge, label %if.then

kzalloc.exit.if.end_crit_edge:                    ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %kzalloc.exit
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #12
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %call7.i.i, align 8
  %tobool.not.i = icmp eq ptr %label, null
  br i1 %tobool.not.i, label %if.then.aa_get_label.exit_crit_edge, label %if.then.i

if.then.aa_get_label.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_get_label.exit

if.then.i:                                        ; preds = %if.then
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %label, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull %label, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %label, ptr nonnull %label, i32 1, ptr nonnull elementtype(i32) %label) #12, !srcloc !310
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !311

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.aa_get_label.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !307

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.aa_get_label.exit_crit_edge:    ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_get_label.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %label, i32 noundef %.sink.i.i.i.i.i) #12
  br label %aa_get_label.exit

aa_get_label.exit:                                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.aa_get_label.exit_crit_edge, %if.then.aa_get_label.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !312
  %label13 = getelementptr inbounds %struct.aa_proxy, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %label13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %label, ptr %label13, align 4
  br label %if.end

if.end:                                           ; preds = %aa_get_label.exit, %kzalloc.exit.if.end_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__aa_proxy_redirect(ptr noundef %orig, ptr noundef %new) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %orig, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 77, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.__aa_proxy_redirect) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool27.not = icmp eq ptr %new, null
  br i1 %tobool27.not, label %do.end45, label %if.end.if.end51_crit_edge, !prof !311

if.end.if.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

do.end45:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.__aa_proxy_redirect) #12
  br label %if.end51

if.end51:                                         ; preds = %do.end45, %if.end.if.end51_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool63.not = icmp eq i32 %0, 0
  br i1 %tobool63.not, label %if.end51.if.end89_crit_edge, label %land.rhs

if.end51.if.end89_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

land.rhs:                                         ; preds = %if.end51
  %vec = getelementptr inbounds %struct.aa_label, ptr %orig, i32 0, i32 8
  %size = getelementptr inbounds %struct.aa_label, ptr %orig, i32 0, i32 7
  %1 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size, align 4
  %sub = add i32 %2, -1
  %arrayidx64 = getelementptr ptr, ptr %vec, i32 %sub
  %3 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx64, align 4
  %ns = getelementptr inbounds %struct.aa_profile, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ns, align 4
  %dep_map = getelementptr inbounds %struct.aa_ns, ptr %6, i32 0, i32 11, i32 0, i32 4
  %call = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool65.not = icmp eq i32 %call, 0
  br i1 %tobool65.not, label %do.end83, label %land.rhs.if.end89_crit_edge, !prof !311

land.rhs.if.end89_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

do.end83:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 79, i32 noundef 9, ptr noundef null) #12
  br label %if.end89

if.end89:                                         ; preds = %do.end83, %land.rhs.if.end89_crit_edge, %if.end51.if.end89_crit_edge
  %vec100 = getelementptr inbounds %struct.aa_label, ptr %orig, i32 0, i32 8
  %size102 = getelementptr inbounds %struct.aa_label, ptr %orig, i32 0, i32 7
  %7 = ptrtoint ptr %size102 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size102, align 4
  %sub103 = add i32 %8, -1
  %arrayidx104 = getelementptr ptr, ptr %vec100, i32 %sub103
  %9 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx104, align 4
  %ns105 = getelementptr inbounds %struct.aa_profile, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %ns105 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ns105, align 4
  %lock106 = getelementptr inbounds %struct.aa_ns, ptr %12, i32 0, i32 2
  %tobool107.not = icmp eq ptr %lock106, null
  br i1 %tobool107.not, label %land.lhs.true, label %if.end89.do.end115_crit_edge

if.end89.do.end115_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end115

land.lhs.true:                                    ; preds = %if.end89
  %call108 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %land.lhs.true.do.end115_crit_edge, label %land.lhs.true110

land.lhs.true.do.end115_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end115

land.lhs.true110:                                 ; preds = %land.lhs.true
  %.b155 = load i1, ptr @__aa_proxy_redirect.__warned, align 1
  br i1 %.b155, label %land.lhs.true110.do.end115_crit_edge, label %if.then112

land.lhs.true110.do.end115_crit_edge:             ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end115

if.then112:                                       ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__aa_proxy_redirect.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 82, ptr noundef nonnull @.str.3) #12
  br label %do.end115

do.end115:                                        ; preds = %if.then112, %land.lhs.true110.do.end115_crit_edge, %land.lhs.true.do.end115_crit_edge, %if.end89.do.end115_crit_edge
  %proxy = getelementptr inbounds %struct.aa_label, ptr %orig, i32 0, i32 3
  %13 = ptrtoint ptr %proxy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %proxy, align 4
  %label = getelementptr inbounds %struct.aa_proxy, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %label, align 4
  br i1 %tobool27.not, label %do.end115.aa_get_label.exit_crit_edge, label %if.then.i

do.end115.aa_get_label.exit_crit_edge:            ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_get_label.exit

if.then.i:                                        ; preds = %do.end115
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %new, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull %new, i32 1, i32 3, i32 1) #12
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %new, ptr nonnull %new, i32 1, ptr nonnull elementtype(i32) %new) #12, !srcloc !310
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !311

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %18 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.aa_get_label.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !307

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.aa_get_label.exit_crit_edge:    ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_get_label.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %new, i32 noundef %.sink.i.i.i.i.i) #12
  br label %aa_get_label.exit

aa_get_label.exit:                                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.aa_get_label.exit_crit_edge, %do.end115.aa_get_label.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !313
  %19 = ptrtoint ptr %proxy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %proxy, align 4
  %label133 = getelementptr inbounds %struct.aa_proxy, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %label133 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %new, ptr %label133, align 4
  %flags = getelementptr inbounds %struct.aa_label, ptr %orig, i32 0, i32 5
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %or = or i32 %23, 2048
  store i32 %or, ptr %flags, align 4
  %tobool.not.i156 = icmp eq ptr %16, null
  br i1 %tobool.not.i156, label %aa_get_label.exit.aa_put_label.exit_crit_edge, label %if.then.i158

aa_get_label.exit.aa_put_label.exit_crit_edge:    ; preds = %aa_get_label.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_put_label.exit

if.then.i158:                                     ; preds = %aa_get_label.exit
  %call.i.i.i.i.i.i.i157 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %16, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !305
  tail call void @llvm.prefetch.p0(ptr nonnull %16, i32 1, i32 3, i32 1) #12
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %16, ptr nonnull %16, i32 1, ptr nonnull elementtype(i32) %16) #12, !srcloc !306
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i158
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i159 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i159, label %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !307

if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_put_label.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %16, i32 noundef 3) #12
  br label %aa_put_label.exit

if.then.i.i:                                      ; preds = %if.then.i158
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !308
  tail call void @aa_label_kref(ptr noundef nonnull %16) #12, !callees !309
  br label %aa_put_label.exit

aa_put_label.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, %aa_get_label.exit.aa_put_label.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_vec_unique(ptr noundef %vec, i32 noundef %n, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n)
  %cmp = icmp slt i32 %n, 1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 266, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.aa_vec_unique) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool24.not = icmp eq ptr %vec, null
  br i1 %tobool24.not, label %if.end48, label %if.end48.thread, !prof !311

if.end48:                                         ; preds = %if.end
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 267, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.aa_vec_unique) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %n)
  %cmp58 = icmp sgt i32 %n, 8
  br i1 %cmp58, label %do.end42.i, label %if.end48.for.cond.preheader_crit_edge

if.end48.for.cond.preheader_crit_edge:            ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader

if.end48.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %n)
  %cmp58168 = icmp sgt i32 %n, 8
  br i1 %cmp58168, label %if.then59.thread, label %if.end48.thread.for.cond.preheader_crit_edge

if.end48.thread.for.cond.preheader_crit_edge:     ; preds = %if.end48.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end48.thread.for.cond.preheader_crit_edge, %if.end48.for.cond.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n)
  %cmp61188 = icmp sgt i32 %n, 1
  br i1 %cmp61188, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.out_crit_edge

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then59.thread:                                 ; preds = %if.end48.thread
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @sort(ptr noundef nonnull %vec, i32 noundef %n, i32 noundef 4, ptr noundef nonnull @sort_cmp, ptr noundef null) #12
  br label %for.body.i.preheader

do.end42.i:                                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @sort(ptr noundef null, i32 noundef %n, i32 noundef 4, ptr noundef nonnull @sort_cmp, ptr noundef null) #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 229, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.unique) #12
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %do.end42.i, %if.then59.thread
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.backedge, %for.body.i.preheader
  %i.0167.i = phi i32 [ 1, %for.body.i.preheader ], [ %i.0167.i.be, %for.body.i.backedge ]
  %pos.0165.i = phi i32 [ 0, %for.body.i.preheader ], [ %pos.0165.i.be, %for.body.i.backedge ]
  %dups.0164.i = phi i32 [ 0, %for.body.i.preheader ], [ %dups.0164.i.be, %for.body.i.backedge ]
  %arrayidx.i = getelementptr ptr, ptr %vec, i32 %pos.0165.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx59.i = getelementptr ptr, ptr %vec, i32 %i.0167.i
  %2 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx59.i, align 4
  %call.i = tail call fastcc i32 @profile_cmp(ptr noundef %1, ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp62.i = icmp sgt i32 %call.i, 0
  br i1 %cmp62.i, label %if.end84.thread.i, label %if.end84.i, !prof !311

if.end84.thread.i:                                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 235, i32 noundef 9, ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.unique) #12
  br label %if.end97.i

if.end84.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp94.i = icmp eq i32 %call.i, 0
  br i1 %cmp94.i, label %if.then95.i, label %if.end84.i.if.end97.i_crit_edge

if.end84.i.if.end97.i_crit_edge:                  ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97.i

if.then95.i:                                      ; preds = %if.end84.i
  %4 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx59.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then95.i.aa_put_profile.exit.i_crit_edge, label %if.then.i.i

if.then95.i.aa_put_profile.exit.i_crit_edge:      ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_put_profile.exit.i

if.then.i.i:                                      ; preds = %if.then95.i
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %5, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !305
  tail call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #12, !srcloc !306
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.aa_put_profile.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !307

if.end5.i.i.i.i.i.i.aa_put_profile.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_put_profile.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef 3) #12
  br label %aa_put_profile.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !308
  tail call void @aa_label_kref(ptr noundef %label.i.i) #12, !callees !309
  br label %aa_put_profile.exit.i

aa_put_profile.exit.i:                            ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.aa_put_profile.exit.i_crit_edge, %if.then95.i.aa_put_profile.exit.i_crit_edge
  %inc.i = add i32 %dups.0164.i, 1
  br label %cleanup.i

if.end97.i:                                       ; preds = %if.end84.i.if.end97.i_crit_edge, %if.end84.thread.i
  %inc98.i = add i32 %pos.0165.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dups.0164.i)
  %tobool99.not.i = icmp eq i32 %dups.0164.i, 0
  br i1 %tobool99.not.i, label %cleanup.i.thread, label %if.then100.i

if.then100.i:                                     ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx59.i, align 4
  %arrayidx102.i = getelementptr ptr, ptr %vec, i32 %inc98.i
  %9 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %arrayidx102.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then100.i, %aa_put_profile.exit.i
  %dups.1.i = phi i32 [ %inc.i, %aa_put_profile.exit.i ], [ %dups.0164.i, %if.then100.i ]
  %pos.1.i = phi i32 [ %pos.0165.i, %aa_put_profile.exit.i ], [ %inc98.i, %if.then100.i ]
  %inc104.i = add nuw nsw i32 %i.0167.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc104.i, i32 %n)
  %exitcond.not.i = icmp eq i32 %inc104.i, %n
  br i1 %exitcond.not.i, label %do.body105.i, label %cleanup.i.for.body.i.backedge_crit_edge

cleanup.i.for.body.i.backedge_crit_edge:          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.backedge

for.body.i.backedge:                              ; preds = %cleanup.i.thread.for.body.i.backedge_crit_edge, %cleanup.i.for.body.i.backedge_crit_edge
  %i.0167.i.be = phi i32 [ %inc104.i, %cleanup.i.for.body.i.backedge_crit_edge ], [ %inc104.i171, %cleanup.i.thread.for.body.i.backedge_crit_edge ]
  %pos.0165.i.be = phi i32 [ %pos.1.i, %cleanup.i.for.body.i.backedge_crit_edge ], [ %inc98.i, %cleanup.i.thread.for.body.i.backedge_crit_edge ]
  %dups.0164.i.be = phi i32 [ %dups.1.i, %cleanup.i.for.body.i.backedge_crit_edge ], [ 0, %cleanup.i.thread.for.body.i.backedge_crit_edge ]
  br label %for.body.i

cleanup.i.thread:                                 ; preds = %if.end97.i
  %inc104.i171 = add nuw nsw i32 %i.0167.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc104.i171, i32 %n)
  %exitcond.not.i172 = icmp eq i32 %inc104.i171, %n
  br i1 %exitcond.not.i172, label %cleanup.i.thread.out_crit_edge, label %cleanup.i.thread.for.body.i.backedge_crit_edge

cleanup.i.thread.for.body.i.backedge_crit_edge:   ; preds = %cleanup.i.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.backedge

cleanup.i.thread.out_crit_edge:                   ; preds = %cleanup.i.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.body105.i:                                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dups.1.i)
  %cmp107.i = icmp slt i32 %dups.1.i, 0
  br i1 %cmp107.i, label %do.end123.i, label %do.body105.i.out_crit_edge, !prof !311

do.body105.i.out_crit_edge:                       ; preds = %do.body105.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end123.i:                                      ; preds = %do.body105.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 247, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.unique) #12
  br label %out

for.body:                                         ; preds = %continue_outer.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0191 = phi i32 [ %inc88, %continue_outer.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %dups.0189 = phi i32 [ %dups.4, %continue_outer.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %vec, i32 %i.0191
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %12 = xor i32 %dups.0189, -1
  %sub63 = add i32 %i.0191, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub63)
  %cmp65183 = icmp sgt i32 %sub63, -1
  br i1 %cmp65183, label %for.body.for.body66_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body66_crit_edge:                    ; preds = %for.body
  br label %for.body66

for.body66:                                       ; preds = %for.inc.for.body66_crit_edge, %for.body.for.body66_crit_edge
  %pos.0184 = phi i32 [ %dec, %for.inc.for.body66_crit_edge ], [ %sub63, %for.body.for.body66_crit_edge ]
  %arrayidx67 = getelementptr ptr, ptr %vec, i32 %pos.0184
  %13 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx67, align 4
  %call68 = tail call fastcc i32 @profile_cmp(ptr noundef %14, ptr noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp eq i32 %call68, 0
  br i1 %cmp69, label %if.then70, label %if.else

if.then70:                                        ; preds = %for.body66
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then70.cleanup_crit_edge, label %if.then.i

if.then70.cleanup_crit_edge:                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %if.then70
  %label.i = getelementptr inbounds %struct.aa_profile, ptr %11, i32 0, i32 25
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !305
  tail call void @llvm.prefetch.p0(ptr %label.i, i32 1, i32 3, i32 1) #12
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i, ptr %label.i, i32 1, ptr elementtype(i32) %label.i) #12, !srcloc !306
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i167, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !307

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %label.i, i32 noundef 3) #12
  br label %cleanup

if.then.i.i167:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !308
  tail call void @aa_label_kref(ptr noundef %label.i) #12, !callees !309
  br label %cleanup

if.else:                                          ; preds = %for.body66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp71 = icmp slt i32 %call68, 0
  br i1 %cmp71, label %if.else.for.end_crit_edge, label %for.inc

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup:                                          ; preds = %if.then.i.i167, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.then70.cleanup_crit_edge
  %inc = add i32 %dups.0189, 1
  br label %continue_outer

for.inc:                                          ; preds = %if.else
  %dec = add nsw i32 %pos.0184, -1
  %cmp65 = icmp sgt i32 %pos.0184, 0
  br i1 %cmp65, label %for.inc.for.body66_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body66_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body66

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.else.for.end_crit_edge, %for.body.for.end_crit_edge
  %pos.0.lcssa = phi i32 [ %sub63, %for.body.for.end_crit_edge ], [ %pos.0184, %if.else.for.end_crit_edge ], [ -1, %for.inc.for.end_crit_edge ]
  %inc75 = add i32 %pos.0.lcssa, 1
  %sub76 = sub i32 %i.0191, %dups.0189
  call void @__sanitizer_cov_trace_cmp4(i32 %sub76, i32 %inc75)
  %cmp78186 = icmp sgt i32 %sub76, %inc75
  br i1 %cmp78186, label %for.end.for.body79_crit_edge, label %for.end.for.end85_crit_edge

for.end.for.end85_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end85

for.end.for.body79_crit_edge:                     ; preds = %for.end
  br label %for.body79

for.body79:                                       ; preds = %for.body79.for.body79_crit_edge, %for.end.for.body79_crit_edge
  %j.0187 = phi i32 [ %sub80, %for.body79.for.body79_crit_edge ], [ %sub76, %for.end.for.body79_crit_edge ]
  %sub80 = add nsw i32 %j.0187, -1
  %arrayidx81 = getelementptr ptr, ptr %vec, i32 %sub80
  %16 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx81, align 4
  %arrayidx82 = getelementptr ptr, ptr %vec, i32 %j.0187
  %18 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %arrayidx82, align 4
  %cmp78 = icmp sgt i32 %sub80, %inc75
  br i1 %cmp78, label %for.body79.for.body79_crit_edge, label %for.body79.for.end85_crit_edge

for.body79.for.end85_crit_edge:                   ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end85

for.body79.for.body79_crit_edge:                  ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body79

for.end85:                                        ; preds = %for.body79.for.end85_crit_edge, %for.end.for.end85_crit_edge
  %arrayidx86 = getelementptr ptr, ptr %vec, i32 %inc75
  %19 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %11, ptr %arrayidx86, align 4
  br label %continue_outer

continue_outer:                                   ; preds = %for.end85, %cleanup
  %dups.4 = phi i32 [ %inc, %cleanup ], [ %dups.0189, %for.end85 ]
  %inc88 = add nuw nsw i32 %i.0191, 1
  %exitcond.not = icmp eq i32 %inc88, %n
  br i1 %exitcond.not, label %do.body90, label %continue_outer.for.body_crit_edge

continue_outer.for.body_crit_edge:                ; preds = %continue_outer
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.body90:                                        ; preds = %continue_outer
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dups.4)
  %cmp92 = icmp slt i32 %dups.4, 0
  br i1 %cmp92, label %do.end108, label %do.body90.out_crit_edge, !prof !311

do.body90.out_crit_edge:                          ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end108:                                        ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 302, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.aa_vec_unique) #12
  br label %out

out:                                              ; preds = %do.end108, %do.body90.out_crit_edge, %do.end123.i, %do.body105.i.out_crit_edge, %cleanup.i.thread.out_crit_edge, %for.cond.preheader.out_crit_edge
  %dups.5 = phi i32 [ %dups.4, %do.end108 ], [ %dups.4, %do.body90.out_crit_edge ], [ %dups.1.i, %do.end123.i ], [ %dups.1.i, %do.body105.i.out_crit_edge ], [ 0, %for.cond.preheader.out_crit_edge ], [ 0, %cleanup.i.thread.out_crit_edge ]
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool124.not = icmp eq i32 %and, 0
  br i1 %tobool124.not, label %out.if.end128_crit_edge, label %if.then125

out.if.end128_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end128

if.then125:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  %sub126 = sub i32 %n, %dups.5
  %arrayidx127 = getelementptr ptr, ptr %vec, i32 %sub126
  %20 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx127, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.then125, %out.if.end128_crit_edge
  ret i32 %dups.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sort_cmp(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a, align 4
  %2 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b, align 4
  %call = tail call fastcc i32 @profile_cmp(ptr noundef %1, ptr noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @profile_cmp(ptr noundef readonly %a, ptr noundef readonly %b) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %a, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 139, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.profile_cmp) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %b, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !311

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 140, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.profile_cmp) #12
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %ns = getelementptr inbounds %struct.aa_profile, ptr %a, i32 0, i32 2
  %0 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns, align 4
  %tobool62.not = icmp eq ptr %1, null
  br i1 %tobool62.not, label %do.end80, label %if.end50.if.end86_crit_edge, !prof !311

if.end50.if.end86_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

do.end80:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 141, i32 noundef 9, ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.profile_cmp) #12
  br label %if.end86

if.end86:                                         ; preds = %do.end80, %if.end50.if.end86_crit_edge
  %ns98 = getelementptr inbounds %struct.aa_profile, ptr %b, i32 0, i32 2
  %2 = ptrtoint ptr %ns98 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns98, align 4
  %tobool99.not = icmp eq ptr %3, null
  br i1 %tobool99.not, label %do.end117, label %if.end86.if.end123_crit_edge, !prof !311

if.end86.if.end123_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end123

do.end117:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 142, i32 noundef 9, ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.profile_cmp) #12
  br label %if.end123

if.end123:                                        ; preds = %do.end117, %if.end86.if.end123_crit_edge
  %hname = getelementptr inbounds %struct.aa_policy, ptr %a, i32 0, i32 1
  %4 = ptrtoint ptr %hname to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hname, align 4
  %tobool135.not = icmp eq ptr %5, null
  br i1 %tobool135.not, label %do.end153, label %if.end123.if.end159_crit_edge, !prof !311

if.end123.if.end159_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end159

do.end153:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 143, i32 noundef 9, ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.profile_cmp) #12
  br label %if.end159

if.end159:                                        ; preds = %do.end153, %if.end123.if.end159_crit_edge
  %hname172 = getelementptr inbounds %struct.aa_policy, ptr %b, i32 0, i32 1
  %6 = ptrtoint ptr %hname172 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hname172, align 4
  %tobool173.not = icmp eq ptr %7, null
  br i1 %tobool173.not, label %do.end191, label %if.end159.if.end197_crit_edge, !prof !311

if.end159.if.end197_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end197

do.end191:                                        ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 9, ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.profile_cmp) #12
  br label %if.end197

if.end197:                                        ; preds = %do.end191, %if.end159.if.end197_crit_edge
  %cmp = icmp eq ptr %a, %b
  br i1 %cmp, label %if.end197.cleanup_crit_edge, label %lor.lhs.false

if.end197.cleanup_crit_edge:                      ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end197
  %8 = ptrtoint ptr %hname to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hname, align 4
  %10 = ptrtoint ptr %hname172 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hname172, align 4
  %cmp211 = icmp eq ptr %9, %11
  br i1 %cmp211, label %lor.lhs.false.cleanup_crit_edge, label %if.end213

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end213:                                        ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ns, align 4
  %14 = ptrtoint ptr %ns98 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ns98, align 4
  %call = tail call fastcc i32 @ns_cmp(ptr noundef %13, ptr noundef %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool216.not = icmp eq i32 %call, 0
  br i1 %tobool216.not, label %if.end218, label %if.end213.cleanup_crit_edge

if.end213.cleanup_crit_edge:                      ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end218:                                        ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %hname to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hname, align 4
  %18 = ptrtoint ptr %hname172 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hname172, align 4
  %call223 = tail call i32 @strcmp(ptr noundef %17, ptr noundef %19) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end218, %if.end213.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end197.cleanup_crit_edge
  %retval.0 = phi i32 [ %call223, %if.end218 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end197.cleanup_crit_edge ], [ %call, %if.end213.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aa_label_destroy(ptr noundef %label) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %label, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 314, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.aa_label_destroy) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.then25, label %if.end.if.end34_crit_edge

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then25:                                        ; preds = %if.end
  %hname = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 4
  %2 = ptrtoint ptr %hname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hname, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then25.aa_put_str.exit_crit_edge, label %if.then.i

if.then25.aa_put_str.exit_crit_edge:              ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_put_str.exit

if.then.i:                                        ; preds = %if.then25
  %add.ptr.i = getelementptr i8, ptr %3, i32 -4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !305
  tail call void @llvm.prefetch.p0(ptr %add.ptr.i, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i, ptr %add.ptr.i, i32 1, ptr elementtype(i32) %add.ptr.i) #12, !srcloc !306
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.aa_put_str.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !307

if.end5.i.i.i.i.i.aa_put_str.exit_crit_edge:      ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_put_str.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr.i, i32 noundef 3) #12
  br label %aa_put_str.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !308
  tail call void @aa_str_kref(ptr noundef %add.ptr.i) #12, !callees !309
  br label %aa_put_str.exit

aa_put_str.exit:                                  ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_str.exit_crit_edge, %if.then25.aa_put_str.exit_crit_edge
  %arrayidx107 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 0
  %5 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx107, align 4
  %tobool28.not108 = icmp eq ptr %6, null
  br i1 %tobool28.not108, label %aa_put_str.exit.if.end34_crit_edge, label %aa_put_str.exit.if.then.i115_crit_edge

aa_put_str.exit.if.then.i115_crit_edge:           ; preds = %aa_put_str.exit
  br label %if.then.i115

aa_put_str.exit.if.end34_crit_edge:               ; preds = %aa_put_str.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then.i115:                                     ; preds = %aa_put_profile.exit.if.then.i115_crit_edge, %aa_put_str.exit.if.then.i115_crit_edge
  %7 = phi ptr [ %12, %aa_put_profile.exit.if.then.i115_crit_edge ], [ %6, %aa_put_str.exit.if.then.i115_crit_edge ]
  %arrayidx110 = phi ptr [ %arrayidx, %aa_put_profile.exit.if.then.i115_crit_edge ], [ %arrayidx107, %aa_put_str.exit.if.then.i115_crit_edge ]
  %i.sroa.0.0109 = phi i32 [ %inc, %aa_put_profile.exit.if.then.i115_crit_edge ], [ 0, %aa_put_str.exit.if.then.i115_crit_edge ]
  %label.i = getelementptr inbounds %struct.aa_profile, ptr %7, i32 0, i32 25
  %call.i.i.i.i.i.i.i112 = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !305
  tail call void @llvm.prefetch.p0(ptr %label.i, i32 1, i32 3, i32 1) #12
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i, ptr %label.i, i32 1, ptr elementtype(i32) %label.i) #12, !srcloc !306
  %asmresult.i.i.i.i.i.i.i.i113 = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i113)
  %cmp.i.i.i.i.i114 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i113, 1
  br i1 %cmp.i.i.i.i.i114, label %if.then.i.i119, label %if.end5.i.i.i.i.i117

if.end5.i.i.i.i.i117:                             ; preds = %if.then.i115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i113)
  %.not.i.i.i.i.i116 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i113, 0
  br i1 %.not.i.i.i.i.i116, label %if.end5.i.i.i.i.i117.aa_put_profile.exit_crit_edge, label %if.then10.i.i.i.i.i118, !prof !307

if.end5.i.i.i.i.i117.aa_put_profile.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i117
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_put_profile.exit

if.then10.i.i.i.i.i118:                           ; preds = %if.end5.i.i.i.i.i117
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %label.i, i32 noundef 3) #12
  br label %aa_put_profile.exit

if.then.i.i119:                                   ; preds = %if.then.i115
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !308
  tail call void @aa_label_kref(ptr noundef %label.i) #12, !callees !309
  br label %aa_put_profile.exit

aa_put_profile.exit:                              ; preds = %if.then.i.i119, %if.then10.i.i.i.i.i118, %if.end5.i.i.i.i.i117.aa_put_profile.exit_crit_edge
  %add = add i32 %i.sroa.0.0109, 100
  %9 = inttoptr i32 %add to ptr
  %10 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %arrayidx110, align 4
  %inc = add i32 %i.sroa.0.0109, 1
  %arrayidx = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %inc
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool28.not = icmp eq ptr %12, null
  br i1 %tobool28.not, label %aa_put_profile.exit.if.end34_crit_edge, label %aa_put_profile.exit.if.then.i115_crit_edge

aa_put_profile.exit.if.then.i115_crit_edge:       ; preds = %aa_put_profile.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i115

aa_put_profile.exit.if.end34_crit_edge:           ; preds = %aa_put_profile.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.end34:                                         ; preds = %aa_put_profile.exit.if.end34_crit_edge, %aa_put_str.exit.if.end34_crit_edge, %if.end.if.end34_crit_edge
  %proxy = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 3
  %13 = ptrtoint ptr %proxy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %proxy, align 4
  %tobool35.not = icmp eq ptr %14, null
  br i1 %tobool35.not, label %if.end34.if.end86_crit_edge, label %do.end39

if.end34.if.end86_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

do.end39:                                         ; preds = %if.end34
  %label42 = getelementptr inbounds %struct.aa_proxy, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %label42 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %label42, align 4
  %cmp = icmp eq ptr %16, %label
  br i1 %cmp, label %do.body51, label %do.end39.if.end84_crit_edge

do.end39.if.end84_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

do.body51:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %label42 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr null, ptr %label42, align 4
  br label %if.end84

if.end84:                                         ; preds = %do.body51, %do.end39.if.end84_crit_edge
  %18 = ptrtoint ptr %proxy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %proxy, align 4
  %tobool.not.i120 = icmp eq ptr %19, null
  br i1 %tobool.not.i120, label %if.end84.if.end86_crit_edge, label %if.then.i121

if.end84.if.end86_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

if.then.i121:                                     ; preds = %if.end84
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %19, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !305
  tail call void @llvm.prefetch.p0(ptr nonnull %19, i32 1, i32 3, i32 1) #12
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %19, ptr nonnull %19, i32 1, ptr nonnull elementtype(i32) %19) #12, !srcloc !306
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then.i121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end86_crit_edge, label %if.then10.i.i.i.i, !prof !307

if.end5.i.i.i.i.if.end86_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %19, i32 noundef 3) #12
  br label %if.end86

do.end.i:                                         ; preds = %if.then.i121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !308
  %label.i124 = getelementptr inbounds %struct.aa_proxy, ptr %19, i32 0, i32 1
  %21 = ptrtoint ptr %label.i124 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %label.i124, align 4
  %tobool.not.i125 = icmp eq ptr %22, null
  br i1 %tobool.not.i125, label %do.end.i.free_proxy.exit_crit_edge, label %if.then.i129

do.end.i.free_proxy.exit_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_proxy.exit

if.then.i129:                                     ; preds = %do.end.i
  %call.i.i.i.i.i.i.i126 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %22, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !305
  tail call void @llvm.prefetch.p0(ptr nonnull %22, i32 1, i32 3, i32 1) #12
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %22, ptr nonnull %22, i32 1, ptr nonnull elementtype(i32) %22) #12, !srcloc !306
  %asmresult.i.i.i.i.i.i.i.i127 = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i127)
  %cmp.i.i.i.i.i128 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i127, 1
  br i1 %cmp.i.i.i.i.i128, label %if.then.i.i133, label %if.end5.i.i.i.i.i131

if.end5.i.i.i.i.i131:                             ; preds = %if.then.i129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i127)
  %.not.i.i.i.i.i130 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i127, 0
  br i1 %.not.i.i.i.i.i130, label %if.end5.i.i.i.i.i131.free_proxy.exit_crit_edge, label %if.then10.i.i.i.i.i132, !prof !307

if.end5.i.i.i.i.i131.free_proxy.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i131
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_proxy.exit

if.then10.i.i.i.i.i132:                           ; preds = %if.end5.i.i.i.i.i131
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %22, i32 noundef 3) #12
  br label %free_proxy.exit

if.then.i.i133:                                   ; preds = %if.then.i129
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !308
  tail call void @aa_label_kref(ptr noundef nonnull %22) #12, !callees !309
  br label %free_proxy.exit

free_proxy.exit:                                  ; preds = %if.then.i.i133, %if.then10.i.i.i.i.i132, %if.end5.i.i.i.i.i131.free_proxy.exit_crit_edge, %do.end.i.free_proxy.exit_crit_edge
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 0, ptr %19, align 4
  %25 = ptrtoint ptr %label.i124 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr inttoptr (i32 97 to ptr), ptr %label.i124, align 4
  tail call void @kfree(ptr noundef nonnull %19) #12
  br label %if.end86

if.end86:                                         ; preds = %free_proxy.exit, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end86_crit_edge, %if.end84.if.end86_crit_edge, %if.end34.if.end86_crit_edge
  %secid = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 6
  %26 = ptrtoint ptr %secid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %secid, align 4
  tail call void @aa_free_secid(i32 noundef %27) #12
  %28 = ptrtoint ptr %proxy to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 105 to ptr), ptr %proxy, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_free_secid(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aa_label_free(ptr noundef %label) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %label, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @aa_label_destroy(ptr noundef nonnull %label)
  tail call void @kfree(ptr noundef nonnull %label) #12
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aa_label_kref(ptr noundef %kref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vec = getelementptr inbounds %struct.aa_label, ptr %kref, i32 0, i32 8
  %size = getelementptr inbounds %struct.aa_label, ptr %kref, i32 0, i32 7
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %sub = add i32 %1, -1
  %arrayidx1 = getelementptr ptr, ptr %vec, i32 %sub
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %ns2 = getelementptr inbounds %struct.aa_profile, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ns2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns2, align 4
  %tobool.not = icmp eq ptr %5, null
  %flags.i = getelementptr inbounds %struct.aa_label, ptr %kref, i32 0, i32 5
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  br i1 %tobool.not, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  %and.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @aa_free_ns(ptr noundef null) #12
  br label %cleanup

if.else.i:                                        ; preds = %if.then
  %and3.i = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.else10.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx9.i = getelementptr %struct.aa_label, ptr %kref, i32 0, i32 8, i32 %sub
  %8 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx9.i, align 4
  tail call void @aa_free_profile(ptr noundef %9) #12
  br label %cleanup

if.else10.i:                                      ; preds = %if.else.i
  %tobool.not.i105 = icmp eq ptr %kref, null
  br i1 %tobool.not.i105, label %if.else10.i.cleanup_crit_edge, label %if.end.i

if.else10.i.cleanup_crit_edge:                    ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @aa_label_destroy(ptr noundef nonnull %kref) #12
  tail call void @kfree(ptr noundef nonnull %kref) #12
  br label %cleanup

do.body:                                          ; preds = %entry
  %and = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.if.end28_crit_edge, label %land.rhs

do.body.if.end28_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

land.rhs:                                         ; preds = %do.body
  %10 = ptrtoint ptr %vec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vec, align 4
  %profiles = getelementptr inbounds %struct.aa_policy, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %profiles to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %profiles, align 4
  %cmp.i.not = icmp eq ptr %13, %profiles
  br i1 %cmp.i.not, label %land.rhs.if.end28_crit_edge, label %land.rhs7

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

land.rhs7:                                        ; preds = %land.rhs
  %prev = getelementptr inbounds %struct.aa_policy, ptr %11, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev, align 4
  %cmp.not = icmp eq ptr %15, inttoptr (i32 290 to ptr)
  br i1 %cmp.not, label %land.rhs7.if.end28_crit_edge, label %do.end, !prof !307

land.rhs7.if.end28_crit_edge:                     ; preds = %land.rhs7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

do.end:                                           ; preds = %land.rhs7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 379, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.aa_label_kref) #12
  br label %if.end28

if.end28:                                         ; preds = %do.end, %land.rhs7.if.end28_crit_edge, %land.rhs.if.end28_crit_edge, %do.body.if.end28_crit_edge
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 4
  %and41 = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end28.if.end79_crit_edge, label %land.rhs43

if.end28.if.end79_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79

land.rhs43:                                       ; preds = %if.end28
  %18 = ptrtoint ptr %vec to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vec, align 4
  %list = getelementptr inbounds %struct.aa_policy, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %list, align 4
  %cmp.i103.not = icmp eq ptr %21, %list
  br i1 %cmp.i103.not, label %land.rhs43.if.end79_crit_edge, label %land.rhs49

land.rhs43.if.end79_crit_edge:                    ; preds = %land.rhs43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79

land.rhs49:                                       ; preds = %land.rhs43
  %prev54 = getelementptr inbounds %struct.aa_policy, ptr %19, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %prev54 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev54, align 4
  %cmp55.not = icmp eq ptr %23, inttoptr (i32 290 to ptr)
  br i1 %cmp55.not, label %land.rhs49.if.end79_crit_edge, label %do.end73, !prof !307

land.rhs49.if.end79_crit_edge:                    ; preds = %land.rhs49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79

do.end73:                                         ; preds = %land.rhs49
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 381, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.aa_label_kref) #12
  br label %if.end79

if.end79:                                         ; preds = %do.end73, %land.rhs49.if.end79_crit_edge, %land.rhs43.if.end79_crit_edge, %if.end28.if.end79_crit_edge
  %rcu = getelementptr inbounds %struct.aa_label, ptr %kref, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @label_free_rcu) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %if.end.i, %if.else10.i.cleanup_crit_edge, %if.then5.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @label_free_rcu(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -16
  %flags = getelementptr i8, ptr %head, i32 16
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %vec.i = getelementptr i8, ptr %head, i32 28
  %size.i = getelementptr i8, ptr %head, i32 24
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  %sub.i = add i32 %3, -1
  %arrayidx1.i = getelementptr ptr, ptr %vec.i, i32 %sub.i
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1.i, align 4
  %ns.i = getelementptr inbounds %struct.aa_profile, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ns.i, align 4
  %labels.i = getelementptr inbounds %struct.aa_ns, ptr %7, i32 0, i32 11
  %call.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef %labels.i) #12
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i, align 4
  %sub32.i = add i32 %9, -1
  %arrayidx33.i = getelementptr ptr, ptr %vec.i, i32 %sub32.i
  %10 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx33.i, align 4
  %ns34.i = getelementptr inbounds %struct.aa_profile, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ns34.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ns34.i, align 4
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %unconfined.i, align 4
  %label35.i = getelementptr inbounds %struct.aa_profile, ptr %15, i32 0, i32 25
  %call36.i = tail call fastcc zeroext i1 @__label_remove(ptr noundef %add.ptr, ptr noundef %label35.i) #12
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %labels.i, i32 noundef %call.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %vec.i3 = getelementptr i8, ptr %head, i32 28
  %size.i4 = getelementptr i8, ptr %head, i32 24
  %18 = ptrtoint ptr %size.i4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i4, align 4
  %sub.i5 = add i32 %19, -1
  %arrayidx1.i6 = getelementptr ptr, ptr %vec.i3, i32 %sub.i5
  %20 = ptrtoint ptr %arrayidx1.i6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx1.i6, align 4
  %ns.i7 = getelementptr inbounds %struct.aa_profile, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %ns.i7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ns.i7, align 4
  tail call void @aa_free_ns(ptr noundef %23) #12
  br label %label_free_switch.exit

if.else.i:                                        ; preds = %if.end
  %and3.i = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.else10.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %size7.i = getelementptr i8, ptr %head, i32 24
  %24 = ptrtoint ptr %size7.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size7.i, align 4
  %sub8.i = add i32 %25, -1
  %arrayidx9.i = getelementptr %struct.aa_label, ptr %add.ptr, i32 0, i32 8, i32 %sub8.i
  %26 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx9.i, align 4
  tail call void @aa_free_profile(ptr noundef %27) #12
  br label %label_free_switch.exit

if.else10.i:                                      ; preds = %if.else.i
  %tobool.not.i.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i.i, label %if.else10.i.label_free_switch.exit_crit_edge, label %if.end.i.i

if.else10.i.label_free_switch.exit_crit_edge:     ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %label_free_switch.exit

if.end.i.i:                                       ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @aa_label_destroy(ptr noundef nonnull %add.ptr) #12
  tail call void @kfree(ptr noundef nonnull %add.ptr) #12
  br label %label_free_switch.exit

label_free_switch.exit:                           ; preds = %if.end.i.i, %if.else10.i.label_free_switch.exit_crit_edge, %if.then5.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @aa_label_init(ptr noundef %label, i32 noundef %size, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %label, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 398, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.aa_label_init) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %size)
  %cmp = icmp slt i32 %size, 1
  br i1 %cmp, label %do.end41, label %if.end.if.end47_crit_edge, !prof !311

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

do.end41:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 399, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.aa_label_init) #12
  br label %if.end47

if.end47:                                         ; preds = %do.end41, %if.end.if.end47_crit_edge
  %call = tail call i32 @aa_alloc_secid(ptr noundef %label, i32 noundef %gfp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp57 = icmp slt i32 %call, 0
  br i1 %cmp57, label %if.end47.return_crit_edge, label %if.end59

if.end47.return_crit_edge:                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end59:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %size60 = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 7
  %0 = ptrtoint ptr %size60 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %size, ptr %size60, align 4
  %arrayidx = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %size
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %arrayidx, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label, i32 noundef 4) #12
  %2 = ptrtoint ptr %label to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %label, align 4
  %node = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 1
  %3 = ptrtoint ptr %node to i32
  %4 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %node, align 4
  br label %return

return:                                           ; preds = %if.end59, %if.end47.return_crit_edge
  %5 = xor i1 %cmp57, true
  ret i1 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_alloc_secid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aa_label_alloc(i32 noundef %size, ptr noundef %proxy, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %size)
  %cmp = icmp slt i32 %size, 1
  br i1 %cmp, label %do.end, label %entry.if.end8.i.i_crit_edge, !prof !311

entry.if.end8.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 425, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.aa_label_alloc) #12
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %do.end, %entry.if.end8.i.i_crit_edge
  %or.i = or i32 %gfp, 256
  %add = add i32 %size, 1
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #12
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 44) #12
  %retval.0.i74 = select i1 %1, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i74, i32 noundef %or.i) #17
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_debug to i32))
  %3 = load i8, ptr @aa_g_debug, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool24.not = icmp eq i8 %3, 0
  br i1 %tobool24.not, label %if.end8.i.i.do.end44_crit_edge, label %do.body26

if.end8.i.i.do.end44_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end44

do.body26:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aa_label_alloc.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aa_label_alloc, %land.lhs.true)) #12
          to label %do.end44 [label %land.lhs.true], !srcloc !315

land.lhs.true:                                    ; preds = %do.body26
  %call36 = tail call i32 @___ratelimit(ptr noundef nonnull @aa_label_alloc._rs, ptr noundef nonnull @__func__.aa_label_alloc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %land.lhs.true.do.end44_crit_edge, label %if.then38

land.lhs.true.do.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end44

if.then38:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aa_label_alloc.descriptor, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.aa_label_alloc, ptr noundef %call9.i.i) #12
  br label %do.end44

do.end44:                                         ; preds = %if.then38, %land.lhs.true.do.end44_crit_edge, %do.body26, %if.end8.i.i.do.end44_crit_edge
  %tobool45.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool45.not, label %do.end44.fail_crit_edge, label %if.end.i

do.end44.fail_crit_edge:                          ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end.i:                                         ; preds = %do.end44
  br i1 %cmp, label %do.end41.i, label %if.end.i.if.end47.i_crit_edge, !prof !311

if.end.i.if.end47.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47.i

do.end41.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 399, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.aa_label_init) #12
  br label %if.end47.i

if.end47.i:                                       ; preds = %do.end41.i, %if.end.i.if.end47.i_crit_edge
  %call.i = tail call i32 @aa_alloc_secid(ptr noundef nonnull %call9.i.i, i32 noundef %gfp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp57.i = icmp slt i32 %call.i, 0
  br i1 %cmp57.i, label %if.end47.i.fail_crit_edge, label %if.end50

if.end47.i.fail_crit_edge:                        ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end50:                                         ; preds = %if.end47.i
  %size60.i = getelementptr inbounds %struct.aa_label, ptr %call9.i.i, i32 0, i32 7
  %4 = ptrtoint ptr %size60.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %size, ptr %size60.i, align 8
  %arrayidx.i = getelementptr %struct.aa_label, ptr %call9.i.i, i32 0, i32 8, i32 %size
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i, i32 noundef 4) #12
  %6 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %call9.i.i, align 128
  %node.i = getelementptr inbounds %struct.aa_label, ptr %call9.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %node.i to i32
  %8 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %node.i, align 4
  %tobool51.not = icmp eq ptr %proxy, null
  br i1 %tobool51.not, label %if.then52, label %if.then.i

if.then52:                                        ; preds = %if.end50
  %call53 = tail call ptr @aa_alloc_proxy(ptr noundef nonnull %call9.i.i, i32 noundef %gfp)
  %tobool54.not = icmp eq ptr %call53, null
  br i1 %tobool54.not, label %if.then52.fail_crit_edge, label %if.then52.if.end58_crit_edge

if.then52.if.end58_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

if.then52.fail_crit_edge:                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.then.i:                                        ; preds = %if.end50
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %proxy, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull %proxy, i32 1, i32 3, i32 1) #12
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %proxy, ptr nonnull %proxy, i32 1, ptr nonnull elementtype(i32) %proxy) #12, !srcloc !310
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !311

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end58_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !307

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end58_crit_edge:             ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %proxy, i32 noundef %.sink.i.i.i.i.i) #12
  br label %if.end58

if.end58:                                         ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end58_crit_edge, %if.then52.if.end58_crit_edge
  %proxy.addr.0 = phi ptr [ %call53, %if.then52.if.end58_crit_edge ], [ %proxy, %if.else.i.i.i.i.i.if.end58_crit_edge ], [ %proxy, %if.end15.sink.split.i.i.i.i.i ]
  %proxy59 = getelementptr inbounds %struct.aa_label, ptr %call9.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %proxy59 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %proxy.addr.0, ptr %proxy59, align 8
  br label %cleanup

fail:                                             ; preds = %if.then52.fail_crit_edge, %if.end47.i.fail_crit_edge, %do.end44.fail_crit_edge
  tail call void @kfree(ptr noundef %call9.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end58
  %retval.0 = phi ptr [ %call9.i.i, %if.end58 ], [ null, %fail ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_label_next_confined(ptr noundef readonly %label, i32 noundef %i) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %label, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 476, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.aa_label_next_confined) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %cmp = icmp slt i32 %i, 0
  br i1 %cmp, label %do.end41, label %if.end.if.end47_crit_edge, !prof !311

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

do.end41:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 477, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.aa_label_next_confined) #12
  br label %if.end47

if.end47:                                         ; preds = %do.end41, %if.end.if.end47_crit_edge
  %size = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 7
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %i)
  %cmp5770 = icmp sgt i32 %1, %i
  br i1 %cmp5770, label %if.end47.for.body_crit_edge, label %if.end47.return_crit_edge

if.end47.return_crit_edge:                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end47.for.body_crit_edge:                      ; preds = %if.end47
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end47.for.body_crit_edge
  %i.addr.071 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %i, %if.end47.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %i.addr.071
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %mode = getelementptr inbounds %struct.aa_profile, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp58 = icmp eq i32 %5, 3
  br i1 %cmp58, label %for.inc, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

for.inc:                                          ; preds = %for.body
  %inc = add i32 %i.addr.071, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.return_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.return_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

return:                                           ; preds = %for.inc.return_crit_edge, %for.body.return_crit_edge, %if.end47.return_crit_edge
  %i.addr.0.lcssa = phi i32 [ %i, %if.end47.return_crit_edge ], [ %1, %for.inc.return_crit_edge ], [ %i.addr.071, %for.body.return_crit_edge ]
  ret i32 %i.addr.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__aa_label_next_not_in_set(ptr noundef %I, ptr noundef readonly %set, ptr noundef readonly %sub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %set, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 500, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.__aa_label_next_not_in_set) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %I, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !311

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 501, i32 noundef 9, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.__aa_label_next_not_in_set) #12
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %0 = ptrtoint ptr %I to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %I, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %do.end77, label %if.end50.if.end83_crit_edge, !prof !311

if.end50.if.end83_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

do.end77:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 502, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.__aa_label_next_not_in_set) #12
  br label %if.end83

if.end83:                                         ; preds = %do.end77, %if.end50.if.end83_crit_edge
  %2 = ptrtoint ptr %I to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %I, align 4
  %size = getelementptr inbounds %struct.aa_label, ptr %set, i32 0, i32 7
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp96 = icmp sgt i32 %3, %5
  br i1 %cmp96, label %do.end112, label %if.end83.if.end118_crit_edge, !prof !311

if.end83.if.end118_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

do.end112:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 503, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.__aa_label_next_not_in_set) #12
  br label %if.end118

if.end118:                                        ; preds = %do.end112, %if.end83.if.end118_crit_edge
  %tobool130.not = icmp eq ptr %sub, null
  br i1 %tobool130.not, label %do.end148, label %if.end118.if.end154_crit_edge, !prof !311

if.end118.if.end154_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end154

do.end148:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 504, i32 noundef 9, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.__aa_label_next_not_in_set) #12
  br label %if.end154

if.end154:                                        ; preds = %do.end148, %if.end118.if.end154_crit_edge
  %j = getelementptr inbounds %struct.label_it, ptr %I, i32 0, i32 1
  %6 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %j, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp166 = icmp slt i32 %7, 0
  br i1 %cmp166, label %do.end182, label %if.end154.if.end188_crit_edge, !prof !311

if.end154.if.end188_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end188

do.end182:                                        ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 505, i32 noundef 9, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.__aa_label_next_not_in_set) #12
  br label %if.end188

if.end188:                                        ; preds = %do.end182, %if.end154.if.end188_crit_edge
  %8 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %j, align 4
  %size201 = getelementptr inbounds %struct.aa_label, ptr %sub, i32 0, i32 7
  %10 = ptrtoint ptr %size201 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size201, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp202 = icmp sgt i32 %9, %11
  br i1 %cmp202, label %do.end218, label %if.end188.if.end224_crit_edge, !prof !311

if.end188.if.end224_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end224

do.end218:                                        ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 506, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.__aa_label_next_not_in_set) #12
  br label %if.end224

if.end224:                                        ; preds = %do.end218, %if.end188.if.end224_crit_edge
  %12 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %j, align 4
  %14 = ptrtoint ptr %size201 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size201, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp236307 = icmp slt i32 %13, %15
  br i1 %cmp236307, label %if.end224.land.rhs_crit_edge, label %if.end224.return_crit_edge

if.end224.return_crit_edge:                       ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end224.land.rhs_crit_edge:                     ; preds = %if.end224
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %if.end224.land.rhs_crit_edge
  %16 = phi i32 [ %31, %cleanup.land.rhs_crit_edge ], [ %13, %if.end224.land.rhs_crit_edge ]
  %17 = ptrtoint ptr %I to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %I, align 4
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp239 = icmp slt i32 %18, %20
  br i1 %cmp239, label %while.body, label %land.rhs.return.sink.split_crit_edge

land.rhs.return.sink.split_crit_edge:             ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split

while.body:                                       ; preds = %land.rhs
  %arrayidx = getelementptr %struct.aa_label, ptr %sub, i32 0, i32 8, i32 %16
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %arrayidx243 = getelementptr %struct.aa_label, ptr %set, i32 0, i32 8, i32 %18
  %23 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx243, align 4
  %call = tail call fastcc i32 @profile_cmp(ptr noundef %22, ptr noundef %24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp244 = icmp eq i32 %call, 0
  br i1 %cmp244, label %if.then245, label %if.else

if.then245:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %j, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %j, align 4
  br label %cleanup

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp249 = icmp sgt i32 %call, 0
  br i1 %cmp249, label %if.else.cleanup_crit_edge, label %cleanup.thread

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.thread:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %j, align 4
  br label %return.sink.split

cleanup:                                          ; preds = %if.else.cleanup_crit_edge, %if.then245
  %29 = ptrtoint ptr %I to i32
  call void @__asan_load4_noabort(i32 %29)
  %storemerge.in = load i32, ptr %I, align 4
  %storemerge = add i32 %storemerge.in, 1
  store i32 %storemerge, ptr %I, align 4
  %30 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %j, align 4
  %32 = ptrtoint ptr %size201 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size201, align 4
  %cmp236 = icmp slt i32 %31, %33
  br i1 %cmp236, label %cleanup.land.rhs_crit_edge, label %cleanup.return_crit_edge

cleanup.return_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

return.sink.split:                                ; preds = %cleanup.thread, %land.rhs.return.sink.split_crit_edge
  %.sink312 = phi i32 [ %28, %cleanup.thread ], [ %16, %land.rhs.return.sink.split_crit_edge ]
  %inc256 = add i32 %.sink312, 1
  %34 = ptrtoint ptr %j to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %inc256, ptr %j, align 4
  %arrayidx257 = getelementptr %struct.aa_label, ptr %sub, i32 0, i32 8, i32 %.sink312
  %35 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx257, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %cleanup.return_crit_edge, %if.end224.return_crit_edge
  %retval.2 = phi ptr [ null, %if.end224.return_crit_edge ], [ %36, %return.sink.split ], [ null, %cleanup.return_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @aa_label_is_subset(ptr noundef %set, ptr noundef %sub) local_unnamed_addr #0 align 64 {
entry:
  %i = alloca %struct.label_it, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i) #12
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %i, align 8
  %tobool.not = icmp eq ptr %set, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 538, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.aa_label_is_subset) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %sub, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !311

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 539, i32 noundef 9, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.aa_label_is_subset) #12
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %cmp = icmp eq ptr %sub, %set
  br i1 %cmp, label %if.end50.cleanup_crit_edge, label %if.end61

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end61:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  %call = call ptr @__aa_label_next_not_in_set(ptr noundef nonnull %i, ptr noundef %set, ptr noundef %sub)
  %cmp62 = icmp eq ptr %call, null
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.end50.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp62, %if.end61 ], [ true, %if.end50.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i) #12
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @aa_label_is_unconfined_subset(ptr noundef %set, ptr noundef %sub) local_unnamed_addr #0 align 64 {
entry:
  %i = alloca %struct.label_it, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i) #12
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %i, align 8
  %tobool.not = icmp eq ptr %set, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 566, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.aa_label_is_unconfined_subset) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %sub, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !311

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 567, i32 noundef 9, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.aa_label_is_unconfined_subset) #12
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %cmp = icmp eq ptr %sub, %set
  br i1 %cmp, label %if.end50.cleanup_crit_edge, label %if.end50.do.body62_crit_edge

if.end50.do.body62_crit_edge:                     ; preds = %if.end50
  br label %do.body62

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body62:                                        ; preds = %land.lhs.true.do.body62_crit_edge, %if.end50.do.body62_crit_edge
  %call = call ptr @__aa_label_next_not_in_set(ptr noundef nonnull %i, ptr noundef %set, ptr noundef %sub)
  %tobool63.not = icmp eq ptr %call, null
  br i1 %tobool63.not, label %do.body62.cleanup_crit_edge, label %land.lhs.true

do.body62.cleanup_crit_edge:                      ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %do.body62
  %mode = getelementptr inbounds %struct.aa_profile, ptr %call, i32 0, i32 8
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mode, align 4
  %cmp64 = icmp eq i32 %2, 3
  br i1 %cmp64, label %land.lhs.true.do.body62_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.do.body62_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body62

cleanup:                                          ; preds = %land.lhs.true.cleanup_crit_edge, %do.body62.cleanup_crit_edge, %if.end50.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end50.cleanup_crit_edge ], [ %tobool63.not, %do.body62.cleanup_crit_edge ], [ %tobool63.not, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i) #12
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @aa_label_remove(ptr noundef %label) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vec = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 8
  %size = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 7
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %sub = add i32 %1, -1
  %arrayidx1 = getelementptr ptr, ptr %vec, i32 %sub
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %ns = getelementptr inbounds %struct.aa_profile, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns, align 4
  %labels = getelementptr inbounds %struct.aa_ns, ptr %5, i32 0, i32 11
  %tobool.not = icmp eq ptr %labels, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 775, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.aa_label_remove) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call = tail call i32 @_raw_write_lock_irqsave(ptr noundef %labels) #12
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %sub32 = add i32 %7, -1
  %arrayidx33 = getelementptr ptr, ptr %vec, i32 %sub32
  %8 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx33, align 4
  %ns34 = getelementptr inbounds %struct.aa_profile, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %ns34 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ns34, align 4
  %unconfined = getelementptr inbounds %struct.aa_ns, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %unconfined to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %unconfined, align 4
  %label35 = getelementptr inbounds %struct.aa_profile, ptr %13, i32 0, i32 25
  %call36 = tail call fastcc zeroext i1 @__label_remove(ptr noundef %label, ptr noundef %label35)
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %labels, i32 noundef %call) #12
  ret i1 %call36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__label_remove(ptr noundef %label, ptr noundef %new) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vec = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 8
  %size = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 7
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %sub = add i32 %1, -1
  %arrayidx1 = getelementptr ptr, ptr %vec, i32 %sub
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %ns = getelementptr inbounds %struct.aa_profile, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns, align 4
  %labels = getelementptr inbounds %struct.aa_ns, ptr %5, i32 0, i32 11
  %tobool.not = icmp eq ptr %labels, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 594, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.__label_remove) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool27.not = icmp eq ptr %label, null
  br i1 %tobool27.not, label %do.end45, label %if.end.if.end51_crit_edge, !prof !311

if.end.if.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

do.end45:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 595, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__label_remove) #12
  br label %if.end51

if.end51:                                         ; preds = %do.end45, %if.end.if.end51_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool63.not = icmp eq i32 %6, 0
  br i1 %tobool63.not, label %if.end51.if.end88_crit_edge, label %land.rhs

if.end51.if.end88_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

land.rhs:                                         ; preds = %if.end51
  %dep_map = getelementptr inbounds %struct.aa_ns, ptr %5, i32 0, i32 11, i32 0, i32 4
  %call = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool64.not = icmp eq i32 %call, 0
  br i1 %tobool64.not, label %do.end82, label %land.rhs.if.end88_crit_edge, !prof !311

land.rhs.if.end88_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

do.end82:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef null) #12
  br label %if.end88

if.end88:                                         ; preds = %do.end82, %land.rhs.if.end88_crit_edge, %if.end51.if.end88_crit_edge
  %tobool98.not = icmp eq ptr %new, null
  br i1 %tobool98.not, label %if.end88.if.end100_crit_edge, label %if.then99

if.end88.if.end100_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100

if.then99:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__aa_proxy_redirect(ptr noundef %label, ptr noundef nonnull %new)
  br label %if.end100

if.end100:                                        ; preds = %if.then99, %if.end88.if.end100_crit_edge
  %flags = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 5
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool101.not = icmp eq i32 %and, 0
  br i1 %tobool101.not, label %if.then102, label %if.end100.if.end104_crit_edge

if.end100.if.end104_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104

if.then102:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %8, 2048
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %flags, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %if.end100.if.end104_crit_edge
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and106 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.end104.cleanup_crit_edge, label %if.then108

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then108:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #14
  %node = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 1
  %root = getelementptr inbounds %struct.aa_ns, ptr %5, i32 0, i32 11, i32 1
  tail call void @rb_erase(ptr noundef %node, ptr noundef %root) #12
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and110 = and i32 %13, -257
  store i32 %and110, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then108, %if.end104.cleanup_crit_edge
  %14 = xor i1 %tobool107.not, true
  ret i1 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @aa_label_replace(ptr noundef %old, ptr noundef %new) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hname = getelementptr inbounds %struct.aa_label, ptr %old, i32 0, i32 4
  %0 = ptrtoint ptr %hname to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hname, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.else40_crit_edge, label %land.lhs.true

entry.if.else40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else40

land.lhs.true:                                    ; preds = %entry
  %hname2 = getelementptr inbounds %struct.aa_label, ptr %new, i32 0, i32 4
  %2 = ptrtoint ptr %hname2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hname2, align 4
  %cmp = icmp eq ptr %1, %3
  br i1 %cmp, label %land.lhs.true3, label %land.lhs.true.if.else40_crit_edge

land.lhs.true.if.else40_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else40

land.lhs.true3:                                   ; preds = %land.lhs.true
  %vec = getelementptr inbounds %struct.aa_label, ptr %old, i32 0, i32 8
  %size = getelementptr inbounds %struct.aa_label, ptr %old, i32 0, i32 7
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %sub = add i32 %5, -1
  %arrayidx4 = getelementptr ptr, ptr %vec, i32 %sub
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4, align 4
  %ns = getelementptr inbounds %struct.aa_profile, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ns, align 4
  %vec5 = getelementptr inbounds %struct.aa_label, ptr %new, i32 0, i32 8
  %size7 = getelementptr inbounds %struct.aa_label, ptr %new, i32 0, i32 7
  %10 = ptrtoint ptr %size7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size7, align 4
  %sub8 = add i32 %11, -1
  %arrayidx9 = getelementptr ptr, ptr %vec5, i32 %sub8
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx9, align 4
  %ns10 = getelementptr inbounds %struct.aa_profile, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %ns10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ns10, align 4
  %cmp11 = icmp eq ptr %9, %15
  br i1 %cmp11, label %do.body, label %land.lhs.true3.if.else40_crit_edge

land.lhs.true3.if.else40_crit_edge:               ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else40

do.body:                                          ; preds = %land.lhs.true3
  %labels = getelementptr inbounds %struct.aa_ns, ptr %9, i32 0, i32 11
  %call = tail call i32 @_raw_write_lock_irqsave(ptr noundef %labels) #12
  %proxy = getelementptr inbounds %struct.aa_label, ptr %old, i32 0, i32 3
  %16 = ptrtoint ptr %proxy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %proxy, align 4
  %proxy19 = getelementptr inbounds %struct.aa_label, ptr %new, i32 0, i32 3
  %18 = ptrtoint ptr %proxy19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %proxy19, align 4
  %cmp20.not = icmp eq ptr %17, %19
  br i1 %cmp20.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__proxy_share(ptr noundef %old, ptr noundef %new)
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__aa_proxy_redirect(ptr noundef %old, ptr noundef %new)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then22
  %call23 = tail call fastcc zeroext i1 @__label_replace(ptr noundef %old, ptr noundef %new)
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 4
  %sub33 = add i32 %21, -1
  %arrayidx34 = getelementptr ptr, ptr %vec, i32 %sub33
  %22 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx34, align 4
  %ns35 = getelementptr inbounds %struct.aa_profile, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %ns35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ns35, align 4
  %labels36 = getelementptr inbounds %struct.aa_ns, ptr %25, i32 0, i32 11
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %labels36, i32 noundef %call) #12
  br label %if.end115

if.else40:                                        ; preds = %land.lhs.true3.if.else40_crit_edge, %land.lhs.true.if.else40_crit_edge, %entry.if.else40_crit_edge
  %vec41 = getelementptr inbounds %struct.aa_label, ptr %old, i32 0, i32 8
  %size43 = getelementptr inbounds %struct.aa_label, ptr %old, i32 0, i32 7
  %26 = ptrtoint ptr %size43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size43, align 4
  %sub44 = add i32 %27, -1
  %arrayidx45 = getelementptr ptr, ptr %vec41, i32 %sub44
  %28 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx45, align 4
  %ns46 = getelementptr inbounds %struct.aa_profile, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %ns46 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ns46, align 4
  %labels47 = getelementptr inbounds %struct.aa_ns, ptr %31, i32 0, i32 11
  %call55 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %labels47) #12
  %call58 = tail call fastcc zeroext i1 @__label_remove(ptr noundef %old, ptr noundef %new)
  %32 = ptrtoint ptr %size43 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size43, align 4
  %sub63 = add i32 %33, -1
  %arrayidx64 = getelementptr ptr, ptr %vec41, i32 %sub63
  %34 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx64, align 4
  %ns65 = getelementptr inbounds %struct.aa_profile, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %ns65 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ns65, align 4
  %vec66 = getelementptr inbounds %struct.aa_label, ptr %new, i32 0, i32 8
  %size68 = getelementptr inbounds %struct.aa_label, ptr %new, i32 0, i32 7
  %38 = ptrtoint ptr %size68 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size68, align 4
  %sub69 = add i32 %39, -1
  %arrayidx70 = getelementptr ptr, ptr %vec66, i32 %sub69
  %40 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx70, align 4
  %ns71 = getelementptr inbounds %struct.aa_profile, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %ns71 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ns71, align 4
  %cmp72.not = icmp eq ptr %37, %43
  br i1 %cmp72.not, label %if.else40.if.end101_crit_edge, label %do.body75

if.else40.if.end101_crit_edge:                    ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

do.body75:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %labels47, i32 noundef %call55) #12
  %44 = ptrtoint ptr %size68 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size68, align 4
  %sub87 = add i32 %45, -1
  %arrayidx88 = getelementptr ptr, ptr %vec66, i32 %sub87
  %46 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx88, align 4
  %ns89 = getelementptr inbounds %struct.aa_profile, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %ns89 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ns89, align 4
  %labels90 = getelementptr inbounds %struct.aa_ns, ptr %49, i32 0, i32 11
  %call98 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %labels90) #12
  br label %if.end101

if.end101:                                        ; preds = %do.body75, %if.else40.if.end101_crit_edge
  %ls.0 = phi ptr [ %labels90, %do.body75 ], [ %labels47, %if.else40.if.end101_crit_edge ]
  %flags.0 = phi i32 [ %call98, %do.body75 ], [ %call55, %if.else40.if.end101_crit_edge ]
  %call102 = tail call fastcc ptr @__label_insert(ptr noundef %ls.0, ptr noundef %new, i1 noundef zeroext true)
  %cmp103 = icmp eq ptr %call102, %new
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %ls.0, i32 noundef %flags.0) #12
  %tobool.not.i = icmp eq ptr %call102, null
  br i1 %tobool.not.i, label %if.end101.if.end115_crit_edge, label %if.then.i

if.end101.if.end115_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115

if.then.i:                                        ; preds = %if.end101
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call102, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !305
  tail call void @llvm.prefetch.p0(ptr nonnull %call102, i32 1, i32 3, i32 1) #12
  %50 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call102, ptr nonnull %call102, i32 1, ptr nonnull elementtype(i32) %call102) #12, !srcloc !306
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end115_crit_edge, label %if.then10.i.i.i.i.i, !prof !307

if.end5.i.i.i.i.i.if.end115_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call102, i32 noundef 3) #12
  br label %if.end115

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !308
  tail call void @aa_label_kref(ptr noundef nonnull %call102) #12, !callees !309
  br label %if.end115

if.end115:                                        ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end115_crit_edge, %if.end101.if.end115_crit_edge, %if.end
  %res.0.in = phi i1 [ %call23, %if.end ], [ %cmp103, %if.end101.if.end115_crit_edge ], [ %cmp103, %if.end5.i.i.i.i.i.if.end115_crit_edge ], [ %cmp103, %if.then10.i.i.i.i.i ], [ %cmp103, %if.then.i.i ]
  ret i1 %res.0.in
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__proxy_share(ptr noundef %old, ptr noundef %new) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %proxy1 = getelementptr inbounds %struct.aa_label, ptr %new, i32 0, i32 3
  %0 = ptrtoint ptr %proxy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proxy1, align 4
  %proxy2 = getelementptr inbounds %struct.aa_label, ptr %old, i32 0, i32 3
  %2 = ptrtoint ptr %proxy2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proxy2, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.aa_get_proxy.exit_crit_edge, label %if.then.i

entry.aa_get_proxy.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_get_proxy.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %3, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #12, !srcloc !310
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !311

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.aa_get_proxy.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !307

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.aa_get_proxy.exit_crit_edge:    ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_get_proxy.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %3, i32 noundef %.sink.i.i.i.i.i) #12
  br label %aa_get_proxy.exit

aa_get_proxy.exit:                                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.aa_get_proxy.exit_crit_edge, %entry.aa_get_proxy.exit_crit_edge
  %6 = ptrtoint ptr %proxy1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %proxy1, align 4
  tail call void @__aa_proxy_redirect(ptr noundef %old, ptr noundef %new)
  %tobool.not.i7 = icmp eq ptr %1, null
  br i1 %tobool.not.i7, label %aa_get_proxy.exit.aa_put_proxy.exit_crit_edge, label %if.then.i9

aa_get_proxy.exit.aa_put_proxy.exit_crit_edge:    ; preds = %aa_get_proxy.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_put_proxy.exit

if.then.i9:                                       ; preds = %aa_get_proxy.exit
  %call.i.i.i.i.i.i.i8 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !305
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #12
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #12, !srcloc !306
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %do.end.i.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i10 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i10, label %if.end5.i.i.i.i.i.aa_put_proxy.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !307

if.end5.i.i.i.i.i.aa_put_proxy.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_put_proxy.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef 3) #12
  br label %aa_put_proxy.exit

do.end.i.i.i:                                     ; preds = %if.then.i9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !308
  %label.i.i.i = getelementptr inbounds %struct.aa_proxy, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %label.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %label.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i.i, label %do.end.i.i.i.aa_proxy_kref.exit.i_crit_edge, label %if.then.i.i.i.i

do.end.i.i.i.aa_proxy_kref.exit.i_crit_edge:      ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_proxy_kref.exit.i

if.then.i.i.i.i:                                  ; preds = %do.end.i.i.i
  %call.i.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %9, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !305
  tail call void @llvm.prefetch.p0(ptr nonnull %9, i32 1, i32 3, i32 1) #12
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %9, ptr nonnull %9, i32 1, ptr nonnull elementtype(i32) %9) #12, !srcloc !306
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i.i:                          ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.i.aa_proxy_kref.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i.i.i, !prof !307

if.end5.i.i.i.i.i.i.i.i.aa_proxy_kref.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_proxy_kref.exit.i

if.then10.i.i.i.i.i.i.i.i:                        ; preds = %if.end5.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %9, i32 noundef 3) #12
  br label %aa_proxy_kref.exit.i

if.then.i.i.i.i.i:                                ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !308
  tail call void @aa_label_kref(ptr noundef nonnull %9) #12, !callees !309
  br label %aa_proxy_kref.exit.i

aa_proxy_kref.exit.i:                             ; preds = %if.then.i.i.i.i.i, %if.then10.i.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.i.aa_proxy_kref.exit.i_crit_edge, %do.end.i.i.i.aa_proxy_kref.exit.i_crit_edge
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 0, ptr %1, align 4
  %12 = ptrtoint ptr %label.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr inttoptr (i32 97 to ptr), ptr %label.i.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %1) #12
  br label %aa_put_proxy.exit

aa_put_proxy.exit:                                ; preds = %aa_proxy_kref.exit.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_proxy.exit_crit_edge, %aa_get_proxy.exit.aa_put_proxy.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__label_replace(ptr noundef %old, ptr noundef %new) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vec = getelementptr inbounds %struct.aa_label, ptr %old, i32 0, i32 8
  %size = getelementptr inbounds %struct.aa_label, ptr %old, i32 0, i32 7
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %sub = add i32 %1, -1
  %arrayidx1 = getelementptr ptr, ptr %vec, i32 %sub
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %ns = getelementptr inbounds %struct.aa_profile, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns, align 4
  %labels = getelementptr inbounds %struct.aa_ns, ptr %5, i32 0, i32 11
  %tobool.not = icmp eq ptr %labels, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 630, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.__label_replace) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool27.not = icmp eq ptr %old, null
  br i1 %tobool27.not, label %do.end45, label %if.end.if.end51_crit_edge, !prof !311

if.end.if.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

do.end45:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 631, i32 noundef 9, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.__label_replace) #12
  br label %if.end51

if.end51:                                         ; preds = %do.end45, %if.end.if.end51_crit_edge
  %tobool63.not = icmp eq ptr %new, null
  br i1 %tobool63.not, label %do.end81, label %if.end51.if.end87_crit_edge, !prof !311

if.end51.if.end87_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

do.end81:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 632, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.__label_replace) #12
  br label %if.end87

if.end87:                                         ; preds = %do.end81, %if.end51.if.end87_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool99.not = icmp eq i32 %6, 0
  br i1 %tobool99.not, label %if.end87.if.end124_crit_edge, label %land.rhs

if.end87.if.end124_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end124

land.rhs:                                         ; preds = %if.end87
  %dep_map = getelementptr inbounds %struct.aa_ns, ptr %5, i32 0, i32 11, i32 0, i32 4
  %call = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool100.not = icmp eq i32 %call, 0
  br i1 %tobool100.not, label %do.end118, label %land.rhs.if.end124_crit_edge, !prof !311

land.rhs.if.end124_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end124

do.end118:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 633, i32 noundef 9, ptr noundef null) #12
  br label %if.end124

if.end124:                                        ; preds = %do.end118, %land.rhs.if.end124_crit_edge, %if.end87.if.end124_crit_edge
  %flags = getelementptr inbounds %struct.aa_label, ptr %new, i32 0, i32 5
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool136.not = icmp eq i32 %and, 0
  br i1 %tobool136.not, label %if.end124.if.end158_crit_edge, label %do.end152, !prof !307

if.end124.if.end158_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end158

do.end152:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 634, i32 noundef 9, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.__label_replace) #12
  br label %if.end158

if.end158:                                        ; preds = %do.end152, %if.end124.if.end158_crit_edge
  %flags168 = getelementptr inbounds %struct.aa_label, ptr %old, i32 0, i32 5
  %9 = ptrtoint ptr %flags168 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags168, align 4
  %and169 = and i32 %10, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %if.then171, label %if.end158.if.end173_crit_edge

if.end158.if.end173_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end173

if.then171:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %10, 2048
  %11 = ptrtoint ptr %flags168 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or, ptr %flags168, align 4
  br label %if.end173

if.end173:                                        ; preds = %if.then171, %if.end158.if.end173_crit_edge
  %12 = ptrtoint ptr %flags168 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags168, align 4
  %and175 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %if.end173.cleanup_crit_edge, label %if.then177

if.end173.cleanup_crit_edge:                      ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then177:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #14
  %node = getelementptr inbounds %struct.aa_label, ptr %old, i32 0, i32 1
  %node178 = getelementptr inbounds %struct.aa_label, ptr %new, i32 0, i32 1
  %root = getelementptr inbounds %struct.aa_ns, ptr %5, i32 0, i32 11, i32 1
  tail call void @rb_replace_node(ptr noundef %node, ptr noundef %node178, ptr noundef %root) #12
  %14 = ptrtoint ptr %flags168 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags168, align 4
  %and180 = and i32 %15, -257
  store i32 %and180, ptr %flags168, align 4
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %or182 = or i32 %17, 256
  store i32 %or182, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then177, %if.end173.cleanup_crit_edge
  %18 = xor i1 %tobool176.not, true
  ret i1 %18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__label_insert(ptr noundef %ls, ptr noundef %label, i1 noundef zeroext %replace) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ls, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 667, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.__label_insert) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %label, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !311

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 668, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__label_insert) #12
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %vec = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 8
  %size = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 7
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %sub = add i32 %1, -1
  %arrayidx62 = getelementptr ptr, ptr %vec, i32 %sub
  %2 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx62, align 4
  %ns = getelementptr inbounds %struct.aa_profile, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns, align 4
  %labels = getelementptr inbounds %struct.aa_ns, ptr %5, i32 0, i32 11
  %cmp.not = icmp eq ptr %labels, %ls
  br i1 %cmp.not, label %if.end50.if.end84_crit_edge, label %do.end78, !prof !307

if.end50.if.end84_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

do.end78:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 669, i32 noundef 9, ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.__label_insert) #12
  br label %if.end84

if.end84:                                         ; preds = %do.end78, %if.end50.if.end84_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool96.not = icmp eq i32 %6, 0
  br i1 %tobool96.not, label %if.end84.if.end121_crit_edge, label %land.rhs

if.end84.if.end121_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end121

land.rhs:                                         ; preds = %if.end84
  %dep_map = getelementptr inbounds %struct.rwlock_t, ptr %ls, i32 0, i32 4
  %call = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool97.not = icmp eq i32 %call, 0
  br i1 %tobool97.not, label %do.end115, label %land.rhs.if.end121_crit_edge, !prof !311

land.rhs.if.end121_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end121

do.end115:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 670, i32 noundef 9, ptr noundef null) #12
  br label %if.end121

if.end121:                                        ; preds = %do.end115, %land.rhs.if.end121_crit_edge, %if.end84.if.end121_crit_edge
  %flags = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 5
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool133.not = icmp eq i32 %and, 0
  br i1 %tobool133.not, label %if.end121.if.end155_crit_edge, label %do.end149, !prof !307

if.end121.if.end155_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end155

do.end149:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 671, i32 noundef 9, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.__label_insert) #12
  br label %if.end155

if.end155:                                        ; preds = %do.end149, %if.end121.if.end155_crit_edge
  %root = getelementptr inbounds %struct.aa_labelset, ptr %ls, i32 0, i32 1
  %9 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %root, align 4
  %tobool165.not292 = icmp eq ptr %10, null
  br i1 %tobool165.not292, label %if.end155.while.end_crit_edge, label %if.end155.while.body_crit_edge

if.end155.while.body_crit_edge:                   ; preds = %if.end155
  br label %while.body

if.end155.while.end_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %if.else217.while.body_crit_edge, %if.end155.while.body_crit_edge
  %11 = phi ptr [ %35, %if.else217.while.body_crit_edge ], [ %10, %if.end155.while.body_crit_edge ]
  %new.0293 = phi ptr [ %new.1, %if.else217.while.body_crit_edge ], [ %root, %if.end155.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %11, i32 -4
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %do.end.i, label %while.body.if.end.i_crit_edge, !prof !311

while.body.if.end.i_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 465, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.label_cmp) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %while.body.if.end.i_crit_edge
  %cmp.i = icmp eq ptr %add.ptr, %label
  br i1 %cmp.i, label %if.end.i.if.then169_crit_edge, label %label_cmp.exit

if.end.i.if.then169_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then169

label_cmp.exit:                                   ; preds = %if.end.i
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 4
  %vec26.i = getelementptr i8, ptr %11, i32 40
  %size28.i = getelementptr i8, ptr %11, i32 36
  %14 = ptrtoint ptr %size28.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size28.i, align 4
  %call.i = tail call fastcc i32 @vec_cmp(ptr noundef %vec, i32 noundef %13, ptr noundef %vec26.i, i32 noundef %15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp168 = icmp eq i32 %call.i, 0
  br i1 %cmp168, label %label_cmp.exit.if.then169_crit_edge, label %if.else217

label_cmp.exit.if.then169_crit_edge:              ; preds = %label_cmp.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then169

if.then169:                                       ; preds = %label_cmp.exit.if.then169_crit_edge, %if.end.i.if.then169_crit_edge
  %add.ptr.lcssa = phi ptr [ %label, %if.end.i.if.then169_crit_edge ], [ %add.ptr, %label_cmp.exit.if.then169_crit_edge ]
  br i1 %replace, label %if.then169.if.else_crit_edge, label %land.lhs.true

if.then169.if.else_crit_edge:                     ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %if.then169
  %flags171 = getelementptr i8, ptr %11, i32 28
  %16 = ptrtoint ptr %flags171 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags171, align 4
  %and172 = and i32 %17, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %if.then174, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then174:                                       ; preds = %land.lhs.true
  br i1 %tobool.not.i, label %if.then174.do.body180_crit_edge, label %land.lhs.true.i

if.then174.do.body180_crit_edge:                  ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body180

land.lhs.true.i:                                  ; preds = %if.then174
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #12
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %add.ptr.lcssa, i32 noundef 4) #12
  %18 = ptrtoint ptr %add.ptr.lcssa to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %add.ptr.lcssa, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %land.lhs.true.i
  %20 = phi i32 [ %19, %land.lhs.true.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %21 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i.i.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %20, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr.lcssa, i32 noundef 4) #12
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #12
  %22 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %add.ptr.lcssa, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %24 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %add.ptr.lcssa, ptr nonnull %add.ptr.lcssa, i32 %23, i32 %add.i.i.i.i.i, ptr nonnull elementtype(i32) %add.ptr.lcssa) #12, !srcloc !316
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %24, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %24, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %23
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !307

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %25 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %26, 1
  %27 = or i32 %add5.i.i.i.i.i, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %.not.i.i.i.i.i = icmp sgt i32 %27, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !307

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef nonnull %add.ptr.lcssa, i32 noundef 0) #12
  %28 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %29 = phi i32 [ %26, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %29, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #12
  br i1 %tobool12.i.i.i.i.not.i, label %kref_get_unless_zero.exit.i.do.body180_crit_edge, label %kref_get_unless_zero.exit.i.cleanup228_crit_edge

kref_get_unless_zero.exit.i.cleanup228_crit_edge: ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup228

kref_get_unless_zero.exit.i.do.body180_crit_edge: ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body180

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then169.if.else_crit_edge
  tail call fastcc void @__proxy_share(ptr noundef %add.ptr.lcssa, ptr noundef %label)
  br label %do.body180

do.body180:                                       ; preds = %if.else, %kref_get_unless_zero.exit.i.do.body180_crit_edge, %if.then174.do.body180_crit_edge
  %call182 = call fastcc zeroext i1 @__label_replace(ptr noundef %add.ptr.lcssa, ptr noundef %label)
  br i1 %call182, label %do.body180.if.end206_crit_edge, label %do.end200, !prof !307

do.body180.if.end206_crit_edge:                   ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end206

do.end200:                                        ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 691, i32 noundef 9, ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.__label_insert) #12
  br label %if.end206

if.end206:                                        ; preds = %do.end200, %do.body180.if.end206_crit_edge
  br i1 %tobool26.not, label %if.end206.cleanup228_crit_edge, label %if.then.i

if.end206.cleanup228_crit_edge:                   ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup228

if.then.i:                                        ; preds = %if.end206
  %call.i.i.i.i.i.i.i266 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %label, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr nonnull %label, i32 1, i32 3, i32 1) #12
  %30 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %label, ptr nonnull %label, i32 1, ptr nonnull elementtype(i32) %label) #12, !srcloc !310
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !311

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i267 = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %31 = or i32 %add.i.i.i.i.i267, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %.not.i.i.i.i.i268 = icmp sgt i32 %31, -1
  br i1 %.not.i.i.i.i.i268, label %if.else.i.i.i.i.i.cleanup228_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !307

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cleanup228_crit_edge:           ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup228

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %label, i32 noundef %.sink.i.i.i.i.i) #12
  br label %cleanup228

if.else217:                                       ; preds = %label_cmp.exit
  %32 = ptrtoint ptr %new.0293 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %new.0293, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp218 = icmp slt i32 %call.i, 0
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %33, i32 0, i32 2
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %33, i32 0, i32 1
  %new.1 = select i1 %cmp218, ptr %rb_left, ptr %rb_right
  %34 = ptrtoint ptr %new.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %new.1, align 4
  %tobool165.not = icmp eq ptr %35, null
  br i1 %tobool165.not, label %while.cond.while.end_crit_edge, label %if.else217.while.body_crit_edge

if.else217.while.body_crit_edge:                  ; preds = %if.else217
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.else217
  call void @__sanitizer_cov_trace_pc() #14
  %phi.cast.le = ptrtoint ptr %33 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.end155.while.end_crit_edge
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %if.end155.while.end_crit_edge ]
  %new.0.lcssa = phi ptr [ %new.1, %while.cond.while.end_crit_edge ], [ %root, %if.end155.while.end_crit_edge ]
  %node = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 1
  %36 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %parent.0.lcssa, ptr %node, align 4
  %rb_right.i = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 1, i32 2
  %38 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %rb_left.i, align 4
  %39 = ptrtoint ptr %new.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %node, ptr %new.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef %node, ptr noundef %root) #12
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags, align 4
  %or = or i32 %41, 256
  store i32 %or, ptr %flags, align 4
  br i1 %tobool26.not, label %while.end.cleanup228_crit_edge, label %if.then.i274

while.end.cleanup228_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup228

if.then.i274:                                     ; preds = %while.end
  %call.i.i.i.i.i.i.i271 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %label, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull %label, i32 1, i32 3, i32 1) #12
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %label, ptr nonnull %label, i32 1, ptr nonnull elementtype(i32) %label) #12, !srcloc !310
  %asmresult.i.i.i.i.i.i.i272 = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i272)
  %tobool1.not.i.i.i.i.i273 = icmp eq i32 %asmresult.i.i.i.i.i.i.i272, 0
  br i1 %tobool1.not.i.i.i.i.i273, label %if.then.i274.if.end15.sink.split.i.i.i.i.i279_crit_edge, label %if.else.i.i.i.i.i277, !prof !311

if.then.i274.if.end15.sink.split.i.i.i.i.i279_crit_edge: ; preds = %if.then.i274
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i279

if.else.i.i.i.i.i277:                             ; preds = %if.then.i274
  %add.i.i.i.i.i275 = add i32 %asmresult.i.i.i.i.i.i.i272, 1
  %43 = or i32 %add.i.i.i.i.i275, %asmresult.i.i.i.i.i.i.i272
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %.not.i.i.i.i.i276 = icmp sgt i32 %43, -1
  br i1 %.not.i.i.i.i.i276, label %if.else.i.i.i.i.i277.cleanup228_crit_edge, label %if.else.i.i.i.i.i277.if.end15.sink.split.i.i.i.i.i279_crit_edge, !prof !307

if.else.i.i.i.i.i277.if.end15.sink.split.i.i.i.i.i279_crit_edge: ; preds = %if.else.i.i.i.i.i277
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i279

if.else.i.i.i.i.i277.cleanup228_crit_edge:        ; preds = %if.else.i.i.i.i.i277
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup228

if.end15.sink.split.i.i.i.i.i279:                 ; preds = %if.else.i.i.i.i.i277.if.end15.sink.split.i.i.i.i.i279_crit_edge, %if.then.i274.if.end15.sink.split.i.i.i.i.i279_crit_edge
  %.sink.i.i.i.i.i278 = phi i32 [ 2, %if.then.i274.if.end15.sink.split.i.i.i.i.i279_crit_edge ], [ 1, %if.else.i.i.i.i.i277.if.end15.sink.split.i.i.i.i.i279_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %label, i32 noundef %.sink.i.i.i.i.i278) #12
  br label %cleanup228

cleanup228:                                       ; preds = %if.end15.sink.split.i.i.i.i.i279, %if.else.i.i.i.i.i277.cleanup228_crit_edge, %while.end.cleanup228_crit_edge, %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cleanup228_crit_edge, %if.end206.cleanup228_crit_edge, %kref_get_unless_zero.exit.i.cleanup228_crit_edge
  %retval.2 = phi ptr [ %label, %if.end15.sink.split.i.i.i.i.i ], [ null, %while.end.cleanup228_crit_edge ], [ %label, %if.else.i.i.i.i.i277.cleanup228_crit_edge ], [ %label, %if.end15.sink.split.i.i.i.i.i279 ], [ null, %if.end206.cleanup228_crit_edge ], [ %label, %if.else.i.i.i.i.i.cleanup228_crit_edge ], [ %add.ptr.lcssa, %kref_get_unless_zero.exit.i.cleanup228_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aa_vec_find_or_create_label(ptr noundef %vec, i32 noundef %len, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @vec_find(ptr noundef %vec, i32 noundef %len)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %vec, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.if.end.i_crit_edge, !prof !311

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 861, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.vec_create_and_insert_label) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp.i = icmp eq i32 %len, 1
  br i1 %cmp.i, label %if.then24.i, label %if.end26.i

if.then24.i:                                      ; preds = %if.end.i
  %0 = ptrtoint ptr %vec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vec, align 4
  %label25.i = getelementptr inbounds %struct.aa_profile, ptr %1, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %label25.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull %label25.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %label25.i, ptr nonnull %label25.i, i32 1, ptr nonnull elementtype(i32) %label25.i) #12, !srcloc !310
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then24.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !311

if.then24.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then24.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !307

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then24.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then24.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %label25.i, i32 noundef %.sink.i.i.i.i.i.i) #12
  br label %cleanup

if.end26.i:                                       ; preds = %if.end.i
  %sub.i = add i32 %len, -1
  %arrayidx27.i = getelementptr ptr, ptr %vec, i32 %sub.i
  %4 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx27.i, align 4
  %vec29.i = getelementptr inbounds %struct.aa_profile, ptr %5, i32 1
  %size.i = getelementptr inbounds %struct.aa_profile, ptr %5, i32 0, i32 25, i32 7
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 4
  %sub34.i = add i32 %7, -1
  %arrayidx35.i = getelementptr ptr, ptr %vec29.i, i32 %sub34.i
  %8 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx35.i, align 4
  %ns.i = getelementptr inbounds %struct.aa_profile, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ns.i, align 4
  %labels.i = getelementptr inbounds %struct.aa_ns, ptr %11, i32 0, i32 11
  %call36.i = tail call ptr @aa_label_alloc(i32 noundef %len, ptr noundef null, i32 noundef %gfp) #12
  %tobool37.not.i = icmp eq ptr %call36.i, null
  br i1 %tobool37.not.i, label %if.end26.i.cleanup_crit_edge, label %for.cond.preheader.i

if.end26.i.cleanup_crit_edge:                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp4093.i = icmp sgt i32 %len, 0
  br i1 %cmp4093.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.do.body45.i_crit_edge

for.cond.preheader.i.do.body45.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body45.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %aa_get_profile.exit.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.094.i = phi i32 [ %inc.i, %aa_get_profile.exit.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx41.i = getelementptr ptr, ptr %vec, i32 %i.094.i
  %12 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx41.i, align 4
  %tobool.not.i83.i = icmp eq ptr %13, null
  br i1 %tobool.not.i83.i, label %for.body.i.aa_get_profile.exit.i_crit_edge, label %if.then.i87.i

for.body.i.aa_get_profile.exit.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_get_profile.exit.i

if.then.i87.i:                                    ; preds = %for.body.i
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %13, i32 0, i32 25
  %call.i.i.i.i.i.i.i84.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #12
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #12, !srcloc !310
  %asmresult.i.i.i.i.i.i.i85.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i85.i)
  %tobool1.not.i.i.i.i.i86.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i85.i, 0
  br i1 %tobool1.not.i.i.i.i.i86.i, label %if.then.i87.i.if.end15.sink.split.i.i.i.i.i92.i_crit_edge, label %if.else.i.i.i.i.i90.i, !prof !311

if.then.i87.i.if.end15.sink.split.i.i.i.i.i92.i_crit_edge: ; preds = %if.then.i87.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i92.i

if.else.i.i.i.i.i90.i:                            ; preds = %if.then.i87.i
  %add.i.i.i.i.i88.i = add i32 %asmresult.i.i.i.i.i.i.i85.i, 1
  %15 = or i32 %add.i.i.i.i.i88.i, %asmresult.i.i.i.i.i.i.i85.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i.i89.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i.i89.i, label %if.else.i.i.i.i.i90.i.aa_get_profile.exit.i_crit_edge, label %if.else.i.i.i.i.i90.i.if.end15.sink.split.i.i.i.i.i92.i_crit_edge, !prof !307

if.else.i.i.i.i.i90.i.if.end15.sink.split.i.i.i.i.i92.i_crit_edge: ; preds = %if.else.i.i.i.i.i90.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i92.i

if.else.i.i.i.i.i90.i.aa_get_profile.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i90.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_get_profile.exit.i

if.end15.sink.split.i.i.i.i.i92.i:                ; preds = %if.else.i.i.i.i.i90.i.if.end15.sink.split.i.i.i.i.i92.i_crit_edge, %if.then.i87.i.if.end15.sink.split.i.i.i.i.i92.i_crit_edge
  %.sink.i.i.i.i.i91.i = phi i32 [ 2, %if.then.i87.i.if.end15.sink.split.i.i.i.i.i92.i_crit_edge ], [ 1, %if.else.i.i.i.i.i90.i.if.end15.sink.split.i.i.i.i.i92.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef %.sink.i.i.i.i.i91.i) #12
  br label %aa_get_profile.exit.i

aa_get_profile.exit.i:                            ; preds = %if.end15.sink.split.i.i.i.i.i92.i, %if.else.i.i.i.i.i90.i.aa_get_profile.exit.i_crit_edge, %for.body.i.aa_get_profile.exit.i_crit_edge
  %arrayidx44.i = getelementptr %struct.aa_label, ptr %call36.i, i32 0, i32 8, i32 %i.094.i
  %16 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %arrayidx44.i, align 4
  %inc.i = add nuw nsw i32 %i.094.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %len
  br i1 %exitcond.not.i, label %aa_get_profile.exit.i.do.body45.i_crit_edge, label %aa_get_profile.exit.i.for.body.i_crit_edge

aa_get_profile.exit.i.for.body.i_crit_edge:       ; preds = %aa_get_profile.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

aa_get_profile.exit.i.do.body45.i_crit_edge:      ; preds = %aa_get_profile.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body45.i

do.body45.i:                                      ; preds = %aa_get_profile.exit.i.do.body45.i_crit_edge, %for.cond.preheader.i.do.body45.i_crit_edge
  %call48.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef %labels.i) #12
  %call51.i = tail call fastcc ptr @__label_insert(ptr noundef %labels.i, ptr noundef nonnull %call36.i, i1 noundef zeroext false) #12
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %labels.i, i32 noundef %call48.i) #12
  tail call fastcc void @label_free_or_put_new(ptr noundef %call51.i, ptr noundef nonnull %call36.i) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body45.i, %if.end26.i.cleanup_crit_edge, %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %entry.cleanup_crit_edge ], [ %call51.i, %do.body45.i ], [ null, %if.end26.i.cleanup_crit_edge ], [ %label25.i, %if.else.i.i.i.i.i.i.cleanup_crit_edge ], [ %label25.i, %if.end15.sink.split.i.i.i.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @vec_find(ptr noundef %vec, i32 noundef %n) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vec, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 839, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.vec_find) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %0 = ptrtoint ptr %vec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vec, align 4
  %tobool26.not = icmp eq ptr %1, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !311

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 840, i32 noundef 9, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.vec_find) #12
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n)
  %cmp = icmp slt i32 %n, 1
  br i1 %cmp, label %do.end77, label %if.end50.if.end83_crit_edge, !prof !311

if.end50.if.end83_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

do.end77:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 841, i32 noundef 9, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.vec_find) #12
  br label %if.end83

if.end83:                                         ; preds = %do.end77, %if.end50.if.end83_crit_edge
  %sub = add i32 %n, -1
  %arrayidx = getelementptr ptr, ptr %vec, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %ns = getelementptr inbounds %struct.aa_profile, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns, align 4
  %labels = getelementptr inbounds %struct.aa_ns, ptr %5, i32 0, i32 11
  %call = tail call i32 @_raw_read_lock_irqsave(ptr noundef %labels) #12
  %call98 = tail call fastcc ptr @__vec_find(ptr noundef %vec, i32 noundef %n)
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %labels, i32 noundef %call) #12
  ret ptr %call98
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aa_label_find(ptr noundef %label) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %label, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 909, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.aa_label_find) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %vec = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 8
  %size = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 7
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %call = tail call fastcc ptr @vec_find(ptr noundef %vec, i32 noundef %1)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aa_label_insert(ptr noundef %ls, ptr noundef %label) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ls, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 930, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.aa_label_insert) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %label, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !311

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 931, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.aa_label_insert) #12
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %flags60 = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 5
  %0 = ptrtoint ptr %flags60 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags60, align 4
  %and = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool61.not = icmp eq i32 %and, 0
  br i1 %tobool61.not, label %do.body63, label %if.end50.do.body81_crit_edge

if.end50.do.body81_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body81

do.body63:                                        ; preds = %if.end50
  %call = tail call i32 @_raw_read_lock_irqsave(ptr noundef %ls) #12
  br i1 %tobool26.not, label %do.end.i, label %do.body63.__label_find.exit_crit_edge, !prof !311

do.body63.__label_find.exit_crit_edge:            ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #14
  br label %__label_find.exit

do.end.i:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 756, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__label_find) #12
  br label %__label_find.exit

__label_find.exit:                                ; preds = %do.end.i, %do.body63.__label_find.exit_crit_edge
  %vec.i = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 8
  %size.i = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 7
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  %call.i = tail call fastcc ptr @__vec_find(ptr noundef %vec.i, i32 noundef %3) #12
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %ls, i32 noundef %call) #12
  %tobool77.not = icmp eq ptr %call.i, null
  br i1 %tobool77.not, label %__label_find.exit.do.body81_crit_edge, label %__label_find.exit.cleanup_crit_edge

__label_find.exit.cleanup_crit_edge:              ; preds = %__label_find.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

__label_find.exit.do.body81_crit_edge:            ; preds = %__label_find.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body81

do.body81:                                        ; preds = %__label_find.exit.do.body81_crit_edge, %if.end50.do.body81_crit_edge
  %call88 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %ls) #12
  %call91 = tail call fastcc ptr @__label_insert(ptr noundef %ls, ptr noundef %label, i1 noundef zeroext false)
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %ls, i32 noundef %call88) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body81, %__label_find.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call91, %do.body81 ], [ %call.i, %__label_find.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aa_label_next_in_merge(ptr noundef %I, ptr noundef readonly %a, ptr noundef readonly %b) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %a, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 963, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.aa_label_next_in_merge) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %b, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !311

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 964, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.aa_label_next_in_merge) #12
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %tobool62.not = icmp eq ptr %I, null
  br i1 %tobool62.not, label %do.end80, label %if.end50.if.end86_crit_edge, !prof !311

if.end50.if.end86_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

do.end80:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 965, i32 noundef 9, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.aa_label_next_in_merge) #12
  br label %if.end86

if.end86:                                         ; preds = %do.end80, %if.end50.if.end86_crit_edge
  %0 = ptrtoint ptr %I to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %I, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %do.end113, label %if.end86.if.end119_crit_edge, !prof !311

if.end86.if.end119_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119

do.end113:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 966, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.aa_label_next_in_merge) #12
  br label %if.end119

if.end119:                                        ; preds = %do.end113, %if.end86.if.end119_crit_edge
  %2 = ptrtoint ptr %I to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %I, align 4
  %size = getelementptr inbounds %struct.aa_label, ptr %a, i32 0, i32 7
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp132 = icmp sgt i32 %3, %5
  br i1 %cmp132, label %do.end148, label %if.end119.if.end154_crit_edge, !prof !311

if.end119.if.end154_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end154

do.end148:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 967, i32 noundef 9, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.aa_label_next_in_merge) #12
  br label %if.end154

if.end154:                                        ; preds = %do.end148, %if.end119.if.end154_crit_edge
  %j = getelementptr inbounds %struct.label_it, ptr %I, i32 0, i32 1
  %6 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %j, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp166 = icmp slt i32 %7, 0
  br i1 %cmp166, label %do.end182, label %if.end154.if.end188_crit_edge, !prof !311

if.end154.if.end188_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end188

do.end182:                                        ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 968, i32 noundef 9, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.aa_label_next_in_merge) #12
  br label %if.end188

if.end188:                                        ; preds = %do.end182, %if.end154.if.end188_crit_edge
  %8 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %j, align 4
  %size201 = getelementptr inbounds %struct.aa_label, ptr %b, i32 0, i32 7
  %10 = ptrtoint ptr %size201 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size201, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp202 = icmp sgt i32 %9, %11
  br i1 %cmp202, label %do.end218, label %if.end188.if.end224_crit_edge, !prof !311

if.end188.if.end224_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end224

do.end218:                                        ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 969, i32 noundef 9, ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.aa_label_next_in_merge) #12
  br label %if.end224

if.end224:                                        ; preds = %do.end218, %if.end188.if.end224_crit_edge
  %12 = ptrtoint ptr %I to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %I, align 4
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp236 = icmp slt i32 %13, %15
  %16 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %j, align 4
  %18 = ptrtoint ptr %size201 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size201, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp240 = icmp slt i32 %17, %19
  br i1 %cmp236, label %if.then237, label %if.end262

if.then237:                                       ; preds = %if.end224
  br i1 %cmp240, label %if.then241, label %if.then237.if.end257_crit_edge

if.then237.if.end257_crit_edge:                   ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end257

if.then241:                                       ; preds = %if.then237
  %arrayidx = getelementptr %struct.aa_label, ptr %a, i32 0, i32 8, i32 %13
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %arrayidx245 = getelementptr %struct.aa_label, ptr %b, i32 0, i32 8, i32 %17
  %22 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx245, align 4
  %call = tail call fastcc i32 @profile_cmp(ptr noundef %21, ptr noundef %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp246 = icmp sgt i32 %call, 0
  br i1 %cmp246, label %cleanup, label %if.end251

if.end251:                                        ; preds = %if.then241
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp252 = icmp eq i32 %call, 0
  br i1 %cmp252, label %if.then253, label %if.end251.if.end257_crit_edge

if.end251.if.end257_crit_edge:                    ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end257

if.then253:                                       ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %j, align 4
  %inc255 = add i32 %25, 1
  store i32 %inc255, ptr %j, align 4
  br label %if.end257

cleanup:                                          ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %j, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %j, align 4
  %arrayidx250 = getelementptr %struct.aa_label, ptr %b, i32 0, i32 8, i32 %27
  br label %return.sink.split

if.end257:                                        ; preds = %if.then253, %if.end251.if.end257_crit_edge, %if.then237.if.end257_crit_edge
  %28 = ptrtoint ptr %I to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %I, align 4
  %inc260 = add i32 %29, 1
  store i32 %inc260, ptr %I, align 4
  %arrayidx261 = getelementptr %struct.aa_label, ptr %a, i32 0, i32 8, i32 %29
  br label %return.sink.split

if.end262:                                        ; preds = %if.end224
  br i1 %cmp240, label %if.then266, label %if.end262.return_crit_edge

if.end262.return_crit_edge:                       ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then266:                                       ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #14
  %inc269 = add nsw i32 %17, 1
  %30 = ptrtoint ptr %j to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %inc269, ptr %j, align 4
  %arrayidx270 = getelementptr %struct.aa_label, ptr %b, i32 0, i32 8, i32 %17
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then266, %if.end257, %cleanup
  %arrayidx250.sink = phi ptr [ %arrayidx250, %cleanup ], [ %arrayidx270, %if.then266 ], [ %arrayidx261, %if.end257 ]
  %31 = ptrtoint ptr %arrayidx250.sink to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx250.sink, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.end262.return_crit_edge
  %retval.1 = phi ptr [ null, %if.end262.return_crit_edge ], [ %32, %return.sink.split ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aa_label_find_merge(ptr noundef %a, ptr noundef %b) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i.i.i = alloca i32, align 4
  %i.i.i = alloca %struct.label_it, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %a, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1186, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.aa_label_find_merge) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %b, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !311

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1187, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.aa_label_find_merge) #12
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %flags60 = getelementptr inbounds %struct.aa_label, ptr %a, i32 0, i32 5
  %0 = ptrtoint ptr %flags60 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags60, align 4
  %and = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool61.not = icmp eq i32 %and, 0
  br i1 %tobool61.not, label %if.end50.if.end63_crit_edge, label %if.then62

if.end50.if.end63_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then62:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call fastcc ptr @aa_get_newest_label(ptr noundef %a)
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end50.if.end63_crit_edge
  %ar.0 = phi ptr [ %call, %if.then62 ], [ null, %if.end50.if.end63_crit_edge ]
  %a.addr.0 = phi ptr [ %call, %if.then62 ], [ %a, %if.end50.if.end63_crit_edge ]
  %flags64 = getelementptr inbounds %struct.aa_label, ptr %b, i32 0, i32 5
  %2 = ptrtoint ptr %flags64 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags64, align 4
  %and65 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end63.if.end69_crit_edge, label %if.then67

if.end63.if.end69_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  %call68 = tail call fastcc ptr @aa_get_newest_label(ptr noundef %b)
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.end63.if.end69_crit_edge
  %br.0 = phi ptr [ %call68, %if.then67 ], [ null, %if.end63.if.end69_crit_edge ]
  %b.addr.0 = phi ptr [ %call68, %if.then67 ], [ %b, %if.end63.if.end69_crit_edge ]
  %vec.i = getelementptr inbounds %struct.aa_label, ptr %a.addr.0, i32 0, i32 8
  %size.i = getelementptr inbounds %struct.aa_label, ptr %a.addr.0, i32 0, i32 7
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.i, align 4
  %sub.i = add i32 %5, -1
  %arrayidx1.i = getelementptr ptr, ptr %vec.i, i32 %sub.i
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1.i, align 4
  %ns.i = getelementptr inbounds %struct.aa_profile, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ns.i, align 4
  %vec2.i = getelementptr inbounds %struct.aa_label, ptr %b.addr.0, i32 0, i32 8
  %size4.i = getelementptr inbounds %struct.aa_label, ptr %b.addr.0, i32 0, i32 7
  %10 = ptrtoint ptr %size4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size4.i, align 4
  %sub5.i = add i32 %11, -1
  %arrayidx6.i = getelementptr ptr, ptr %vec2.i, i32 %sub5.i
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx6.i, align 4
  %ns7.i = getelementptr inbounds %struct.aa_profile, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %ns7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ns7.i, align 4
  %call.i = tail call fastcc i32 @ns_cmp(ptr noundef %9, ptr noundef %15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 1
  %..i = select i1 %cmp.i, ptr %9, ptr %15
  %retval.0.i = getelementptr inbounds %struct.aa_ns, ptr %..i, i32 0, i32 11
  %call73 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %retval.0.i) #12
  %tobool.not.i = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end69.if.end.i_crit_edge, !prof !311

if.end69.if.end.i_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1145, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.__label_find_merge) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end69.if.end.i_crit_edge
  %tobool26.not.i = icmp eq ptr %a.addr.0, null
  br i1 %tobool26.not.i, label %do.end44.i, label %if.end.i.if.end50.i_crit_edge, !prof !311

if.end.i.if.end50.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.i

do.end44.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1146, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.__label_find_merge) #12
  br label %if.end50.i

if.end50.i:                                       ; preds = %do.end44.i, %if.end.i.if.end50.i_crit_edge
  %tobool62.not.i = icmp eq ptr %b.addr.0, null
  br i1 %tobool62.not.i, label %do.end80.i, label %if.end50.i.if.end86.i_crit_edge, !prof !311

if.end50.i.if.end86.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86.i

do.end80.i:                                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1147, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.__label_find_merge) #12
  br label %if.end86.i

if.end86.i:                                       ; preds = %do.end80.i, %if.end50.i.if.end86.i_crit_edge
  %cmp.i98 = icmp eq ptr %a.addr.0, %b.addr.0
  br i1 %cmp.i98, label %if.then96.i, label %if.end97.i

if.then96.i:                                      ; preds = %if.end86.i
  br i1 %tobool26.not.i, label %do.end.i.i, label %if.then96.i.__label_find.exit.i_crit_edge, !prof !311

if.then96.i.__label_find.exit.i_crit_edge:        ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__label_find.exit.i

do.end.i.i:                                       ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 756, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__label_find) #12
  br label %__label_find.exit.i

__label_find.exit.i:                              ; preds = %do.end.i.i, %if.then96.i.__label_find.exit.i_crit_edge
  %16 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.i, align 4
  %call.i.i = tail call fastcc ptr @__vec_find(ptr noundef %vec.i, i32 noundef %17) #12
  br label %__label_find_merge.exit

if.end97.i:                                       ; preds = %if.end86.i
  %root.i = getelementptr inbounds %struct.aa_ns, ptr %..i, i32 0, i32 11, i32 1
  %18 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %node.0142.i = load ptr, ptr %root.i, align 4
  %tobool98.not143.i = icmp eq ptr %node.0142.i, null
  br i1 %tobool98.not143.i, label %if.end97.i.__label_find_merge.exit_crit_edge, label %if.end97.i.while.body.i_crit_edge

if.end97.i.while.body.i_crit_edge:                ; preds = %if.end97.i
  br label %while.body.i

if.end97.i.__label_find_merge.exit_crit_edge:     ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__label_find_merge.exit

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end97.i.while.body.i_crit_edge
  %node.0144.i = phi ptr [ %node.0.i, %cleanup.i.while.body.i_crit_edge ], [ %node.0142.i, %if.end97.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %node.0144.i, i32 -4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i.i.i) #12
  %19 = ptrtoint ptr %i.i.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %i.i.i, align 8
  br i1 %tobool26.not.i, label %do.end.i126.i, label %while.body.i.if.end.i.i_crit_edge, !prof !311

while.body.i.if.end.i.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

do.end.i126.i:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1009, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.label_merge_cmp) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i126.i, %while.body.i.if.end.i.i_crit_edge
  br i1 %tobool62.not.i, label %do.end44.i.i, label %if.end.i.i.if.end50.i.i_crit_edge, !prof !311

if.end.i.i.if.end50.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.i.i

do.end44.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1010, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.label_merge_cmp) #12
  br label %if.end50.i.i

if.end50.i.i:                                     ; preds = %do.end44.i.i, %if.end.i.i.if.end50.i.i_crit_edge
  %tobool62.not.i.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool62.not.i.i, label %do.end80.i.i, label %if.end50.i.i.if.end86.i.i_crit_edge, !prof !311

if.end50.i.i.if.end86.i.i_crit_edge:              ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86.i.i

do.end80.i.i:                                     ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1011, i32 noundef 9, ptr noundef nonnull @.str.74, ptr noundef nonnull @__func__.label_merge_cmp) #12
  br label %if.end86.i.i

if.end86.i.i:                                     ; preds = %do.end80.i.i, %if.end50.i.i.if.end86.i.i_crit_edge
  %size.i127.i = getelementptr i8, ptr %node.0144.i, i32 36
  %20 = ptrtoint ptr %size.i127.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size.i127.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp135.i.i = icmp sgt i32 %21, 0
  br i1 %cmp135.i.i, label %if.end86.i.i.land.rhs.i.i_crit_edge, label %if.end86.i.i.if.else.i.i_crit_edge

if.end86.i.i.if.else.i.i_crit_edge:               ; preds = %if.end86.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

if.end86.i.i.land.rhs.i.i_crit_edge:              ; preds = %if.end86.i.i
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %for.inc.i.i.land.rhs.i.i_crit_edge, %if.end86.i.i.land.rhs.i.i_crit_edge
  %k.0136.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.land.rhs.i.i_crit_edge ], [ 0, %if.end86.i.i.land.rhs.i.i_crit_edge ]
  %call.i128.i = call ptr @aa_label_next_in_merge(ptr noundef nonnull %i.i.i, ptr noundef %a.addr.0, ptr noundef %b.addr.0) #12
  %tobool96.not.i.i = icmp eq ptr %call.i128.i, null
  br i1 %tobool96.not.i.i, label %land.rhs.i.i.if.else.i.i_crit_edge, label %for.body.i.i

land.rhs.i.i.if.else.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

for.body.i.i:                                     ; preds = %land.rhs.i.i
  %arrayidx.i.i = getelementptr %struct.aa_label, ptr %add.ptr.i, i32 0, i32 8, i32 %k.0136.i.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 4
  %call97.i.i = call fastcc i32 @profile_cmp(ptr noundef nonnull %call.i128.i, ptr noundef %23) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97.i.i)
  %cmp98.not.i.i = icmp eq i32 %call97.i.i, 0
  br i1 %cmp98.not.i.i, label %for.inc.i.i, label %for.body.i.i.label_merge_cmp.exit.i_crit_edge

for.body.i.i.label_merge_cmp.exit.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %label_merge_cmp.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %k.0136.i.i, 1
  %24 = ptrtoint ptr %size.i127.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.i127.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %25
  br i1 %cmp.i.i, label %for.inc.i.i.land.rhs.i.i_crit_edge, label %if.else.thread.i

for.inc.i.i.land.rhs.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i

if.else.thread.i:                                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i.i.i) #12
  br label %if.then104.i

if.else.i.i:                                      ; preds = %land.rhs.i.i.if.else.i.i_crit_edge, %if.end86.i.i.if.else.i.i_crit_edge
  %k.0133.i.i = phi i32 [ 0, %if.end86.i.i.if.else.i.i_crit_edge ], [ %k.0136.i.i, %land.rhs.i.i.if.else.i.i_crit_edge ]
  %26 = ptrtoint ptr %size.i127.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size.i127.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %k.0133.i.i, i32 %27)
  %cmp104.i.i = icmp slt i32 %k.0133.i.i, %27
  %..i.i = sext i1 %cmp104.i.i to i32
  br label %label_merge_cmp.exit.i

label_merge_cmp.exit.i:                           ; preds = %if.else.i.i, %for.body.i.i.label_merge_cmp.exit.i_crit_edge
  %retval.2.i.i = phi i32 [ %..i.i, %if.else.i.i ], [ %call97.i.i, %for.body.i.i.label_merge_cmp.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i.i)
  %cmp101.i = icmp slt i32 %retval.2.i.i, 0
  br i1 %cmp101.i, label %if.then102.i, label %if.else.i

if.then102.i:                                     ; preds = %label_merge_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.0144.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %label_merge_cmp.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i.i)
  %cmp103.not.i = icmp eq i32 %retval.2.i.i, 0
  br i1 %cmp103.not.i, label %if.else105.i, label %if.else.i.if.then104.i_crit_edge

if.else.i.if.then104.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then104.i

if.then104.i:                                     ; preds = %if.else.i.if.then104.i_crit_edge, %if.else.thread.i
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.0144.i, i32 0, i32 1
  br label %cleanup.i

if.else105.i:                                     ; preds = %if.else.i
  br i1 %tobool62.not.i.i, label %if.else105.i.if.end.i130.i_crit_edge, label %land.lhs.true.i.i

if.else105.i.if.end.i130.i_crit_edge:             ; preds = %if.else105.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i130.i

land.lhs.true.i.i:                                ; preds = %if.else105.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i) #12
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %add.ptr.i, i32 noundef 4) #12
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %add.ptr.i, align 4
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %land.lhs.true.i.i
  %30 = phi i32 [ %29, %land.lhs.true.i.i ], [ %asmresult3.i.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge ]
  %31 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %old.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i.i

do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i.i.i

do.cond.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i
  %add.i.i.i.i.i.i = add i32 %30, 1
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr.i, i32 noundef 4) #12
  %call.i3.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i.i, i32 noundef 4) #12
  %32 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %old.i.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %add.ptr.i, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i.i:                        ; preds = %do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i.i
  %34 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %add.ptr.i, ptr nonnull %add.ptr.i, i32 %33, i32 %add.i.i.i.i.i.i, ptr nonnull elementtype(i32) %add.ptr.i) #12, !srcloc !316
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %34, 0
  %tobool.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i: ; preds = %do.body.i.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %34, 1
  %cmp.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i.i, %33
  br i1 %cmp.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, !prof !307

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i.i.i

if.end4.i.i.i.i.i.i:                              ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge
  %35 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %old.i.i.i.i.i.i, align 4
  %add5.i.i.i.i.i.i = add i32 %36, 1
  %37 = or i32 %add5.i.i.i.i.i.i, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %.not.i.i.i.i.i.i = icmp sgt i32 %37, -1
  br i1 %.not.i.i.i.i.i.i, label %if.end4.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !307

if.end4.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i_crit_edge: ; preds = %if.end4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get_unless_zero.exit.i.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef nonnull %add.ptr.i, i32 noundef 0) #12
  %38 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr.i.i = load i32, ptr %old.i.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i.i

kref_get_unless_zero.exit.i.i:                    ; preds = %if.then10.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i_crit_edge
  %39 = phi i32 [ %36, %if.end4.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i_crit_edge ], [ %.pr.i.i, %if.then10.i.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool12.i.i.i.i.not.i.i = icmp eq i32 %39, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i) #12
  br i1 %tobool12.i.i.i.i.not.i.i, label %kref_get_unless_zero.exit.i.i.if.end.i130.i_crit_edge, label %kref_get_unless_zero.exit.i.i.__label_find_merge.exit_crit_edge

kref_get_unless_zero.exit.i.i.__label_find_merge.exit_crit_edge: ; preds = %kref_get_unless_zero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__label_find_merge.exit

kref_get_unless_zero.exit.i.i.if.end.i130.i_crit_edge: ; preds = %kref_get_unless_zero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i130.i

if.end.i130.i:                                    ; preds = %kref_get_unless_zero.exit.i.i.if.end.i130.i_crit_edge, %if.else105.i.if.end.i130.i_crit_edge
  br label %__label_find_merge.exit

cleanup.i:                                        ; preds = %if.then104.i, %if.then102.i
  %node.1.in.i = phi ptr [ %rb_left.i, %if.then102.i ], [ %rb_right.i, %if.then104.i ]
  %40 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %node.0.i = load ptr, ptr %node.1.in.i, align 4
  %tobool98.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool98.not.i, label %cleanup.i.__label_find_merge.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

cleanup.i.__label_find_merge.exit_crit_edge:      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__label_find_merge.exit

__label_find_merge.exit:                          ; preds = %cleanup.i.__label_find_merge.exit_crit_edge, %if.end.i130.i, %kref_get_unless_zero.exit.i.i.__label_find_merge.exit_crit_edge, %if.end97.i.__label_find_merge.exit_crit_edge, %__label_find.exit.i
  %retval.2.i = phi ptr [ %call.i.i, %__label_find.exit.i ], [ %add.ptr.i, %kref_get_unless_zero.exit.i.i.__label_find_merge.exit_crit_edge ], [ null, %if.end.i130.i ], [ null, %if.end97.i.__label_find_merge.exit_crit_edge ], [ null, %cleanup.i.__label_find_merge.exit_crit_edge ]
  call void @_raw_read_unlock_irqrestore(ptr noundef %retval.0.i, i32 noundef %call73) #12
  %tobool.not.i99 = icmp eq ptr %ar.0, null
  br i1 %tobool.not.i99, label %__label_find_merge.exit.aa_put_label.exit_crit_edge, label %if.then.i

__label_find_merge.exit.aa_put_label.exit_crit_edge: ; preds = %__label_find_merge.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_put_label.exit

if.then.i:                                        ; preds = %__label_find_merge.exit
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ar.0, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !305
  call void @llvm.prefetch.p0(ptr nonnull %ar.0, i32 1, i32 3, i32 1) #12
  %41 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %ar.0, ptr nonnull %ar.0, i32 1, ptr nonnull elementtype(i32) %ar.0) #12, !srcloc !306
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !307

if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_put_label.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef nonnull %ar.0, i32 noundef 3) #12
  br label %aa_put_label.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !308
  call void @aa_label_kref(ptr noundef nonnull %ar.0) #12, !callees !309
  br label %aa_put_label.exit

aa_put_label.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, %__label_find_merge.exit.aa_put_label.exit_crit_edge
  %tobool.not.i101 = icmp eq ptr %br.0, null
  br i1 %tobool.not.i101, label %aa_put_label.exit.aa_put_label.exit111_crit_edge, label %if.then.i105

aa_put_label.exit.aa_put_label.exit111_crit_edge: ; preds = %aa_put_label.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_put_label.exit111

if.then.i105:                                     ; preds = %aa_put_label.exit
  %call.i.i.i.i.i.i.i102 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %br.0, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !305
  call void @llvm.prefetch.p0(ptr nonnull %br.0, i32 1, i32 3, i32 1) #12
  %42 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %br.0, ptr nonnull %br.0, i32 1, ptr nonnull elementtype(i32) %br.0) #12, !srcloc !306
  %asmresult.i.i.i.i.i.i.i.i103 = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i103)
  %cmp.i.i.i.i.i104 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i103, 1
  br i1 %cmp.i.i.i.i.i104, label %if.then.i.i109, label %if.end5.i.i.i.i.i107

if.end5.i.i.i.i.i107:                             ; preds = %if.then.i105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i103)
  %.not.i.i.i.i.i106 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i103, 0
  br i1 %.not.i.i.i.i.i106, label %if.end5.i.i.i.i.i107.aa_put_label.exit111_crit_edge, label %if.then10.i.i.i.i.i108, !prof !307

if.end5.i.i.i.i.i107.aa_put_label.exit111_crit_edge: ; preds = %if.end5.i.i.i.i.i107
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_put_label.exit111

if.then10.i.i.i.i.i108:                           ; preds = %if.end5.i.i.i.i.i107
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef nonnull %br.0, i32 noundef 3) #12
  br label %aa_put_label.exit111

if.then.i.i109:                                   ; preds = %if.then.i105
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !308
  call void @aa_label_kref(ptr noundef nonnull %br.0) #12, !callees !309
  br label %aa_put_label.exit111

aa_put_label.exit111:                             ; preds = %if.then.i.i109, %if.then10.i.i.i.i.i108, %if.end5.i.i.i.i.i107.aa_put_label.exit111_crit_edge, %aa_put_label.exit.aa_put_label.exit111_crit_edge
  ret ptr %retval.2.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @aa_get_newest_label(ptr noundef %l) unnamed_addr #3 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  %tobool.not = icmp eq ptr %l, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  br i1 %tobool3.not, label %do.end, label %if.then2.if.end20_crit_edge, !prof !311

if.then2.if.end20_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 424, i32 noundef 9, ptr noundef nonnull @.str.67, ptr noundef nonnull @__func__.aa_get_newest_label) #12
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
  br i1 %tobool33.not, label %do.end51, label %if.end20.if.end57_crit_edge, !prof !311

if.end20.if.end57_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

do.end51:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 425, i32 noundef 9, ptr noundef nonnull @.str.68, ptr noundef nonnull @__func__.aa_get_newest_label) #12
  br label %if.end57

if.end57:                                         ; preds = %do.end51, %if.end20.if.end57_crit_edge
  %8 = ptrtoint ptr %proxy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %proxy, align 4
  %label68 = getelementptr inbounds %struct.aa_proxy, ptr %9, i32 0, i32 1
  %10 = tail call i32 @llvm.read_register.i32(metadata !295) #12
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %if.end57.do.body.i.preheader_crit_edge, label %land.lhs.true.i.i

if.end57.do.body.i.preheader_crit_edge:           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.preheader

land.lhs.true.i.i:                                ; preds = %if.end57
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.do.body.i.preheader_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.do.body.i.preheader_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.preheader

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.do.body.i.preheader_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.do.body.i.preheader_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.preheader

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.71, i32 noundef 696, ptr noundef nonnull @.str.72) #12
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.then.i.i, %land.lhs.true2.i.i.do.body.i.preheader_crit_edge, %land.lhs.true.i.i.do.body.i.preheader_crit_edge, %if.end57.do.body.i.preheader_crit_edge
  br label %do.body.i

do.body.i:                                        ; preds = %kref_get_unless_zero.exit.i.do.body.i_crit_edge, %do.body.i.preheader
  %14 = ptrtoint ptr %label68 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %label68, align 4
  %call.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.body.i.do.end8.i_crit_edge

do.body.i.do.end8.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %call3.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b17.i = load i1, ptr @aa_get_label_rcu.__warned, align 1
  br i1 %.b17.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @aa_get_label_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 401, ptr noundef nonnull @.str.70) #12
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %do.body.i.do.end8.i_crit_edge
  %tobool11.not.i = icmp eq ptr %15, null
  br i1 %tobool11.not.i, label %do.end8.i.do.end14.i_crit_edge, label %land.rhs.i

do.end8.i.do.end14.i_crit_edge:                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14.i

land.rhs.i:                                       ; preds = %do.end8.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #12
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %15, i32 noundef 4) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %18, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %15, i32 noundef 4) #12
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #12
  %20 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %15, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %22 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %15, ptr nonnull %15, i32 %21, i32 %add.i.i.i.i.i, ptr nonnull elementtype(i32) %15) #12, !srcloc !316
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %21
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !307

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %23 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %24, 1
  %25 = or i32 %add5.i.i.i.i.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i.i.i = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !307

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef nonnull %15, i32 noundef 0) #12
  %26 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %27 = phi i32 [ %24, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  %tobool12.i.i.i.i.not.i = icmp eq i32 %27, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #12
  br i1 %tobool12.i.i.i.i.not.i, label %kref_get_unless_zero.exit.i.do.body.i_crit_edge, label %kref_get_unless_zero.exit.i.do.end14.i_crit_edge

kref_get_unless_zero.exit.i.do.end14.i_crit_edge: ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14.i

kref_get_unless_zero.exit.i.do.body.i_crit_edge:  ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.end14.i:                                       ; preds = %kref_get_unless_zero.exit.i.do.end14.i_crit_edge, %do.end8.i.do.end14.i_crit_edge
  %call.i18.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i18.i, label %do.end14.i.aa_get_label_rcu.exit_crit_edge, label %land.lhs.true.i21.i

do.end14.i.aa_get_label_rcu.exit_crit_edge:       ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_get_label_rcu.exit

land.lhs.true.i21.i:                              ; preds = %do.end14.i
  %call1.i19.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19.i)
  %tobool.not.i20.i = icmp eq i32 %call1.i19.i, 0
  br i1 %tobool.not.i20.i, label %land.lhs.true.i21.i.aa_get_label_rcu.exit_crit_edge, label %land.lhs.true2.i23.i

land.lhs.true.i21.i.aa_get_label_rcu.exit_crit_edge: ; preds = %land.lhs.true.i21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_get_label_rcu.exit

land.lhs.true2.i23.i:                             ; preds = %land.lhs.true.i21.i
  %.b4.i22.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22.i, label %land.lhs.true2.i23.i.aa_get_label_rcu.exit_crit_edge, label %if.then.i24.i

land.lhs.true2.i23.i.aa_get_label_rcu.exit_crit_edge: ; preds = %land.lhs.true2.i23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_get_label_rcu.exit

if.then.i24.i:                                    ; preds = %land.lhs.true2.i23.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.71, i32 noundef 724, ptr noundef nonnull @.str.73) #12
  br label %aa_get_label_rcu.exit

aa_get_label_rcu.exit:                            ; preds = %if.then.i24.i, %land.lhs.true2.i23.i.aa_get_label_rcu.exit_crit_edge, %land.lhs.true.i21.i.aa_get_label_rcu.exit_crit_edge, %do.end14.i.aa_get_label_rcu.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !318
  %28 = call i32 @llvm.read_register.i32(metadata !295) #12
  %and.i.i.i.i.i25.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i25.i to ptr
  %preempt_count.i.i.i.i26.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i26.i, align 4
  %sub.i.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i26.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br i1 %tobool11.not.i, label %do.end89, label %aa_get_label_rcu.exit.return_crit_edge, !prof !311

aa_get_label_rcu.exit.return_crit_edge:           ; preds = %aa_get_label_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end89:                                         ; preds = %aa_get_label_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 431, i32 noundef 9, ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.aa_get_newest_label) #12
  br label %return

if.then.i118:                                     ; preds = %if.end
  %call.i.i.i.i.i.i.i117 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %l, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull %l, i32 1, i32 3, i32 1) #12
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %l, ptr nonnull %l, i32 1, ptr nonnull elementtype(i32) %l) #12, !srcloc !310
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i118.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !311

if.then.i118.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i118
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i118
  %add.i.i.i.i.i119 = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %33 = or i32 %add.i.i.i.i.i119, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %.not.i.i.i.i.i120 = icmp sgt i32 %33, -1
  br i1 %.not.i.i.i.i.i120, label %if.else.i.i.i.i.i.return_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !307

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.return_crit_edge:               ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i118.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i118.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %l, i32 noundef %.sink.i.i.i.i.i) #12
  br label %return

return:                                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.return_crit_edge, %do.end89, %aa_get_label_rcu.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ null, %do.end89 ], [ %15, %aa_get_label_rcu.exit.return_crit_edge ], [ %l, %if.else.i.i.i.i.i.return_crit_edge ], [ %l, %if.end15.sink.split.i.i.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aa_label_merge(ptr noundef %a, ptr noundef %b, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  %i.i = alloca %struct.label_it, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %a, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1222, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.aa_label_merge) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %b, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !311

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1223, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.aa_label_merge) #12
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %cmp = icmp eq ptr %a, %b
  %call = tail call fastcc ptr @aa_get_newest_label(ptr noundef %a)
  br i1 %cmp, label %if.end50.cleanup_crit_edge, label %if.then63

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then63:                                        ; preds = %if.end50
  %call65 = tail call fastcc ptr @aa_get_newest_label(ptr noundef %b)
  %size = getelementptr inbounds %struct.aa_label, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %size66 = getelementptr inbounds %struct.aa_label, ptr %call65, i32 0, i32 7
  %2 = ptrtoint ptr %size66 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size66, align 4
  %add = add i32 %3, %1
  %call67 = tail call ptr @aa_label_alloc(i32 noundef %add, ptr noundef null, i32 noundef %gfp)
  %tobool68.not = icmp eq ptr %call67, null
  br i1 %tobool68.not, label %if.then63.out_crit_edge, label %if.end70

if.then63.out_crit_edge:                          ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end70:                                         ; preds = %if.then63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i.i) #12
  %4 = getelementptr inbounds %struct.label_it, ptr %i.i, i32 0, i32 1
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end70.if.end.i_crit_edge, !prof !311

if.end70.if.end.i_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1058, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.label_merge_insert) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end70.if.end.i_crit_edge
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp slt i32 %6, 0
  br i1 %cmp.i, label %do.end41.i, label %if.end.i.if.end47.i_crit_edge, !prof !311

if.end.i.if.end47.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47.i

do.end41.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1059, i32 noundef 9, ptr noundef nonnull @.str.75, ptr noundef nonnull @__func__.label_merge_insert) #12
  br label %if.end47.i

if.end47.i:                                       ; preds = %do.end41.i, %if.end.i.if.end47.i_crit_edge
  %tobool59.not.i = icmp eq ptr %call65, null
  br i1 %tobool59.not.i, label %do.end77.i, label %if.end47.i.if.end83.i_crit_edge, !prof !311

if.end47.i.if.end83.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83.i

do.end77.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1060, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.label_merge_insert) #12
  br label %if.end83.i

if.end83.i:                                       ; preds = %do.end77.i, %if.end47.i.if.end83.i_crit_edge
  %7 = ptrtoint ptr %size66 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp96.i = icmp slt i32 %8, 0
  br i1 %cmp96.i, label %do.end112.i, label %if.end83.i.if.end154.i_crit_edge, !prof !311

if.end83.i.if.end154.i_crit_edge:                 ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end154.i

do.end112.i:                                      ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1061, i32 noundef 9, ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__.label_merge_insert) #12
  br label %if.end154.i

if.end154.i:                                      ; preds = %do.end112.i, %if.end83.i.if.end154.i_crit_edge
  %size166.i = getelementptr inbounds %struct.aa_label, ptr %call67, i32 0, i32 7
  %9 = ptrtoint ptr %size166.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size166.i, align 4
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 4
  %13 = ptrtoint ptr %size66 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size66, align 4
  %add.i = add i32 %14, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add.i)
  %cmp169.i = icmp slt i32 %10, %add.i
  br i1 %cmp169.i, label %do.end185.i, label %if.end154.i.if.end191.i_crit_edge, !prof !311

if.end154.i.if.end191.i_crit_edge:                ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end191.i

do.end185.i:                                      ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1063, i32 noundef 9, ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__.label_merge_insert) #12
  br label %if.end191.i

if.end191.i:                                      ; preds = %do.end185.i, %if.end154.i.if.end191.i_crit_edge
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %4, align 4
  %16 = ptrtoint ptr %i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %i.i, align 4
  %call507.i = call ptr @aa_label_next_in_merge(ptr noundef nonnull %i.i, ptr noundef %call, ptr noundef %call65) #12
  %tobool202.not508.i = icmp eq ptr %call507.i, null
  br i1 %tobool202.not508.i, label %if.else357.thread.i, label %if.end191.i.if.end229.i_crit_edge

if.end191.i.if.end229.i_crit_edge:                ; preds = %if.end191.i
  br label %if.end229.i

if.else357.thread.i:                              ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %size166.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %size166.i, align 4
  %vec340524.i = getelementptr %struct.aa_label, ptr %call67, i32 0, i32 8
  %18 = ptrtoint ptr %vec340524.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %vec340524.i, align 4
  br label %if.then359.i

if.end229.i:                                      ; preds = %if.end338.i.if.end229.i_crit_edge, %if.end191.i.if.end229.i_crit_edge
  %call513.i = phi ptr [ %call.i, %if.end338.i.if.end229.i_crit_edge ], [ %call507.i, %if.end191.i.if.end229.i_crit_edge ]
  %k.0511.i = phi i32 [ %k.1.i, %if.end338.i.if.end229.i_crit_edge ], [ 0, %if.end191.i.if.end229.i_crit_edge ]
  %invcount.0510.i = phi i32 [ %invcount.2.i, %if.end338.i.if.end229.i_crit_edge ], [ 0, %if.end191.i.if.end229.i_crit_edge ]
  %stale.0.off0509.i = phi i1 [ %stale.1.off0.i, %if.end338.i.if.end229.i_crit_edge ], [ false, %if.end191.i.if.end229.i_crit_edge ]
  %flags240.i = getelementptr inbounds %struct.aa_profile, ptr %call513.i, i32 0, i32 25, i32 5
  %19 = ptrtoint ptr %flags240.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags240.i, align 4
  %and.i = and i32 %20, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool241.not.i = icmp eq i32 %and.i, 0
  %label.i471.i = getelementptr inbounds %struct.aa_profile, ptr %call513.i, i32 0, i32 25
  br i1 %tobool241.not.i, label %if.then.i.i, label %if.then242.i

if.then242.i:                                     ; preds = %if.end229.i
  %call.i.i = call fastcc ptr @aa_get_newest_label(ptr noundef %label.i471.i) #12
  %call2.i.i = call fastcc ptr @aa_get_newest_label(ptr noundef %label.i471.i) #12
  %size.i.i = getelementptr inbounds %struct.aa_label, ptr %call2.i.i, i32 0, i32 7
  %21 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size.i.i, align 4
  %sub.i.i = add i32 %22, -1
  %arrayidx.i.i = getelementptr %struct.aa_label, ptr %call.i.i, i32 0, i32 8, i32 %sub.i.i
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i, align 4
  %arrayidx.i = getelementptr %struct.aa_label, ptr %call67, i32 0, i32 8, i32 %k.0511.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %arrayidx.i, align 4
  %proxy.i = getelementptr inbounds %struct.aa_profile, ptr %24, i32 0, i32 25, i32 3
  %26 = ptrtoint ptr %proxy.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %proxy.i, align 4
  %tobool249.not.i = icmp eq ptr %27, null
  br i1 %tobool249.not.i, label %do.end267.i, label %if.then242.i.if.end273.i_crit_edge, !prof !311

if.then242.i.if.end273.i_crit_edge:               ; preds = %if.then242.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end273.i

do.end267.i:                                      ; preds = %if.then242.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1069, i32 noundef 9, ptr noundef nonnull @.str.79, ptr noundef nonnull @__func__.label_merge_insert) #12
  br label %if.end273.i

if.end273.i:                                      ; preds = %do.end267.i, %if.then242.i.if.end273.i_crit_edge
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %proxy288.i = getelementptr inbounds %struct.aa_profile, ptr %29, i32 0, i32 25, i32 3
  %30 = ptrtoint ptr %proxy288.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %proxy288.i, align 4
  %label289.i = getelementptr inbounds %struct.aa_proxy, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %label289.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %label289.i, align 4
  %tobool290.not.i = icmp eq ptr %33, null
  br i1 %tobool290.not.i, label %do.end308.i, label %if.end273.i.if.end314.i_crit_edge, !prof !311

if.end273.i.if.end314.i_crit_edge:                ; preds = %if.end273.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end314.i

do.end308.i:                                      ; preds = %if.end273.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1070, i32 noundef 9, ptr noundef nonnull @.str.80, ptr noundef nonnull @__func__.label_merge_insert) #12
  br label %if.end314.i

if.end314.i:                                      ; preds = %do.end308.i, %if.end273.i.if.end314.i_crit_edge
  %proxy325.i = getelementptr inbounds %struct.aa_profile, ptr %call513.i, i32 0, i32 25, i32 3
  %34 = ptrtoint ptr %proxy325.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %proxy325.i, align 4
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  %proxy329.i = getelementptr inbounds %struct.aa_profile, ptr %37, i32 0, i32 25, i32 3
  %38 = ptrtoint ptr %proxy329.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %proxy329.i, align 4
  %cmp330.not.i = icmp ne ptr %35, %39
  %inc.i = zext i1 %cmp330.not.i to i32
  %spec.select.i = add i32 %invcount.0510.i, %inc.i
  br label %if.end338.i

if.then.i.i:                                      ; preds = %if.end229.i
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %label.i471.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %label.i471.i, i32 1, i32 3, i32 1) #12
  %40 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i471.i, ptr %label.i471.i, i32 1, ptr elementtype(i32) %label.i471.i) #12, !srcloc !310
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !311

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %41 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %.not.i.i.i.i.i.i = icmp sgt i32 %41, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.aa_get_profile.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !307

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.aa_get_profile.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_get_profile.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %label.i471.i, i32 noundef %.sink.i.i.i.i.i.i) #12
  br label %aa_get_profile.exit.i

aa_get_profile.exit.i:                            ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.aa_get_profile.exit.i_crit_edge
  %arrayidx337.i = getelementptr %struct.aa_label, ptr %call67, i32 0, i32 8, i32 %k.0511.i
  %42 = ptrtoint ptr %arrayidx337.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call513.i, ptr %arrayidx337.i, align 4
  br label %if.end338.i

if.end338.i:                                      ; preds = %aa_get_profile.exit.i, %if.end314.i
  %stale.1.off0.i = phi i1 [ true, %if.end314.i ], [ %stale.0.off0509.i, %aa_get_profile.exit.i ]
  %invcount.2.i = phi i32 [ %spec.select.i, %if.end314.i ], [ %invcount.0510.i, %aa_get_profile.exit.i ]
  %k.1.i = add i32 %k.0511.i, 1
  %call.i = call ptr @aa_label_next_in_merge(ptr noundef nonnull %i.i, ptr noundef %call, ptr noundef %call65) #12
  %tobool202.not.i = icmp eq ptr %call.i, null
  br i1 %tobool202.not.i, label %for.end.i, label %if.end338.i.if.end229.i_crit_edge

if.end338.i.if.end229.i_crit_edge:                ; preds = %if.end338.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end229.i

for.end.i:                                        ; preds = %if.end338.i
  %43 = ptrtoint ptr %size166.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %k.1.i, ptr %size166.i, align 4
  %vec340.i = getelementptr inbounds %struct.aa_label, ptr %call67, i32 0, i32 8
  %arrayidx341.i = getelementptr %struct.aa_label, ptr %call67, i32 0, i32 8, i32 %k.1.i
  %44 = ptrtoint ptr %arrayidx341.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %arrayidx341.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %invcount.2.i)
  %tobool342.not.i = icmp eq i32 %invcount.2.i, 0
  br i1 %tobool342.not.i, label %if.else357.i, label %if.then343.i

if.then343.i:                                     ; preds = %for.end.i
  %45 = ptrtoint ptr %size166.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size166.i, align 4
  %call347.i = call i32 @aa_vec_unique(ptr noundef %vec340.i, i32 noundef %46, i32 noundef 1) #12
  %47 = ptrtoint ptr %size166.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size166.i, align 4
  %sub.i = sub i32 %48, %call347.i
  store i32 %sub.i, ptr %size166.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp350.i = icmp eq i32 %sub.i, 1
  br i1 %cmp350.i, label %if.then351.i, label %if.then343.i.if.end372.i_crit_edge

if.then343.i.if.end372.i_crit_edge:               ; preds = %if.then343.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end372.i

if.then351.i:                                     ; preds = %if.then343.i
  %49 = ptrtoint ptr %vec340.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %vec340.i, align 4
  %label354.i = getelementptr inbounds %struct.aa_profile, ptr %50, i32 0, i32 25
  %call.i.i.i.i.i.i.i473.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %label354.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr nonnull %label354.i, i32 1, i32 3, i32 1) #12
  %51 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %label354.i, ptr nonnull %label354.i, i32 1, ptr nonnull elementtype(i32) %label354.i) #12, !srcloc !310
  %asmresult.i.i.i.i.i.i.i474.i = extractvalue { i32, i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i474.i)
  %tobool1.not.i.i.i.i.i475.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i474.i, 0
  br i1 %tobool1.not.i.i.i.i.i475.i, label %if.then351.i.if.end15.sink.split.i.i.i.i.i481.i_crit_edge, label %if.else.i.i.i.i.i479.i, !prof !311

if.then351.i.if.end15.sink.split.i.i.i.i.i481.i_crit_edge: ; preds = %if.then351.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i481.i

if.else.i.i.i.i.i479.i:                           ; preds = %if.then351.i
  %add.i.i.i.i.i477.i = add i32 %asmresult.i.i.i.i.i.i.i474.i, 1
  %52 = or i32 %add.i.i.i.i.i477.i, %asmresult.i.i.i.i.i.i.i474.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %52)
  %.not.i.i.i.i.i478.i = icmp sgt i32 %52, -1
  br i1 %.not.i.i.i.i.i478.i, label %if.else.i.i.i.i.i479.i.label_merge_insert.exit_crit_edge, label %if.else.i.i.i.i.i479.i.if.end15.sink.split.i.i.i.i.i481.i_crit_edge, !prof !307

if.else.i.i.i.i.i479.i.if.end15.sink.split.i.i.i.i.i481.i_crit_edge: ; preds = %if.else.i.i.i.i.i479.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i481.i

if.else.i.i.i.i.i479.i.label_merge_insert.exit_crit_edge: ; preds = %if.else.i.i.i.i.i479.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %label_merge_insert.exit

if.end15.sink.split.i.i.i.i.i481.i:               ; preds = %if.else.i.i.i.i.i479.i.if.end15.sink.split.i.i.i.i.i481.i_crit_edge, %if.then351.i.if.end15.sink.split.i.i.i.i.i481.i_crit_edge
  %.sink.i.i.i.i.i480.i = phi i32 [ 2, %if.then351.i.if.end15.sink.split.i.i.i.i.i481.i_crit_edge ], [ 1, %if.else.i.i.i.i.i479.i.if.end15.sink.split.i.i.i.i.i481.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %label354.i, i32 noundef %.sink.i.i.i.i.i480.i) #12
  br label %label_merge_insert.exit

if.else357.i:                                     ; preds = %for.end.i
  br i1 %stale.1.off0.i, label %if.else357.i.if.end372thread-pre-split.i_crit_edge, label %if.else357.i.if.then359.i_crit_edge

if.else357.i.if.then359.i_crit_edge:              ; preds = %if.else357.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then359.i

if.else357.i.if.end372thread-pre-split.i_crit_edge: ; preds = %if.else357.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end372thread-pre-split.i

if.then359.i:                                     ; preds = %if.else357.i.if.then359.i_crit_edge, %if.else357.thread.i
  %k.0.lcssa528536.i = phi i32 [ 0, %if.else357.thread.i ], [ %k.1.i, %if.else357.i.if.then359.i_crit_edge ]
  %vec340530534.i = phi ptr [ %vec340524.i, %if.else357.thread.i ], [ %vec340.i, %if.else357.i.if.then359.i_crit_edge ]
  %53 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %k.0.lcssa528536.i, i32 %54)
  %cmp361.i = icmp eq i32 %k.0.lcssa528536.i, %54
  br i1 %cmp361.i, label %if.then362.i, label %if.else364.i

if.then362.i:                                     ; preds = %if.then359.i
  br i1 %tobool.not.i, label %if.then362.i.label_merge_insert.exit_crit_edge, label %if.then.i486.i

if.then362.i.label_merge_insert.exit_crit_edge:   ; preds = %if.then362.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %label_merge_insert.exit

if.then.i486.i:                                   ; preds = %if.then362.i
  %call.i.i.i.i.i.i.i483.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #12
  %55 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #12, !srcloc !310
  %asmresult.i.i.i.i.i.i.i484.i = extractvalue { i32, i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i484.i)
  %tobool1.not.i.i.i.i.i485.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i484.i, 0
  br i1 %tobool1.not.i.i.i.i.i485.i, label %if.then.i486.i.if.end15.sink.split.i.i.i.i.i491.i_crit_edge, label %if.else.i.i.i.i.i489.i, !prof !311

if.then.i486.i.if.end15.sink.split.i.i.i.i.i491.i_crit_edge: ; preds = %if.then.i486.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i491.i

if.else.i.i.i.i.i489.i:                           ; preds = %if.then.i486.i
  %add.i.i.i.i.i487.i = add i32 %asmresult.i.i.i.i.i.i.i484.i, 1
  %56 = or i32 %add.i.i.i.i.i487.i, %asmresult.i.i.i.i.i.i.i484.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %.not.i.i.i.i.i488.i = icmp sgt i32 %56, -1
  br i1 %.not.i.i.i.i.i488.i, label %if.else.i.i.i.i.i489.i.label_merge_insert.exit_crit_edge, label %if.else.i.i.i.i.i489.i.if.end15.sink.split.i.i.i.i.i491.i_crit_edge, !prof !307

if.else.i.i.i.i.i489.i.if.end15.sink.split.i.i.i.i.i491.i_crit_edge: ; preds = %if.else.i.i.i.i.i489.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i491.i

if.else.i.i.i.i.i489.i.label_merge_insert.exit_crit_edge: ; preds = %if.else.i.i.i.i.i489.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %label_merge_insert.exit

if.end15.sink.split.i.i.i.i.i491.i:               ; preds = %if.else.i.i.i.i.i489.i.if.end15.sink.split.i.i.i.i.i491.i_crit_edge, %if.then.i486.i.if.end15.sink.split.i.i.i.i.i491.i_crit_edge
  %.sink.i.i.i.i.i490.i = phi i32 [ 2, %if.then.i486.i.if.end15.sink.split.i.i.i.i.i491.i_crit_edge ], [ 1, %if.else.i.i.i.i.i489.i.if.end15.sink.split.i.i.i.i.i491.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef %.sink.i.i.i.i.i490.i) #12
  br label %label_merge_insert.exit

if.else364.i:                                     ; preds = %if.then359.i
  %57 = ptrtoint ptr %size66 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %size66, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %k.0.lcssa528536.i, i32 %58)
  %cmp366.i = icmp eq i32 %k.0.lcssa528536.i, %58
  br i1 %cmp366.i, label %if.then367.i, label %if.else364.i.if.end372thread-pre-split.i_crit_edge

if.else364.i.if.end372thread-pre-split.i_crit_edge: ; preds = %if.else364.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end372thread-pre-split.i

if.then367.i:                                     ; preds = %if.else364.i
  br i1 %tobool59.not.i, label %if.then367.i.label_merge_insert.exit_crit_edge, label %if.then.i497.i

if.then367.i.label_merge_insert.exit_crit_edge:   ; preds = %if.then367.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %label_merge_insert.exit

if.then.i497.i:                                   ; preds = %if.then367.i
  %call.i.i.i.i.i.i.i494.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call65, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr nonnull %call65, i32 1, i32 3, i32 1) #12
  %59 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call65, ptr nonnull %call65, i32 1, ptr nonnull elementtype(i32) %call65) #12, !srcloc !310
  %asmresult.i.i.i.i.i.i.i495.i = extractvalue { i32, i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i495.i)
  %tobool1.not.i.i.i.i.i496.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i495.i, 0
  br i1 %tobool1.not.i.i.i.i.i496.i, label %if.then.i497.i.if.end15.sink.split.i.i.i.i.i502.i_crit_edge, label %if.else.i.i.i.i.i500.i, !prof !311

if.then.i497.i.if.end15.sink.split.i.i.i.i.i502.i_crit_edge: ; preds = %if.then.i497.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i502.i

if.else.i.i.i.i.i500.i:                           ; preds = %if.then.i497.i
  %add.i.i.i.i.i498.i = add i32 %asmresult.i.i.i.i.i.i.i495.i, 1
  %60 = or i32 %add.i.i.i.i.i498.i, %asmresult.i.i.i.i.i.i.i495.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %60)
  %.not.i.i.i.i.i499.i = icmp sgt i32 %60, -1
  br i1 %.not.i.i.i.i.i499.i, label %if.else.i.i.i.i.i500.i.label_merge_insert.exit_crit_edge, label %if.else.i.i.i.i.i500.i.if.end15.sink.split.i.i.i.i.i502.i_crit_edge, !prof !307

if.else.i.i.i.i.i500.i.if.end15.sink.split.i.i.i.i.i502.i_crit_edge: ; preds = %if.else.i.i.i.i.i500.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i502.i

if.else.i.i.i.i.i500.i.label_merge_insert.exit_crit_edge: ; preds = %if.else.i.i.i.i.i500.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %label_merge_insert.exit

if.end15.sink.split.i.i.i.i.i502.i:               ; preds = %if.else.i.i.i.i.i500.i.if.end15.sink.split.i.i.i.i.i502.i_crit_edge, %if.then.i497.i.if.end15.sink.split.i.i.i.i.i502.i_crit_edge
  %.sink.i.i.i.i.i501.i = phi i32 [ 2, %if.then.i497.i.if.end15.sink.split.i.i.i.i.i502.i_crit_edge ], [ 1, %if.else.i.i.i.i.i500.i.if.end15.sink.split.i.i.i.i.i502.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %call65, i32 noundef %.sink.i.i.i.i.i501.i) #12
  br label %label_merge_insert.exit

if.end372thread-pre-split.i:                      ; preds = %if.else364.i.if.end372thread-pre-split.i_crit_edge, %if.else357.i.if.end372thread-pre-split.i_crit_edge
  %vec340530535.i = phi ptr [ %vec340530534.i, %if.else364.i.if.end372thread-pre-split.i_crit_edge ], [ %vec340.i, %if.else357.i.if.end372thread-pre-split.i_crit_edge ]
  %61 = ptrtoint ptr %size166.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pr.i = load i32, ptr %size166.i, align 4
  br label %if.end372.i

if.end372.i:                                      ; preds = %if.end372thread-pre-split.i, %if.then343.i.if.end372.i_crit_edge
  %vec340529.i = phi ptr [ %vec340530535.i, %if.end372thread-pre-split.i ], [ %vec340.i, %if.then343.i.if.end372.i_crit_edge ]
  %62 = phi i32 [ %.pr.i, %if.end372thread-pre-split.i ], [ %sub.i, %if.then343.i.if.end372.i_crit_edge ]
  %tobool.not.i504.i = icmp eq ptr %vec340529.i, null
  br i1 %tobool.not.i504.i, label %do.end.i.i, label %if.end372.i.if.end.i.i_crit_edge, !prof !311

if.end372.i.if.end.i.i_crit_edge:                 ; preds = %if.end372.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end372.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 204, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.vec_unconfined) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.end372.i.if.end.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp31.i.i = icmp sgt i32 %62, 0
  br i1 %cmp31.i.i, label %for.body.i.preheader.i, label %if.end.i.i.if.then376.i_crit_edge

if.end.i.i.if.then376.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then376.i

for.body.i.preheader.i:                           ; preds = %if.end.i.i
  %63 = ptrtoint ptr %vec340529.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vec340529.i, align 4
  %mode.i516.i = getelementptr inbounds %struct.aa_profile, ptr %64, i32 0, i32 8
  %65 = ptrtoint ptr %mode.i516.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mode.i516.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %66)
  %cmp24.i517.i = icmp eq i32 %66, 3
  br i1 %cmp24.i517.i, label %for.body.i.preheader.i.for.cond.i.i_crit_edge, label %for.body.i.preheader.i.if.end378.i_crit_edge

for.body.i.preheader.i.if.end378.i_crit_edge:     ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end378.i

for.body.i.preheader.i.for.cond.i.i_crit_edge:    ; preds = %for.body.i.preheader.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.i.preheader.i.for.cond.i.i_crit_edge
  %i.032.i518.i = phi i32 [ %inc.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ 0, %for.body.i.preheader.i.for.cond.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %i.032.i518.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %62)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %62
  br i1 %exitcond.not.i.i, label %for.cond.i.i.if.then376.i_crit_edge, label %for.body.i.i

for.cond.i.i.if.then376.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then376.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %arrayidx.i505.i = getelementptr ptr, ptr %vec340529.i, i32 %inc.i.i
  %67 = ptrtoint ptr %arrayidx.i505.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i505.i, align 4
  %mode.i.i = getelementptr inbounds %struct.aa_profile, ptr %68, i32 0, i32 8
  %69 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mode.i.i, align 4
  %cmp24.i.i = icmp eq i32 %70, 3
  br i1 %cmp24.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %vec_unconfined.exit.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

vec_unconfined.exit.i:                            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %62)
  %cmp.i.le.i = icmp slt i32 %inc.i.i, %62
  br i1 %cmp.i.le.i, label %vec_unconfined.exit.i.if.end378.i_crit_edge, label %vec_unconfined.exit.i.if.then376.i_crit_edge

vec_unconfined.exit.i.if.then376.i_crit_edge:     ; preds = %vec_unconfined.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then376.i

vec_unconfined.exit.i.if.end378.i_crit_edge:      ; preds = %vec_unconfined.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end378.i

if.then376.i:                                     ; preds = %vec_unconfined.exit.i.if.then376.i_crit_edge, %for.cond.i.i.if.then376.i_crit_edge, %if.end.i.i.if.then376.i_crit_edge
  %flags377.i = getelementptr inbounds %struct.aa_label, ptr %call67, i32 0, i32 5
  %71 = ptrtoint ptr %flags377.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags377.i, align 4
  %or.i = or i32 %72, 2
  store i32 %or.i, ptr %flags377.i, align 4
  br label %if.end378.i

if.end378.i:                                      ; preds = %if.then376.i, %vec_unconfined.exit.i.if.end378.i_crit_edge, %for.body.i.preheader.i.if.end378.i_crit_edge
  %73 = ptrtoint ptr %size166.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %size166.i, align 4
  %sub382.i = add i32 %74, -1
  %arrayidx383.i = getelementptr ptr, ptr %vec340529.i, i32 %sub382.i
  %75 = ptrtoint ptr %arrayidx383.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx383.i, align 4
  %ns.i = getelementptr inbounds %struct.aa_profile, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ns.i, align 4
  %labels.i = getelementptr inbounds %struct.aa_ns, ptr %78, i32 0, i32 11
  %call387.i = call i32 @_raw_write_lock_irqsave(ptr noundef %labels.i) #12
  %79 = ptrtoint ptr %size166.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %size166.i, align 4
  %sub393.i = add i32 %80, -1
  %arrayidx394.i = getelementptr ptr, ptr %vec340529.i, i32 %sub393.i
  %81 = ptrtoint ptr %arrayidx394.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx394.i, align 4
  %ns395.i = getelementptr inbounds %struct.aa_profile, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %ns395.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ns395.i, align 4
  %labels396.i = getelementptr inbounds %struct.aa_ns, ptr %84, i32 0, i32 11
  %call397.i = call fastcc ptr @__label_insert(ptr noundef %labels396.i, ptr noundef nonnull %call67, i1 noundef zeroext false) #12
  call void @_raw_write_unlock_irqrestore(ptr noundef %labels.i, i32 noundef %call387.i) #12
  br label %label_merge_insert.exit

label_merge_insert.exit:                          ; preds = %if.end378.i, %if.end15.sink.split.i.i.i.i.i502.i, %if.else.i.i.i.i.i500.i.label_merge_insert.exit_crit_edge, %if.then367.i.label_merge_insert.exit_crit_edge, %if.end15.sink.split.i.i.i.i.i491.i, %if.else.i.i.i.i.i489.i.label_merge_insert.exit_crit_edge, %if.then362.i.label_merge_insert.exit_crit_edge, %if.end15.sink.split.i.i.i.i.i481.i, %if.else.i.i.i.i.i479.i.label_merge_insert.exit_crit_edge
  %retval.0.i = phi ptr [ %call397.i, %if.end378.i ], [ %label354.i, %if.else.i.i.i.i.i479.i.label_merge_insert.exit_crit_edge ], [ %label354.i, %if.end15.sink.split.i.i.i.i.i481.i ], [ null, %if.then362.i.label_merge_insert.exit_crit_edge ], [ %call, %if.else.i.i.i.i.i489.i.label_merge_insert.exit_crit_edge ], [ %call, %if.end15.sink.split.i.i.i.i.i491.i ], [ null, %if.then367.i.label_merge_insert.exit_crit_edge ], [ %call65, %if.else.i.i.i.i.i500.i.label_merge_insert.exit_crit_edge ], [ %call65, %if.end15.sink.split.i.i.i.i.i502.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i.i) #12
  call fastcc void @label_free_or_put_new(ptr noundef %retval.0.i, ptr noundef nonnull %call67)
  br label %out

out:                                              ; preds = %label_merge_insert.exit, %if.then63.out_crit_edge
  %label.0 = phi ptr [ %retval.0.i, %label_merge_insert.exit ], [ null, %if.then63.out_crit_edge ]
  %tobool.not.i90 = icmp eq ptr %call, null
  br i1 %tobool.not.i90, label %out.aa_put_label.exit_crit_edge, label %if.then.i

out.aa_put_label.exit_crit_edge:                  ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_put_label.exit

if.then.i:                                        ; preds = %out
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !305
  call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #12
  %85 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #12, !srcloc !306
  %asmresult.i.i.i.i.i.i.i.i91 = extractvalue { i32, i32, i32 } %85, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i91)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i91, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i92, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i91)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i91, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !307

if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_put_label.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #12
  br label %aa_put_label.exit

if.then.i.i92:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !308
  call void @aa_label_kref(ptr noundef nonnull %call) #12, !callees !309
  br label %aa_put_label.exit

aa_put_label.exit:                                ; preds = %if.then.i.i92, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, %out.aa_put_label.exit_crit_edge
  %tobool.not.i94 = icmp eq ptr %call65, null
  br i1 %tobool.not.i94, label %aa_put_label.exit.cleanup_crit_edge, label %if.then.i98

aa_put_label.exit.cleanup_crit_edge:              ; preds = %aa_put_label.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i98:                                      ; preds = %aa_put_label.exit
  %call.i.i.i.i.i.i.i95 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call65, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !305
  call void @llvm.prefetch.p0(ptr nonnull %call65, i32 1, i32 3, i32 1) #12
  %86 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call65, ptr nonnull %call65, i32 1, ptr nonnull elementtype(i32) %call65) #12, !srcloc !306
  %asmresult.i.i.i.i.i.i.i.i96 = extractvalue { i32, i32, i32 } %86, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i96)
  %cmp.i.i.i.i.i97 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i96, 1
  br i1 %cmp.i.i.i.i.i97, label %if.then.i.i102, label %if.end5.i.i.i.i.i100

if.end5.i.i.i.i.i100:                             ; preds = %if.then.i98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i96)
  %.not.i.i.i.i.i99 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i96, 0
  br i1 %.not.i.i.i.i.i99, label %if.end5.i.i.i.i.i100.cleanup_crit_edge, label %if.then10.i.i.i.i.i101, !prof !307

if.end5.i.i.i.i.i100.cleanup_crit_edge:           ; preds = %if.end5.i.i.i.i.i100
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i.i101:                           ; preds = %if.end5.i.i.i.i.i100
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef nonnull %call65, i32 noundef 3) #12
  br label %cleanup

if.then.i.i102:                                   ; preds = %if.then.i98
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !308
  call void @aa_label_kref(ptr noundef nonnull %call65) #12, !callees !309
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i102, %if.then10.i.i.i.i.i101, %if.end5.i.i.i.i.i100.cleanup_crit_edge, %aa_put_label.exit.cleanup_crit_edge, %if.end50.cleanup_crit_edge
  %retval.0 = phi ptr [ %label.0, %aa_put_label.exit.cleanup_crit_edge ], [ %label.0, %if.end5.i.i.i.i.i100.cleanup_crit_edge ], [ %label.0, %if.then10.i.i.i.i.i101 ], [ %label.0, %if.then.i.i102 ], [ %call, %if.end50.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @label_free_or_put_new(ptr noundef readnone %label, ptr noundef %new) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %label, %new
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %tobool.not.i = icmp eq ptr %new, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @aa_label_destroy(ptr noundef nonnull %new) #12
  tail call void @kfree(ptr noundef nonnull %new) #12
  br label %if.end

if.else:                                          ; preds = %entry
  %tobool.not.i3 = icmp eq ptr %label, null
  br i1 %tobool.not.i3, label %if.else.if.end_crit_edge, label %if.then.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i:                                        ; preds = %if.else
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %label, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !305
  tail call void @llvm.prefetch.p0(ptr nonnull %label, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %label, ptr nonnull %label, i32 1, ptr nonnull elementtype(i32) %label) #12, !srcloc !306
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !307

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %label, i32 noundef 3) #12
  br label %if.end

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !308
  tail call void @aa_label_kref(ptr noundef nonnull %label) #12, !callees !309
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %if.else.if.end_crit_edge, %if.end.i, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_label_match(ptr noundef %profile, ptr nocapture noundef readonly %label, i32 noundef %state, i1 noundef zeroext %subns, i32 noundef %request, ptr noundef %perms) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca %struct.aa_perms, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx84.i = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 0
  %0 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx84.i, align 4
  %tobool.not85.i = icmp eq ptr %1, null
  br i1 %tobool.not85.i, label %entry.for.end.i_crit_edge, label %for.body.lr.ph.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %ns.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %2 = phi ptr [ %1, %for.body.lr.ph.i ], [ %24, %for.inc.i.for.body.i_crit_edge ]
  %i.sroa.0.086.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ns.i, align 4
  %ns3.i = getelementptr inbounds %struct.aa_profile, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %ns3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ns3.i, align 4
  %call.i = tail call zeroext i1 @aa_ns_visible(ptr noundef %4, ptr noundef %6, i1 noundef zeroext %subns) #12
  br i1 %call.i, label %if.end.i, label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %ns3.i.le = getelementptr inbounds %struct.aa_profile, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ns.i, align 4
  %9 = ptrtoint ptr %ns3.i.le to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ns3.i.le, align 4
  %cmp.i.i = icmp eq ptr %8, %10
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %policy.i.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 12
  br label %match_component.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call4.i.i = tail call ptr @aa_ns_name(ptr noundef %8, ptr noundef %10, i1 noundef zeroext true) #12
  %policy5.i.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 12
  %11 = ptrtoint ptr %policy5.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %policy5.i.i, align 4
  %call7.i.i = tail call i32 @aa_dfa_match_len(ptr noundef %12, i32 noundef %state, ptr noundef nonnull @.str.81, i32 noundef 1) #12
  %13 = ptrtoint ptr %policy5.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %policy5.i.i, align 4
  %call10.i.i = tail call i32 @aa_dfa_match(ptr noundef %14, i32 noundef %call7.i.i, ptr noundef %call4.i.i) #12
  %15 = ptrtoint ptr %policy5.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %policy5.i.i, align 4
  %call13.i.i = tail call i32 @aa_dfa_match_len(ptr noundef %16, i32 noundef %call10.i.i, ptr noundef nonnull @.str.81, i32 noundef 1) #12
  br label %match_component.exit.i

match_component.exit.i:                           ; preds = %if.end.i.i, %if.then.i.i
  %policy5.sink.i.i = phi ptr [ %policy5.i.i, %if.end.i.i ], [ %policy.i.i, %if.then.i.i ]
  %call13.sink.i.i = phi i32 [ %call13.i.i, %if.end.i.i ], [ %state, %if.then.i.i ]
  %17 = ptrtoint ptr %policy5.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %policy5.sink.i.i, align 4
  %hname17.i.i = getelementptr inbounds %struct.aa_policy, ptr %2, i32 0, i32 1
  %19 = ptrtoint ptr %hname17.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hname17.i.i, align 4
  %call18.i.i = tail call i32 @aa_dfa_match(ptr noundef %18, i32 noundef %call13.sink.i.i, ptr noundef %20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %tobool6.not.i = icmp eq i32 %call18.i.i, 0
  br i1 %tobool6.not.i, label %match_component.exit.i.fail.i_crit_edge, label %for.cond12.preheader.i

match_component.exit.i.fail.i_crit_edge:          ; preds = %match_component.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i

for.cond12.preheader.i:                           ; preds = %match_component.exit.i
  %i.sroa.0.187.i = add i32 %i.sroa.0.086.i, 1
  %arrayidx1588.i = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %i.sroa.0.187.i
  %21 = ptrtoint ptr %arrayidx1588.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx1588.i, align 4
  %tobool16.not89.i = icmp eq ptr %22, null
  br i1 %tobool16.not89.i, label %for.cond12.preheader.i.for.end32.i_crit_edge, label %for.body17.lr.ph.i

for.cond12.preheader.i.for.end32.i_crit_edge:     ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end32.i

for.body17.lr.ph.i:                               ; preds = %for.cond12.preheader.i
  %policy.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 12
  br label %for.body17.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %i.sroa.0.086.i, 1
  %arrayidx.i = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %inc.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %25 = call ptr @memcpy(ptr %perms, ptr @allperms, i32 44)
  br label %cleanup

for.body17.i:                                     ; preds = %for.inc29.i.for.body17.i_crit_edge, %for.body17.lr.ph.i
  %26 = phi ptr [ %22, %for.body17.lr.ph.i ], [ %48, %for.inc29.i.for.body17.i_crit_edge ]
  %i.sroa.0.191.i = phi i32 [ %i.sroa.0.187.i, %for.body17.lr.ph.i ], [ %i.sroa.0.1.i, %for.inc29.i.for.body17.i_crit_edge ]
  %state.addr.090.i = phi i32 [ %call18.i.i, %for.body17.lr.ph.i ], [ %state.addr.1.i, %for.inc29.i.for.body17.i_crit_edge ]
  %27 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ns.i, align 4
  %ns19.i = getelementptr inbounds %struct.aa_profile, ptr %26, i32 0, i32 2
  %29 = ptrtoint ptr %ns19.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ns19.i, align 4
  %call21.i = tail call zeroext i1 @aa_ns_visible(ptr noundef %28, ptr noundef %30, i1 noundef zeroext %subns) #12
  br i1 %call21.i, label %if.end23.i, label %for.body17.i.for.inc29.i_crit_edge

for.body17.i.for.inc29.i_crit_edge:               ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc29.i

if.end23.i:                                       ; preds = %for.body17.i
  %31 = ptrtoint ptr %policy.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %policy.i, align 4
  %call24.i = tail call i32 @aa_dfa_match(ptr noundef %32, i32 noundef %state.addr.090.i, ptr noundef nonnull @.str.31) #12
  %33 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ns.i, align 4
  %35 = ptrtoint ptr %ns19.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ns19.i, align 4
  %cmp.i67.i = icmp eq ptr %34, %36
  br i1 %cmp.i67.i, label %if.end23.i.match_component.exit80.i_crit_edge, label %if.end.i75.i

if.end23.i.match_component.exit80.i_crit_edge:    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %match_component.exit80.i

if.end.i75.i:                                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  %call4.i70.i = tail call ptr @aa_ns_name(ptr noundef %34, ptr noundef %36, i1 noundef zeroext true) #12
  %37 = ptrtoint ptr %policy.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %policy.i, align 4
  %call7.i72.i = tail call i32 @aa_dfa_match_len(ptr noundef %38, i32 noundef %call24.i, ptr noundef nonnull @.str.81, i32 noundef 1) #12
  %39 = ptrtoint ptr %policy.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %policy.i, align 4
  %call10.i73.i = tail call i32 @aa_dfa_match(ptr noundef %40, i32 noundef %call7.i72.i, ptr noundef %call4.i70.i) #12
  %41 = ptrtoint ptr %policy.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %policy.i, align 4
  %call13.i74.i = tail call i32 @aa_dfa_match_len(ptr noundef %42, i32 noundef %call10.i73.i, ptr noundef nonnull @.str.81, i32 noundef 1) #12
  br label %match_component.exit80.i

match_component.exit80.i:                         ; preds = %if.end.i75.i, %if.end23.i.match_component.exit80.i_crit_edge
  %call13.sink.i77.i = phi i32 [ %call13.i74.i, %if.end.i75.i ], [ %call24.i, %if.end23.i.match_component.exit80.i_crit_edge ]
  %43 = ptrtoint ptr %policy.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %policy.i, align 4
  %hname17.i78.i = getelementptr inbounds %struct.aa_policy, ptr %26, i32 0, i32 1
  %45 = ptrtoint ptr %hname17.i78.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hname17.i78.i, align 4
  %call18.i79.i = tail call i32 @aa_dfa_match(ptr noundef %44, i32 noundef %call13.sink.i77.i, ptr noundef %46) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i79.i)
  %tobool26.not.i = icmp eq i32 %call18.i79.i, 0
  br i1 %tobool26.not.i, label %match_component.exit80.i.fail.i_crit_edge, label %match_component.exit80.i.for.inc29.i_crit_edge

match_component.exit80.i.for.inc29.i_crit_edge:   ; preds = %match_component.exit80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc29.i

match_component.exit80.i.fail.i_crit_edge:        ; preds = %match_component.exit80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i

for.inc29.i:                                      ; preds = %match_component.exit80.i.for.inc29.i_crit_edge, %for.body17.i.for.inc29.i_crit_edge
  %state.addr.1.i = phi i32 [ %call18.i79.i, %match_component.exit80.i.for.inc29.i_crit_edge ], [ %state.addr.090.i, %for.body17.i.for.inc29.i_crit_edge ]
  %i.sroa.0.1.i = add i32 %i.sroa.0.191.i, 1
  %arrayidx15.i = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %i.sroa.0.1.i
  %47 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx15.i, align 4
  %tobool16.not.i = icmp eq ptr %48, null
  br i1 %tobool16.not.i, label %for.inc29.i.for.end32.i_crit_edge, label %for.inc29.i.for.body17.i_crit_edge

for.inc29.i.for.body17.i_crit_edge:               ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body17.i

for.inc29.i.for.end32.i_crit_edge:                ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end32.i

for.end32.i:                                      ; preds = %for.inc29.i.for.end32.i_crit_edge, %for.cond12.preheader.i.for.end32.i_crit_edge
  %state.addr.0.lcssa.i = phi i32 [ %call18.i.i, %for.cond12.preheader.i.for.end32.i_crit_edge ], [ %state.addr.1.i, %for.inc29.i.for.end32.i_crit_edge ]
  %policy33.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 12
  %49 = ptrtoint ptr %policy33.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %policy33.i, align 4
  tail call void @aa_compute_perms(ptr noundef %50, i32 noundef %state.addr.0.lcssa.i, ptr noundef %perms) #12
  tail call void @aa_apply_modes_to_perms(ptr noundef %profile, ptr noundef %perms) #12
  %51 = ptrtoint ptr %perms to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %perms, align 4
  %and.i = and i32 %52, %request
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %request)
  %cmp.not.i = icmp eq i32 %and.i, %request
  br i1 %cmp.not.i, label %for.end32.i.cleanup_crit_edge, label %if.end

for.end32.i.cleanup_crit_edge:                    ; preds = %for.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

fail.i:                                           ; preds = %match_component.exit80.i.fail.i_crit_edge, %match_component.exit.i.fail.i_crit_edge
  %53 = call ptr @memcpy(ptr %perms, ptr @nullperms, i32 44)
  br label %cleanup

if.end:                                           ; preds = %for.end32.i
  %54 = call ptr @memcpy(ptr %perms, ptr @allperms, i32 44)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i) #12
  %55 = call ptr @memset(ptr %tmp.i, i32 255, i32 44)
  %56 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx84.i, align 4
  %tobool.not83.i = icmp eq ptr %57, null
  br i1 %tobool.not83.i, label %if.end.label_components_match.exit_crit_edge, label %if.end.for.body.i16_crit_edge

if.end.for.body.i16_crit_edge:                    ; preds = %if.end
  br label %for.body.i16

if.end.label_components_match.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %label_components_match.exit

for.body.i16:                                     ; preds = %for.inc.i37.for.body.i16_crit_edge, %if.end.for.body.i16_crit_edge
  %58 = phi ptr [ %78, %for.inc.i37.for.body.i16_crit_edge ], [ %57, %if.end.for.body.i16_crit_edge ]
  %i.sroa.0.084.i = phi i32 [ %inc.i34, %for.inc.i37.for.body.i16_crit_edge ], [ 0, %if.end.for.body.i16_crit_edge ]
  %59 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ns.i, align 4
  %ns3.i14 = getelementptr inbounds %struct.aa_profile, ptr %58, i32 0, i32 2
  %61 = ptrtoint ptr %ns3.i14 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ns3.i14, align 4
  %call.i15 = tail call zeroext i1 @aa_ns_visible(ptr noundef %60, ptr noundef %62, i1 noundef zeroext %subns) #12
  br i1 %call.i15, label %if.end.i19, label %for.inc.i37

if.end.i19:                                       ; preds = %for.body.i16
  %ns3.i14.le = getelementptr inbounds %struct.aa_profile, ptr %58, i32 0, i32 2
  %63 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ns.i, align 4
  %65 = ptrtoint ptr %ns3.i14.le to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ns3.i14.le, align 4
  %cmp.i.i18 = icmp eq ptr %64, %66
  br i1 %cmp.i.i18, label %if.end.i19.match_component.exit.i33_crit_edge, label %if.end.i.i27

if.end.i19.match_component.exit.i33_crit_edge:    ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #14
  br label %match_component.exit.i33

if.end.i.i27:                                     ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #14
  %call4.i.i22 = tail call ptr @aa_ns_name(ptr noundef %64, ptr noundef %66, i1 noundef zeroext true) #12
  %67 = ptrtoint ptr %policy33.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %policy33.i, align 4
  %call7.i.i24 = tail call i32 @aa_dfa_match_len(ptr noundef %68, i32 noundef %state, ptr noundef nonnull @.str.81, i32 noundef 1) #12
  %69 = ptrtoint ptr %policy33.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %policy33.i, align 4
  %call10.i.i25 = tail call i32 @aa_dfa_match(ptr noundef %70, i32 noundef %call7.i.i24, ptr noundef %call4.i.i22) #12
  %71 = ptrtoint ptr %policy33.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %policy33.i, align 4
  %call13.i.i26 = tail call i32 @aa_dfa_match_len(ptr noundef %72, i32 noundef %call10.i.i25, ptr noundef nonnull @.str.81, i32 noundef 1) #12
  br label %match_component.exit.i33

match_component.exit.i33:                         ; preds = %if.end.i.i27, %if.end.i19.match_component.exit.i33_crit_edge
  %call13.sink.i.i29 = phi i32 [ %call13.i.i26, %if.end.i.i27 ], [ %state, %if.end.i19.match_component.exit.i33_crit_edge ]
  %73 = ptrtoint ptr %policy33.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %policy33.i, align 4
  %hname17.i.i30 = getelementptr inbounds %struct.aa_policy, ptr %58, i32 0, i32 1
  %75 = ptrtoint ptr %hname17.i.i30 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hname17.i.i30, align 4
  %call18.i.i31 = tail call i32 @aa_dfa_match(ptr noundef %74, i32 noundef %call13.sink.i.i29, ptr noundef %76) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i31)
  %tobool6.not.i32 = icmp eq i32 %call18.i.i31, 0
  br i1 %tobool6.not.i32, label %match_component.exit.i33.fail.i49_crit_edge, label %next.i

match_component.exit.i33.fail.i49_crit_edge:      ; preds = %match_component.exit.i33
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i49

for.inc.i37:                                      ; preds = %for.body.i16
  %inc.i34 = add i32 %i.sroa.0.084.i, 1
  %arrayidx.i35 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %inc.i34
  %77 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i35, align 4
  %tobool.not.i36 = icmp eq ptr %78, null
  br i1 %tobool.not.i36, label %for.inc.i37.label_components_match.exit_crit_edge, label %for.inc.i37.for.body.i16_crit_edge

for.inc.i37.for.body.i16_crit_edge:               ; preds = %for.inc.i37
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i16

for.inc.i37.label_components_match.exit_crit_edge: ; preds = %for.inc.i37
  call void @__sanitizer_cov_trace_pc() #14
  br label %label_components_match.exit

next.i:                                           ; preds = %match_component.exit.i33
  %79 = ptrtoint ptr %policy33.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %policy33.i, align 4
  call void @aa_compute_perms(ptr noundef %80, i32 noundef %call18.i.i31, ptr noundef nonnull %tmp.i) #12
  call void @aa_apply_modes_to_perms(ptr noundef %profile, ptr noundef nonnull %tmp.i) #12
  call void @aa_perms_accum(ptr noundef %perms, ptr noundef nonnull %tmp.i) #12
  %i.sroa.0.185.i = add i32 %i.sroa.0.084.i, 1
  %arrayidx1586.i = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %i.sroa.0.185.i
  %81 = ptrtoint ptr %arrayidx1586.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx1586.i, align 4
  %tobool16.not87.i = icmp eq ptr %82, null
  br i1 %tobool16.not87.i, label %next.i.for.end33.i_crit_edge, label %next.i.for.body17.i41_crit_edge

next.i.for.body17.i41_crit_edge:                  ; preds = %next.i
  br label %for.body17.i41

next.i.for.end33.i_crit_edge:                     ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end33.i

for.body17.i41:                                   ; preds = %for.inc30.i.for.body17.i41_crit_edge, %next.i.for.body17.i41_crit_edge
  %83 = phi ptr [ %105, %for.inc30.i.for.body17.i41_crit_edge ], [ %82, %next.i.for.body17.i41_crit_edge ]
  %i.sroa.0.188.i = phi i32 [ %i.sroa.0.1.i43, %for.inc30.i.for.body17.i41_crit_edge ], [ %i.sroa.0.185.i, %next.i.for.body17.i41_crit_edge ]
  %84 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ns.i, align 4
  %ns19.i39 = getelementptr inbounds %struct.aa_profile, ptr %83, i32 0, i32 2
  %86 = ptrtoint ptr %ns19.i39 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ns19.i39, align 4
  %call21.i40 = call zeroext i1 @aa_ns_visible(ptr noundef %85, ptr noundef %87, i1 noundef zeroext %subns) #12
  br i1 %call21.i40, label %if.end23.i42, label %for.body17.i41.for.inc30.i_crit_edge

for.body17.i41.for.inc30.i_crit_edge:             ; preds = %for.body17.i41
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc30.i

if.end23.i42:                                     ; preds = %for.body17.i41
  %88 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ns.i, align 4
  %90 = ptrtoint ptr %ns19.i39 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ns19.i39, align 4
  %cmp.i66.i = icmp eq ptr %89, %91
  br i1 %cmp.i66.i, label %if.end23.i42.match_component.exit79.i_crit_edge, label %if.end.i74.i

if.end23.i42.match_component.exit79.i_crit_edge:  ; preds = %if.end23.i42
  call void @__sanitizer_cov_trace_pc() #14
  br label %match_component.exit79.i

if.end.i74.i:                                     ; preds = %if.end23.i42
  call void @__sanitizer_cov_trace_pc() #14
  %call4.i69.i = call ptr @aa_ns_name(ptr noundef %89, ptr noundef %91, i1 noundef zeroext true) #12
  %92 = ptrtoint ptr %policy33.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %policy33.i, align 4
  %call7.i71.i = call i32 @aa_dfa_match_len(ptr noundef %93, i32 noundef %state, ptr noundef nonnull @.str.81, i32 noundef 1) #12
  %94 = ptrtoint ptr %policy33.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %policy33.i, align 4
  %call10.i72.i = call i32 @aa_dfa_match(ptr noundef %95, i32 noundef %call7.i71.i, ptr noundef %call4.i69.i) #12
  %96 = ptrtoint ptr %policy33.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %policy33.i, align 4
  %call13.i73.i = call i32 @aa_dfa_match_len(ptr noundef %97, i32 noundef %call10.i72.i, ptr noundef nonnull @.str.81, i32 noundef 1) #12
  br label %match_component.exit79.i

match_component.exit79.i:                         ; preds = %if.end.i74.i, %if.end23.i42.match_component.exit79.i_crit_edge
  %call13.sink.i76.i = phi i32 [ %call13.i73.i, %if.end.i74.i ], [ %state, %if.end23.i42.match_component.exit79.i_crit_edge ]
  %98 = ptrtoint ptr %policy33.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %policy33.i, align 4
  %hname17.i77.i = getelementptr inbounds %struct.aa_policy, ptr %83, i32 0, i32 1
  %100 = ptrtoint ptr %hname17.i77.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hname17.i77.i, align 4
  %call18.i78.i = call i32 @aa_dfa_match(ptr noundef %99, i32 noundef %call13.sink.i76.i, ptr noundef %101) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i78.i)
  %tobool25.not.i = icmp eq i32 %call18.i78.i, 0
  br i1 %tobool25.not.i, label %match_component.exit79.i.fail.i49_crit_edge, label %if.end27.i

match_component.exit79.i.fail.i49_crit_edge:      ; preds = %match_component.exit79.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i49

if.end27.i:                                       ; preds = %match_component.exit79.i
  call void @__sanitizer_cov_trace_pc() #14
  %102 = ptrtoint ptr %policy33.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %policy33.i, align 4
  call void @aa_compute_perms(ptr noundef %103, i32 noundef %call18.i78.i, ptr noundef nonnull %tmp.i) #12
  call void @aa_apply_modes_to_perms(ptr noundef %profile, ptr noundef nonnull %tmp.i) #12
  call void @aa_perms_accum(ptr noundef %perms, ptr noundef nonnull %tmp.i) #12
  br label %for.inc30.i

for.inc30.i:                                      ; preds = %if.end27.i, %for.body17.i41.for.inc30.i_crit_edge
  %i.sroa.0.1.i43 = add i32 %i.sroa.0.188.i, 1
  %arrayidx15.i44 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %i.sroa.0.1.i43
  %104 = ptrtoint ptr %arrayidx15.i44 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx15.i44, align 4
  %tobool16.not.i45 = icmp eq ptr %105, null
  br i1 %tobool16.not.i45, label %for.inc30.i.for.end33.i_crit_edge, label %for.inc30.i.for.body17.i41_crit_edge

for.inc30.i.for.body17.i41_crit_edge:             ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body17.i41

for.inc30.i.for.end33.i_crit_edge:                ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end33.i

for.end33.i:                                      ; preds = %for.inc30.i.for.end33.i_crit_edge, %next.i.for.end33.i_crit_edge
  %106 = ptrtoint ptr %perms to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %perms, align 4
  %and.i46 = and i32 %107, %request
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i46, i32 %request)
  %cmp.not.i47 = icmp eq i32 %and.i46, %request
  %..i48 = select i1 %cmp.not.i47, i32 0, i32 -13
  br label %label_components_match.exit

fail.i49:                                         ; preds = %match_component.exit79.i.fail.i49_crit_edge, %match_component.exit.i33.fail.i49_crit_edge
  %108 = call ptr @memcpy(ptr %perms, ptr @nullperms, i32 44)
  br label %label_components_match.exit

label_components_match.exit:                      ; preds = %fail.i49, %for.end33.i, %for.inc.i37.label_components_match.exit_crit_edge, %if.end.label_components_match.exit_crit_edge
  %retval.0.i50 = phi i32 [ -13, %fail.i49 ], [ %..i48, %for.end33.i ], [ 0, %if.end.label_components_match.exit_crit_edge ], [ 0, %for.inc.i37.label_components_match.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i) #12
  br label %cleanup

cleanup:                                          ; preds = %label_components_match.exit, %fail.i, %for.end32.i.cleanup_crit_edge, %for.end.i
  %retval.0 = phi i32 [ %retval.0.i50, %label_components_match.exit ], [ 0, %fail.i ], [ 0, %for.end.i ], [ 0, %for.end32.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @aa_update_label_name(ptr noundef %ns, ptr noundef %label, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ns, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1450, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.aa_update_label_name) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %label, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !311

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1451, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.aa_update_label_name) #12
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %hname = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 4
  %0 = ptrtoint ptr %hname to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hname, align 4
  %tobool60.not = icmp eq ptr %1, null
  br i1 %tobool60.not, label %lor.lhs.false, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end50
  %vec = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 8
  %size = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 7
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %sub = add i32 %3, -1
  %arrayidx61 = getelementptr ptr, ptr %vec, i32 %sub
  %4 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx61, align 4
  %ns62 = getelementptr inbounds %struct.aa_profile, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ns62 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ns62, align 4
  %cmp.not = icmp eq ptr %7, %ns
  br i1 %cmp.not, label %if.end65, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end65:                                         ; preds = %lor.lhs.false
  br i1 %tobool26.not, label %do.end44.i, label %if.end65.if.end50.i_crit_edge, !prof !311

if.end65.if.end50.i_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.i

do.end44.i:                                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1721, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.aa_label_acntsxprint) #12
  br label %if.end50.i

if.end50.i:                                       ; preds = %do.end44.i, %if.end65.if.end50.i_crit_edge
  %call.i = tail call i32 @aa_label_snxprint(ptr noundef null, i32 noundef 0, ptr noundef %ns, ptr noundef %label, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end50.i.cleanup_crit_edge, label %if.end61.i

if.end50.i.cleanup_crit_edge:                     ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end61.i:                                       ; preds = %if.end50.i
  %add.i = add nuw i32 %call.i, 1
  %call62.i = tail call ptr @aa_str_alloc(i32 noundef %add.i, i32 noundef %gfp) #12
  %tobool63.not.i = icmp eq ptr %call62.i, null
  br i1 %tobool63.not.i, label %if.end61.i.cleanup_crit_edge, label %aa_label_acntsxprint.exit

if.end61.i.cleanup_crit_edge:                     ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

aa_label_acntsxprint.exit:                        ; preds = %if.end61.i
  %call67.i = tail call i32 @aa_label_snxprint(ptr noundef nonnull %call62.i, i32 noundef %add.i, ptr noundef %ns, ptr noundef %label, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %cmp66 = icmp slt i32 %call67.i, 0
  br i1 %cmp66, label %aa_label_acntsxprint.exit.cleanup_crit_edge, label %if.end69

aa_label_acntsxprint.exit.cleanup_crit_edge:      ; preds = %aa_label_acntsxprint.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end69:                                         ; preds = %aa_label_acntsxprint.exit
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %sub73 = add i32 %9, -1
  %arrayidx74 = getelementptr ptr, ptr %vec, i32 %sub73
  %10 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx74, align 4
  %ns75 = getelementptr inbounds %struct.aa_profile, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ns75 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ns75, align 4
  %labels = getelementptr inbounds %struct.aa_ns, ptr %13, i32 0, i32 11
  %call79 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %labels) #12
  %14 = ptrtoint ptr %hname to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hname, align 4
  %tobool83.not = icmp eq ptr %15, null
  br i1 %tobool83.not, label %land.lhs.true, label %if.end69.if.then.i_crit_edge

if.end69.if.then.i_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

land.lhs.true:                                    ; preds = %if.end69
  %flags84 = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 5
  %16 = ptrtoint ptr %flags84 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags84, align 4
  %and = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool85.not = icmp eq i32 %and, 0
  br i1 %tobool85.not, label %land.lhs.true.if.then.i_crit_edge, label %if.then86

land.lhs.true.if.then.i_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then86:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %hname to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call62.i, ptr %hname, align 4
  br label %do.body89

if.then.i:                                        ; preds = %land.lhs.true.if.then.i_crit_edge, %if.end69.if.then.i_crit_edge
  %add.ptr.i = getelementptr i8, ptr %call62.i, i32 -4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !305
  tail call void @llvm.prefetch.p0(ptr %add.ptr.i, i32 1, i32 3, i32 1) #12
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i, ptr %add.ptr.i, i32 1, ptr elementtype(i32) %add.ptr.i) #12, !srcloc !306
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.do.body89_crit_edge, label %if.then10.i.i.i.i.i, !prof !307

if.end5.i.i.i.i.i.do.body89_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body89

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr.i, i32 noundef 3) #12
  br label %do.body89

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !308
  tail call void @aa_str_kref(ptr noundef %add.ptr.i) #12, !callees !309
  br label %do.body89

do.body89:                                        ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.do.body89_crit_edge, %if.then86
  %res.0.off0 = phi i1 [ true, %if.then86 ], [ false, %if.end5.i.i.i.i.i.do.body89_crit_edge ], [ false, %if.then10.i.i.i.i.i ], [ false, %if.then.i.i ]
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %labels, i32 noundef %call79) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body89, %aa_label_acntsxprint.exit.cleanup_crit_edge, %if.end61.i.cleanup_crit_edge, %if.end50.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end50.cleanup_crit_edge
  %retval.0 = phi i1 [ %res.0.off0, %do.body89 ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %if.end50.cleanup_crit_edge ], [ false, %aa_label_acntsxprint.exit.cleanup_crit_edge ], [ false, %if.end50.i.cleanup_crit_edge ], [ false, %if.end61.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_label_acntsxprint(ptr noundef writeonly %strp, ptr noundef %ns, ptr noundef %label, i32 noundef %flags, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %strp, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1720, i32 noundef 9, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.aa_label_acntsxprint) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %label, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !311

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1721, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.aa_label_acntsxprint) #12
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %call = tail call i32 @aa_label_snxprint(ptr noundef null, i32 noundef 0, ptr noundef %ns, ptr noundef %label, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end50.cleanup_crit_edge, label %if.end61

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end61:                                         ; preds = %if.end50
  %add = add nuw i32 %call, 1
  %call62 = tail call ptr @aa_str_alloc(i32 noundef %add, i32 noundef %gfp) #12
  %0 = ptrtoint ptr %strp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call62, ptr %strp, align 4
  %tobool63.not = icmp eq ptr %call62, null
  br i1 %tobool63.not, label %if.end61.cleanup_crit_edge, label %if.end65

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end65:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  %call67 = tail call i32 @aa_label_snxprint(ptr noundef nonnull %call62, i32 noundef %add, ptr noundef %ns, ptr noundef %label, i32 noundef %flags)
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.end61.cleanup_crit_edge, %if.end50.cleanup_crit_edge
  %retval.0 = phi i32 [ %call67, %if.end65 ], [ %call, %if.end50.cleanup_crit_edge ], [ -12, %if.end61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_label_snxprint(ptr noundef writeonly %str, i32 noundef %size, ptr noundef %ns, ptr noundef readonly %label, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %str, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp ne i32 %size, 0
  %spec.select = and i1 %tobool.not, %cmp
  br i1 %spec.select, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1631, i32 noundef 9, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.aa_label_snxprint) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool25.not = icmp eq ptr %label, null
  br i1 %tobool25.not, label %do.end43, label %if.end.if.end49_crit_edge, !prof !311

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

do.end43:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1632, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.aa_label_snxprint) #12
  br label %if.end49

if.end49:                                         ; preds = %do.end43, %if.end.if.end49_crit_edge
  %and = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool59.not = icmp eq i32 %and, 0
  br i1 %tobool59.not, label %if.else, label %if.then60

if.then60:                                        ; preds = %if.end49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @root_ns to i32))
  %0 = load ptr, ptr @root_ns, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef %size, ptr noundef nonnull @.str.29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp64 = icmp slt i32 %call, 0
  br i1 %cmp64, label %do.end80, label %if.then60.if.end86_crit_edge, !prof !311

if.then60.if.end86_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

do.end80:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1637, i32 noundef 9, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.aa_label_snxprint) #12
  br label %if.end86

if.end86:                                         ; preds = %do.end80, %if.then60.if.end86_crit_edge
  %1 = tail call i32 @llvm.umin.i32(i32 %call, i32 %size)
  %sub = sub i32 %size, %1
  %add.ptr = getelementptr i8, ptr %str, i32 %1
  br label %if.end107

if.else:                                          ; preds = %if.end49
  %tobool100.not = icmp eq ptr %ns, null
  br i1 %tobool100.not, label %if.then101, label %if.else.if.end107_crit_edge

if.else.if.end107_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

if.then101:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %vec = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 8
  %size102 = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 7
  %2 = ptrtoint ptr %size102 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size102, align 4
  %sub103 = add i32 %3, -1
  %arrayidx104 = getelementptr ptr, ptr %vec, i32 %sub103
  %4 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx104, align 4
  %ns105 = getelementptr inbounds %struct.aa_profile, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ns105 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ns105, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then101, %if.else.if.end107_crit_edge, %if.end86
  %total.0 = phi i32 [ %call, %if.end86 ], [ 0, %if.else.if.end107_crit_edge ], [ 0, %if.then101 ]
  %ns.addr.0 = phi ptr [ %0, %if.end86 ], [ %ns, %if.else.if.end107_crit_edge ], [ %7, %if.then101 ]
  %size.addr.0 = phi i32 [ %sub, %if.end86 ], [ %size, %if.else.if.end107_crit_edge ], [ %size, %if.then101 ]
  %str.addr.0 = phi ptr [ %add.ptr, %if.end86 ], [ %str, %if.else.if.end107_crit_edge ], [ %str, %if.then101 ]
  %arrayidx111388 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 0
  %8 = ptrtoint ptr %arrayidx111388 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx111388, align 4
  %tobool112.not389 = icmp eq ptr %9, null
  br i1 %tobool112.not389, label %if.end107.if.then222_crit_edge, label %for.body.lr.ph

if.end107.if.then222_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then222

for.body.lr.ph:                                   ; preds = %if.end107
  %and114 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115 = icmp ne i32 %and114, 0
  %tobool59.not.i = icmp eq ptr %ns.addr.0, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %10 = phi ptr [ %9, %for.body.lr.ph ], [ %26, %for.inc.for.body_crit_edge ]
  %str.addr.1395 = phi ptr [ %str.addr.0, %for.body.lr.ph ], [ %str.addr.3, %for.inc.for.body_crit_edge ]
  %size.addr.1394 = phi i32 [ %size.addr.0, %for.body.lr.ph ], [ %size.addr.3, %for.inc.for.body_crit_edge ]
  %i.sroa.0.0393 = phi i32 [ 0, %for.body.lr.ph ], [ %inc220, %for.inc.for.body_crit_edge ]
  %count.0392 = phi i32 [ 0, %for.body.lr.ph ], [ %count.1, %for.inc.for.body_crit_edge ]
  %total.1391 = phi i32 [ %total.0, %for.body.lr.ph ], [ %total.3, %for.inc.for.body_crit_edge ]
  %prev_ns.0390 = phi ptr [ null, %for.body.lr.ph ], [ %prev_ns.3, %for.inc.for.body_crit_edge ]
  %ns113 = getelementptr inbounds %struct.aa_profile, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %ns113 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ns113, align 4
  %call116 = tail call zeroext i1 @aa_ns_visible(ptr noundef %ns.addr.0, ptr noundef %12, i1 noundef zeroext %tobool115) #12
  br i1 %call116, label %if.then117, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then117:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0392)
  %cmp118 = icmp sgt i32 %count.0392, 0
  br i1 %cmp118, label %if.then119, label %if.then117.if.end168_crit_edge

if.then117.if.end168_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end168

if.then119:                                       ; preds = %if.then117
  %call120 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str.addr.1395, i32 noundef %size.addr.1394, ptr noundef nonnull @.str.31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %cmp125 = icmp slt i32 %call120, 0
  br i1 %cmp125, label %do.end141, label %if.then119.if.end147_crit_edge, !prof !311

if.then119.if.end147_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end147

do.end141:                                        ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1646, i32 noundef 9, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.aa_label_snxprint) #12
  br label %if.end147

if.end147:                                        ; preds = %do.end141, %if.then119.if.end147_crit_edge
  %add157 = add i32 %call120, %total.1391
  %13 = tail call i32 @llvm.umin.i32(i32 %call120, i32 %size.addr.1394)
  %sub164 = sub i32 %size.addr.1394, %13
  %add.ptr165 = getelementptr i8, ptr %str.addr.1395, i32 %13
  br label %if.end168

if.end168:                                        ; preds = %if.end147, %if.then117.if.end168_crit_edge
  %total.2 = phi i32 [ %add157, %if.end147 ], [ %total.1391, %if.then117.if.end168_crit_edge ]
  %size.addr.2 = phi i32 [ %sub164, %if.end147 ], [ %size.addr.1394, %if.then117.if.end168_crit_edge ]
  %str.addr.2 = phi ptr [ %add.ptr165, %if.end147 ], [ %str.addr.1395, %if.then117.if.end168_crit_edge ]
  %tobool.not.i = icmp eq ptr %str.addr.2, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.2)
  %cmp.i = icmp ne i32 %size.addr.2, 0
  %spec.select.i = and i1 %cmp.i, %tobool.not.i
  br i1 %spec.select.i, label %do.end.i, label %if.end168.if.end49.i_crit_edge, !prof !311

if.end168.if.end49.i_crit_edge:                   ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.i

do.end.i:                                         ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1517, i32 noundef 9, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.aa_profile_snxprint) #12
  br label %if.end49.i

if.end49.i:                                       ; preds = %do.end.i, %if.end168.if.end49.i_crit_edge
  br i1 %tobool59.not.i, label %if.then60.i, label %if.end49.i.if.end61.i_crit_edge

if.end49.i.if.end61.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61.i

if.then60.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %ns113 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ns113, align 4
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.then60.i, %if.end49.i.if.end61.i_crit_edge
  %view.addr.0.i = phi ptr [ %ns.addr.0, %if.end49.i.if.end61.i_crit_edge ], [ %15, %if.then60.i ]
  %16 = ptrtoint ptr %ns113 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ns113, align 4
  %cmp63.not.i = icmp eq ptr %view.addr.0.i, %17
  %cmp66.not.i = icmp eq ptr %prev_ns.0390, %17
  %or.cond = select i1 %cmp63.not.i, i1 true, i1 %cmp66.not.i
  br i1 %or.cond, label %if.end83.i.thread, label %if.then69.critedge.i

if.then69.critedge.i:                             ; preds = %if.end61.i
  %call.i = tail call ptr @aa_ns_name(ptr noundef %view.addr.0.i, ptr noundef %17, i1 noundef zeroext %tobool115) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_hidden_ns_name to i32))
  %18 = load ptr, ptr @aa_hidden_ns_name, align 4
  %cmp74.i = icmp eq ptr %call.i, %18
  br i1 %cmp74.i, label %if.then75.i, label %if.end83.i

if.then75.i:                                      ; preds = %if.then69.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  %call81.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str.addr.2, i32 noundef %size.addr.2, ptr noundef nonnull @.str.32, ptr noundef %call.i) #12
  br label %aa_profile_snxprint.exit

if.end83.i.thread:                                ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #14
  %hname105.i385 = getelementptr inbounds %struct.aa_policy, ptr %10, i32 0, i32 1
  %19 = ptrtoint ptr %hname105.i385 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hname105.i385, align 4
  br label %if.end103.i

if.end83.i:                                       ; preds = %if.then69.critedge.i
  %tobool98.not.i = icmp eq ptr %call.i, null
  %hname105.i = getelementptr inbounds %struct.aa_policy, ptr %10, i32 0, i32 1
  %21 = ptrtoint ptr %hname105.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hname105.i, align 4
  br i1 %tobool98.not.i, label %if.end83.i.if.end103.i_crit_edge, label %if.then99.i

if.end83.i.if.end103.i_crit_edge:                 ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103.i

if.then99.i:                                      ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #14
  %call102.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str.addr.2, i32 noundef %size.addr.2, ptr noundef nonnull @.str.84, ptr noundef nonnull %call.i, ptr noundef %22) #12
  br label %aa_profile_snxprint.exit

if.end103.i:                                      ; preds = %if.end83.i.if.end103.i_crit_edge, %if.end83.i.thread
  %23 = phi ptr [ %20, %if.end83.i.thread ], [ %22, %if.end83.i.if.end103.i_crit_edge ]
  %prev_ns.1386 = phi ptr [ %prev_ns.0390, %if.end83.i.thread ], [ %17, %if.end83.i.if.end103.i_crit_edge ]
  %call106.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str.addr.2, i32 noundef %size.addr.2, ptr noundef nonnull @.str.32, ptr noundef %23) #12
  br label %aa_profile_snxprint.exit

aa_profile_snxprint.exit:                         ; preds = %if.end103.i, %if.then99.i, %if.then75.i
  %prev_ns.2 = phi ptr [ %prev_ns.1386, %if.end103.i ], [ %17, %if.then99.i ], [ %17, %if.then75.i ]
  %retval.1.i = phi i32 [ %call106.i, %if.end103.i ], [ %call102.i, %if.then99.i ], [ %call81.i, %if.then75.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i)
  %cmp175 = icmp slt i32 %retval.1.i, 0
  br i1 %cmp175, label %do.end191, label %aa_profile_snxprint.exit.if.end197_crit_edge, !prof !311

aa_profile_snxprint.exit.if.end197_crit_edge:     ; preds = %aa_profile_snxprint.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end197

do.end191:                                        ; preds = %aa_profile_snxprint.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1651, i32 noundef 9, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.aa_label_snxprint) #12
  br label %if.end197

if.end197:                                        ; preds = %do.end191, %aa_profile_snxprint.exit.if.end197_crit_edge
  %add207 = add i32 %retval.1.i, %total.2
  %24 = tail call i32 @llvm.umin.i32(i32 %retval.1.i, i32 %size.addr.2)
  %sub214 = sub i32 %size.addr.2, %24
  %add.ptr215 = getelementptr i8, ptr %str.addr.2, i32 %24
  %inc = add i32 %count.0392, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end197, %for.body.for.inc_crit_edge
  %prev_ns.3 = phi ptr [ %prev_ns.2, %if.end197 ], [ %prev_ns.0390, %for.body.for.inc_crit_edge ]
  %total.3 = phi i32 [ %add207, %if.end197 ], [ %total.1391, %for.body.for.inc_crit_edge ]
  %count.1 = phi i32 [ %inc, %if.end197 ], [ %count.0392, %for.body.for.inc_crit_edge ]
  %size.addr.3 = phi i32 [ %sub214, %if.end197 ], [ %size.addr.1394, %for.body.for.inc_crit_edge ]
  %str.addr.3 = phi ptr [ %add.ptr215, %if.end197 ], [ %str.addr.1395, %for.body.for.inc_crit_edge ]
  %inc220 = add i32 %i.sroa.0.0393, 1
  %arrayidx111 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %inc220
  %25 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx111, align 4
  %tobool112.not = icmp eq ptr %26, null
  br i1 %tobool112.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1)
  %cmp221 = icmp eq i32 %count.1, 0
  br i1 %cmp221, label %for.end.if.then222_crit_edge, label %if.end229

for.end.if.then222_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then222

if.then222:                                       ; preds = %for.end.if.then222_crit_edge, %if.end107.if.then222_crit_edge
  %str.addr.1.lcssa405 = phi ptr [ %str.addr.3, %for.end.if.then222_crit_edge ], [ %str.addr.0, %if.end107.if.then222_crit_edge ]
  %size.addr.1.lcssa404 = phi i32 [ %size.addr.3, %for.end.if.then222_crit_edge ], [ %size.addr.0, %if.end107.if.then222_crit_edge ]
  %and223 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and223)
  %tobool224.not = icmp eq i32 %and223, 0
  br i1 %tobool224.not, label %if.end227, label %if.then225

if.then225:                                       ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #14
  %call226 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str.addr.1.lcssa405, i32 noundef %size.addr.1.lcssa404, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33)
  br label %cleanup

if.end227:                                        ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_hidden_ns_name to i32))
  %27 = load ptr, ptr @aa_hidden_ns_name, align 4
  %call228 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str.addr.1.lcssa405, i32 noundef %size.addr.1.lcssa404, ptr noundef nonnull @.str.32, ptr noundef %27)
  br label %cleanup

if.end229:                                        ; preds = %for.end
  %and.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i366 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i366, label %if.end229.cleanup_crit_edge, label %for.cond.preheader.i

if.end229.cleanup_crit_edge:                      ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end229
  %28 = ptrtoint ptr %arrayidx111388 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx111388, align 4
  %tobool3.not17.i = icmp eq ptr %29, null
  br i1 %tobool3.not17.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %and5.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.i = icmp ne i32 %and5.i, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %30 = phi ptr [ %29, %for.body.lr.ph.i ], [ %38, %for.inc.i.for.body.i_crit_edge ]
  %i.sroa.0.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %ns4.i = getelementptr inbounds %struct.aa_profile, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %ns4.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ns4.i, align 4
  %call.i367 = tail call zeroext i1 @aa_ns_visible(ptr noundef %ns.addr.0, ptr noundef %32, i1 noundef zeroext %tobool6.i) #12
  br i1 %call.i367, label %land.lhs.true.i368, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i368:                               ; preds = %for.body.i
  %33 = ptrtoint ptr %ns4.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ns4.i, align 4
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %unconfined.i, align 4
  %cmp.not.i = icmp eq ptr %30, %36
  br i1 %cmp.not.i, label %land.lhs.true.i368.for.inc.i_crit_edge, label %if.then231

land.lhs.true.i368.for.inc.i_crit_edge:           ; preds = %land.lhs.true.i368
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i368.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.sroa.0.018.i, 1
  %arrayidx.i = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %inc.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq ptr %38, null
  br i1 %tobool3.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then231:                                       ; preds = %land.lhs.true.i368
  %39 = ptrtoint ptr %arrayidx111388 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx111388, align 4
  %tobool.not40.i = icmp eq ptr %40, null
  br i1 %tobool.not40.i, label %if.then231.label_modename.exit_crit_edge, label %if.then231.for.body.i373_crit_edge

if.then231.for.body.i373_crit_edge:               ; preds = %if.then231
  br label %for.body.i373

if.then231.label_modename.exit_crit_edge:         ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #14
  br label %label_modename.exit

for.body.i373:                                    ; preds = %for.inc.i380.for.body.i373_crit_edge, %if.then231.for.body.i373_crit_edge
  %41 = phi ptr [ %51, %for.inc.i380.for.body.i373_crit_edge ], [ %40, %if.then231.for.body.i373_crit_edge ]
  %count.043.i = phi i32 [ %count.1.i, %for.inc.i380.for.body.i373_crit_edge ], [ 0, %if.then231.for.body.i373_crit_edge ]
  %mode.042.i = phi i32 [ %mode.1.i, %for.inc.i380.for.body.i373_crit_edge ], [ -1, %if.then231.for.body.i373_crit_edge ]
  %i.sroa.0.041.i = phi i32 [ %inc17.i, %for.inc.i380.for.body.i373_crit_edge ], [ 0, %if.then231.for.body.i373_crit_edge ]
  %ns3.i = getelementptr inbounds %struct.aa_profile, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %ns3.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ns3.i, align 4
  %call.i372 = tail call zeroext i1 @aa_ns_visible(ptr noundef %ns.addr.0, ptr noundef %43, i1 noundef zeroext %tobool6.i) #12
  br i1 %call.i372, label %if.then.i, label %for.body.i373.for.inc.i380_crit_edge

for.body.i373.for.inc.i380_crit_edge:             ; preds = %for.body.i373
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i380

if.then.i:                                        ; preds = %for.body.i373
  %inc.i374 = add i32 %count.043.i, 1
  %44 = ptrtoint ptr %ns3.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ns3.i, align 4
  %unconfined.i375 = getelementptr inbounds %struct.aa_ns, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %unconfined.i375 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %unconfined.i375, align 4
  %cmp.i376 = icmp eq ptr %41, %47
  br i1 %cmp.i376, label %if.then.i.for.inc.i380_crit_edge, label %if.end.i377

if.then.i.for.inc.i380_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i380

if.end.i377:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mode.042.i)
  %cmp7.i = icmp eq i32 %mode.042.i, -1
  %mode9.i = getelementptr inbounds %struct.aa_profile, ptr %41, i32 0, i32 8
  %48 = ptrtoint ptr %mode9.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mode9.i, align 4
  br i1 %cmp7.i, label %if.end.i377.for.inc.i380_crit_edge, label %if.else.i

if.end.i377.for.inc.i380_crit_edge:               ; preds = %if.end.i377
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i380

if.else.i:                                        ; preds = %if.end.i377
  call void @__sanitizer_cov_trace_cmp4(i32 %mode.042.i, i32 %49)
  %cmp11.not.i = icmp eq i32 %mode.042.i, %49
  br i1 %cmp11.not.i, label %if.else.i.for.inc.i380_crit_edge, label %if.else.i.label_modename.exit_crit_edge

if.else.i.label_modename.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %label_modename.exit

if.else.i.for.inc.i380_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i380

for.inc.i380:                                     ; preds = %if.else.i.for.inc.i380_crit_edge, %if.end.i377.for.inc.i380_crit_edge, %if.then.i.for.inc.i380_crit_edge, %for.body.i373.for.inc.i380_crit_edge
  %mode.1.i = phi i32 [ %mode.042.i, %if.then.i.for.inc.i380_crit_edge ], [ %mode.042.i, %if.else.i.for.inc.i380_crit_edge ], [ %mode.042.i, %for.body.i373.for.inc.i380_crit_edge ], [ %49, %if.end.i377.for.inc.i380_crit_edge ]
  %count.1.i = phi i32 [ %inc.i374, %if.then.i.for.inc.i380_crit_edge ], [ %inc.i374, %if.else.i.for.inc.i380_crit_edge ], [ %count.043.i, %for.body.i373.for.inc.i380_crit_edge ], [ %inc.i374, %if.end.i377.for.inc.i380_crit_edge ]
  %inc17.i = add i32 %i.sroa.0.041.i, 1
  %arrayidx.i378 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %inc17.i
  %50 = ptrtoint ptr %arrayidx.i378 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i378, align 4
  %tobool.not.i379 = icmp eq ptr %51, null
  br i1 %tobool.not.i379, label %for.end.i, label %for.inc.i380.for.body.i373_crit_edge

for.inc.i380.for.body.i373_crit_edge:             ; preds = %for.inc.i380
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i373

for.end.i:                                        ; preds = %for.inc.i380
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.i)
  %cmp18.i = icmp eq i32 %count.1.i, 0
  br i1 %cmp18.i, label %for.end.i.label_modename.exit_crit_edge, label %if.end20.i

for.end.i.label_modename.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %label_modename.exit

if.end20.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mode.1.i)
  %cmp21.i = icmp eq i32 %mode.1.i, -1
  %spec.store.select.i = select i1 %cmp21.i, i32 3, i32 %mode.1.i
  %arrayidx24.i = getelementptr [0 x ptr], ptr @aa_profile_mode_names, i32 0, i32 %spec.store.select.i
  %52 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx24.i, align 4
  br label %label_modename.exit

label_modename.exit:                              ; preds = %if.end20.i, %for.end.i.label_modename.exit_crit_edge, %if.else.i.label_modename.exit_crit_edge, %if.then231.label_modename.exit_crit_edge
  %retval.0.i = phi ptr [ %53, %if.end20.i ], [ @.str.86, %for.end.i.label_modename.exit_crit_edge ], [ @.str.86, %if.then231.label_modename.exit_crit_edge ], [ @.str.85, %if.else.i.label_modename.exit_crit_edge ]
  %call233 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str.addr.3, i32 noundef %size.addr.3, ptr noundef nonnull @.str.34, ptr noundef %retval.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %cmp238 = icmp slt i32 %call233, 0
  br i1 %cmp238, label %do.end254, label %label_modename.exit.if.end260_crit_edge, !prof !311

label_modename.exit.if.end260_crit_edge:          ; preds = %label_modename.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end260

do.end254:                                        ; preds = %label_modename.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1668, i32 noundef 9, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.aa_label_snxprint) #12
  br label %if.end260

if.end260:                                        ; preds = %do.end254, %label_modename.exit.if.end260_crit_edge
  %add270 = add i32 %call233, %total.3
  br label %cleanup

cleanup:                                          ; preds = %if.end260, %for.inc.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %if.end229.cleanup_crit_edge, %if.end227, %if.then225
  %retval.0 = phi i32 [ %call226, %if.then225 ], [ %call228, %if.end227 ], [ %add270, %if.end260 ], [ %total.3, %if.end229.cleanup_crit_edge ], [ %total.3, %for.cond.preheader.i.cleanup_crit_edge ], [ %total.3, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @aa_ns_visible(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_label_asxprint(ptr noundef writeonly %strp, ptr noundef %ns, ptr noundef %label, i32 noundef %flags, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %strp, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1691, i32 noundef 9, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.aa_label_asxprint) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %label, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !311

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1692, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.aa_label_asxprint) #12
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %call = tail call i32 @aa_label_snxprint(ptr noundef null, i32 noundef 0, ptr noundef %ns, ptr noundef %label, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end50.cleanup_crit_edge, label %if.end61

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end61:                                         ; preds = %if.end50
  %add = add nuw i32 %call, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef %gfp) #17
  %0 = ptrtoint ptr %strp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call9.i, ptr %strp, align 4
  %tobool63.not = icmp eq ptr %call9.i, null
  br i1 %tobool63.not, label %if.end61.cleanup_crit_edge, label %if.end65

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end65:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  %call67 = tail call i32 @aa_label_snxprint(ptr noundef nonnull %call9.i, i32 noundef %add, ptr noundef %ns, ptr noundef %label, i32 noundef %flags)
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.end61.cleanup_crit_edge, %if.end50.cleanup_crit_edge
  %retval.0 = phi i32 [ %call67, %if.end65 ], [ %call, %if.end50.cleanup_crit_edge ], [ -12, %if.end61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aa_str_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aa_label_xaudit(ptr noundef %ab, ptr noundef %ns, ptr noundef %label, i32 noundef %flags, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ab, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1741, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.aa_label_xaudit) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %label, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !311

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1742, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.aa_label_xaudit) #12
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %hname.i = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 4
  %0 = ptrtoint ptr %hname.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hname.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end50.if.then61_crit_edge, label %land.lhs.true.i

if.end50.if.then61_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then61

land.lhs.true.i:                                  ; preds = %if.end50
  %tobool1.not.i = icmp eq ptr %ns, null
  br i1 %tobool1.not.i, label %land.lhs.true4.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %vec.i = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 8
  %size.i = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 7
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  %sub.i = add i32 %3, -1
  %arrayidx2.i = getelementptr ptr, ptr %vec.i, i32 %sub.i
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2.i, align 4
  %ns3.i = getelementptr inbounds %struct.aa_profile, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ns3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ns3.i, align 4
  %cmp.i = icmp eq ptr %7, %ns
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool5.not.i = icmp ult i32 %flags, 2
  %or.cond.i = and i1 %tobool5.not.i, %cmp.i
  br i1 %or.cond.i, label %lor.lhs.false.i.lor.lhs.false_crit_edge, label %lor.lhs.false.i.if.then61_crit_edge

lor.lhs.false.i.if.then61_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then61

lor.lhs.false.i.lor.lhs.false_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool5.not.old.i = icmp ult i32 %flags, 2
  br i1 %tobool5.not.old.i, label %land.lhs.true4.i.lor.lhs.false_crit_edge, label %land.lhs.true4.i.if.then61_crit_edge

land.lhs.true4.i.if.then61_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then61

land.lhs.true4.i.lor.lhs.false_crit_edge:         ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true4.i.lor.lhs.false_crit_edge, %lor.lhs.false.i.lor.lhs.false_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool.not.i114 = icmp eq i32 %flags, 0
  br i1 %tobool.not.i114, label %lor.lhs.false.if.else_crit_edge, label %for.cond.preheader.i

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

for.cond.preheader.i:                             ; preds = %lor.lhs.false
  %arrayidx16.i = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 0
  %8 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx16.i, align 4
  %tobool3.not17.i = icmp eq ptr %9, null
  br i1 %tobool3.not17.i, label %for.cond.preheader.i.if.else_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.else_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %10 = phi ptr [ %18, %for.inc.i.for.body.i_crit_edge ], [ %9, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.sroa.0.018.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %ns4.i = getelementptr inbounds %struct.aa_profile, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %ns4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ns4.i, align 4
  %call.i = tail call zeroext i1 @aa_ns_visible(ptr noundef %ns, ptr noundef %12, i1 noundef zeroext false) #12
  br i1 %call.i, label %land.lhs.true.i115, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i115:                               ; preds = %for.body.i
  %13 = ptrtoint ptr %ns4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ns4.i, align 4
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %unconfined.i, align 4
  %cmp.not.i = icmp eq ptr %10, %16
  br i1 %cmp.not.i, label %land.lhs.true.i115.for.inc.i_crit_edge, label %land.lhs.true.i115.if.then61_crit_edge

land.lhs.true.i115.if.then61_crit_edge:           ; preds = %land.lhs.true.i115
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then61

land.lhs.true.i115.for.inc.i_crit_edge:           ; preds = %land.lhs.true.i115
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i115.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.sroa.0.018.i, 1
  %arrayidx.i = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %inc.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq ptr %18, null
  br i1 %tobool3.not.i, label %for.inc.i.if.else_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.else_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then61:                                        ; preds = %land.lhs.true.i115.if.then61_crit_edge, %land.lhs.true4.i.if.then61_crit_edge, %lor.lhs.false.i.if.then61_crit_edge, %if.end50.if.then61_crit_edge
  br i1 %tobool26.not, label %do.end44.i, label %if.then61.if.end50.i_crit_edge, !prof !311

if.then61.if.end50.i_crit_edge:                   ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.i

do.end44.i:                                       ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1692, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.aa_label_asxprint) #12
  br label %if.end50.i

if.end50.i:                                       ; preds = %do.end44.i, %if.then61.if.end50.i_crit_edge
  %call.i117 = tail call i32 @aa_label_snxprint(ptr noundef null, i32 noundef 0, ptr noundef %ns, ptr noundef %label, i32 noundef %flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %cmp.i118 = icmp slt i32 %call.i117, 0
  br i1 %cmp.i118, label %if.end50.i.aa_label_asxprint.exit_crit_edge, label %if.end61.i

if.end50.i.aa_label_asxprint.exit_crit_edge:      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_label_asxprint.exit

if.end61.i:                                       ; preds = %if.end50.i
  %add.i = add nuw i32 %call.i117, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef %gfp) #17
  %tobool63.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool63.not.i, label %if.end61.i.if.end88_crit_edge, label %if.end65.i

if.end61.i.if.end88_crit_edge:                    ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.end65.i:                                       ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #14
  %call67.i = tail call i32 @aa_label_snxprint(ptr noundef nonnull %call9.i.i, i32 noundef %add.i, ptr noundef %ns, ptr noundef %label, i32 noundef %flags) #12
  br label %aa_label_asxprint.exit

aa_label_asxprint.exit:                           ; preds = %if.end65.i, %if.end50.i.aa_label_asxprint.exit_crit_edge
  %name.0 = phi ptr [ null, %if.end50.i.aa_label_asxprint.exit_crit_edge ], [ %call9.i.i, %if.end65.i ]
  %retval.0.i119 = phi i32 [ %call.i117, %if.end50.i.aa_label_asxprint.exit_crit_edge ], [ %call67.i, %if.end65.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i119)
  %cmp = icmp eq i32 %retval.0.i119, -1
  br i1 %cmp, label %do.body64, label %aa_label_asxprint.exit.if.end88_crit_edge

aa_label_asxprint.exit.if.end88_crit_edge:        ; preds = %aa_label_asxprint.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

do.body64:                                        ; preds = %aa_label_asxprint.exit
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_debug to i32))
  %19 = load i8, ptr @aa_g_debug, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool65.not = icmp eq i8 %19, 0
  br i1 %tobool65.not, label %do.body64.cleanup_crit_edge, label %do.body67

do.body64.cleanup_crit_edge:                      ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body67:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aa_label_xaudit.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aa_label_xaudit, %land.lhs.true)) #12
          to label %cleanup [label %land.lhs.true], !srcloc !315

land.lhs.true:                                    ; preds = %do.body67
  %call77 = tail call i32 @___ratelimit(ptr noundef nonnull @aa_label_xaudit._rs, ptr noundef nonnull @__func__.aa_label_xaudit) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %land.lhs.true.cleanup_crit_edge, label %if.then79

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then79:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aa_label_xaudit.descriptor, ptr noundef nonnull @.str.37) #12
  br label %cleanup

if.else:                                          ; preds = %for.inc.i.if.else_crit_edge, %for.cond.preheader.i.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  %20 = ptrtoint ptr %hname.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hname.i, align 4
  %call87 = tail call i32 @strlen(ptr noundef %21) #16
  br label %if.end88

if.end88:                                         ; preds = %if.else, %aa_label_asxprint.exit.if.end88_crit_edge, %if.end61.i.if.end88_crit_edge
  %name.1 = phi ptr [ null, %if.else ], [ %name.0, %aa_label_asxprint.exit.if.end88_crit_edge ], [ null, %if.end61.i.if.end88_crit_edge ]
  %len.0 = phi i32 [ %call87, %if.else ], [ %retval.0.i119, %aa_label_asxprint.exit.if.end88_crit_edge ], [ -12, %if.end61.i.if.end88_crit_edge ]
  %str.0 = phi ptr [ %21, %if.else ], [ %name.0, %aa_label_asxprint.exit.if.end88_crit_edge ], [ null, %if.end61.i.if.end88_crit_edge ]
  %call89 = tail call zeroext i1 @audit_string_contains_control(ptr noundef %str.0, i32 noundef %len.0) #12
  br i1 %call89, label %if.then90, label %if.else91

if.then90:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @audit_log_n_hex(ptr noundef %ab, ptr noundef %str.0, i32 noundef %len.0) #12
  br label %if.end92

if.else91:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @audit_log_n_string(ptr noundef %ab, ptr noundef %str.0, i32 noundef %len.0) #12
  br label %if.end92

if.end92:                                         ; preds = %if.else91, %if.then90
  tail call void @kfree(ptr noundef %name.1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %if.then79, %land.lhs.true.cleanup_crit_edge, %do.body67, %do.body64.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @audit_string_contains_control(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_n_hex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_n_string(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aa_label_seq_xprint(ptr noundef %f, ptr noundef %ns, ptr noundef %label, i32 noundef %flags, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %f, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1767, i32 noundef 9, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.aa_label_seq_xprint) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %label, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !311

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1768, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.aa_label_seq_xprint) #12
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %hname.i = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 4
  %0 = ptrtoint ptr %hname.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hname.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end50.if.then60_crit_edge, label %land.lhs.true.i

if.end50.if.then60_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then60

land.lhs.true.i:                                  ; preds = %if.end50
  %tobool1.not.i = icmp eq ptr %ns, null
  br i1 %tobool1.not.i, label %land.lhs.true4.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %vec.i = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 8
  %size.i = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 7
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  %sub.i = add i32 %3, -1
  %arrayidx2.i = getelementptr ptr, ptr %vec.i, i32 %sub.i
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2.i, align 4
  %ns3.i = getelementptr inbounds %struct.aa_profile, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ns3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ns3.i, align 4
  %cmp.i = icmp eq ptr %7, %ns
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool5.not.i = icmp ult i32 %flags, 2
  %or.cond.i = and i1 %tobool5.not.i, %cmp.i
  br i1 %or.cond.i, label %lor.lhs.false.i.if.else_crit_edge, label %lor.lhs.false.i.if.then60_crit_edge

lor.lhs.false.i.if.then60_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then60

lor.lhs.false.i.if.else_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool5.not.old.i = icmp ult i32 %flags, 2
  br i1 %tobool5.not.old.i, label %land.lhs.true4.i.if.else_crit_edge, label %land.lhs.true4.i.if.then60_crit_edge

land.lhs.true4.i.if.then60_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then60

land.lhs.true4.i.if.else_crit_edge:               ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then60:                                        ; preds = %land.lhs.true4.i.if.then60_crit_edge, %lor.lhs.false.i.if.then60_crit_edge, %if.end50.if.then60_crit_edge
  br i1 %tobool26.not, label %do.end44.i, label %if.then60.if.end50.i_crit_edge, !prof !311

if.then60.if.end50.i_crit_edge:                   ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.i

do.end44.i:                                       ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1692, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.aa_label_asxprint) #12
  br label %if.end50.i

if.end50.i:                                       ; preds = %do.end44.i, %if.then60.if.end50.i_crit_edge
  %call.i = tail call i32 @aa_label_snxprint(ptr noundef null, i32 noundef 0, ptr noundef %ns, ptr noundef %label, i32 noundef %flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i113 = icmp slt i32 %call.i, 0
  br i1 %cmp.i113, label %if.end50.i.aa_label_asxprint.exit_crit_edge, label %if.end61.i

if.end50.i.aa_label_asxprint.exit_crit_edge:      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_label_asxprint.exit

if.end61.i:                                       ; preds = %if.end50.i
  %add.i = add nuw i32 %call.i, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef %gfp) #17
  %tobool63.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool63.not.i, label %if.end61.i.if.end85_crit_edge, label %if.end65.i

if.end61.i.if.end85_crit_edge:                    ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.end65.i:                                       ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #14
  %call67.i = tail call i32 @aa_label_snxprint(ptr noundef nonnull %call9.i.i, i32 noundef %add.i, ptr noundef %ns, ptr noundef %label, i32 noundef %flags) #12
  br label %aa_label_asxprint.exit

aa_label_asxprint.exit:                           ; preds = %if.end65.i, %if.end50.i.aa_label_asxprint.exit_crit_edge
  %str.0 = phi ptr [ inttoptr (i32 -1 to ptr), %if.end50.i.aa_label_asxprint.exit_crit_edge ], [ %call9.i.i, %if.end65.i ]
  %retval.0.i114 = phi i32 [ %call.i, %if.end50.i.aa_label_asxprint.exit_crit_edge ], [ %call67.i, %if.end65.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i114)
  %cmp = icmp eq i32 %retval.0.i114, -1
  br i1 %cmp, label %do.body63, label %aa_label_asxprint.exit.if.end85_crit_edge

aa_label_asxprint.exit.if.end85_crit_edge:        ; preds = %aa_label_asxprint.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

do.body63:                                        ; preds = %aa_label_asxprint.exit
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_debug to i32))
  %8 = load i8, ptr @aa_g_debug, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool64.not = icmp eq i8 %8, 0
  br i1 %tobool64.not, label %do.body63.if.end93_crit_edge, label %do.body66

do.body63.if.end93_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

do.body66:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aa_label_seq_xprint.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aa_label_seq_xprint, %land.lhs.true)) #12
          to label %if.end93 [label %land.lhs.true], !srcloc !315

land.lhs.true:                                    ; preds = %do.body66
  %call76 = tail call i32 @___ratelimit(ptr noundef nonnull @aa_label_seq_xprint._rs, ptr noundef nonnull @__func__.aa_label_seq_xprint) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %land.lhs.true.if.end93_crit_edge, label %if.then78

land.lhs.true.if.end93_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

if.then78:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aa_label_seq_xprint.descriptor, ptr noundef nonnull @.str.37) #12
  br label %if.end93

if.end85:                                         ; preds = %aa_label_asxprint.exit.if.end85_crit_edge, %if.end61.i.if.end85_crit_edge
  %str.0137 = phi ptr [ %str.0, %aa_label_asxprint.exit.if.end85_crit_edge ], [ null, %if.end61.i.if.end85_crit_edge ]
  tail call void @seq_puts(ptr noundef %f, ptr noundef %str.0137) #12
  tail call void @kfree(ptr noundef %str.0137) #12
  br label %if.end93

if.else:                                          ; preds = %land.lhs.true4.i.if.else_crit_edge, %lor.lhs.false.i.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool.not.i115 = icmp eq i32 %flags, 0
  br i1 %tobool.not.i115, label %if.else.if.else90_crit_edge, label %for.cond.preheader.i

if.else.if.else90_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else90

for.cond.preheader.i:                             ; preds = %if.else
  %arrayidx16.i = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 0
  %9 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx16.i, align 4
  %tobool3.not17.i = icmp eq ptr %10, null
  br i1 %tobool3.not17.i, label %for.cond.preheader.i.if.else90_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.else90_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else90

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %11 = phi ptr [ %19, %for.inc.i.for.body.i_crit_edge ], [ %10, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.sroa.0.018.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %ns4.i = getelementptr inbounds %struct.aa_profile, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ns4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ns4.i, align 4
  %call.i116 = tail call zeroext i1 @aa_ns_visible(ptr noundef %ns, ptr noundef %13, i1 noundef zeroext false) #12
  br i1 %call.i116, label %land.lhs.true.i117, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i117:                               ; preds = %for.body.i
  %14 = ptrtoint ptr %ns4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ns4.i, align 4
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %unconfined.i, align 4
  %cmp.not.i = icmp eq ptr %11, %17
  br i1 %cmp.not.i, label %land.lhs.true.i117.for.inc.i_crit_edge, label %if.then88

land.lhs.true.i117.for.inc.i_crit_edge:           ; preds = %land.lhs.true.i117
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i117.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.sroa.0.018.i, 1
  %arrayidx.i = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %inc.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq ptr %19, null
  br i1 %tobool3.not.i, label %for.inc.i.if.else90_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.else90_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else90

if.then88:                                        ; preds = %land.lhs.true.i117
  %20 = ptrtoint ptr %hname.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hname.i, align 4
  %22 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx16.i, align 4
  %tobool.not40.i = icmp eq ptr %23, null
  br i1 %tobool.not40.i, label %if.then88.label_modename.exit_crit_edge, label %for.body.lr.ph.i119

if.then88.label_modename.exit_crit_edge:          ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #14
  br label %label_modename.exit

for.body.lr.ph.i119:                              ; preds = %if.then88
  %and.i118 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i118)
  %tobool4.i = icmp ne i32 %and.i118, 0
  br label %for.body.i122

for.body.i122:                                    ; preds = %for.inc.i129.for.body.i122_crit_edge, %for.body.lr.ph.i119
  %24 = phi ptr [ %23, %for.body.lr.ph.i119 ], [ %34, %for.inc.i129.for.body.i122_crit_edge ]
  %count.043.i = phi i32 [ 0, %for.body.lr.ph.i119 ], [ %count.1.i, %for.inc.i129.for.body.i122_crit_edge ]
  %mode.042.i = phi i32 [ -1, %for.body.lr.ph.i119 ], [ %mode.1.i, %for.inc.i129.for.body.i122_crit_edge ]
  %i.sroa.0.041.i = phi i32 [ 0, %for.body.lr.ph.i119 ], [ %inc17.i, %for.inc.i129.for.body.i122_crit_edge ]
  %ns3.i120 = getelementptr inbounds %struct.aa_profile, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %ns3.i120 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ns3.i120, align 4
  %call.i121 = tail call zeroext i1 @aa_ns_visible(ptr noundef %ns, ptr noundef %26, i1 noundef zeroext %tobool4.i) #12
  br i1 %call.i121, label %if.then.i, label %for.body.i122.for.inc.i129_crit_edge

for.body.i122.for.inc.i129_crit_edge:             ; preds = %for.body.i122
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i129

if.then.i:                                        ; preds = %for.body.i122
  %inc.i123 = add i32 %count.043.i, 1
  %27 = ptrtoint ptr %ns3.i120 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ns3.i120, align 4
  %unconfined.i124 = getelementptr inbounds %struct.aa_ns, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %unconfined.i124 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %unconfined.i124, align 4
  %cmp.i125 = icmp eq ptr %24, %30
  br i1 %cmp.i125, label %if.then.i.for.inc.i129_crit_edge, label %if.end.i126

if.then.i.for.inc.i129_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i129

if.end.i126:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mode.042.i)
  %cmp7.i = icmp eq i32 %mode.042.i, -1
  %mode9.i = getelementptr inbounds %struct.aa_profile, ptr %24, i32 0, i32 8
  %31 = ptrtoint ptr %mode9.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mode9.i, align 4
  br i1 %cmp7.i, label %if.end.i126.for.inc.i129_crit_edge, label %if.else.i

if.end.i126.for.inc.i129_crit_edge:               ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i129

if.else.i:                                        ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_cmp4(i32 %mode.042.i, i32 %32)
  %cmp11.not.i = icmp eq i32 %mode.042.i, %32
  br i1 %cmp11.not.i, label %if.else.i.for.inc.i129_crit_edge, label %if.else.i.label_modename.exit_crit_edge

if.else.i.label_modename.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %label_modename.exit

if.else.i.for.inc.i129_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i129

for.inc.i129:                                     ; preds = %if.else.i.for.inc.i129_crit_edge, %if.end.i126.for.inc.i129_crit_edge, %if.then.i.for.inc.i129_crit_edge, %for.body.i122.for.inc.i129_crit_edge
  %mode.1.i = phi i32 [ %mode.042.i, %if.then.i.for.inc.i129_crit_edge ], [ %mode.042.i, %if.else.i.for.inc.i129_crit_edge ], [ %mode.042.i, %for.body.i122.for.inc.i129_crit_edge ], [ %32, %if.end.i126.for.inc.i129_crit_edge ]
  %count.1.i = phi i32 [ %inc.i123, %if.then.i.for.inc.i129_crit_edge ], [ %inc.i123, %if.else.i.for.inc.i129_crit_edge ], [ %count.043.i, %for.body.i122.for.inc.i129_crit_edge ], [ %inc.i123, %if.end.i126.for.inc.i129_crit_edge ]
  %inc17.i = add i32 %i.sroa.0.041.i, 1
  %arrayidx.i127 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %inc17.i
  %33 = ptrtoint ptr %arrayidx.i127 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i127, align 4
  %tobool.not.i128 = icmp eq ptr %34, null
  br i1 %tobool.not.i128, label %for.end.i, label %for.inc.i129.for.body.i122_crit_edge

for.inc.i129.for.body.i122_crit_edge:             ; preds = %for.inc.i129
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i122

for.end.i:                                        ; preds = %for.inc.i129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.i)
  %cmp18.i = icmp eq i32 %count.1.i, 0
  br i1 %cmp18.i, label %for.end.i.label_modename.exit_crit_edge, label %if.end20.i

for.end.i.label_modename.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %label_modename.exit

if.end20.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mode.1.i)
  %cmp21.i = icmp eq i32 %mode.1.i, -1
  %spec.store.select.i = select i1 %cmp21.i, i32 3, i32 %mode.1.i
  %arrayidx24.i = getelementptr [0 x ptr], ptr @aa_profile_mode_names, i32 0, i32 %spec.store.select.i
  %35 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx24.i, align 4
  br label %label_modename.exit

label_modename.exit:                              ; preds = %if.end20.i, %for.end.i.label_modename.exit_crit_edge, %if.else.i.label_modename.exit_crit_edge, %if.then88.label_modename.exit_crit_edge
  %retval.0.i130 = phi ptr [ %36, %if.end20.i ], [ @.str.86, %for.end.i.label_modename.exit_crit_edge ], [ @.str.86, %if.then88.label_modename.exit_crit_edge ], [ @.str.85, %if.else.i.label_modename.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.39, ptr noundef %21, ptr noundef %retval.0.i130) #12
  br label %if.end93

if.else90:                                        ; preds = %for.inc.i.if.else90_crit_edge, %for.cond.preheader.i.if.else90_crit_edge, %if.else.if.else90_crit_edge
  %37 = ptrtoint ptr %hname.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hname.i, align 4
  tail call void @seq_puts(ptr noundef %f, ptr noundef %38) #12
  br label %if.end93

if.end93:                                         ; preds = %if.else90, %label_modename.exit, %if.end85, %if.then78, %land.lhs.true.if.end93_crit_edge, %do.body66, %do.body63.if.end93_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aa_label_xprintk(ptr noundef %ns, ptr noundef %label, i32 noundef %flags, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %label, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1791, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.aa_label_xprintk) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %hname.i = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 4
  %0 = ptrtoint ptr %hname.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hname.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.if.then24_crit_edge, label %land.lhs.true.i

if.end.if.then24_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

land.lhs.true.i:                                  ; preds = %if.end
  %tobool1.not.i = icmp eq ptr %ns, null
  br i1 %tobool1.not.i, label %land.lhs.true4.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %vec.i = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 8
  %size.i = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 7
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  %sub.i = add i32 %3, -1
  %arrayidx2.i = getelementptr ptr, ptr %vec.i, i32 %sub.i
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2.i, align 4
  %ns3.i = getelementptr inbounds %struct.aa_profile, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ns3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ns3.i, align 4
  %cmp.i = icmp eq ptr %7, %ns
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool5.not.i = icmp ult i32 %flags, 2
  %or.cond.i = and i1 %tobool5.not.i, %cmp.i
  br i1 %or.cond.i, label %lor.lhs.false.i.if.else_crit_edge, label %lor.lhs.false.i.if.then24_crit_edge

lor.lhs.false.i.if.then24_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

lor.lhs.false.i.if.else_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool5.not.old.i = icmp ult i32 %flags, 2
  br i1 %tobool5.not.old.i, label %land.lhs.true4.i.if.else_crit_edge, label %land.lhs.true4.i.if.then24_crit_edge

land.lhs.true4.i.if.then24_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

land.lhs.true4.i.if.else_crit_edge:               ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then24:                                        ; preds = %land.lhs.true4.i.if.then24_crit_edge, %lor.lhs.false.i.if.then24_crit_edge, %if.end.if.then24_crit_edge
  br i1 %tobool.not, label %do.end44.i, label %if.then24.if.end50.i_crit_edge, !prof !311

if.then24.if.end50.i_crit_edge:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.i

do.end44.i:                                       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1692, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.aa_label_asxprint) #12
  br label %if.end50.i

if.end50.i:                                       ; preds = %do.end44.i, %if.then24.if.end50.i_crit_edge
  %call.i = tail call i32 @aa_label_snxprint(ptr noundef null, i32 noundef 0, ptr noundef %ns, ptr noundef %label, i32 noundef %flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i88 = icmp slt i32 %call.i, 0
  br i1 %cmp.i88, label %if.end50.i.aa_label_asxprint.exit_crit_edge, label %if.end61.i

if.end50.i.aa_label_asxprint.exit_crit_edge:      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_label_asxprint.exit

if.end61.i:                                       ; preds = %if.end50.i
  %add.i = add nuw i32 %call.i, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef %gfp) #17
  %tobool63.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool63.not.i, label %if.end61.i.do.end52_crit_edge, label %if.end65.i

if.end61.i.do.end52_crit_edge:                    ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end52

if.end65.i:                                       ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #14
  %call67.i = tail call i32 @aa_label_snxprint(ptr noundef nonnull %call9.i.i, i32 noundef %add.i, ptr noundef %ns, ptr noundef %label, i32 noundef %flags) #12
  br label %aa_label_asxprint.exit

aa_label_asxprint.exit:                           ; preds = %if.end65.i, %if.end50.i.aa_label_asxprint.exit_crit_edge
  %str.0 = phi ptr [ inttoptr (i32 -1 to ptr), %if.end50.i.aa_label_asxprint.exit_crit_edge ], [ %call9.i.i, %if.end65.i ]
  %retval.0.i89 = phi i32 [ %call.i, %if.end50.i.aa_label_asxprint.exit_crit_edge ], [ %call67.i, %if.end65.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i89)
  %cmp = icmp eq i32 %retval.0.i89, -1
  br i1 %cmp, label %do.body27, label %aa_label_asxprint.exit.do.end52_crit_edge

aa_label_asxprint.exit.do.end52_crit_edge:        ; preds = %aa_label_asxprint.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end52

do.body27:                                        ; preds = %aa_label_asxprint.exit
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_debug to i32))
  %8 = load i8, ptr @aa_g_debug, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool28.not = icmp eq i8 %8, 0
  br i1 %tobool28.not, label %do.body27.if.end72_crit_edge, label %do.body30

do.body27.if.end72_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

do.body30:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aa_label_xprintk.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aa_label_xprintk, %land.lhs.true)) #12
          to label %if.end72 [label %land.lhs.true], !srcloc !315

land.lhs.true:                                    ; preds = %do.body30
  %call40 = tail call i32 @___ratelimit(ptr noundef nonnull @aa_label_xprintk._rs, ptr noundef nonnull @__func__.aa_label_xprintk) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %land.lhs.true.if.end72_crit_edge, label %if.then42

land.lhs.true.if.end72_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aa_label_xprintk.descriptor, ptr noundef nonnull @.str.37) #12
  br label %if.end72

do.end52:                                         ; preds = %aa_label_asxprint.exit.do.end52_crit_edge, %if.end61.i.do.end52_crit_edge
  %str.0112 = phi ptr [ %str.0, %aa_label_asxprint.exit.do.end52_crit_edge ], [ null, %if.end61.i.do.end52_crit_edge ]
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %str.0112) #18
  tail call void @kfree(ptr noundef %str.0112) #12
  br label %if.end72

if.else:                                          ; preds = %land.lhs.true4.i.if.else_crit_edge, %lor.lhs.false.i.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool.not.i90 = icmp eq i32 %flags, 0
  br i1 %tobool.not.i90, label %if.else.do.end67_crit_edge, label %for.cond.preheader.i

if.else.do.end67_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

for.cond.preheader.i:                             ; preds = %if.else
  %arrayidx16.i = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 0
  %9 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx16.i, align 4
  %tobool3.not17.i = icmp eq ptr %10, null
  br i1 %tobool3.not17.i, label %for.cond.preheader.i.do.end67_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.do.end67_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %11 = phi ptr [ %19, %for.inc.i.for.body.i_crit_edge ], [ %10, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.sroa.0.018.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %ns4.i = getelementptr inbounds %struct.aa_profile, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ns4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ns4.i, align 4
  %call.i91 = tail call zeroext i1 @aa_ns_visible(ptr noundef %ns, ptr noundef %13, i1 noundef zeroext false) #12
  br i1 %call.i91, label %land.lhs.true.i92, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i92:                                ; preds = %for.body.i
  %14 = ptrtoint ptr %ns4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ns4.i, align 4
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %unconfined.i, align 4
  %cmp.not.i = icmp eq ptr %11, %17
  br i1 %cmp.not.i, label %land.lhs.true.i92.for.inc.i_crit_edge, label %do.end60

land.lhs.true.i92.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i92
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i92.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.sroa.0.018.i, 1
  %arrayidx.i = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %inc.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq ptr %19, null
  br i1 %tobool3.not.i, label %for.inc.i.do.end67_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.do.end67_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

do.end60:                                         ; preds = %land.lhs.true.i92
  %20 = ptrtoint ptr %hname.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hname.i, align 4
  %22 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx16.i, align 4
  %tobool.not40.i = icmp eq ptr %23, null
  br i1 %tobool.not40.i, label %do.end60.label_modename.exit_crit_edge, label %for.body.lr.ph.i94

do.end60.label_modename.exit_crit_edge:           ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %label_modename.exit

for.body.lr.ph.i94:                               ; preds = %do.end60
  %and.i93 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i93)
  %tobool4.i = icmp ne i32 %and.i93, 0
  br label %for.body.i97

for.body.i97:                                     ; preds = %for.inc.i104.for.body.i97_crit_edge, %for.body.lr.ph.i94
  %24 = phi ptr [ %23, %for.body.lr.ph.i94 ], [ %34, %for.inc.i104.for.body.i97_crit_edge ]
  %count.043.i = phi i32 [ 0, %for.body.lr.ph.i94 ], [ %count.1.i, %for.inc.i104.for.body.i97_crit_edge ]
  %mode.042.i = phi i32 [ -1, %for.body.lr.ph.i94 ], [ %mode.1.i, %for.inc.i104.for.body.i97_crit_edge ]
  %i.sroa.0.041.i = phi i32 [ 0, %for.body.lr.ph.i94 ], [ %inc17.i, %for.inc.i104.for.body.i97_crit_edge ]
  %ns3.i95 = getelementptr inbounds %struct.aa_profile, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %ns3.i95 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ns3.i95, align 4
  %call.i96 = tail call zeroext i1 @aa_ns_visible(ptr noundef %ns, ptr noundef %26, i1 noundef zeroext %tobool4.i) #12
  br i1 %call.i96, label %if.then.i, label %for.body.i97.for.inc.i104_crit_edge

for.body.i97.for.inc.i104_crit_edge:              ; preds = %for.body.i97
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i104

if.then.i:                                        ; preds = %for.body.i97
  %inc.i98 = add i32 %count.043.i, 1
  %27 = ptrtoint ptr %ns3.i95 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ns3.i95, align 4
  %unconfined.i99 = getelementptr inbounds %struct.aa_ns, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %unconfined.i99 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %unconfined.i99, align 4
  %cmp.i100 = icmp eq ptr %24, %30
  br i1 %cmp.i100, label %if.then.i.for.inc.i104_crit_edge, label %if.end.i101

if.then.i.for.inc.i104_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i104

if.end.i101:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mode.042.i)
  %cmp7.i = icmp eq i32 %mode.042.i, -1
  %mode9.i = getelementptr inbounds %struct.aa_profile, ptr %24, i32 0, i32 8
  %31 = ptrtoint ptr %mode9.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mode9.i, align 4
  br i1 %cmp7.i, label %if.end.i101.for.inc.i104_crit_edge, label %if.else.i

if.end.i101.for.inc.i104_crit_edge:               ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i104

if.else.i:                                        ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_cmp4(i32 %mode.042.i, i32 %32)
  %cmp11.not.i = icmp eq i32 %mode.042.i, %32
  br i1 %cmp11.not.i, label %if.else.i.for.inc.i104_crit_edge, label %if.else.i.label_modename.exit_crit_edge

if.else.i.label_modename.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %label_modename.exit

if.else.i.for.inc.i104_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i104

for.inc.i104:                                     ; preds = %if.else.i.for.inc.i104_crit_edge, %if.end.i101.for.inc.i104_crit_edge, %if.then.i.for.inc.i104_crit_edge, %for.body.i97.for.inc.i104_crit_edge
  %mode.1.i = phi i32 [ %mode.042.i, %if.then.i.for.inc.i104_crit_edge ], [ %mode.042.i, %if.else.i.for.inc.i104_crit_edge ], [ %mode.042.i, %for.body.i97.for.inc.i104_crit_edge ], [ %32, %if.end.i101.for.inc.i104_crit_edge ]
  %count.1.i = phi i32 [ %inc.i98, %if.then.i.for.inc.i104_crit_edge ], [ %inc.i98, %if.else.i.for.inc.i104_crit_edge ], [ %count.043.i, %for.body.i97.for.inc.i104_crit_edge ], [ %inc.i98, %if.end.i101.for.inc.i104_crit_edge ]
  %inc17.i = add i32 %i.sroa.0.041.i, 1
  %arrayidx.i102 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %inc17.i
  %33 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i102, align 4
  %tobool.not.i103 = icmp eq ptr %34, null
  br i1 %tobool.not.i103, label %for.end.i, label %for.inc.i104.for.body.i97_crit_edge

for.inc.i104.for.body.i97_crit_edge:              ; preds = %for.inc.i104
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i97

for.end.i:                                        ; preds = %for.inc.i104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.i)
  %cmp18.i = icmp eq i32 %count.1.i, 0
  br i1 %cmp18.i, label %for.end.i.label_modename.exit_crit_edge, label %if.end20.i

for.end.i.label_modename.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %label_modename.exit

if.end20.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mode.1.i)
  %cmp21.i = icmp eq i32 %mode.1.i, -1
  %spec.store.select.i = select i1 %cmp21.i, i32 3, i32 %mode.1.i
  %arrayidx24.i = getelementptr [0 x ptr], ptr @aa_profile_mode_names, i32 0, i32 %spec.store.select.i
  %35 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx24.i, align 4
  br label %label_modename.exit

label_modename.exit:                              ; preds = %if.end20.i, %for.end.i.label_modename.exit_crit_edge, %if.else.i.label_modename.exit_crit_edge, %do.end60.label_modename.exit_crit_edge
  %retval.0.i105 = phi ptr [ %36, %if.end20.i ], [ @.str.86, %for.end.i.label_modename.exit_crit_edge ], [ @.str.86, %do.end60.label_modename.exit_crit_edge ], [ @.str.85, %if.else.i.label_modename.exit_crit_edge ]
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %21, ptr noundef %retval.0.i105) #18
  br label %if.end72

do.end67:                                         ; preds = %for.inc.i.do.end67_crit_edge, %for.cond.preheader.i.do.end67_crit_edge, %if.else.do.end67_crit_edge
  %37 = ptrtoint ptr %hname.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hname.i, align 4
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %38) #18
  br label %if.end72

if.end72:                                         ; preds = %do.end67, %label_modename.exit, %do.end52, %if.then42, %land.lhs.true.if.end72_crit_edge, %do.body30, %do.body27.if.end72_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aa_label_audit(ptr noundef %ab, ptr noundef %label, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @aa_get_current_ns()
  tail call void @aa_label_xaudit(ptr noundef %ab, ptr noundef %call, ptr noundef %label, i32 noundef 2, i32 noundef %gfp)
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %entry.aa_put_ns.exit_crit_edge, label %if.then.i

entry.aa_put_ns.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_put_ns.exit

if.then.i:                                        ; preds = %entry
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unconfined.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.then.i.aa_put_ns.exit_crit_edge, label %if.then.i.i

if.then.i.aa_put_ns.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_put_ns.exit

if.then.i.i:                                      ; preds = %if.then.i
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %1, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !305
  tail call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #12, !srcloc !306
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !307

if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_put_ns.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef 3) #12
  br label %aa_put_ns.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !308
  tail call void @aa_label_kref(ptr noundef %label.i.i) #12, !callees !309
  br label %aa_put_ns.exit

aa_put_ns.exit:                                   ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge, %if.then.i.aa_put_ns.exit_crit_edge, %entry.aa_put_ns.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @aa_get_current_ns() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !295) #12
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i.i, align 16
  %security.i.i.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @apparmor_blob_sizes to i32))
  %8 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 %8
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %do.end.i.i.i.i, label %entry.cred_label.exit.i.i.i_crit_edge, !prof !311

entry.cred_label.exit.i.i.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cred_label.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.87, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.88, ptr noundef nonnull @__func__.cred_label) #12
  br label %cred_label.exit.i.i.i

cred_label.exit.i.i.i:                            ; preds = %do.end.i.i.i.i, %entry.cred_label.exit.i.i.i_crit_edge
  %9 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge, !prof !311

cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge: ; preds = %cred_label.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_current_raw_label.exit.i

do.end.i.i.i:                                     ; preds = %cred_label.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.87, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.aa_cred_raw_label) #12
  br label %aa_current_raw_label.exit.i

aa_current_raw_label.exit.i:                      ; preds = %do.end.i.i.i, %cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge
  %flags.i = getelementptr inbounds %struct.aa_label, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge, label %if.then.i

aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge: ; preds = %aa_current_raw_label.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__begin_current_label_crit_section.exit

if.then.i:                                        ; preds = %aa_current_raw_label.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = tail call fastcc ptr @aa_get_newest_label(ptr noundef %10) #12
  br label %__begin_current_label_crit_section.exit

__begin_current_label_crit_section.exit:          ; preds = %if.then.i, %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge
  %label.0.i = phi ptr [ %call1.i, %if.then.i ], [ %10, %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge ]
  %vec = getelementptr inbounds %struct.aa_label, ptr %label.0.i, i32 0, i32 8
  %size = getelementptr inbounds %struct.aa_label, ptr %label.0.i, i32 0, i32 7
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 4
  %sub = add i32 %14, -1
  %arrayidx1 = getelementptr ptr, ptr %vec, i32 %sub
  %15 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx1, align 4
  %ns2 = getelementptr inbounds %struct.aa_profile, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %ns2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ns2, align 4
  %tobool.not.i6 = icmp eq ptr %18, null
  br i1 %tobool.not.i6, label %__begin_current_label_crit_section.exit.aa_get_ns.exit_crit_edge, label %if.then.i7

__begin_current_label_crit_section.exit.aa_get_ns.exit_crit_edge: ; preds = %__begin_current_label_crit_section.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_get_ns.exit

if.then.i7:                                       ; preds = %__begin_current_label_crit_section.exit
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %unconfined.i, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.then.i7.aa_get_ns.exit_crit_edge, label %if.then.i.i

if.then.i7.aa_get_ns.exit_crit_edge:              ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_get_ns.exit

if.then.i.i:                                      ; preds = %if.then.i7
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %20, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #12
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #12, !srcloc !310
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !311

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %22 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %.not.i.i.i.i.i.i = icmp sgt i32 %22, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.aa_get_ns.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !307

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.aa_get_ns.exit_crit_edge:     ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_get_ns.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef %.sink.i.i.i.i.i.i) #12
  br label %aa_get_ns.exit

aa_get_ns.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.aa_get_ns.exit_crit_edge, %if.then.i7.aa_get_ns.exit_crit_edge, %__begin_current_label_crit_section.exit.aa_get_ns.exit_crit_edge
  %23 = tail call i32 @llvm.read_register.i32(metadata !295) #12
  %and.i.i.i8 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i8 to ptr
  %task.i.i9 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i.i9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i.i9, align 8
  %cred.i.i10 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 99
  %27 = ptrtoint ptr %cred.i.i10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cred.i.i10, align 16
  %security.i.i.i.i11 = getelementptr inbounds %struct.cred, ptr %28, i32 0, i32 23
  %29 = ptrtoint ptr %security.i.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %security.i.i.i.i11, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @apparmor_blob_sizes to i32))
  %31 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i.i.i.i12 = getelementptr i8, ptr %30, i32 %31
  %tobool.not.i.i.i.i13 = icmp eq ptr %add.ptr.i.i.i.i12, null
  br i1 %tobool.not.i.i.i.i13, label %do.end.i.i.i.i14, label %aa_get_ns.exit.cred_label.exit.i.i.i16_crit_edge, !prof !311

aa_get_ns.exit.cred_label.exit.i.i.i16_crit_edge: ; preds = %aa_get_ns.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cred_label.exit.i.i.i16

do.end.i.i.i.i14:                                 ; preds = %aa_get_ns.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.87, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.88, ptr noundef nonnull @__func__.cred_label) #12
  br label %cred_label.exit.i.i.i16

cred_label.exit.i.i.i16:                          ; preds = %do.end.i.i.i.i14, %aa_get_ns.exit.cred_label.exit.i.i.i16_crit_edge
  %32 = ptrtoint ptr %add.ptr.i.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i.i.i.i12, align 4
  %tobool.not.i.i.i15 = icmp eq ptr %33, null
  br i1 %tobool.not.i.i.i15, label %do.end.i.i.i17, label %cred_label.exit.i.i.i16.aa_current_raw_label.exit.i19_crit_edge, !prof !311

cred_label.exit.i.i.i16.aa_current_raw_label.exit.i19_crit_edge: ; preds = %cred_label.exit.i.i.i16
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_current_raw_label.exit.i19

do.end.i.i.i17:                                   ; preds = %cred_label.exit.i.i.i16
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.87, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.aa_cred_raw_label) #12
  br label %aa_current_raw_label.exit.i19

aa_current_raw_label.exit.i19:                    ; preds = %do.end.i.i.i17, %cred_label.exit.i.i.i16.aa_current_raw_label.exit.i19_crit_edge
  %cmp.not.i = icmp eq ptr %33, %label.0.i
  %tobool.not.i.i18 = icmp eq ptr %label.0.i, null
  %or.cond.i = or i1 %tobool.not.i.i18, %cmp.not.i
  br i1 %or.cond.i, label %aa_current_raw_label.exit.i19.end_current_label_crit_section.exit_crit_edge, label %if.then.i.i21

aa_current_raw_label.exit.i19.end_current_label_crit_section.exit_crit_edge: ; preds = %aa_current_raw_label.exit.i19
  call void @__sanitizer_cov_trace_pc() #14
  br label %end_current_label_crit_section.exit

if.then.i.i21:                                    ; preds = %aa_current_raw_label.exit.i19
  %call.i.i.i.i.i.i.i.i20 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %label.0.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !305
  tail call void @llvm.prefetch.p0(ptr nonnull %label.0.i, i32 1, i32 3, i32 1) #12
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %label.0.i, ptr nonnull %label.0.i, i32 1, ptr nonnull elementtype(i32) %label.0.i) #12, !srcloc !306
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i22 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i22, label %if.end5.i.i.i.i.i.i.end_current_label_crit_section.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !307

if.end5.i.i.i.i.i.i.end_current_label_crit_section.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %end_current_label_crit_section.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %label.0.i, i32 noundef 3) #12
  br label %end_current_label_crit_section.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i21
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !308
  tail call void @aa_label_kref(ptr noundef nonnull %label.0.i) #12, !callees !309
  br label %end_current_label_crit_section.exit

end_current_label_crit_section.exit:              ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.end_current_label_crit_section.exit_crit_edge, %aa_current_raw_label.exit.i19.end_current_label_crit_section.exit_crit_edge
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aa_label_seq_print(ptr noundef %f, ptr noundef %label, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @aa_get_current_ns()
  tail call void @aa_label_seq_xprint(ptr noundef %f, ptr noundef %call, ptr noundef %label, i32 noundef 2, i32 noundef %gfp)
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %entry.aa_put_ns.exit_crit_edge, label %if.then.i

entry.aa_put_ns.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_put_ns.exit

if.then.i:                                        ; preds = %entry
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unconfined.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.then.i.aa_put_ns.exit_crit_edge, label %if.then.i.i

if.then.i.aa_put_ns.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_put_ns.exit

if.then.i.i:                                      ; preds = %if.then.i
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %1, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !305
  tail call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #12, !srcloc !306
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !307

if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_put_ns.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef 3) #12
  br label %aa_put_ns.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !308
  tail call void @aa_label_kref(ptr noundef %label.i.i) #12, !callees !309
  br label %aa_put_ns.exit

aa_put_ns.exit:                                   ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge, %if.then.i.aa_put_ns.exit_crit_edge, %entry.aa_put_ns.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aa_label_printk(ptr noundef %label, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @aa_get_current_ns()
  tail call void @aa_label_xprintk(ptr noundef %call, ptr noundef %label, i32 noundef 2, i32 noundef %gfp)
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %entry.aa_put_ns.exit_crit_edge, label %if.then.i

entry.aa_put_ns.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_put_ns.exit

if.then.i:                                        ; preds = %entry
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unconfined.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.then.i.aa_put_ns.exit_crit_edge, label %if.then.i.i

if.then.i.aa_put_ns.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_put_ns.exit

if.then.i.i:                                      ; preds = %if.then.i
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %1, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !305
  tail call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #12, !srcloc !306
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !307

if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_put_ns.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef 3) #12
  br label %aa_put_ns.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !308
  tail call void @aa_label_kref(ptr noundef %label.i.i) #12, !callees !309
  br label %aa_put_ns.exit

aa_put_ns.exit:                                   ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge, %if.then.i.aa_put_ns.exit_crit_edge, %entry.aa_put_ns.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aa_label_strn_parse(ptr noundef %base, ptr noundef %str, i32 noundef %n, i32 noundef %gfp, i1 noundef zeroext %create, i1 noundef zeroext %force_stack) local_unnamed_addr #0 align 64 {
entry:
  %pos.i308 = alloca ptr, align 4
  %pos.i = alloca ptr, align 4
  %pos.i39.i = alloca ptr, align 4
  %pos.i.i = alloca ptr, align 4
  %_vec_localtmp = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %_vec_localtmp) #12
  %add.ptr = getelementptr i8, ptr %str, i32 %n
  %tobool.not = icmp eq ptr %base, null
  %0 = call ptr @memset(ptr %_vec_localtmp, i32 255, i32 32)
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1894, i32 noundef 9, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.aa_label_strn_parse) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool27.not = icmp eq ptr %str, null
  br i1 %tobool27.not, label %do.end45, label %if.end.if.end51_crit_edge, !prof !311

if.end.if.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

do.end45:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1895, i32 noundef 9, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.aa_label_strn_parse) #12
  br label %if.end51

if.end51:                                         ; preds = %do.end45, %if.end.if.end51_crit_edge
  %call = tail call ptr @skipn_spaces(ptr noundef %str, i32 noundef %n) #12
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.end51.cleanup_crit_edge, label %lor.lhs.false

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end51
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %call, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %2)
  %cmp61 = icmp eq i8 %2, 61
  br i1 %cmp61, label %land.lhs.true, label %lor.lhs.false.if.end.i_crit_edge

lor.lhs.false.if.end.i_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true:                                    ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @root_ns to i32))
  %3 = load ptr, ptr @root_ns, align 4
  %unconfined = getelementptr inbounds %struct.aa_ns, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %unconfined to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unconfined, align 4
  %label63 = getelementptr inbounds %struct.aa_profile, ptr %5, i32 0, i32 25
  %cmp64.not = icmp eq ptr %label63, %base
  br i1 %cmp64.not, label %land.lhs.true.if.end.i_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end.i_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.if.end.i_crit_edge, %lor.lhs.false.if.end.i_crit_edge
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr.i = getelementptr i8, ptr %call, i32 %sub.ptr.sub
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos.i.i) #12
  %6 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %pos.i.i, align 4, !annotation !319
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stacksplitdfa to i32))
  %7 = load ptr, ptr @stacksplitdfa, align 4
  %call.i.i = call i32 @aa_dfa_matchn_until(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %call, i32 noundef %sub.ptr.sub, ptr noundef nonnull %pos.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stacksplitdfa to i32))
  %8 = load ptr, ptr @stacksplitdfa, align 4
  %tables.i.i = getelementptr inbounds %struct.aa_dfa, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %tables.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tables.i.i, align 4
  %td_data.i.i = getelementptr inbounds %struct.table_header, ptr %10, i32 0, i32 4
  %arrayidx1.i.i = getelementptr i32, ptr %td_data.i.i, i32 %call.i.i
  %11 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %aa_label_strn_split.exit.thread.i, label %aa_label_strn_split.exit.i

aa_label_strn_split.exit.thread.i:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos.i.i) #12
  br label %label_count_strn_entries.exit

aa_label_strn_split.exit.i:                       ; preds = %if.end.i
  %13 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pos.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 -3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos.i.i) #12
  %tobool24.not49.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool24.not49.i, label %aa_label_strn_split.exit.i.label_count_strn_entries.exit_crit_edge, label %aa_label_strn_split.exit.i.for.body.i_crit_edge

aa_label_strn_split.exit.i.for.body.i_crit_edge:  ; preds = %aa_label_strn_split.exit.i
  br label %for.body.i

aa_label_strn_split.exit.i.label_count_strn_entries.exit_crit_edge: ; preds = %aa_label_strn_split.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %label_count_strn_entries.exit

for.body.i:                                       ; preds = %aa_label_strn_split.exit48.i.for.body.i_crit_edge, %aa_label_strn_split.exit.i.for.body.i_crit_edge
  %count.051.i = phi i32 [ %inc.i, %aa_label_strn_split.exit48.i.for.body.i_crit_edge ], [ 1, %aa_label_strn_split.exit.i.for.body.i_crit_edge ]
  %15 = phi ptr [ %24, %aa_label_strn_split.exit48.i.for.body.i_crit_edge ], [ %14, %aa_label_strn_split.exit.i.for.body.i_crit_edge ]
  %inc.i = add i32 %count.051.i, 1
  %sub.ptr.rhs.cast27.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub28.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast27.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos.i39.i) #12
  %16 = ptrtoint ptr %pos.i39.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -1 to ptr), ptr %pos.i39.i, align 4, !annotation !319
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stacksplitdfa to i32))
  %17 = load ptr, ptr @stacksplitdfa, align 4
  %call.i40.i = call i32 @aa_dfa_matchn_until(ptr noundef %17, i32 noundef 1, ptr noundef %15, i32 noundef %sub.ptr.sub28.i, ptr noundef nonnull %pos.i39.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stacksplitdfa to i32))
  %18 = load ptr, ptr @stacksplitdfa, align 4
  %tables.i41.i = getelementptr inbounds %struct.aa_dfa, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %tables.i41.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tables.i41.i, align 4
  %td_data.i42.i = getelementptr inbounds %struct.table_header, ptr %20, i32 0, i32 4
  %arrayidx1.i43.i = getelementptr i32, ptr %td_data.i42.i, i32 %call.i40.i
  %21 = ptrtoint ptr %arrayidx1.i43.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx1.i43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i44.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i44.i, label %aa_label_strn_split.exit48.thread.i, label %aa_label_strn_split.exit48.i

aa_label_strn_split.exit48.thread.i:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos.i39.i) #12
  br label %label_count_strn_entries.exit

aa_label_strn_split.exit48.i:                     ; preds = %for.body.i
  %23 = ptrtoint ptr %pos.i39.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pos.i39.i, align 4
  %add.ptr.i45.i = getelementptr i8, ptr %24, i32 -3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos.i39.i) #12
  %tobool24.not.i = icmp eq ptr %add.ptr.i45.i, null
  br i1 %tobool24.not.i, label %aa_label_strn_split.exit48.i.label_count_strn_entries.exit_crit_edge, label %aa_label_strn_split.exit48.i.for.body.i_crit_edge

aa_label_strn_split.exit48.i.for.body.i_crit_edge: ; preds = %aa_label_strn_split.exit48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

aa_label_strn_split.exit48.i.label_count_strn_entries.exit_crit_edge: ; preds = %aa_label_strn_split.exit48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %label_count_strn_entries.exit

label_count_strn_entries.exit:                    ; preds = %aa_label_strn_split.exit48.i.label_count_strn_entries.exit_crit_edge, %aa_label_strn_split.exit48.thread.i, %aa_label_strn_split.exit.i.label_count_strn_entries.exit_crit_edge, %aa_label_strn_split.exit.thread.i
  %count.0.lcssa.i = phi i32 [ 1, %aa_label_strn_split.exit.i.label_count_strn_entries.exit_crit_edge ], [ 1, %aa_label_strn_split.exit.thread.i ], [ %inc.i, %aa_label_strn_split.exit48.thread.i ], [ %inc.i, %aa_label_strn_split.exit48.i.label_count_strn_entries.exit_crit_edge ]
  %25 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %call, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %26)
  %cmp71 = icmp eq i8 %26, 38
  %brmerge = or i1 %cmp71, %force_stack
  br i1 %brmerge, label %if.then76, label %label_count_strn_entries.exit.if.end82_crit_edge

label_count_strn_entries.exit.if.end82_crit_edge: ; preds = %label_count_strn_entries.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

if.then76:                                        ; preds = %label_count_strn_entries.exit
  call void @__sanitizer_cov_trace_pc() #14
  %size = getelementptr inbounds %struct.aa_label, ptr %base, i32 0, i32 7
  %27 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size, align 4
  %add = add i32 %28, %count.0.lcssa.i
  %spec.select.idx = zext i1 %cmp71 to i32
  %spec.select = getelementptr i8, ptr %call, i32 %spec.select.idx
  br label %if.end82

if.end82:                                         ; preds = %if.then76, %label_count_strn_entries.exit.if.end82_crit_edge
  %len.0 = phi i32 [ %count.0.lcssa.i, %label_count_strn_entries.exit.if.end82_crit_edge ], [ %add, %if.then76 ]
  %stack.0 = phi i32 [ 0, %label_count_strn_entries.exit.if.end82_crit_edge ], [ %28, %if.then76 ]
  %str.addr.0 = phi ptr [ %call, %label_count_strn_entries.exit.if.end82_crit_edge ], [ %spec.select, %if.then76 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %len.0)
  %cmp83 = icmp slt i32 %len.0, 9
  br i1 %cmp83, label %for.cond.preheader, label %if.end8.i.i

for.cond.preheader:                               ; preds = %if.end82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %cmp87351 = icmp sgt i32 %len.0, 0
  br i1 %cmp87351, label %for.body.preheader, label %for.cond.preheader.for.cond97.preheader_crit_edge

for.cond.preheader.for.cond97.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond97.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  %29 = shl nuw nsw i32 %len.0, 2
  %30 = call ptr @memset(ptr %_vec_localtmp, i32 0, i32 %29)
  br label %for.cond97.preheader

if.end8.i.i:                                      ; preds = %if.end82
  %or.i = or i32 %gfp, 256
  %mul = shl i32 %len.0, 2
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef %or.i) #17
  %tobool92.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool92.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end8.i.i.for.cond97.preheader_crit_edge

if.end8.i.i.for.cond97.preheader_crit_edge:       ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond97.preheader

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond97.preheader:                             ; preds = %if.end8.i.i.for.cond97.preheader_crit_edge, %for.body.preheader, %for.cond.preheader.for.cond97.preheader_crit_edge
  %vec.0373 = phi ptr [ %call9.i.i, %if.end8.i.i.for.cond97.preheader_crit_edge ], [ %_vec_localtmp, %for.body.preheader ], [ %_vec_localtmp, %for.cond.preheader.for.cond97.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stack.0)
  %cmp98353 = icmp sgt i32 %stack.0, 0
  br i1 %cmp98353, label %for.cond97.preheader.for.body100_crit_edge, label %for.cond97.preheader.for.end107_crit_edge

for.cond97.preheader.for.end107_crit_edge:        ; preds = %for.cond97.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end107

for.cond97.preheader.for.body100_crit_edge:       ; preds = %for.cond97.preheader
  br label %for.body100

for.body100:                                      ; preds = %aa_get_profile.exit.for.body100_crit_edge, %for.cond97.preheader.for.body100_crit_edge
  %i.0354 = phi i32 [ %inc106, %aa_get_profile.exit.for.body100_crit_edge ], [ 0, %for.cond97.preheader.for.body100_crit_edge ]
  %arrayidx102 = getelementptr %struct.aa_label, ptr %base, i32 0, i32 8, i32 %i.0354
  %31 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx102, align 4
  %tobool.not.i300 = icmp eq ptr %32, null
  br i1 %tobool.not.i300, label %for.body100.aa_get_profile.exit_crit_edge, label %if.then.i

for.body100.aa_get_profile.exit_crit_edge:        ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_get_profile.exit

if.then.i:                                        ; preds = %for.body100
  %label.i = getelementptr inbounds %struct.aa_profile, ptr %32, i32 0, i32 25
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %label.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %label.i, i32 1, i32 3, i32 1) #12
  %33 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i, ptr %label.i, i32 1, ptr elementtype(i32) %label.i) #12, !srcloc !310
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !311

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %34 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %.not.i.i.i.i.i = icmp sgt i32 %34, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.aa_get_profile.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !307

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.aa_get_profile.exit_crit_edge:  ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_get_profile.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %label.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %aa_get_profile.exit

aa_get_profile.exit:                              ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.aa_get_profile.exit_crit_edge, %for.body100.aa_get_profile.exit_crit_edge
  %arrayidx104 = getelementptr ptr, ptr %vec.0373, i32 %i.0354
  %35 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %arrayidx104, align 4
  %inc106 = add nuw nsw i32 %i.0354, 1
  %exitcond.not = icmp eq i32 %inc106, %stack.0
  br i1 %exitcond.not, label %aa_get_profile.exit.for.end107_crit_edge, label %aa_get_profile.exit.for.body100_crit_edge

aa_get_profile.exit.for.body100_crit_edge:        ; preds = %aa_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body100

aa_get_profile.exit.for.end107_crit_edge:         ; preds = %aa_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end107

for.end107:                                       ; preds = %aa_get_profile.exit.for.end107_crit_edge, %for.cond97.preheader.for.end107_crit_edge
  %sub.ptr.rhs.cast109 = ptrtoint ptr %str.addr.0 to i32
  %sub.ptr.sub110 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast109
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos.i) #12
  %36 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 -1 to ptr), ptr %pos.i, align 4, !annotation !319
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stacksplitdfa to i32))
  %37 = load ptr, ptr @stacksplitdfa, align 4
  %call.i = call i32 @aa_dfa_matchn_until(ptr noundef %37, i32 noundef 1, ptr noundef %str.addr.0, i32 noundef %sub.ptr.sub110, ptr noundef nonnull %pos.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stacksplitdfa to i32))
  %38 = load ptr, ptr @stacksplitdfa, align 4
  %tables.i = getelementptr inbounds %struct.aa_dfa, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %tables.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tables.i, align 4
  %td_data.i = getelementptr inbounds %struct.table_header, ptr %40, i32 0, i32 4
  %arrayidx1.i = getelementptr i32, ptr %td_data.i, i32 %call.i
  %41 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i302 = icmp eq i32 %42, 0
  br i1 %tobool.not.i302, label %aa_label_strn_split.exit.thread, label %aa_label_strn_split.exit

aa_label_strn_split.exit.thread:                  ; preds = %for.end107
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos.i) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %stack.0, i32 %len.0)
  %cmp114356381 = icmp slt i32 %stack.0, %len.0
  br i1 %cmp114356381, label %aa_label_strn_split.exit.thread.if.then148_crit_edge, label %aa_label_strn_split.exit.thread.if.end158_crit_edge

aa_label_strn_split.exit.thread.if.end158_crit_edge: ; preds = %aa_label_strn_split.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end158

aa_label_strn_split.exit.thread.if.then148_crit_edge: ; preds = %aa_label_strn_split.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then148

aa_label_strn_split.exit:                         ; preds = %for.end107
  %43 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pos.i, align 4
  %add.ptr.i303 = getelementptr i8, ptr %44, i32 -3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos.i) #12
  %tobool113.not355 = icmp ne ptr %add.ptr.i303, null
  call void @__sanitizer_cov_trace_cmp4(i32 %stack.0, i32 %len.0)
  %cmp114356 = icmp slt i32 %stack.0, %len.0
  %or.cond357 = select i1 %tobool113.not355, i1 %cmp114356, i1 false
  br i1 %or.cond357, label %aa_label_strn_split.exit.for.body116_crit_edge, label %aa_label_strn_split.exit.for.end145_crit_edge

aa_label_strn_split.exit.for.end145_crit_edge:    ; preds = %aa_label_strn_split.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end145

aa_label_strn_split.exit.for.body116_crit_edge:   ; preds = %aa_label_strn_split.exit
  br label %for.body116

for.body116:                                      ; preds = %aa_label_strn_split.exit317.for.body116_crit_edge, %aa_label_strn_split.exit.for.body116_crit_edge
  %str.addr.1362 = phi ptr [ %add.ptr138, %aa_label_strn_split.exit317.for.body116_crit_edge ], [ %str.addr.0, %aa_label_strn_split.exit.for.body116_crit_edge ]
  %split.0361 = phi ptr [ %add.ptr.i314, %aa_label_strn_split.exit317.for.body116_crit_edge ], [ %add.ptr.i303, %aa_label_strn_split.exit.for.body116_crit_edge ]
  %i.1360 = phi i32 [ %inc144, %aa_label_strn_split.exit317.for.body116_crit_edge ], [ %stack.0, %aa_label_strn_split.exit.for.body116_crit_edge ]
  %currbase.0358 = phi ptr [ %spec.select299, %aa_label_strn_split.exit317.for.body116_crit_edge ], [ %base, %aa_label_strn_split.exit.for.body116_crit_edge ]
  %sub.ptr.lhs.cast117 = ptrtoint ptr %split.0361 to i32
  %sub.ptr.rhs.cast118 = ptrtoint ptr %str.addr.1362 to i32
  %sub.ptr.sub119 = sub i32 %sub.ptr.lhs.cast117, %sub.ptr.rhs.cast118
  %call.i305 = call ptr @skipn_spaces(ptr noundef %str.addr.1362, i32 noundef %sub.ptr.sub119) #12
  %tobool.not.i306 = icmp eq ptr %call.i305, null
  br i1 %tobool.not.i306, label %for.body116.if.end.i307_crit_edge, label %land.lhs.true.i

for.body116.if.end.i307_crit_edge:                ; preds = %for.body116
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i307

land.lhs.true.i:                                  ; preds = %for.body116
  %45 = ptrtoint ptr %call.i305 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %call.i305, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %46)
  %cmp.i = icmp eq i8 %46, 58
  br i1 %cmp.i, label %land.lhs.true.i.fqlookupn_profile.exit_crit_edge, label %land.lhs.true.i.if.end.i307_crit_edge

land.lhs.true.i.if.end.i307_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i307

land.lhs.true.i.fqlookupn_profile.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fqlookupn_profile.exit

if.end.i307:                                      ; preds = %land.lhs.true.i.if.end.i307_crit_edge, %for.body116.if.end.i307_crit_edge
  br label %fqlookupn_profile.exit

fqlookupn_profile.exit:                           ; preds = %if.end.i307, %land.lhs.true.i.fqlookupn_profile.exit_crit_edge
  %currentbase.sink.i = phi ptr [ %currbase.0358, %if.end.i307 ], [ %base, %land.lhs.true.i.fqlookupn_profile.exit_crit_edge ]
  %call3.i = call ptr @aa_fqlookupn_profile(ptr noundef %currentbase.sink.i, ptr noundef %str.addr.1362, i32 noundef %sub.ptr.sub119) #12
  %arrayidx121 = getelementptr ptr, ptr %vec.0373, i32 %i.1360
  %47 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call3.i, ptr %arrayidx121, align 4
  %tobool123.not = icmp eq ptr %call3.i, null
  br i1 %tobool123.not, label %fqlookupn_profile.exit.fail_crit_edge, label %if.end125

fqlookupn_profile.exit.fail_crit_edge:            ; preds = %fqlookupn_profile.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end125:                                        ; preds = %fqlookupn_profile.exit
  %ns = getelementptr inbounds %struct.aa_profile, ptr %call3.i, i32 0, i32 2
  %48 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ns, align 4
  %vec127 = getelementptr inbounds %struct.aa_label, ptr %currbase.0358, i32 0, i32 8
  %size129 = getelementptr inbounds %struct.aa_label, ptr %currbase.0358, i32 0, i32 7
  %50 = ptrtoint ptr %size129 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %size129, align 4
  %sub = add i32 %51, -1
  %arrayidx130 = getelementptr ptr, ptr %vec127, i32 %sub
  %52 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx130, align 4
  %ns131 = getelementptr inbounds %struct.aa_profile, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %ns131 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ns131, align 4
  %cmp132.not = icmp eq ptr %49, %55
  %label136 = getelementptr inbounds %struct.aa_profile, ptr %call3.i, i32 0, i32 25
  %spec.select299 = select i1 %cmp132.not, ptr %currbase.0358, ptr %label136
  %add.ptr138 = getelementptr i8, ptr %split.0361, i32 3
  %sub.ptr.rhs.cast140 = ptrtoint ptr %add.ptr138 to i32
  %sub.ptr.sub141 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast140
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos.i308) #12
  %56 = ptrtoint ptr %pos.i308 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 -1 to ptr), ptr %pos.i308, align 4, !annotation !319
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stacksplitdfa to i32))
  %57 = load ptr, ptr @stacksplitdfa, align 4
  %call.i309 = call i32 @aa_dfa_matchn_until(ptr noundef %57, i32 noundef 1, ptr noundef %add.ptr138, i32 noundef %sub.ptr.sub141, ptr noundef nonnull %pos.i308) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stacksplitdfa to i32))
  %58 = load ptr, ptr @stacksplitdfa, align 4
  %tables.i310 = getelementptr inbounds %struct.aa_dfa, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %tables.i310 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tables.i310, align 4
  %td_data.i311 = getelementptr inbounds %struct.table_header, ptr %60, i32 0, i32 4
  %arrayidx1.i312 = getelementptr i32, ptr %td_data.i311, i32 %call.i309
  %61 = ptrtoint ptr %arrayidx1.i312 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx1.i312, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i313 = icmp eq i32 %62, 0
  br i1 %tobool.not.i313, label %aa_label_strn_split.exit317.thread, label %aa_label_strn_split.exit317

aa_label_strn_split.exit317.thread:               ; preds = %if.end125
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos.i308) #12
  %inc144384 = add nsw i32 %i.1360, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc144384, i32 %len.0)
  %cmp114386 = icmp slt i32 %inc144384, %len.0
  br i1 %cmp114386, label %aa_label_strn_split.exit317.thread.if.then148_crit_edge, label %aa_label_strn_split.exit317.thread.if.end158_crit_edge

aa_label_strn_split.exit317.thread.if.end158_crit_edge: ; preds = %aa_label_strn_split.exit317.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end158

aa_label_strn_split.exit317.thread.if.then148_crit_edge: ; preds = %aa_label_strn_split.exit317.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then148

aa_label_strn_split.exit317:                      ; preds = %if.end125
  %63 = ptrtoint ptr %pos.i308 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pos.i308, align 4
  %add.ptr.i314 = getelementptr i8, ptr %64, i32 -3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos.i308) #12
  %inc144 = add nsw i32 %i.1360, 1
  %tobool113.not = icmp ne ptr %add.ptr.i314, null
  call void @__sanitizer_cov_trace_cmp4(i32 %inc144, i32 %len.0)
  %cmp114 = icmp slt i32 %inc144, %len.0
  %or.cond = select i1 %tobool113.not, i1 %cmp114, i1 false
  br i1 %or.cond, label %aa_label_strn_split.exit317.for.body116_crit_edge, label %aa_label_strn_split.exit317.for.end145_crit_edge

aa_label_strn_split.exit317.for.end145_crit_edge: ; preds = %aa_label_strn_split.exit317
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end145

aa_label_strn_split.exit317.for.body116_crit_edge: ; preds = %aa_label_strn_split.exit317
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body116

for.end145:                                       ; preds = %aa_label_strn_split.exit317.for.end145_crit_edge, %aa_label_strn_split.exit.for.end145_crit_edge
  %currbase.0.lcssa = phi ptr [ %base, %aa_label_strn_split.exit.for.end145_crit_edge ], [ %spec.select299, %aa_label_strn_split.exit317.for.end145_crit_edge ]
  %i.1.lcssa = phi i32 [ %stack.0, %aa_label_strn_split.exit.for.end145_crit_edge ], [ %inc144, %aa_label_strn_split.exit317.for.end145_crit_edge ]
  %str.addr.1.lcssa = phi ptr [ %str.addr.0, %aa_label_strn_split.exit.for.end145_crit_edge ], [ %add.ptr138, %aa_label_strn_split.exit317.for.end145_crit_edge ]
  %cmp114.lcssa = phi i1 [ %cmp114356, %aa_label_strn_split.exit.for.end145_crit_edge ], [ %cmp114, %aa_label_strn_split.exit317.for.end145_crit_edge ]
  br i1 %cmp114.lcssa, label %for.end145.if.then148_crit_edge, label %for.end145.if.end158_crit_edge

for.end145.if.end158_crit_edge:                   ; preds = %for.end145
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end158

for.end145.if.then148_crit_edge:                  ; preds = %for.end145
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then148

if.then148:                                       ; preds = %for.end145.if.then148_crit_edge, %aa_label_strn_split.exit317.thread.if.then148_crit_edge, %aa_label_strn_split.exit.thread.if.then148_crit_edge
  %str.addr.1.lcssa395 = phi ptr [ %str.addr.0, %aa_label_strn_split.exit.thread.if.then148_crit_edge ], [ %str.addr.1.lcssa, %for.end145.if.then148_crit_edge ], [ %add.ptr138, %aa_label_strn_split.exit317.thread.if.then148_crit_edge ]
  %i.1.lcssa394 = phi i32 [ %stack.0, %aa_label_strn_split.exit.thread.if.then148_crit_edge ], [ %i.1.lcssa, %for.end145.if.then148_crit_edge ], [ %inc144384, %aa_label_strn_split.exit317.thread.if.then148_crit_edge ]
  %currbase.0.lcssa393 = phi ptr [ %base, %aa_label_strn_split.exit.thread.if.then148_crit_edge ], [ %currbase.0.lcssa, %for.end145.if.then148_crit_edge ], [ %spec.select299, %aa_label_strn_split.exit317.thread.if.then148_crit_edge ]
  %sub.ptr.rhs.cast150 = ptrtoint ptr %str.addr.1.lcssa395 to i32
  %sub.ptr.sub151 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast150
  %call.i318 = call ptr @skipn_spaces(ptr noundef %str.addr.1.lcssa395, i32 noundef %sub.ptr.sub151) #12
  %tobool.not.i319 = icmp eq ptr %call.i318, null
  br i1 %tobool.not.i319, label %if.then148.if.end.i322_crit_edge, label %land.lhs.true.i321

if.then148.if.end.i322_crit_edge:                 ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i322

land.lhs.true.i321:                               ; preds = %if.then148
  %65 = ptrtoint ptr %call.i318 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %call.i318, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %66)
  %cmp.i320 = icmp eq i8 %66, 58
  br i1 %cmp.i320, label %land.lhs.true.i321.fqlookupn_profile.exit325_crit_edge, label %land.lhs.true.i321.if.end.i322_crit_edge

land.lhs.true.i321.if.end.i322_crit_edge:         ; preds = %land.lhs.true.i321
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i322

land.lhs.true.i321.fqlookupn_profile.exit325_crit_edge: ; preds = %land.lhs.true.i321
  call void @__sanitizer_cov_trace_pc() #14
  br label %fqlookupn_profile.exit325

if.end.i322:                                      ; preds = %land.lhs.true.i321.if.end.i322_crit_edge, %if.then148.if.end.i322_crit_edge
  br label %fqlookupn_profile.exit325

fqlookupn_profile.exit325:                        ; preds = %if.end.i322, %land.lhs.true.i321.fqlookupn_profile.exit325_crit_edge
  %currentbase.sink.i323 = phi ptr [ %currbase.0.lcssa393, %if.end.i322 ], [ %base, %land.lhs.true.i321.fqlookupn_profile.exit325_crit_edge ]
  %call3.i324 = call ptr @aa_fqlookupn_profile(ptr noundef %currentbase.sink.i323, ptr noundef %str.addr.1.lcssa395, i32 noundef %sub.ptr.sub151) #12
  %arrayidx153 = getelementptr ptr, ptr %vec.0373, i32 %i.1.lcssa394
  %67 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call3.i324, ptr %arrayidx153, align 4
  %tobool155.not = icmp eq ptr %call3.i324, null
  br i1 %tobool155.not, label %fqlookupn_profile.exit325.fail_crit_edge, label %fqlookupn_profile.exit325.if.end158_crit_edge

fqlookupn_profile.exit325.if.end158_crit_edge:    ; preds = %fqlookupn_profile.exit325
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end158

fqlookupn_profile.exit325.fail_crit_edge:         ; preds = %fqlookupn_profile.exit325
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end158:                                        ; preds = %fqlookupn_profile.exit325.if.end158_crit_edge, %for.end145.if.end158_crit_edge, %aa_label_strn_split.exit317.thread.if.end158_crit_edge, %aa_label_strn_split.exit.thread.if.end158_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len.0)
  %cmp159 = icmp eq i32 %len.0, 1
  br i1 %cmp159, label %if.then161, label %if.end164

if.then161:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #14
  %68 = ptrtoint ptr %vec.0373 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %vec.0373, align 4
  %label163 = getelementptr inbounds %struct.aa_profile, ptr %69, i32 0, i32 25
  br label %cleanup

if.end164:                                        ; preds = %if.end158
  %call165 = call i32 @aa_vec_unique(ptr noundef nonnull %vec.0373, i32 noundef %len.0, i32 noundef 1)
  %sub166 = sub i32 %len.0, %call165
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub166)
  %cmp167 = icmp eq i32 %sub166, 1
  br i1 %cmp167, label %if.then169, label %if.end173

if.then169:                                       ; preds = %if.end164
  %70 = ptrtoint ptr %vec.0373 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %vec.0373, align 4
  %label171 = getelementptr inbounds %struct.aa_profile, ptr %71, i32 0, i32 25
  %tobool.not.i326 = icmp eq ptr %label171, null
  br i1 %tobool.not.i326, label %if.then169.for.body188.preheader_crit_edge, label %if.then.i330

if.then169.for.body188.preheader_crit_edge:       ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body188.preheader

if.then.i330:                                     ; preds = %if.then169
  %call.i.i.i.i.i.i.i327 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %label171, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr nonnull %label171, i32 1, i32 3, i32 1) #12
  %72 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %label171, ptr nonnull %label171, i32 1, ptr nonnull elementtype(i32) %label171) #12, !srcloc !310
  %asmresult.i.i.i.i.i.i.i328 = extractvalue { i32, i32, i32 } %72, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i328)
  %tobool1.not.i.i.i.i.i329 = icmp eq i32 %asmresult.i.i.i.i.i.i.i328, 0
  br i1 %tobool1.not.i.i.i.i.i329, label %if.then.i330.if.end15.sink.split.i.i.i.i.i335_crit_edge, label %if.else.i.i.i.i.i333, !prof !311

if.then.i330.if.end15.sink.split.i.i.i.i.i335_crit_edge: ; preds = %if.then.i330
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i335

if.else.i.i.i.i.i333:                             ; preds = %if.then.i330
  %add.i.i.i.i.i331 = add i32 %asmresult.i.i.i.i.i.i.i328, 1
  %73 = or i32 %add.i.i.i.i.i331, %asmresult.i.i.i.i.i.i.i328
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %73)
  %.not.i.i.i.i.i332 = icmp sgt i32 %73, -1
  br i1 %.not.i.i.i.i.i332, label %if.else.i.i.i.i.i333.for.body188.preheader_crit_edge, label %if.else.i.i.i.i.i333.if.end15.sink.split.i.i.i.i.i335_crit_edge, !prof !307

if.else.i.i.i.i.i333.if.end15.sink.split.i.i.i.i.i335_crit_edge: ; preds = %if.else.i.i.i.i.i333
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i335

if.else.i.i.i.i.i333.for.body188.preheader_crit_edge: ; preds = %if.else.i.i.i.i.i333
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body188.preheader

if.end15.sink.split.i.i.i.i.i335:                 ; preds = %if.else.i.i.i.i.i333.if.end15.sink.split.i.i.i.i.i335_crit_edge, %if.then.i330.if.end15.sink.split.i.i.i.i.i335_crit_edge
  %.sink.i.i.i.i.i334 = phi i32 [ 2, %if.then.i330.if.end15.sink.split.i.i.i.i.i335_crit_edge ], [ 1, %if.else.i.i.i.i.i333.if.end15.sink.split.i.i.i.i.i335_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %label171, i32 noundef %.sink.i.i.i.i.i334) #12
  br label %for.body188.preheader

if.end173:                                        ; preds = %if.end164
  br i1 %create, label %if.then175, label %if.else177

if.then175:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #14
  %call176 = call ptr @aa_vec_find_or_create_label(ptr noundef nonnull %vec.0373, i32 noundef %sub166, i32 noundef %gfp)
  br label %if.end179

if.else177:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #14
  %call178 = call fastcc ptr @vec_find(ptr noundef nonnull %vec.0373, i32 noundef %sub166)
  br label %if.end179

if.end179:                                        ; preds = %if.else177, %if.then175
  %label.0 = phi ptr [ %call176, %if.then175 ], [ %call178, %if.else177 ]
  %tobool180.not = icmp eq ptr %label.0, null
  br i1 %tobool180.not, label %if.end179.fail_crit_edge, label %if.end179.do.body183_crit_edge

if.end179.do.body183_crit_edge:                   ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body183

if.end179.fail_crit_edge:                         ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

do.body183:                                       ; preds = %fail, %if.end179.do.body183_crit_edge
  %label.1 = phi ptr [ inttoptr (i32 -2 to ptr), %fail ], [ %label.0, %if.end179.do.body183_crit_edge ]
  %len.1 = phi i32 [ %len.2, %fail ], [ %sub166, %if.end179.do.body183_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.1)
  %cmp186366 = icmp sgt i32 %len.1, 0
  br i1 %cmp186366, label %do.body183.for.body188.preheader_crit_edge, label %do.body183.for.end196_crit_edge

do.body183.for.end196_crit_edge:                  ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end196

do.body183.for.body188.preheader_crit_edge:       ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body188.preheader

for.body188.preheader:                            ; preds = %do.body183.for.body188.preheader_crit_edge, %if.end15.sink.split.i.i.i.i.i335, %if.else.i.i.i.i.i333.for.body188.preheader_crit_edge, %if.then169.for.body188.preheader_crit_edge
  %len.1403 = phi i32 [ %len.1, %do.body183.for.body188.preheader_crit_edge ], [ 1, %if.then169.for.body188.preheader_crit_edge ], [ 1, %if.else.i.i.i.i.i333.for.body188.preheader_crit_edge ], [ 1, %if.end15.sink.split.i.i.i.i.i335 ]
  %label.1402 = phi ptr [ %label.1, %do.body183.for.body188.preheader_crit_edge ], [ null, %if.then169.for.body188.preheader_crit_edge ], [ %label171, %if.else.i.i.i.i.i333.for.body188.preheader_crit_edge ], [ %label171, %if.end15.sink.split.i.i.i.i.i335 ]
  br label %for.body188

for.body188:                                      ; preds = %for.inc194.for.body188_crit_edge, %for.body188.preheader
  %i184.0367 = phi i32 [ %inc195, %for.inc194.for.body188_crit_edge ], [ 0, %for.body188.preheader ]
  %arrayidx189 = getelementptr ptr, ptr %vec.0373, i32 %i184.0367
  %74 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx189, align 4
  %tobool.not.i337 = icmp eq ptr %75, null
  %cmp.i338 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i337, %cmp.i338
  br i1 %spec.select.i, label %for.body188.for.inc194_crit_edge, label %if.then.i342

for.body188.for.inc194_crit_edge:                 ; preds = %for.body188
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc194

if.then.i342:                                     ; preds = %for.body188
  %label.i340 = getelementptr inbounds %struct.aa_profile, ptr %75, i32 0, i32 25
  %call.i.i.i.i.i.i.i341 = call zeroext i1 @__kasan_check_write(ptr noundef %label.i340, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !305
  call void @llvm.prefetch.p0(ptr %label.i340, i32 1, i32 3, i32 1) #12
  %76 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i340, ptr %label.i340, i32 1, ptr elementtype(i32) %label.i340) #12, !srcloc !306
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %76, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i344, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i342
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i343 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i343, label %if.end5.i.i.i.i.i.for.inc194_crit_edge, label %if.then10.i.i.i.i.i, !prof !307

if.end5.i.i.i.i.i.for.inc194_crit_edge:           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc194

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %label.i340, i32 noundef 3) #12
  br label %for.inc194

if.then.i.i344:                                   ; preds = %if.then.i342
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !308
  call void @aa_label_kref(ptr noundef %label.i340) #12, !callees !309
  br label %for.inc194

for.inc194:                                       ; preds = %if.then.i.i344, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.for.inc194_crit_edge, %for.body188.for.inc194_crit_edge
  %inc195 = add nuw nsw i32 %i184.0367, 1
  %exitcond370.not = icmp eq i32 %inc195, %len.1403
  br i1 %exitcond370.not, label %for.inc194.for.end196_crit_edge, label %for.inc194.for.body188_crit_edge

for.inc194.for.body188_crit_edge:                 ; preds = %for.inc194
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body188

for.inc194.for.end196_crit_edge:                  ; preds = %for.inc194
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end196

for.end196:                                       ; preds = %for.inc194.for.end196_crit_edge, %do.body183.for.end196_crit_edge
  %label.1401 = phi ptr [ %label.1, %do.body183.for.end196_crit_edge ], [ %label.1402, %for.inc194.for.end196_crit_edge ]
  %cmp198.not = icmp eq ptr %vec.0373, %_vec_localtmp
  br i1 %cmp198.not, label %for.end196.cleanup_crit_edge, label %if.then200

for.end196.cleanup_crit_edge:                     ; preds = %for.end196
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then200:                                       ; preds = %for.end196
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %vec.0373) #12
  br label %cleanup

fail:                                             ; preds = %if.end179.fail_crit_edge, %fqlookupn_profile.exit325.fail_crit_edge, %fqlookupn_profile.exit.fail_crit_edge
  %len.2 = phi i32 [ %sub166, %if.end179.fail_crit_edge ], [ %len.0, %fqlookupn_profile.exit325.fail_crit_edge ], [ %len.0, %fqlookupn_profile.exit.fail_crit_edge ]
  br label %do.body183

cleanup:                                          ; preds = %if.then200, %for.end196.cleanup_crit_edge, %if.then161, %if.end8.i.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end51.cleanup_crit_edge
  %retval.0 = phi ptr [ %label163, %if.then161 ], [ %label.1401, %if.then200 ], [ %label.1401, %for.end196.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end51.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %_vec_localtmp) #12
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skipn_spaces(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aa_label_parse(ptr noundef %base, ptr noundef %str, i32 noundef %gfp, i1 noundef zeroext %create, i1 noundef zeroext %force_stack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %str) #16
  %call3 = tail call ptr @aa_label_strn_parse(ptr noundef %base, ptr noundef %str, i32 noundef %call, i32 noundef %gfp, i1 noundef zeroext %create, i1 noundef zeroext %force_stack)
  ret ptr %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aa_labelset_destroy(ptr noundef %ls) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ls, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1984, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.aa_labelset_destroy) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call = tail call i32 @_raw_write_lock_irqsave(ptr noundef %ls) #12
  %root = getelementptr inbounds %struct.aa_labelset, ptr %ls, i32 0, i32 1
  %call28 = tail call ptr @rb_first(ptr noundef %root) #12
  %tobool29.not66 = icmp eq ptr %call28, null
  br i1 %tobool29.not66, label %if.end.do.body46_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.do.body46_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body46

for.body:                                         ; preds = %if.end43.for.body_crit_edge, %if.end.for.body_crit_edge
  %node.067 = phi ptr [ %call45, %if.end43.for.body_crit_edge ], [ %call28, %if.end.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %node.067, i32 -4
  %vec = getelementptr i8, ptr %node.067, i32 40
  %size = getelementptr i8, ptr %node.067, i32 36
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %sub = add i32 %1, -1
  %arrayidx31 = getelementptr ptr, ptr %vec, i32 %sub
  %2 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx31, align 4
  %ns = getelementptr inbounds %struct.aa_profile, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @root_ns to i32))
  %6 = load ptr, ptr @root_ns, align 4
  %cmp32.not = icmp eq ptr %5, %6
  br i1 %cmp32.not, label %for.body.if.end43_crit_edge, label %if.then34

for.body.if.end43_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then34:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %parent = getelementptr inbounds %struct.aa_ns, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 4
  %unconfined = getelementptr inbounds %struct.aa_ns, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %unconfined to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %unconfined, align 4
  %label = getelementptr inbounds %struct.aa_profile, ptr %10, i32 0, i32 25
  br label %if.end43

if.end43:                                         ; preds = %if.then34, %for.body.if.end43_crit_edge
  %.sink = phi ptr [ %label, %if.then34 ], [ null, %for.body.if.end43_crit_edge ]
  %call42 = tail call fastcc zeroext i1 @__label_remove(ptr noundef %add.ptr, ptr noundef %.sink)
  %call45 = tail call ptr @rb_first(ptr noundef %root) #12
  %tobool29.not = icmp eq ptr %call45, null
  br i1 %tobool29.not, label %if.end43.do.body46_crit_edge, label %if.end43.for.body_crit_edge

if.end43.for.body_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end43.do.body46_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body46

do.body46:                                        ; preds = %if.end43.do.body46_crit_edge, %if.end.do.body46_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %ls, i32 noundef %call) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aa_labelset_init(ptr noundef %ls) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ls, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2004, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.aa_labelset_init) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @__rwlock_init(ptr noundef %ls, ptr noundef nonnull @.str.48, ptr noundef nonnull @aa_labelset_init.__key) #12
  %root = getelementptr inbounds %struct.aa_labelset, ptr %ls, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %root, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__aa_labelset_update_subtree(ptr noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ns, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2150, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.__aa_labelset_update_subtree) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %lock = getelementptr inbounds %struct.aa_ns, ptr %ns, i32 0, i32 2
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock) #12
  br i1 %call, label %if.end.if.end49_crit_edge, label %do.end43, !prof !307

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

do.end43:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2151, i32 noundef 9, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.__aa_labelset_update_subtree) #12
  br label %if.end49

if.end49:                                         ; preds = %do.end43, %if.end.if.end49_crit_edge
  br i1 %tobool.not, label %do.end.i, label %if.end49.if.end.i_crit_edge, !prof !311

if.end49.if.end.i_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2124, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.__labelset_update) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end49.if.end.i_crit_edge
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock) #12
  br i1 %call.i, label %if.end.i.if.end49.i_crit_edge, label %do.end43.i, !prof !307

if.end.i.if.end49.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.i

do.end43.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2125, i32 noundef 9, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.__labelset_update) #12
  br label %if.end49.i

if.end49.i:                                       ; preds = %do.end43.i, %if.end.i.if.end49.i_crit_edge
  %labels.i = getelementptr inbounds %struct.aa_ns, ptr %ns, i32 0, i32 11
  %root.i.i = getelementptr inbounds %struct.aa_ns, ptr %ns, i32 0, i32 11, i32 1
  %call.i.i92 = call i32 @_raw_read_lock_irqsave(ptr noundef %labels.i) #12
  %call28.i.i93 = call ptr @rb_first(ptr noundef %root.i.i) #12
  %tobool29.not71.i.i94 = icmp eq ptr %call28.i.i93, null
  br i1 %tobool29.not71.i.i94, label %if.end49.i.__labelset_update.exit_crit_edge, label %if.end49.i.for.body.i.i.preheader_crit_edge

if.end49.i.for.body.i.i.preheader_crit_edge:      ; preds = %if.end49.i
  br label %for.body.i.i.preheader

if.end49.i.__labelset_update.exit_crit_edge:      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__labelset_update.exit

for.body.i.i.preheader:                           ; preds = %aa_put_label.exit98.i.for.body.i.i.preheader_crit_edge, %if.end49.i.for.body.i.i.preheader_crit_edge
  %call28.i.i96 = phi ptr [ %call28.i.i, %aa_put_label.exit98.i.for.body.i.i.preheader_crit_edge ], [ %call28.i.i93, %if.end49.i.for.body.i.i.preheader_crit_edge ]
  %call.i.i95 = phi i32 [ %call.i.i, %aa_put_label.exit98.i.for.body.i.i.preheader_crit_edge ], [ %call.i.i92, %if.end49.i.for.body.i.i.preheader_crit_edge ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %node.072.i.i = phi ptr [ %call39.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call28.i.i96, %for.body.i.i.preheader ]
  %add.ptr.i.i = getelementptr i8, ptr %node.072.i.i, i32 -4
  %flags31.i.i = getelementptr i8, ptr %node.072.i.i, i32 28
  %0 = ptrtoint ptr %flags31.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags31.i.i, align 4
  %and.i.i = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool32.not.i.i, label %lor.lhs.false.i.i, label %land.lhs.true.i.i

lor.lhs.false.i.i:                                ; preds = %for.body.i.i
  %vec.i.i = getelementptr i8, ptr %node.072.i.i, i32 40
  %size.i.i = getelementptr i8, ptr %node.072.i.i, i32 36
  %2 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %vec.i.i, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %lor.lhs.false.i.i.if.end.i.i.i_crit_edge, !prof !311

lor.lhs.false.i.i.if.end.i.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 190, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.vec_is_stale) #12
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %lor.lhs.false.i.i.if.end.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp31.i.i.i = icmp sgt i32 %3, 0
  br i1 %cmp31.i.i.i, label %for.body.i.preheader.i.i, label %if.end.i.i.i.for.inc.i.i_crit_edge

if.end.i.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

for.body.i.preheader.i.i:                         ; preds = %if.end.i.i.i
  %4 = ptrtoint ptr %vec.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vec.i.i, align 4
  %flags.i66.i.i = getelementptr inbounds %struct.aa_profile, ptr %5, i32 0, i32 25, i32 5
  %6 = ptrtoint ptr %flags.i66.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i66.i.i, align 4
  %and.i67.i.i = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i67.i.i)
  %tobool24.not.i68.i.i = icmp eq i32 %and.i67.i.i, 0
  br i1 %tobool24.not.i68.i.i, label %for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge, label %for.body.i.preheader.i.i.vec_is_stale.exit.i.i_crit_edge

for.body.i.preheader.i.i.vec_is_stale.exit.i.i_crit_edge: ; preds = %for.body.i.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vec_is_stale.exit.i.i

for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge: ; preds = %for.body.i.preheader.i.i
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge
  %i.032.i69.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ], [ 0, %for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge ]
  %inc.i.i.i = add nuw nsw i32 %i.032.i69.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %3)
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %3
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.vec_is_stale.exit.loopexit.i.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.vec_is_stale.exit.loopexit.i.i_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vec_is_stale.exit.loopexit.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %arrayidx.i.i.i = getelementptr ptr, ptr %vec.i.i, i32 %inc.i.i.i
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.aa_profile, ptr %9, i32 0, i32 25, i32 5
  %10 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %11, 2048
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge, label %for.body.i.i.i.vec_is_stale.exit.loopexit.i.i_crit_edge

for.body.i.i.i.vec_is_stale.exit.loopexit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vec_is_stale.exit.loopexit.i.i

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i.i

vec_is_stale.exit.loopexit.i.i:                   ; preds = %for.body.i.i.i.vec_is_stale.exit.loopexit.i.i_crit_edge, %for.cond.i.i.i.vec_is_stale.exit.loopexit.i.i_crit_edge
  %inc.i.i.lcssa.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.vec_is_stale.exit.loopexit.i.i_crit_edge ], [ %3, %for.cond.i.i.i.vec_is_stale.exit.loopexit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.lcssa.i, i32 %3)
  %cmp.i.le.i.i = icmp slt i32 %inc.i.i.lcssa.i, %3
  br label %vec_is_stale.exit.i.i

vec_is_stale.exit.i.i:                            ; preds = %vec_is_stale.exit.loopexit.i.i, %for.body.i.preheader.i.i.vec_is_stale.exit.i.i_crit_edge
  %cmp.lcssa.i.i.i = phi i1 [ true, %for.body.i.preheader.i.i.vec_is_stale.exit.i.i_crit_edge ], [ %cmp.i.le.i.i, %vec_is_stale.exit.loopexit.i.i ]
  %cmp.lcssa.i.not.i.i = xor i1 %cmp.lcssa.i.i.i, true
  %tobool.not.i59.i.i = icmp eq ptr %add.ptr.i.i, null
  %or.cond.i.i = select i1 %cmp.lcssa.i.not.i.i, i1 true, i1 %tobool.not.i59.i.i
  br i1 %or.cond.i.i, label %vec_is_stale.exit.i.i.for.inc.i.i_crit_edge, label %vec_is_stale.exit.i.i.land.lhs.true.i.i.i_crit_edge

vec_is_stale.exit.i.i.land.lhs.true.i.i.i_crit_edge: ; preds = %vec_is_stale.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i.i

vec_is_stale.exit.i.i.for.inc.i.i_crit_edge:      ; preds = %vec_is_stale.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %tobool.not.i59.old.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i59.old.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i.land.lhs.true.i.i.i_crit_edge

land.lhs.true.i.i.land.lhs.true.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

land.lhs.true.i.i.i:                              ; preds = %land.lhs.true.i.i.land.lhs.true.i.i.i_crit_edge, %vec_is_stale.exit.i.i.land.lhs.true.i.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i.i) #12
  %call.i.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %add.ptr.i.i, i32 noundef 4) #12
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %add.ptr.i.i, align 4
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i
  %14 = phi i32 [ %13, %land.lhs.true.i.i.i ], [ %asmresult3.i.i.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge ]
  %15 = ptrtoint ptr %old.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %old.i.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i.i.i.i

do.cond.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i
  %add.i.i.i.i.i.i.i = add i32 %14, 1
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr.i.i, i32 noundef 4) #12
  %call.i3.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i.i.i, i32 noundef 4) #12
  %16 = ptrtoint ptr %old.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %add.ptr.i.i, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i.i.i:                      ; preds = %do.body.i.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i.i.i
  %18 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %add.ptr.i.i, ptr nonnull %add.ptr.i.i, i32 %17, i32 %add.i.i.i.i.i.i.i, ptr nonnull elementtype(i32) %add.ptr.i.i) #12, !srcloc !316
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 0
  %tobool.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i: ; preds = %do.body.i.i.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 1
  %cmp.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i.i.i, %17
  br i1 %cmp.not.i.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, !prof !307

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i.i.i.i

if.end4.i.i.i.i.i.i.i:                            ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge
  %19 = ptrtoint ptr %old.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %old.i.i.i.i.i.i.i, align 4
  %add5.i.i.i.i.i.i.i = add i32 %20, 1
  %21 = or i32 %add5.i.i.i.i.i.i.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %21, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.end4.i.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !307

if.end4.i.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i.i_crit_edge: ; preds = %if.end4.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get_unless_zero.exit.i.i.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end4.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef nonnull %add.ptr.i.i, i32 noundef 0) #12
  %22 = ptrtoint ptr %old.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr.i.i.i = load i32, ptr %old.i.i.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i.i.i

kref_get_unless_zero.exit.i.i.i:                  ; preds = %if.then10.i.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i.i_crit_edge
  %23 = phi i32 [ %20, %if.end4.i.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i.i_crit_edge ], [ %.pr.i.i.i, %if.then10.i.i.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool12.i.i.i.i.not.i.i.i = icmp eq i32 %23, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i.i) #12
  %tobool36.not.i.i = icmp eq ptr %add.ptr.i.i, null
  %or.cond64.i.i = select i1 %tobool12.i.i.i.i.not.i.i.i, i1 true, i1 %tobool36.not.i.i
  br i1 %or.cond64.i.i, label %kref_get_unless_zero.exit.i.i.i.for.inc.i.i_crit_edge, label %if.end.i80.i

kref_get_unless_zero.exit.i.i.i.for.inc.i.i_crit_edge: ; preds = %kref_get_unless_zero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %kref_get_unless_zero.exit.i.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %vec_is_stale.exit.i.i.for.inc.i.i_crit_edge, %if.end.i.i.i.for.inc.i.i_crit_edge
  %call39.i.i = call ptr @rb_next(ptr noundef nonnull %node.072.i.i) #12
  %tobool29.not.i.i = icmp eq ptr %call39.i.i, null
  br i1 %tobool29.not.i.i, label %for.inc.i.i.__labelset_update.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.__labelset_update.exit_crit_edge:     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__labelset_update.exit

if.end.i80.i:                                     ; preds = %kref_get_unless_zero.exit.i.i.i
  call void @_raw_read_unlock_irqrestore(ptr noundef %labels.i, i32 noundef %call.i.i95) #12
  %vec.i77.i = getelementptr i8, ptr %node.072.i.i, i32 40
  %size.i78.i = getelementptr i8, ptr %node.072.i.i, i32 36
  %24 = ptrtoint ptr %size.i78.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.i78.i, align 4
  %sub.i.i = add i32 %25, -1
  %arrayidx27.i.i = getelementptr ptr, ptr %vec.i77.i, i32 %sub.i.i
  %26 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx27.i.i, align 4
  %ns.i.i = getelementptr inbounds %struct.aa_profile, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %ns.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ns.i.i, align 4
  %lock.i.i = getelementptr inbounds %struct.aa_ns, ptr %29, i32 0, i32 2
  %call.i79.i = call zeroext i1 @mutex_is_locked(ptr noundef %lock.i.i) #12
  br i1 %call.i79.i, label %if.end.i80.i.if.end51.i.i_crit_edge, label %do.end45.i.i, !prof !307

if.end.i80.i.if.end51.i.i_crit_edge:              ; preds = %if.end.i80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i.i

do.end45.i.i:                                     ; preds = %if.end.i80.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2056, i32 noundef 9, ptr noundef nonnull @.str.89, ptr noundef nonnull @__func__.__label_update) #12
  br label %if.end51.i.i

if.end51.i.i:                                     ; preds = %do.end45.i.i, %if.end.i80.i.if.end51.i.i_crit_edge
  %30 = ptrtoint ptr %size.i78.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size.i78.i, align 4
  %proxy.i.i = getelementptr i8, ptr %node.072.i.i, i32 20
  %32 = ptrtoint ptr %proxy.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %proxy.i.i, align 4
  %call62.i.i = call ptr @aa_label_alloc(i32 noundef %31, ptr noundef %33, i32 noundef 3264) #12
  %tobool63.not.i.i = icmp eq ptr %call62.i.i, null
  br i1 %tobool63.not.i.i, label %if.end51.i.i.if.then.i92.i_crit_edge, label %if.end65.i.i

if.end51.i.i.if.then.i92.i_crit_edge:             ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i92.i

if.end65.i.i:                                     ; preds = %if.end51.i.i
  %34 = ptrtoint ptr %size.i78.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size.i78.i, align 4
  %sub69.i.i = add i32 %35, -1
  %arrayidx70.i.i = getelementptr ptr, ptr %vec.i77.i, i32 %sub69.i.i
  %36 = ptrtoint ptr %arrayidx70.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx70.i.i, align 4
  %ns71.i.i = getelementptr inbounds %struct.aa_profile, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %ns71.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ns71.i.i, align 4
  %labels.i.i = getelementptr inbounds %struct.aa_ns, ptr %39, i32 0, i32 11
  %call75.i.i = call i32 @_raw_write_lock_irqsave(ptr noundef %labels.i.i) #12
  %40 = ptrtoint ptr %size.i78.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size.i78.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp79486.i.i = icmp sgt i32 %41, 0
  br i1 %cmp79486.i.i, label %if.end65.i.i.do.body81.i.i_crit_edge, label %if.end65.i.i.do.body353.i.i_crit_edge

if.end65.i.i.do.body353.i.i_crit_edge:            ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body353.i.i

if.end65.i.i.do.body81.i.i_crit_edge:             ; preds = %if.end65.i.i
  br label %do.body81.i.i

do.body81.i.i:                                    ; preds = %if.end233.i.i.do.body81.i.i_crit_edge, %if.end65.i.i.do.body81.i.i_crit_edge
  %i.0488.i.i = phi i32 [ %inc255.i.i, %if.end233.i.i.do.body81.i.i_crit_edge ], [ 0, %if.end65.i.i.do.body81.i.i_crit_edge ]
  %invcount.0487.i.i = phi i32 [ %spec.select.i.i, %if.end233.i.i.do.body81.i.i_crit_edge ], [ 0, %if.end65.i.i.do.body81.i.i_crit_edge ]
  %arrayidx84.i.i = getelementptr %struct.aa_label, ptr %add.ptr.i.i, i32 0, i32 8, i32 %i.0488.i.i
  %42 = ptrtoint ptr %arrayidx84.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx84.i.i, align 4
  %tobool85.not.i.i = icmp eq ptr %43, null
  br i1 %tobool85.not.i.i, label %do.end103.i.i, label %do.body81.i.i.if.end109.i.i_crit_edge, !prof !311

do.body81.i.i.if.end109.i.i_crit_edge:            ; preds = %do.body81.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109.i.i

do.end103.i.i:                                    ; preds = %do.body81.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2069, i32 noundef 9, ptr noundef nonnull @.str.90, ptr noundef nonnull @__func__.__label_update) #12
  br label %if.end109.i.i

if.end109.i.i:                                    ; preds = %do.end103.i.i, %do.body81.i.i.if.end109.i.i_crit_edge
  %44 = ptrtoint ptr %arrayidx84.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx84.i.i, align 4
  %label.i.i.i = getelementptr inbounds %struct.aa_profile, ptr %45, i32 0, i32 25
  %call.i.i.i = call fastcc ptr @aa_get_newest_label(ptr noundef %label.i.i.i) #12
  %call2.i.i.i = call fastcc ptr @aa_get_newest_label(ptr noundef %label.i.i.i) #12
  %size.i.i.i = getelementptr inbounds %struct.aa_label, ptr %call2.i.i.i, i32 0, i32 7
  %46 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %size.i.i.i, align 4
  %sub.i.i.i = add i32 %47, -1
  %arrayidx.i.i81.i = getelementptr %struct.aa_label, ptr %call.i.i.i, i32 0, i32 8, i32 %sub.i.i.i
  %48 = ptrtoint ptr %arrayidx.i.i81.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i81.i, align 4
  %arrayidx123.i.i = getelementptr %struct.aa_label, ptr %call62.i.i, i32 0, i32 8, i32 %i.0488.i.i
  %50 = ptrtoint ptr %arrayidx123.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %arrayidx123.i.i, align 4
  %tobool128.not.i.i = icmp eq ptr %49, null
  br i1 %tobool128.not.i.i, label %do.end146.i.i, label %if.end109.i.i.if.end152.i.i_crit_edge, !prof !311

if.end109.i.i.if.end152.i.i_crit_edge:            ; preds = %if.end109.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152.i.i

do.end146.i.i:                                    ; preds = %if.end109.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2071, i32 noundef 9, ptr noundef nonnull @.str.91, ptr noundef nonnull @__func__.__label_update) #12
  br label %if.end152.i.i

if.end152.i.i:                                    ; preds = %do.end146.i.i, %if.end109.i.i.if.end152.i.i_crit_edge
  %51 = ptrtoint ptr %arrayidx123.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx123.i.i, align 4
  %proxy167.i.i = getelementptr inbounds %struct.aa_profile, ptr %52, i32 0, i32 25, i32 3
  %53 = ptrtoint ptr %proxy167.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %proxy167.i.i, align 4
  %tobool168.not.i.i = icmp eq ptr %54, null
  br i1 %tobool168.not.i.i, label %do.end186.i.i, label %if.end152.i.i.if.end192.i.i_crit_edge, !prof !311

if.end152.i.i.if.end192.i.i_crit_edge:            ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end192.i.i

do.end186.i.i:                                    ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2072, i32 noundef 9, ptr noundef nonnull @.str.92, ptr noundef nonnull @__func__.__label_update) #12
  br label %if.end192.i.i

if.end192.i.i:                                    ; preds = %do.end186.i.i, %if.end152.i.i.if.end192.i.i_crit_edge
  %55 = ptrtoint ptr %arrayidx123.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx123.i.i, align 4
  %proxy207.i.i = getelementptr inbounds %struct.aa_profile, ptr %56, i32 0, i32 25, i32 3
  %57 = ptrtoint ptr %proxy207.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %proxy207.i.i, align 4
  %label208.i.i = getelementptr inbounds %struct.aa_proxy, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %label208.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %label208.i.i, align 4
  %tobool209.not.i.i = icmp eq ptr %60, null
  br i1 %tobool209.not.i.i, label %do.end227.i.i, label %if.end192.i.i.if.end233.i.i_crit_edge, !prof !311

if.end192.i.i.if.end233.i.i_crit_edge:            ; preds = %if.end192.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end233.i.i

do.end227.i.i:                                    ; preds = %if.end192.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2073, i32 noundef 9, ptr noundef nonnull @.str.93, ptr noundef nonnull @__func__.__label_update) #12
  br label %if.end233.i.i

if.end233.i.i:                                    ; preds = %do.end227.i.i, %if.end192.i.i.if.end233.i.i_crit_edge
  %61 = ptrtoint ptr %arrayidx123.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx123.i.i, align 4
  %proxy246.i.i = getelementptr inbounds %struct.aa_profile, ptr %62, i32 0, i32 25, i32 3
  %63 = ptrtoint ptr %proxy246.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %proxy246.i.i, align 4
  %65 = ptrtoint ptr %arrayidx84.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx84.i.i, align 4
  %proxy250.i.i = getelementptr inbounds %struct.aa_profile, ptr %66, i32 0, i32 25, i32 3
  %67 = ptrtoint ptr %proxy250.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %proxy250.i.i, align 4
  %cmp251.not.i.i = icmp ne ptr %64, %68
  %inc.i.i = zext i1 %cmp251.not.i.i to i32
  %spec.select.i.i = add i32 %invcount.0487.i.i, %inc.i.i
  %inc255.i.i = add nuw nsw i32 %i.0488.i.i, 1
  %69 = ptrtoint ptr %size.i78.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %size.i78.i, align 4
  %cmp79.i.i = icmp slt i32 %inc255.i.i, %70
  br i1 %cmp79.i.i, label %if.end233.i.i.do.body81.i.i_crit_edge, label %for.end.i.i

if.end233.i.i.do.body81.i.i_crit_edge:            ; preds = %if.end233.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body81.i.i

for.end.i.i:                                      ; preds = %if.end233.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i)
  %phi.cmp.i.i = icmp eq i32 %spec.select.i.i, 0
  br i1 %phi.cmp.i.i, label %for.end.i.i.do.body353.i.i_crit_edge, label %if.then257.i.i

for.end.i.i.do.body353.i.i_crit_edge:             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body353.i.i

if.then257.i.i:                                   ; preds = %for.end.i.i
  %vec258.i.i = getelementptr inbounds %struct.aa_label, ptr %call62.i.i, i32 0, i32 8
  %size260.i.i = getelementptr inbounds %struct.aa_label, ptr %call62.i.i, i32 0, i32 7
  %71 = ptrtoint ptr %size260.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %size260.i.i, align 4
  %call261.i.i = call i32 @aa_vec_unique(ptr noundef %vec258.i.i, i32 noundef %72, i32 noundef 1) #12
  %73 = ptrtoint ptr %size260.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %size260.i.i, align 4
  %sub263.i.i = sub i32 %74, %call261.i.i
  store i32 %sub263.i.i, ptr %size260.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub263.i.i)
  %cmp265.i.i = icmp eq i32 %sub263.i.i, 1
  br i1 %cmp265.i.i, label %if.then267.i.i, label %if.end307.i.i

if.then267.i.i:                                   ; preds = %if.then257.i.i
  %75 = ptrtoint ptr %vec258.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %vec258.i.i, align 4
  %label270.i.i = getelementptr inbounds %struct.aa_profile, ptr %76, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i82.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %label270.i.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr nonnull %label270.i.i, i32 1, i32 3, i32 1) #12
  %77 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %label270.i.i, ptr nonnull %label270.i.i, i32 1, ptr nonnull elementtype(i32) %label270.i.i) #12, !srcloc !310
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %77, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.then267.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !311

if.then267.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.then267.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.then267.i.i
  %add.i.i.i.i.i.i83.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %78 = or i32 %add.i.i.i.i.i.i83.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %78)
  %.not.i.i.i.i.i.i84.i = icmp sgt i32 %78, -1
  br i1 %.not.i.i.i.i.i.i84.i, label %if.else.i.i.i.i.i.i.i.aa_get_label.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !307

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.aa_get_label.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_get_label.exit.i.i

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.then267.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.then267.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %label270.i.i, i32 noundef %.sink.i.i.i.i.i.i.i) #12
  br label %aa_get_label.exit.i.i

aa_get_label.exit.i.i:                            ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.aa_get_label.exit.i.i_crit_edge
  %cmp274.i.i = icmp eq ptr %label270.i.i, %add.ptr.i.i
  br i1 %cmp274.i.i, label %do.end291.i.i, label %aa_get_label.exit.i.i.__label_update.exit.i_crit_edge, !prof !311

aa_get_label.exit.i.i.__label_update.exit.i_crit_edge: ; preds = %aa_get_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__label_update.exit.i

do.end291.i.i:                                    ; preds = %aa_get_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2085, i32 noundef 9, ptr noundef nonnull @.str.94, ptr noundef nonnull @__func__.__label_update) #12
  br label %__label_update.exit.i

if.end307.i.i:                                    ; preds = %if.then257.i.i
  %79 = ptrtoint ptr %size.i78.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %size.i78.i, align 4
  %sub311.i.i = add i32 %80, -1
  %arrayidx312.i.i = getelementptr ptr, ptr %vec.i77.i, i32 %sub311.i.i
  %81 = ptrtoint ptr %arrayidx312.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx312.i.i, align 4
  %ns313.i.i = getelementptr inbounds %struct.aa_profile, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %ns313.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ns313.i.i, align 4
  %sub318.i.i = add i32 %sub263.i.i, -1
  %arrayidx319.i.i = getelementptr ptr, ptr %vec258.i.i, i32 %sub318.i.i
  %85 = ptrtoint ptr %arrayidx319.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx319.i.i, align 4
  %ns320.i.i = getelementptr inbounds %struct.aa_profile, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %ns320.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ns320.i.i, align 4
  %cmp322.not.i.i = icmp eq ptr %84, %88
  br i1 %cmp322.not.i.i, label %if.end307.i.i.if.end400.i.i_crit_edge, label %do.body325.i.i

if.end307.i.i.if.end400.i.i_crit_edge:            ; preds = %if.end307.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end400.i.i

do.body325.i.i:                                   ; preds = %if.end307.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_write_unlock_irqrestore(ptr noundef %labels.i.i, i32 noundef %call75.i.i) #12
  %89 = ptrtoint ptr %size260.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %size260.i.i, align 4
  %sub337.i.i = add i32 %90, -1
  %arrayidx338.i.i = getelementptr ptr, ptr %vec258.i.i, i32 %sub337.i.i
  %91 = ptrtoint ptr %arrayidx338.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx338.i.i, align 4
  %ns339.i.i = getelementptr inbounds %struct.aa_profile, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %ns339.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ns339.i.i, align 4
  %labels340.i.i = getelementptr inbounds %struct.aa_ns, ptr %94, i32 0, i32 11
  %call341.i.i = call ptr @aa_label_insert(ptr noundef %labels340.i.i, ptr noundef nonnull %call62.i.i) #12
  %call349.i.i = call i32 @_raw_write_lock_irqsave(ptr noundef %labels.i.i) #12
  br label %__label_update.exit.i

do.body353.i.i:                                   ; preds = %for.end.i.i.do.body353.i.i_crit_edge, %if.end65.i.i.do.body353.i.i_crit_edge
  %.lcssa493.i.i = phi i32 [ %70, %for.end.i.i.do.body353.i.i_crit_edge ], [ %41, %if.end65.i.i.do.body353.i.i_crit_edge ]
  %sub358.i.i = add i32 %.lcssa493.i.i, -1
  %arrayidx359.i.i = getelementptr ptr, ptr %vec.i77.i, i32 %sub358.i.i
  %95 = ptrtoint ptr %arrayidx359.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx359.i.i, align 4
  %ns360.i.i = getelementptr inbounds %struct.aa_profile, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %ns360.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ns360.i.i, align 4
  %vec361.i.i = getelementptr inbounds %struct.aa_label, ptr %call62.i.i, i32 0, i32 8
  %size363.i.i = getelementptr inbounds %struct.aa_label, ptr %call62.i.i, i32 0, i32 7
  %99 = ptrtoint ptr %size363.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %size363.i.i, align 4
  %sub364.i.i = add i32 %100, -1
  %arrayidx365.i.i = getelementptr ptr, ptr %vec361.i.i, i32 %sub364.i.i
  %101 = ptrtoint ptr %arrayidx365.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx365.i.i, align 4
  %ns366.i.i = getelementptr inbounds %struct.aa_profile, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %ns366.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ns366.i.i, align 4
  %cmp367.not.i.i = icmp eq ptr %98, %104
  br i1 %cmp367.not.i.i, label %do.body353.i.i.if.end400.i.i_crit_edge, label %do.end384.i.i, !prof !307

do.body353.i.i.if.end400.i.i_crit_edge:           ; preds = %do.body353.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end400.i.i

do.end384.i.i:                                    ; preds = %do.body353.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2095, i32 noundef 9, ptr noundef nonnull @.str.95, ptr noundef nonnull @__func__.__label_update) #12
  br label %if.end400.i.i

if.end400.i.i:                                    ; preds = %do.end384.i.i, %do.body353.i.i.if.end400.i.i_crit_edge, %if.end307.i.i.if.end400.i.i_crit_edge
  %105 = ptrtoint ptr %size.i78.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %size.i78.i, align 4
  %sub404.i.i = add i32 %106, -1
  %arrayidx405.i.i = getelementptr ptr, ptr %vec.i77.i, i32 %sub404.i.i
  %107 = ptrtoint ptr %arrayidx405.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx405.i.i, align 4
  %ns406.i.i = getelementptr inbounds %struct.aa_profile, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %ns406.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ns406.i.i, align 4
  %labels407.i.i = getelementptr inbounds %struct.aa_ns, ptr %110, i32 0, i32 11
  %call408.i.i = call fastcc ptr @__label_insert(ptr noundef %labels407.i.i, ptr noundef nonnull %call62.i.i, i1 noundef zeroext true) #12
  br label %__label_update.exit.i

__label_update.exit.i:                            ; preds = %if.end400.i.i, %do.body325.i.i, %do.end291.i.i, %aa_get_label.exit.i.i.__label_update.exit.i_crit_edge
  %flags.0.i.i = phi i32 [ %call349.i.i, %do.body325.i.i ], [ %call75.i.i, %if.end400.i.i ], [ %call75.i.i, %do.end291.i.i ], [ %call75.i.i, %aa_get_label.exit.i.i.__label_update.exit.i_crit_edge ]
  %tmp.0.i.i = phi ptr [ %call341.i.i, %do.body325.i.i ], [ %call408.i.i, %if.end400.i.i ], [ %add.ptr.i.i, %do.end291.i.i ], [ %label270.i.i, %aa_get_label.exit.i.i.__label_update.exit.i_crit_edge ]
  %call409.i.i = call fastcc zeroext i1 @__label_remove(ptr noundef %add.ptr.i.i, ptr noundef %tmp.0.i.i) #12
  call void @_raw_write_unlock_irqrestore(ptr noundef %labels.i.i, i32 noundef %flags.0.i.i) #12
  call fastcc void @label_free_or_put_new(ptr noundef %tmp.0.i.i, ptr noundef nonnull %call62.i.i) #12
  %tobool.not.i85.i = icmp eq ptr %tmp.0.i.i, null
  br i1 %tobool.not.i85.i, label %__label_update.exit.i.if.then.i92.i_crit_edge, label %if.then.i.i

__label_update.exit.i.if.then.i92.i_crit_edge:    ; preds = %__label_update.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i92.i

if.then.i.i:                                      ; preds = %__label_update.exit.i
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp.0.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !305
  call void @llvm.prefetch.p0(ptr nonnull %tmp.0.i.i, i32 1, i32 3, i32 1) #12
  %111 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %tmp.0.i.i, ptr nonnull %tmp.0.i.i, i32 1, ptr nonnull elementtype(i32) %tmp.0.i.i) #12, !srcloc !306
  %asmresult.i.i.i.i.i.i.i.i86.i = extractvalue { i32, i32, i32 } %111, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i86.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i86.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i86.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i86.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.then.i92.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !307

if.end5.i.i.i.i.i.i.if.then.i92.i_crit_edge:      ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i92.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef nonnull %tmp.0.i.i, i32 noundef 3) #12
  br label %if.then.i92.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !308
  call void @aa_label_kref(ptr noundef nonnull %tmp.0.i.i) #12, !callees !309
  br label %if.then.i92.i

if.then.i92.i:                                    ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.then.i92.i_crit_edge, %__label_update.exit.i.if.then.i92.i_crit_edge, %if.end51.i.i.if.then.i92.i_crit_edge
  %call.i.i.i.i.i.i.i89.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !305
  call void @llvm.prefetch.p0(ptr nonnull %add.ptr.i.i, i32 1, i32 3, i32 1) #12
  %112 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %add.ptr.i.i, ptr nonnull %add.ptr.i.i, i32 1, ptr nonnull elementtype(i32) %add.ptr.i.i) #12, !srcloc !306
  %asmresult.i.i.i.i.i.i.i.i90.i = extractvalue { i32, i32, i32 } %112, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i90.i)
  %cmp.i.i.i.i.i91.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i90.i, 1
  br i1 %cmp.i.i.i.i.i91.i, label %if.then.i.i96.i, label %if.end5.i.i.i.i.i94.i

if.end5.i.i.i.i.i94.i:                            ; preds = %if.then.i92.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i90.i)
  %.not.i.i.i.i.i93.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i90.i, 0
  br i1 %.not.i.i.i.i.i93.i, label %if.end5.i.i.i.i.i94.i.aa_put_label.exit98.i_crit_edge, label %if.then10.i.i.i.i.i95.i, !prof !307

if.end5.i.i.i.i.i94.i.aa_put_label.exit98.i_crit_edge: ; preds = %if.end5.i.i.i.i.i94.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aa_put_label.exit98.i

if.then10.i.i.i.i.i95.i:                          ; preds = %if.end5.i.i.i.i.i94.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef nonnull %add.ptr.i.i, i32 noundef 3) #12
  br label %aa_put_label.exit98.i

if.then.i.i96.i:                                  ; preds = %if.then.i92.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !308
  call void @aa_label_kref(ptr noundef nonnull %add.ptr.i.i) #12, !callees !309
  br label %aa_put_label.exit98.i

aa_put_label.exit98.i:                            ; preds = %if.then.i.i96.i, %if.then10.i.i.i.i.i95.i, %if.end5.i.i.i.i.i94.i.aa_put_label.exit98.i_crit_edge
  %call.i.i = call i32 @_raw_read_lock_irqsave(ptr noundef %labels.i) #12
  %call28.i.i = call ptr @rb_first(ptr noundef %root.i.i) #12
  %tobool29.not71.i.i = icmp eq ptr %call28.i.i, null
  br i1 %tobool29.not71.i.i, label %aa_put_label.exit98.i.__labelset_update.exit_crit_edge, label %aa_put_label.exit98.i.for.body.i.i.preheader_crit_edge

aa_put_label.exit98.i.for.body.i.i.preheader_crit_edge: ; preds = %aa_put_label.exit98.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.preheader

aa_put_label.exit98.i.__labelset_update.exit_crit_edge: ; preds = %aa_put_label.exit98.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__labelset_update.exit

__labelset_update.exit:                           ; preds = %aa_put_label.exit98.i.__labelset_update.exit_crit_edge, %for.inc.i.i.__labelset_update.exit_crit_edge, %if.end49.i.__labelset_update.exit_crit_edge
  %call.i.i91 = phi i32 [ %call.i.i92, %if.end49.i.__labelset_update.exit_crit_edge ], [ %call.i.i95, %for.inc.i.i.__labelset_update.exit_crit_edge ], [ %call.i.i, %aa_put_label.exit98.i.__labelset_update.exit_crit_edge ]
  call void @_raw_read_unlock_irqrestore(ptr noundef %labels.i, i32 noundef %call.i.i91) #12
  %sub_ns = getelementptr inbounds %struct.aa_ns, ptr %ns, i32 0, i32 5
  %113 = ptrtoint ptr %sub_ns to i32
  call void @__asan_load4_noabort(i32 %113)
  %.pn97 = load ptr, ptr %sub_ns, align 4
  %cmp.not98 = icmp eq ptr %.pn97, %sub_ns
  br i1 %cmp.not98, label %__labelset_update.exit.for.end_crit_edge, label %__labelset_update.exit.for.body_crit_edge

__labelset_update.exit.for.body_crit_edge:        ; preds = %__labelset_update.exit
  br label %for.body

__labelset_update.exit.for.end_crit_edge:         ; preds = %__labelset_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %__labelset_update.exit.for.body_crit_edge
  %.pn99 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn97, %__labelset_update.exit.for.body_crit_edge ]
  %child.0 = getelementptr i8, ptr %.pn99, i32 -8
  %lock63 = getelementptr i8, ptr %.pn99, i32 20
  %level = getelementptr i8, ptr %.pn99, i32 148
  %114 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %level, align 4
  call void @mutex_lock_nested(ptr noundef %lock63, i32 noundef %115) #12
  call void @__aa_labelset_update_subtree(ptr noundef %child.0)
  call void @mutex_unlock(ptr noundef %lock63) #12
  %116 = ptrtoint ptr %.pn99 to i32
  call void @__asan_load4_noabort(i32 %116)
  %.pn = load ptr, ptr %.pn99, align 4
  %cmp.not = icmp eq ptr %.pn, %sub_ns
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %__labelset_update.exit.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ns_cmp(ptr noundef readonly %a, ptr noundef readonly %b) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %a, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 111, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.ns_cmp) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %b, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !311

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.ns_cmp) #12
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %hname = getelementptr inbounds %struct.aa_policy, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %hname to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hname, align 4
  %tobool62.not = icmp eq ptr %1, null
  br i1 %tobool62.not, label %do.end80, label %if.end50.if.end86_crit_edge, !prof !311

if.end50.if.end86_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

do.end80:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 113, i32 noundef 9, ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.ns_cmp) #12
  br label %if.end86

if.end86:                                         ; preds = %do.end80, %if.end50.if.end86_crit_edge
  %hname99 = getelementptr inbounds %struct.aa_policy, ptr %b, i32 0, i32 1
  %2 = ptrtoint ptr %hname99 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hname99, align 4
  %tobool100.not = icmp eq ptr %3, null
  br i1 %tobool100.not, label %do.end118, label %if.end86.if.end124_crit_edge, !prof !311

if.end86.if.end124_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end124

do.end118:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 114, i32 noundef 9, ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.ns_cmp) #12
  br label %if.end124

if.end124:                                        ; preds = %do.end118, %if.end86.if.end124_crit_edge
  %cmp = icmp eq ptr %a, %b
  br i1 %cmp, label %if.end124.cleanup_crit_edge, label %if.end135

if.end124.cleanup_crit_edge:                      ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end135:                                        ; preds = %if.end124
  %level = getelementptr inbounds %struct.aa_ns, ptr %a, i32 0, i32 8
  %4 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %level, align 4
  %level136 = getelementptr inbounds %struct.aa_ns, ptr %b, i32 0, i32 8
  %6 = ptrtoint ptr %level136 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %level136, align 4
  %sub = sub i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool137.not = icmp eq i32 %sub, 0
  br i1 %tobool137.not, label %if.end139, label %if.end135.cleanup_crit_edge

if.end135.cleanup_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end139:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %hname to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hname, align 4
  %10 = ptrtoint ptr %hname99 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hname99, align 4
  %call = tail call i32 @strcmp(ptr noundef %9, ptr noundef %11) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end139, %if.end135.cleanup_crit_edge, %if.end124.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end139 ], [ 0, %if.end124.cleanup_crit_edge ], [ %sub, %if.end135.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_str_kref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_free_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_free_profile(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_replace_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vec_cmp(ptr noundef readonly %a, i32 noundef %an, ptr noundef readonly %b, i32 noundef %bn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %a, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 169, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.vec_cmp) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a, align 4
  %tobool26.not = icmp eq ptr %1, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !311

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 170, i32 noundef 9, ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.vec_cmp) #12
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %tobool62.not = icmp eq ptr %b, null
  br i1 %tobool62.not, label %do.end80, label %if.end50.if.end86_crit_edge, !prof !311

if.end50.if.end86_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

do.end80:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 171, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.vec_cmp) #12
  br label %if.end86

if.end86:                                         ; preds = %do.end80, %if.end50.if.end86_crit_edge
  %2 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b, align 4
  %tobool98.not = icmp eq ptr %3, null
  br i1 %tobool98.not, label %do.end116, label %if.end86.if.end122_crit_edge, !prof !311

if.end86.if.end122_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end122

do.end116:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 172, i32 noundef 9, ptr noundef nonnull @.str.61, ptr noundef nonnull @__func__.vec_cmp) #12
  br label %if.end122

if.end122:                                        ; preds = %do.end116, %if.end86.if.end122_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %an)
  %cmp = icmp slt i32 %an, 1
  br i1 %cmp, label %do.end149, label %if.end122.if.end155_crit_edge, !prof !311

if.end122.if.end155_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end155

do.end149:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 173, i32 noundef 9, ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.vec_cmp) #12
  br label %if.end155

if.end155:                                        ; preds = %do.end149, %if.end122.if.end155_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bn)
  %cmp167 = icmp slt i32 %bn, 1
  br i1 %cmp167, label %if.end189.thread, label %if.end189, !prof !311

if.end189.thread:                                 ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 174, i32 noundef 9, ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.vec_cmp) #12
  br label %for.end

if.end189:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %an)
  %cmp199225 = icmp sgt i32 %an, 0
  br i1 %cmp199225, label %for.body.preheader, label %if.end189.for.end_crit_edge

if.end189.for.end_crit_edge:                      ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.preheader:                               ; preds = %if.end189
  %4 = add nsw i32 %bn, -1
  %5 = add nsw i32 %an, -1
  %umin = call i32 @llvm.umin.i32(i32 %4, i32 %5)
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0228, 1
  %exitcond.not = icmp eq i32 %i.0228, %umin
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.0228 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr ptr, ptr %a, i32 %i.0228
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %arrayidx201 = getelementptr ptr, ptr %b, i32 %i.0228
  %8 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx201, align 4
  %call = tail call fastcc i32 @profile_cmp(ptr noundef %7, ptr noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp202.not = icmp eq i32 %call, 0
  br i1 %cmp202.not, label %for.cond, label %for.body.cleanup205_crit_edge

for.body.cleanup205_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup205

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end189.for.end_crit_edge, %if.end189.thread
  %sub = sub i32 %an, %bn
  br label %cleanup205

cleanup205:                                       ; preds = %for.end, %for.body.cleanup205_crit_edge
  %retval.2 = phi i32 [ %sub, %for.end ], [ %call, %for.body.cleanup205_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__vec_find(ptr noundef %vec, i32 noundef %n) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vec, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !311

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 723, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.__vec_find) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %0 = ptrtoint ptr %vec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vec, align 4
  %tobool26.not = icmp eq ptr %1, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !311

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 724, i32 noundef 9, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.__vec_find) #12
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n)
  %cmp = icmp slt i32 %n, 1
  br i1 %cmp, label %do.end77, label %if.end50.if.end83_crit_edge, !prof !311

if.end50.if.end83_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

do.end77:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 725, i32 noundef 9, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.__vec_find) #12
  br label %if.end83

if.end83:                                         ; preds = %do.end77, %if.end50.if.end83_crit_edge
  %sub = add i32 %n, -1
  %arrayidx = getelementptr ptr, ptr %vec, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %ns = getelementptr inbounds %struct.aa_profile, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns, align 4
  %root = getelementptr inbounds %struct.aa_ns, ptr %5, i32 0, i32 11, i32 1
  %6 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %6)
  %node.0123 = load ptr, ptr %root, align 4
  %tobool93.not124 = icmp eq ptr %node.0123, null
  br i1 %tobool93.not124, label %if.end83.cleanup105_crit_edge, label %if.end83.while.body_crit_edge

if.end83.while.body_crit_edge:                    ; preds = %if.end83
  br label %while.body

if.end83.cleanup105_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup105

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end83.while.body_crit_edge
  %node.0125 = phi ptr [ %node.0, %cleanup.while.body_crit_edge ], [ %node.0123, %if.end83.while.body_crit_edge ]
  %vec95 = getelementptr i8, ptr %node.0125, i32 40
  %size = getelementptr i8, ptr %node.0125, i32 36
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  %call = tail call fastcc i32 @vec_cmp(ptr noundef %vec95, i32 noundef %8, ptr noundef %vec, i32 noundef %n)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp96 = icmp sgt i32 %call, 0
  br i1 %cmp96, label %if.then97, label %if.else

if.then97:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %node.0125, i32 0, i32 2
  br label %cleanup

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp98 = icmp slt i32 %call, 0
  br i1 %cmp98, label %if.then99, label %if.else100

if.then99:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %node.0125, i32 0, i32 1
  br label %cleanup

if.else100:                                       ; preds = %if.else
  %add.ptr.le = getelementptr i8, ptr %node.0125, i32 -4
  %tobool.not.i = icmp eq ptr %add.ptr.le, null
  br i1 %tobool.not.i, label %if.else100.if.end.i_crit_edge, label %land.lhs.true.i

if.else100.if.end.i_crit_edge:                    ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.else100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #12
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %add.ptr.le, i32 noundef 4) #12
  %9 = ptrtoint ptr %add.ptr.le to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %add.ptr.le, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %land.lhs.true.i
  %11 = phi i32 [ %10, %land.lhs.true.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %12 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %11, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr.le, i32 noundef 4) #12
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #12
  %13 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %add.ptr.le, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %15 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %add.ptr.le, ptr nonnull %add.ptr.le, i32 %14, i32 %add.i.i.i.i.i, ptr nonnull elementtype(i32) %add.ptr.le) #12, !srcloc !316
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %14
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !307

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %16 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %17, 1
  %18 = or i32 %add5.i.i.i.i.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !307

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef nonnull %add.ptr.le, i32 noundef 0) #12
  %19 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %20 = phi i32 [ %17, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %20, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #12
  br i1 %tobool12.i.i.i.i.not.i, label %kref_get_unless_zero.exit.i.if.end.i_crit_edge, label %kref_get_unless_zero.exit.i.cleanup105_crit_edge

kref_get_unless_zero.exit.i.cleanup105_crit_edge: ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup105

kref_get_unless_zero.exit.i.if.end.i_crit_edge:   ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %kref_get_unless_zero.exit.i.if.end.i_crit_edge, %if.else100.if.end.i_crit_edge
  br label %cleanup105

cleanup:                                          ; preds = %if.then99, %if.then97
  %node.1.in = phi ptr [ %rb_left, %if.then97 ], [ %rb_right, %if.then99 ]
  %21 = ptrtoint ptr %node.1.in to i32
  call void @__asan_load4_noabort(i32 %21)
  %node.0 = load ptr, ptr %node.1.in, align 4
  %tobool93.not = icmp eq ptr %node.0, null
  br i1 %tobool93.not, label %cleanup.cleanup105_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup.cleanup105_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup105

cleanup105:                                       ; preds = %cleanup.cleanup105_crit_edge, %if.end.i, %kref_get_unless_zero.exit.i.cleanup105_crit_edge, %if.end83.cleanup105_crit_edge
  %retval.2 = phi ptr [ %add.ptr.le, %kref_get_unless_zero.exit.i.cleanup105_crit_edge ], [ null, %if.end.i ], [ null, %if.end83.cleanup105_crit_edge ], [ null, %cleanup.cleanup105_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_dfa_match(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_compute_perms(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_apply_modes_to_perms(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aa_ns_name(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_dfa_match_len(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_perms_accum(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_dfa_matchn_until(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aa_fqlookupn_profile(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !9, !11, !12, !14, !16, !18, !19, !21, !23, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !40, !42, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !64, !66, !68, !70, !71, !73, !75, !77, !79, !81, !83, !84, !86, !87, !89, !91, !93, !95, !97, !99, !101, !102, !104, !106, !107, !109, !110, !111, !113, !114, !116, !117, !119, !121, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !137, !138, !140, !142, !144, !146, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !212, !213, !215, !217, !219, !220, !222, !223, !224, !226, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !268, !270, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293}
!llvm.named.register.sp = !{!295}
!llvm.module.flags = !{!296, !297, !298, !299, !300, !301, !302, !303}
!llvm.ident = !{!304}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/apparmor/label.c", i32 77, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.__aa_proxy_redirect, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/apparmor/label.c", i32 78, i32 2}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../security/apparmor/label.c", i32 81, i32 8}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../security/apparmor/label.c", i32 266, i32 2}
!11 = !{ptr @__func__.aa_vec_unique, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/apparmor/label.c", i32 267, i32 2}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../security/apparmor/label.c", i32 302, i32 2}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../security/apparmor/label.c", i32 314, i32 2}
!18 = !{ptr @__func__.aa_label_destroy, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../security/apparmor/label.c", i32 330, i32 7}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../security/apparmor/label.c", i32 378, i32 2}
!23 = !{ptr @__func__.aa_label_kref, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../security/apparmor/label.c", i32 380, i32 2}
!26 = !{ptr @__func__.aa_label_init, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../security/apparmor/label.c", i32 398, i32 2}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../security/apparmor/label.c", i32 399, i32 2}
!30 = !{ptr @__func__.aa_label_alloc, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../security/apparmor/label.c", i32 425, i32 2}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../security/apparmor/label.c", i32 429, i32 2}
!34 = !{ptr @aa_label_alloc._rs, !33, !"_rs", i1 false, i1 false}
!35 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @aa_label_alloc.descriptor, !33, !"descriptor", i1 false, i1 false}
!38 = !{ptr @__func__.aa_label_next_confined, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../security/apparmor/label.c", i32 476, i32 2}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../security/apparmor/label.c", i32 477, i32 2}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../security/apparmor/label.c", i32 500, i32 2}
!44 = !{ptr @__func__.__aa_label_next_not_in_set, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../security/apparmor/label.c", i32 501, i32 2}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../security/apparmor/label.c", i32 502, i32 2}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../security/apparmor/label.c", i32 503, i32 2}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../security/apparmor/label.c", i32 504, i32 2}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../security/apparmor/label.c", i32 505, i32 2}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../security/apparmor/label.c", i32 506, i32 2}
!57 = !{ptr @__func__.aa_label_is_subset, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../security/apparmor/label.c", i32 538, i32 2}
!59 = !{ptr @__func__.aa_label_is_unconfined_subset, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../security/apparmor/label.c", i32 566, i32 2}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../security/apparmor/label.c", i32 775, i32 2}
!63 = !{ptr @__func__.aa_label_remove, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @__func__.aa_label_find, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../security/apparmor/label.c", i32 909, i32 2}
!66 = !{ptr @__func__.aa_label_insert, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../security/apparmor/label.c", i32 930, i32 2}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../security/apparmor/label.c", i32 963, i32 2}
!70 = !{ptr @__func__.aa_label_next_in_merge, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../security/apparmor/label.c", i32 964, i32 2}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../security/apparmor/label.c", i32 967, i32 2}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../security/apparmor/label.c", i32 969, i32 2}
!77 = !{ptr @__func__.aa_label_find_merge, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../security/apparmor/label.c", i32 1186, i32 2}
!79 = !{ptr @__func__.aa_label_merge, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../security/apparmor/label.c", i32 1222, i32 2}
!81 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../security/apparmor/label.c", i32 1450, i32 2}
!83 = !{ptr @__func__.aa_update_label_name, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../security/apparmor/label.c", i32 1631, i32 2}
!86 = !{ptr @__func__.aa_label_snxprint, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../security/apparmor/label.c", i32 1636, i32 29}
!89 = !{ptr @.str.30, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../security/apparmor/label.c", i32 1637, i32 3}
!91 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../security/apparmor/label.c", i32 1645, i32 31}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../security/apparmor/label.c", i32 1658, i32 31}
!95 = !{ptr @.str.33, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../security/apparmor/label.c", i32 1658, i32 37}
!97 = !{ptr @.str.34, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../security/apparmor/label.c", i32 1666, i32 29}
!99 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../security/apparmor/label.c", i32 1691, i32 2}
!101 = !{ptr @__func__.aa_label_asxprint, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @__func__.aa_label_acntsxprint, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../security/apparmor/label.c", i32 1720, i32 2}
!104 = !{ptr @.str.36, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../security/apparmor/label.c", i32 1741, i32 2}
!106 = !{ptr @__func__.aa_label_xaudit, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @aa_label_xaudit._rs, !108, !"_rs", i1 false, i1 false}
!108 = !{!"../security/apparmor/label.c", i32 1748, i32 4}
!109 = !{ptr @.str.37, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @aa_label_xaudit.descriptor, !108, !"descriptor", i1 false, i1 false}
!111 = !{ptr @.str.38, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../security/apparmor/label.c", i32 1767, i32 2}
!113 = !{ptr @__func__.aa_label_seq_xprint, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @aa_label_seq_xprint._rs, !115, !"_rs", i1 false, i1 false}
!115 = !{!"../security/apparmor/label.c", i32 1776, i32 4}
!116 = !{ptr @aa_label_seq_xprint.descriptor, !115, !"descriptor", i1 false, i1 false}
!117 = !{ptr @.str.39, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../security/apparmor/label.c", i32 1782, i32 17}
!119 = !{ptr @__func__.aa_label_xprintk, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../security/apparmor/label.c", i32 1791, i32 2}
!121 = !{ptr @aa_label_xprintk._rs, !122, !"_rs", i1 false, i1 false}
!122 = !{!"../security/apparmor/label.c", i32 1799, i32 4}
!123 = !{ptr @aa_label_xprintk.descriptor, !122, !"descriptor", i1 false, i1 false}
!124 = !{ptr @.str.40, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../security/apparmor/label.c", i32 1802, i32 3}
!126 = !{ptr @aa_label_xprintk._entry, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @aa_label_xprintk._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.42, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../security/apparmor/label.c", i32 1805, i32 3}
!130 = !{ptr @aa_label_xprintk._entry.41, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @aa_label_xprintk._entry_ptr.43, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @aa_label_xprintk._entry.44, !133, !"_entry", i1 false, i1 false}
!133 = !{!"../security/apparmor/label.c", i32 1808, i32 3}
!134 = !{ptr @aa_label_xprintk._entry_ptr.45, !133, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.46, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../security/apparmor/label.c", i32 1894, i32 2}
!137 = !{ptr @__func__.aa_label_strn_parse, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.47, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../security/apparmor/label.c", i32 1895, i32 2}
!140 = !{ptr @__func__.aa_labelset_destroy, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../security/apparmor/label.c", i32 1984, i32 2}
!142 = !{ptr @__func__.aa_labelset_init, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../security/apparmor/label.c", i32 2004, i32 2}
!144 = !{ptr @aa_labelset_init.__key, !145, !"__key", i1 false, i1 false}
!145 = !{!"../security/apparmor/label.c", i32 2006, i32 2}
!146 = !{ptr @.str.48, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @__func__.__aa_labelset_update_subtree, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../security/apparmor/label.c", i32 2150, i32 2}
!149 = !{ptr @.str.49, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../security/apparmor/label.c", i32 2151, i32 2}
!151 = distinct !{null, !152, !"__warned", i1 false, i1 false}
!152 = !{!"../security/apparmor/label.c", i32 46, i32 16}
!153 = !{ptr @__func__.unique, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../security/apparmor/label.c", i32 228, i32 2}
!155 = !{ptr @.str.50, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../security/apparmor/label.c", i32 235, i32 3}
!157 = !{ptr @__func__.profile_cmp, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../security/apparmor/label.c", i32 139, i32 2}
!159 = !{ptr @.str.51, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../security/apparmor/label.c", i32 141, i32 2}
!161 = !{ptr @.str.52, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../security/apparmor/label.c", i32 142, i32 2}
!163 = !{ptr @.str.53, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../security/apparmor/label.c", i32 143, i32 2}
!165 = !{ptr @.str.54, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../security/apparmor/label.c", i32 144, i32 2}
!167 = !{ptr @__func__.ns_cmp, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../security/apparmor/label.c", i32 111, i32 2}
!169 = !{ptr @__func__.__label_remove, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../security/apparmor/label.c", i32 594, i32 2}
!171 = !{ptr @__func__.__label_replace, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../security/apparmor/label.c", i32 630, i32 2}
!173 = !{ptr @.str.55, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../security/apparmor/label.c", i32 631, i32 2}
!175 = !{ptr @.str.56, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../security/apparmor/label.c", i32 634, i32 2}
!177 = !{ptr @__func__.__label_insert, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../security/apparmor/label.c", i32 667, i32 2}
!179 = !{ptr @.str.57, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../security/apparmor/label.c", i32 669, i32 2}
!181 = !{ptr @.str.58, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../security/apparmor/label.c", i32 671, i32 2}
!183 = !{ptr @.str.59, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../security/apparmor/label.c", i32 691, i32 4}
!185 = !{ptr @__func__.label_cmp, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../security/apparmor/label.c", i32 465, i32 2}
!187 = !{ptr @__func__.vec_cmp, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../security/apparmor/label.c", i32 169, i32 2}
!189 = !{ptr @.str.60, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../security/apparmor/label.c", i32 170, i32 2}
!191 = !{ptr @.str.61, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../security/apparmor/label.c", i32 172, i32 2}
!193 = !{ptr @.str.62, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../security/apparmor/label.c", i32 173, i32 2}
!195 = !{ptr @.str.63, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../security/apparmor/label.c", i32 174, i32 2}
!197 = !{ptr @__func__.vec_find, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../security/apparmor/label.c", i32 839, i32 2}
!199 = !{ptr @.str.64, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../security/apparmor/label.c", i32 840, i32 2}
!201 = !{ptr @.str.65, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../security/apparmor/label.c", i32 841, i32 2}
!203 = !{ptr @__func__.__vec_find, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../security/apparmor/label.c", i32 723, i32 2}
!205 = !{ptr @__func__.vec_create_and_insert_label, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../security/apparmor/label.c", i32 861, i32 2}
!207 = !{ptr @__func__.__label_find, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../security/apparmor/label.c", i32 756, i32 2}
!209 = !{ptr @.str.66, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../security/apparmor/include/label.h", i32 424, i32 3}
!211 = !{ptr @.str.67, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @__func__.aa_get_newest_label, !210, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.68, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../security/apparmor/include/label.h", i32 425, i32 3}
!215 = !{ptr @.str.69, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../security/apparmor/include/label.h", i32 431, i32 3}
!217 = distinct !{null, !218, !"__warned", i1 false, i1 false}
!218 = !{!"../security/apparmor/include/label.h", i32 401, i32 7}
!219 = !{ptr @.str.70, !218, !"<string literal>", i1 false, i1 false}
!220 = distinct !{null, !221, !"__warned", i1 false, i1 false}
!221 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!222 = !{ptr @.str.71, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.72, !221, !"<string literal>", i1 false, i1 false}
!224 = distinct !{null, !225, !"__warned", i1 false, i1 false}
!225 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!226 = !{ptr @.str.73, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @__func__.__label_find_merge, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../security/apparmor/label.c", i32 1145, i32 2}
!229 = !{ptr @__func__.label_merge_cmp, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../security/apparmor/label.c", i32 1009, i32 2}
!231 = !{ptr @.str.74, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../security/apparmor/label.c", i32 1011, i32 2}
!233 = !{ptr @__func__.label_merge_insert, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../security/apparmor/label.c", i32 1058, i32 2}
!235 = !{ptr @.str.75, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../security/apparmor/label.c", i32 1059, i32 2}
!237 = !{ptr @.str.76, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../security/apparmor/label.c", i32 1061, i32 2}
!239 = !{ptr @.str.77, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../security/apparmor/label.c", i32 1063, i32 2}
!241 = distinct !{null, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../security/apparmor/label.c", i32 1066, i32 3}
!243 = !{ptr @.str.79, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../security/apparmor/label.c", i32 1069, i32 4}
!245 = !{ptr @.str.80, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../security/apparmor/label.c", i32 1070, i32 4}
!247 = !{ptr @__func__.vec_unconfined, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../security/apparmor/label.c", i32 204, i32 2}
!249 = !{ptr @.str.81, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../security/apparmor/label.c", i32 1279, i32 55}
!251 = !{ptr @__func__.aa_profile_snxprint, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../security/apparmor/label.c", i32 1517, i32 2}
!253 = distinct !{null, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../security/apparmor/label.c", i32 1518, i32 2}
!255 = distinct !{null, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../security/apparmor/label.c", i32 1540, i32 31}
!257 = !{ptr @.str.84, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../security/apparmor/label.c", i32 1547, i32 30}
!259 = !{ptr @.str.85, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../security/apparmor/label.c", i32 1571, i32 12}
!261 = !{ptr @.str.86, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../security/apparmor/label.c", i32 1576, i32 10}
!263 = distinct !{null, !264, !"__warned", i1 false, i1 false}
!264 = !{!"../security/apparmor/include/cred.h", i32 89, i32 27}
!265 = !{ptr @.str.87, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../security/apparmor/include/cred.h", i32 51, i32 2}
!267 = !{ptr @__func__.aa_cred_raw_label, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @.str.88, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../security/apparmor/include/cred.h", i32 26, i32 2}
!270 = !{ptr @__func__.cred_label, !269, !"<string literal>", i1 false, i1 false}
!271 = distinct !{null, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../security/apparmor/label.c", i32 1841, i32 2}
!273 = !{ptr @__func__.__labelset_update, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../security/apparmor/label.c", i32 2124, i32 2}
!275 = distinct !{null, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../security/apparmor/label.c", i32 2016, i32 2}
!277 = !{ptr @__func__.vec_is_stale, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../security/apparmor/label.c", i32 190, i32 2}
!279 = !{ptr @__func__.__label_update, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../security/apparmor/label.c", i32 2055, i32 2}
!281 = !{ptr @.str.89, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../security/apparmor/label.c", i32 2056, i32 2}
!283 = !{ptr @.str.90, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../security/apparmor/label.c", i32 2069, i32 3}
!285 = !{ptr @.str.91, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../security/apparmor/label.c", i32 2071, i32 3}
!287 = !{ptr @.str.92, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../security/apparmor/label.c", i32 2072, i32 3}
!289 = !{ptr @.str.93, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../security/apparmor/label.c", i32 2073, i32 3}
!291 = !{ptr @.str.94, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../security/apparmor/label.c", i32 2085, i32 4}
!293 = !{ptr @.str.95, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../security/apparmor/label.c", i32 2095, i32 3}
!295 = !{!"sp"}
!296 = !{i32 1, !"wchar_size", i32 2}
!297 = !{i32 1, !"min_enum_size", i32 4}
!298 = !{i32 8, !"branch-target-enforcement", i32 0}
!299 = !{i32 8, !"sign-return-address", i32 0}
!300 = !{i32 8, !"sign-return-address-all", i32 0}
!301 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!302 = !{i32 7, !"uwtable", i32 1}
!303 = !{i32 7, !"frame-pointer", i32 2}
!304 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!305 = !{i64 2148579652}
!306 = !{i64 2148494116, i64 2148494148, i64 2148494177, i64 2148494211, i64 2148494242, i64 2148494265}
!307 = !{!"branch_weights", i32 2000, i32 1}
!308 = !{i64 2149625622}
!309 = !{ptr @aa_label_kref, ptr @aa_proxy_kref, ptr @aa_str_kref}
!310 = !{i64 2148491651, i64 2148491683, i64 2148491712, i64 2148491746, i64 2148491777, i64 2148491800}
!311 = !{!"branch_weights", i32 1, i32 2000}
!312 = !{i64 2158440290}
!313 = !{i64 2158452570}
!314 = !{i8 0, i8 2}
!315 = !{i64 2148303514, i64 2148303519, i64 2148303532, i64 2148303576, i64 2148303610, i64 2148303631}
!316 = !{i64 975634, i64 975658, i64 975679, i64 975696, i64 975713}
!317 = !{i64 2149317635}
!318 = !{i64 2149317901}
!319 = !{!"auto-init"}
