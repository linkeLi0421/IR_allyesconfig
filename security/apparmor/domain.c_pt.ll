; ModuleID = '/llk/IR_all_yes/security/apparmor/domain.c_pt.bc'
source_filename = "../security/apparmor/domain.c"
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
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.4 }
%union.anon.4 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.14, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.lsm_blob_sizes = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.aa_domain = type { i32, ptr }
%struct.aa_profile = type { %struct.aa_policy, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, %struct.aa_policydb, %struct.aa_file_rules, %struct.aa_caps, i32, ptr, %struct.aa_rlimit, i32, ptr, ptr, ptr, ptr, [9 x ptr], ptr, %struct.aa_label }
%struct.aa_policy = type { ptr, ptr, %struct.list_head, %struct.list_head }
%struct.aa_policydb = type { ptr, [17 x i32] }
%struct.aa_file_rules = type { i32, ptr, %struct.aa_domain }
%struct.aa_caps = type { %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.aa_rlimit = type { i32, [16 x %struct.rlimit] }
%struct.rlimit = type { i32, i32 }
%struct.aa_label = type { %struct.kref, %struct.rb_node, %struct.callback_head, ptr, ptr, i32, i32, i32, [0 x ptr] }
%struct.kref = type { %struct.refcount_struct }
%struct.rb_node = type { i32, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.path_cond = type { %struct.kuid_t, i16 }
%struct.linux_binprm = type { ptr, i32, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rlimit, [256 x i8] }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.147, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.148, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.149, ptr, %struct.address_space, %struct.list_head, %union.anon.150, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.147 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.148 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.149 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.150 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.136, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.136 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.30 }
%union.anon.30 = type { %struct.callback_head }
%struct.aa_task_ctx = type { ptr, ptr, ptr, i64 }
%struct.aa_proxy = type { %struct.kref, ptr }
%struct.aa_ns = type { %struct.aa_policy, ptr, %struct.mutex, %struct.aa_ns_acct, ptr, %struct.list_head, %struct.atomic_t, i32, i32, i32, %struct.wait_queue_head, %struct.aa_labelset, %struct.list_head, [13 x ptr] }
%struct.aa_ns_acct = type { i32, i32, i32, i32 }
%struct.aa_labelset = type { %struct.rwlock_t, %struct.rb_root }
%struct.aa_dfa = type { %struct.kref, i16, i32, [8 x ptr] }
%struct.table_header = type { i16, i16, i32, i32, [0 x i8] }

@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"security/apparmor/domain.c\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AppArmor WARN %s: ((!name)): \00", [34 x i8] zeroinitializer }, align 32
@__func__.x_table_lookup = private unnamed_addr constant [15 x i8] c"x_table_lookup\00", align 1
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"AppArmor WARN %s: ((!cred_label(bprm->cred))): \00", [48 x i8] zeroinitializer }, align 32
@__func__.apparmor_bprm_creds_for_exec = private unnamed_addr constant [29 x i8] c"apparmor_bprm_creds_for_exec\00", align 1
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AppArmor WARN %s: ((!ctx)): \00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"AppArmor WARN %s: ((!__new_)): \00", [32 x i8] zeroinitializer }, align 32
@aa_g_debug = external dso_local local_unnamed_addr global i8, align 1
@apparmor_bprm_creds_for_exec._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@apparmor_bprm_creds_for_exec.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @__func__.apparmor_bprm_creds_for_exec, ptr @.str, ptr @.str.7, i8 0, i8 -31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apparmor\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AppArmor: label build failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AppArmor WARN %s: ((!new)): \00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"no new privs\00", [19 x i8] zeroinitializer }, align 32
@apparmor_bprm_creds_for_exec.__UNIQUE_ID_ddebug593 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @__func__.apparmor_bprm_creds_for_exec, ptr @.str, ptr @.str.10, i8 0, i8 -21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"scrubbing environment variables for %s label=\00", [50 x i8] zeroinitializer }, align 32
@apparmor_bprm_creds_for_exec.__UNIQUE_ID_ddebug594 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @__func__.apparmor_bprm_creds_for_exec, ptr @.str, ptr @.str.11, i8 0, i8 -20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@apparmor_bprm_creds_for_exec.__UNIQUE_ID_ddebug595 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @__func__.apparmor_bprm_creds_for_exec, ptr @.str, ptr @.str.12, i8 0, i8 -18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"apparmor: clearing unsafe personality bits. %s label=\00", [42 x i8] zeroinitializer }, align 32
@apparmor_bprm_creds_for_exec.__UNIQUE_ID_ddebug596 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @__func__.apparmor_bprm_creds_for_exec, ptr @.str, ptr @.str.11, i8 0, i8 -17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@nullperms = external dso_local global %struct.aa_perms, align 4
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"exec\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unconfined can not change_hat\00", [34 x i8] zeroinitializer }, align 32
@__func__.aa_change_hat = private unnamed_addr constant [14 x i8] c"aa_change_hat\00", align 1
@aa_change_hat._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@aa_change_hat.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @__func__.aa_change_hat, ptr @.str, ptr @.str.15, i8 1, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"AppArmor: no_new_privs - change_hat denied\00", [53 x i8] zeroinitializer }, align 32
@aa_change_hat._rs.16 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@aa_change_hat.descriptor.17 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @__func__.aa_change_hat, ptr @.str, ptr @.str.15, i8 1, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed token match\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"change_hat\00", [21 x i8] zeroinitializer }, align 32
@aa_change_profile._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@aa_change_profile.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.20, ptr @.str, ptr @.str.21, i8 1, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aa_change_profile\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"AppArmor: no profile name\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stack_onexec\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"change_onexec\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stack\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"change_profile\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"label not found\00", [16 x i8] zeroinitializer }, align 32
@aa_g_profile_mode = external dso_local local_unnamed_addr global i32, align 4
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed null profile create\00", [37 x i8] zeroinitializer }, align 32
@aa_change_profile._rs.28 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@aa_change_profile.descriptor.29 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.20, ptr @.str, ptr @.str.7, i8 1, i8 96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@aa_change_profile._rs.30 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@aa_change_profile.descriptor.31 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.20, ptr @.str, ptr @.str.15, i8 1, i8 98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to build target label\00", [35 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@apparmor_blob_sizes = external dso_local local_unnamed_addr global %struct.lsm_blob_sizes, align 4
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"security/apparmor/include/cred.h\00", [63 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AppArmor WARN %s: ((!blob)): \00", [34 x i8] zeroinitializer }, align 32
@__func__.cred_label = private unnamed_addr constant [11 x i8] c"cred_label\00", align 1
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"security/apparmor/include/label.h\00", [62 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AppArmor WARN %s: ((!l->proxy)): \00", [62 x i8] zeroinitializer }, align 32
@__func__.aa_get_newest_label = private unnamed_addr constant [20 x i8] c"aa_get_newest_label\00", align 1
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"AppArmor WARN %s: ((!l->proxy->label)): \00", [55 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AppArmor WARN %s: ((!tmp)): \00", [35 x i8] zeroinitializer }, align 32
@aa_get_label_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"AppArmor WARN %s: ((!label)): \00", [33 x i8] zeroinitializer }, align 32
@__func__.handle_onexec = private unnamed_addr constant [14 x i8] c"handle_onexec\00", align 1
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"AppArmor WARN %s: ((!onexec)): \00", [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AppArmor WARN %s: ((!bprm)): \00", [34 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"AppArmor WARN %s: ((!buffer)): \00", [32 x i8] zeroinitializer }, align 32
@handle_onexec._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@handle_onexec.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @__func__.handle_onexec, ptr @.str, ptr @.str.7, i8 0, i8 -52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@handle_onexec._rs.47 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@handle_onexec.descriptor.48 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @__func__.handle_onexec, ptr @.str, ptr @.str.7, i8 0, i8 -49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"change_profile onexec\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AppArmor WARN %s: ((!profile)): \00", [63 x i8] zeroinitializer }, align 32
@__func__.profile_onexec = private unnamed_addr constant [15 x i8] c"profile_onexec\00", align 1
@profile_onexec._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@profile_onexec.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @__func__.profile_onexec, ptr @.str, ptr @.str.51, i8 0, i8 -68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AppArmor: name lookup ix on error\00", [62 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"no change_onexec valid for executable\00", [58 x i8] zeroinitializer }, align 32
@profile_onexec.__UNIQUE_ID_ddebug591 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @__func__.profile_onexec, ptr @.str, ptr @.str.53, i8 0, i8 -61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"apparmor: scrubbing environment variables for %s label=\00", [40 x i8] zeroinitializer }, align 32
@profile_onexec.__UNIQUE_ID_ddebug592 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @__func__.profile_onexec, ptr @.str, ptr @.str.11, i8 0, i8 -61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@allperms = external dso_local local_unnamed_addr global %struct.aa_perms, align 4
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"//&\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"&\00", [30 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c":\00", [30 x i8] zeroinitializer }, align 32
@__func__.profile_transition = private unnamed_addr constant [19 x i8] c"profile_transition\00", align 1
@profile_transition._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@profile_transition.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @__func__.profile_transition, ptr @.str, ptr @.str.51, i8 0, i8 -95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@profile_transition._rs.57 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@profile_transition.descriptor.58 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @__func__.profile_transition, ptr @.str, ptr @.str.59, i8 0, i8 -92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"AppArmor: unconfined attached to new label\00", [53 x i8] zeroinitializer }, align 32
@profile_transition._rs.60 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@profile_transition.descriptor.61 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @__func__.profile_transition, ptr @.str, ptr @.str.62, i8 0, i8 -91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"AppArmor: unconfined exec no attachment\00", [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"profile transition not found\00", [35 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not create null profile\00", [34 x i8] zeroinitializer }, align 32
@profile_transition.__UNIQUE_ID_ddebug589 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @__func__.profile_transition, ptr @.str, ptr @.str.65, i8 0, i8 -80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"apparmor: scrubbing environment variables for %s profile=\00", [38 x i8] zeroinitializer }, align 32
@profile_transition.__UNIQUE_ID_ddebug590 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @__func__.profile_transition, ptr @.str, ptr @.str.11, i8 0, i8 -80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__func__.find_attach = private unnamed_addr constant [12 x i8] c"find_attach\00", align 1
@.str.66 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AppArmor WARN %s: ((!head)): \00", [34 x i8] zeroinitializer }, align 32
@find_attach.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.67 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"conflicting profile attachments\00", [32 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ix fallback\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ux fallback\00", [20 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ptrace prevents transition\00", [37 x i8] zeroinitializer }, align 32
@ptrace_parent.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/ptrace.h\00", [41 x i8] zeroinitializer }, align 32
@__func__.set_cred_label = private unnamed_addr constant [15 x i8] c"set_cred_label\00", align 1
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@__func__.aa_cred_raw_label = private unnamed_addr constant [18 x i8] c"aa_cred_raw_label\00", align 1
@.str.74 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AppArmor WARN %s: ((!hats)): \00", [34 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AppArmor WARN %s: ((count < 1)): \00", [62 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"conflicting targets types\00", [38 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"target not hat\00", [17 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hat not found\00", [18 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no hats defined\00", [16 x i8] zeroinitializer }, align 32
@change_hat._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@change_hat.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.19, ptr @.str, ptr @.str.7, i8 1, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"label build failed\00", [45 x i8] zeroinitializer }, align 32
@aa_get_profile_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.81 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"security/apparmor/include/policy.h\00", [61 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"conflicting target types\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1024, i64 2048]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967283]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 518, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 871, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 872, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 899, i32 9 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 903, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 924, i32 10 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 942, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 945, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 953, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 971, i32 10 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1175, i32 10 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1201, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1222, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1248, i32 9 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1252, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1321, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1328, i32 9 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1330, i32 9 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1334, i32 9 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1336, i32 9 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1348, i32 10 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1362, i32 11 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1407, i32 9 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1417, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1428, i32 11 }
@___asan_gen_.188 = private unnamed_addr constant [36 x i8] c"../security/apparmor/include/cred.h\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 26, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 424, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 425, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 431, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [37 x i8] c"../security/apparmor/include/label.h\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 401, i32 7 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 695, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 723, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 804, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 805, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 806, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 807, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 815, i32 9 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 827, i32 9 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 729, i32 36 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 732, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 752, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 762, i32 10 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 779, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 161, i32 50 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 106, i32 50 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 112, i32 53 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 645, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 657, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 660, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 675, i32 11 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 687, i32 11 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 703, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 397, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 401, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 486, i32 12 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 601, i32 12 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 606, i32 12 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 85, i32 11 }
@___asan_gen_.302 = private unnamed_addr constant [26 x i8] c"../include/linux/ptrace.h\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 127, i32 10 }
@___asan_gen_.305 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 253, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1047, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1048, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1062, i32 12 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1073, i32 12 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1094, i32 11 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1099, i32 9 }
@___asan_gen_.325 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1120, i32 8 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1124, i32 10 }
@___asan_gen_.332 = private unnamed_addr constant [38 x i8] c"../security/apparmor/include/policy.h\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 279, i32 7 }
@___asan_gen_.334 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.335 = private constant [30 x i8] c"../security/apparmor/domain.c\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1000, i32 10 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @apparmor_bprm_creds_for_exec._rs, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @aa_change_hat._rs, ptr @.str.15, ptr @aa_change_hat._rs.16, ptr @.str.18, ptr @.str.19, ptr @aa_change_profile._rs, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @aa_change_profile._rs.28, ptr @aa_change_profile._rs.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @handle_onexec._rs, ptr @handle_onexec._rs.47, ptr @.str.49, ptr @.str.50, ptr @profile_onexec._rs, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @profile_transition._rs, ptr @profile_transition._rs.57, ptr @.str.59, ptr @profile_transition._rs.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @change_hat._rs, ptr @.str.80, ptr @.str.81, ptr @.str.82], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apparmor_bprm_creds_for_exec._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_change_hat._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_change_hat._rs.16 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_change_profile._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_change_profile._rs.28 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_change_profile._rs.30 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_onexec._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_onexec._rs.47 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @profile_onexec._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @profile_transition._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @profile_transition._rs.57 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @profile_transition._rs.60 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @change_hat._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aa_free_domain_entries(ptr noundef %domain) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %domain, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %table = getelementptr inbounds %struct.aa_domain, ptr %domain, i32 0, i32 1
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %for.cond.preheader

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.then
  %2 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %domain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14 = icmp sgt i32 %3, 0
  br i1 %cmp14, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %table, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.015
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree_sensitive(ptr noundef %7) #8
  %inc = add nuw nsw i32 %i.015, 1
  %8 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %domain, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %10 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %table, align 4
  tail call void @kfree_sensitive(ptr noundef %11) #8
  %12 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %table, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @x_table_lookup(ptr noundef %profile, i32 noundef %xindex, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and1 = and i32 %xindex, 1023
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !214

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 518, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.x_table_lookup) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %table = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 13, i32 2, i32 1
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %and1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %name, align 4
  %tobool26.not56 = icmp eq ptr %3, null
  br i1 %tobool26.not56, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %and27 = and i32 %xindex, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end34, label %if.then29

if.then29:                                        ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call ptr @aa_find_child(ptr noundef %profile, ptr noundef nonnull %3) #8
  %tobool30.not = icmp eq ptr %call, null
  %label32 = getelementptr inbounds %struct.aa_profile, ptr %call, i32 0, i32 25
  %spec.select = select i1 %tobool30.not, ptr null, ptr %label32
  br label %for.inc

if.end34:                                         ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  %label35 = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 25
  %call36 = tail call ptr @aa_label_parse(ptr noundef %label35, ptr noundef nonnull %3, i32 noundef 3264, i1 noundef zeroext true, i1 noundef zeroext false) #8
  %cmp.i = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  %spec.select55 = select i1 %cmp.i, ptr null, ptr %call36
  br label %for.inc

for.inc:                                          ; preds = %if.end34, %if.then29
  %label.2 = phi ptr [ %spec.select, %if.then29 ], [ %spec.select55, %if.end34 ]
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %name, align 4
  br label %for.end

for.end:                                          ; preds = %for.inc, %if.end.for.end_crit_edge
  %label.0.lcssa = phi ptr [ null, %if.end.for.end_crit_edge ], [ %label.2, %for.inc ]
  ret ptr %label.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aa_find_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aa_label_parse(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @apparmor_bprm_creds_for_exec(ptr noundef %bprm) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca ptr, align 4
  %unsafe = alloca i8, align 1
  %cond = alloca %struct.path_cond, align 8
  %___lvec_localtmp = alloca [8 x ptr], align 4
  %___pvec_localtmp = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info) #8
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %info, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %unsafe) #8
  %1 = ptrtoint ptr %unsafe to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %unsafe, align 1
  %file = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 8
  %2 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %file, align 4
  %f_path.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %f_path.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_path.i, align 8
  %mnt_userns.i.i = getelementptr inbounds %struct.vfsmount, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mnt_userns.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %mnt_userns.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !215
  %8 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 53
  %14 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 2
  %16 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %17 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %cmp.i.i.i.i = icmp eq ptr %7, @init_user_ns
  %cmp.i.i.i = icmp eq ptr %15, %7
  %spec.select.i.i.i = or i1 %cmp.i.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %entry.i_uid_into_mnt.exit_crit_edge, label %if.end.i.i

entry.i_uid_into_mnt.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %i_uid_into_mnt.exit

if.end.i.i:                                       ; preds = %entry
  %cmp.i21.i.i = icmp eq ptr %15, @init_user_ns
  br i1 %cmp.i21.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %if.else.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i = tail call i32 @from_kuid(ptr noundef %15, [1 x i32] %17) #8
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  %uid.0.i.i = phi i32 [ %call6.i.i, %if.else.i.i ], [ %.unpack.i, %if.end.i.i.if.end7.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uid.0.i.i)
  %cmp.i.i = icmp eq i32 %uid.0.i.i, -1
  br i1 %cmp.i.i, label %if.end7.i.i.i_uid_into_mnt.exit_crit_edge, label %if.end9.i.i

if.end7.i.i.i_uid_into_mnt.exit_crit_edge:        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i_uid_into_mnt.exit

if.end9.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call10.i.i = tail call i32 @make_kuid(ptr noundef %7, i32 noundef %uid.0.i.i) #8
  br label %i_uid_into_mnt.exit

i_uid_into_mnt.exit:                              ; preds = %if.end9.i.i, %if.end7.i.i.i_uid_into_mnt.exit_crit_edge, %entry.i_uid_into_mnt.exit_crit_edge
  %retval.sroa.0.0.i.i = phi i32 [ %call10.i.i, %if.end9.i.i ], [ -1, %if.end7.i.i.i_uid_into_mnt.exit_crit_edge ], [ %.unpack.i, %entry.i_uid_into_mnt.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cond) #8
  %18 = ptrtoint ptr %cond to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 -1, ptr %cond, align 8, !annotation !216
  store i32 %retval.sroa.0.0.i.i, ptr %cond, align 8
  %mode = getelementptr inbounds %struct.path_cond, ptr %cond, i32 0, i32 1
  %19 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %file, align 4
  %f_inode.i619 = getelementptr inbounds %struct.file, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %f_inode.i619 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %f_inode.i619, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %22, align 8
  %25 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %mode, align 4
  %26 = tail call i32 @llvm.read_register.i32(metadata !204) #8
  %and.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %security.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 215
  %30 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %security.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @apparmor_blob_sizes, i32 0, i32 6) to i32))
  %32 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @apparmor_blob_sizes, i32 0, i32 6), align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 %32
  %cred = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 9
  %33 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cred, align 4
  %security.i620 = getelementptr inbounds %struct.cred, ptr %34, i32 0, i32 23
  %35 = ptrtoint ptr %security.i620 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %security.i620, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @apparmor_blob_sizes to i32))
  %37 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i621 = getelementptr i8, ptr %36, i32 %37
  %tobool.not.i = icmp eq ptr %add.ptr.i621, null
  br i1 %tobool.not.i, label %do.end.i, label %i_uid_into_mnt.exit.cred_label.exit_crit_edge, !prof !214

i_uid_into_mnt.exit.cred_label.exit_crit_edge:    ; preds = %i_uid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cred_label.exit

do.end.i:                                         ; preds = %i_uid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.cred_label) #8
  br label %cred_label.exit

cred_label.exit:                                  ; preds = %do.end.i, %i_uid_into_mnt.exit.cred_label.exit_crit_edge
  %38 = ptrtoint ptr %add.ptr.i621 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i621, align 4
  %tobool.not = icmp eq ptr %39, null
  br i1 %tobool.not, label %do.end, label %cred_label.exit.if.end_crit_edge, !prof !214

cred_label.exit.if.end_crit_edge:                 ; preds = %cred_label.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %cred_label.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 871, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.apparmor_bprm_creds_for_exec) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %cred_label.exit.if.end_crit_edge
  %tobool34.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool34.not, label %do.end52, label %if.end.if.end58_crit_edge, !prof !214

if.end.if.end58_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

do.end52:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 872, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.apparmor_bprm_creds_for_exec) #8
  br label %if.end58

if.end58:                                         ; preds = %do.end52, %if.end.if.end58_crit_edge
  %40 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cred, align 4
  %security.i622 = getelementptr inbounds %struct.cred, ptr %41, i32 0, i32 23
  %42 = ptrtoint ptr %security.i622 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %security.i622, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @apparmor_blob_sizes to i32))
  %44 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i623 = getelementptr i8, ptr %43, i32 %44
  %tobool.not.i624 = icmp eq ptr %add.ptr.i623, null
  br i1 %tobool.not.i624, label %do.end.i625, label %if.end58.cred_label.exit626_crit_edge, !prof !214

if.end58.cred_label.exit626_crit_edge:            ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cred_label.exit626

do.end.i625:                                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.cred_label) #8
  br label %cred_label.exit626

cred_label.exit626:                               ; preds = %do.end.i625, %if.end58.cred_label.exit626_crit_edge
  %45 = ptrtoint ptr %add.ptr.i623 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr.i623, align 4
  %call70 = tail call fastcc ptr @aa_get_newest_label(ptr noundef %46)
  %unsafe71 = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 10
  %47 = ptrtoint ptr %unsafe71 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %unsafe71, align 4
  %and = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool72.not = icmp eq i32 %and, 0
  br i1 %tobool72.not, label %cred_label.exit626.if.end80_crit_edge, label %land.lhs.true

cred_label.exit626.if.end80_crit_edge:            ; preds = %cred_label.exit626
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

land.lhs.true:                                    ; preds = %cred_label.exit626
  %flags = getelementptr inbounds %struct.aa_label, ptr %call70, i32 0, i32 5
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags, align 4
  %and73 = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %land.lhs.true75, label %land.lhs.true.if.end80_crit_edge

land.lhs.true.if.end80_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

land.lhs.true75:                                  ; preds = %land.lhs.true
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr.i, align 8
  %tobool76.not = icmp eq ptr %52, null
  br i1 %tobool76.not, label %if.then77, label %land.lhs.true75.if.end80_crit_edge

land.lhs.true75.if.end80_crit_edge:               ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then77:                                        ; preds = %land.lhs.true75
  %tobool.not.i627 = icmp eq ptr %call70, null
  br i1 %tobool.not.i627, label %if.then77.aa_get_label.exit_crit_edge, label %if.then.i

if.then77.aa_get_label.exit_crit_edge:            ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_get_label.exit

if.then.i:                                        ; preds = %if.then77
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call70, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull %call70, i32 1, i32 3, i32 1) #8
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call70, ptr nonnull %call70, i32 1, ptr nonnull elementtype(i32) %call70) #8, !srcloc !217
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !214

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %54 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %.not.i.i.i.i.i = icmp sgt i32 %54, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.aa_get_label.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !218

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.aa_get_label.exit_crit_edge:    ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_get_label.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call70, i32 noundef %.sink.i.i.i.i.i) #8
  br label %aa_get_label.exit

aa_get_label.exit:                                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.aa_get_label.exit_crit_edge, %if.then77.aa_get_label.exit_crit_edge
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call70, ptr %add.ptr.i, align 8
  br label %if.end80

if.end80:                                         ; preds = %aa_get_label.exit, %land.lhs.true75.if.end80_crit_edge, %land.lhs.true.if.end80_crit_edge, %cred_label.exit626.if.end80_crit_edge
  %call81 = tail call ptr @aa_get_buffer(i1 noundef zeroext false) #8
  %tobool82.not = icmp eq ptr %call81, null
  br i1 %tobool82.not, label %if.end80.done_crit_edge, label %if.end84

if.end80.done_crit_edge:                          ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end84:                                         ; preds = %if.end80
  %onexec = getelementptr inbounds %struct.aa_task_ctx, ptr %add.ptr.i, i32 0, i32 1
  %56 = ptrtoint ptr %onexec to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %onexec, align 4
  %tobool85.not = icmp eq ptr %57, null
  br i1 %tobool85.not, label %if.else, label %if.then86

if.then86:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  %token = getelementptr inbounds %struct.aa_task_ctx, ptr %add.ptr.i, i32 0, i32 3
  %58 = ptrtoint ptr %token to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %token, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %59)
  %tobool88 = icmp ne i64 %59, 0
  %call89 = call fastcc ptr @handle_onexec(ptr noundef %call70, ptr noundef nonnull %57, i1 noundef zeroext %tobool88, ptr noundef %bprm, ptr noundef nonnull %call81, ptr noundef nonnull %cond, ptr noundef nonnull %unsafe)
  br label %do.body304

if.else:                                          ; preds = %if.end84
  %size = getelementptr inbounds %struct.aa_label, ptr %call70, i32 0, i32 7
  %60 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp = icmp sgt i32 %61, 1
  br i1 %cmp, label %if.then90, label %if.else269

if.then90:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %___lvec_localtmp) #8
  %62 = call ptr @memset(ptr %___lvec_localtmp, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %___pvec_localtmp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %61)
  %cmp92 = icmp ult i32 %61, 9
  %63 = call ptr @memset(ptr %___pvec_localtmp, i32 255, i32 32)
  br i1 %cmp92, label %for.cond.preheader, label %if.end8.i.i

for.cond.preheader:                               ; preds = %if.then90
  %64 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp95757 = icmp sgt i32 %65, 0
  br i1 %cmp95757, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.cond107.preheader_crit_edge

for.cond.preheader.for.cond107.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond107.preheader

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0758 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %___lvec_localtmp, i32 %i.0758
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0758, 1
  %67 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %size, align 4
  %cmp95 = icmp slt i32 %inc, %68
  br i1 %cmp95, label %for.body.for.body_crit_edge, label %for.body.for.cond107.preheader_crit_edge

for.body.for.cond107.preheader_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond107.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end8.i.i:                                      ; preds = %if.then90
  %mul = shl i32 %61, 2
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #11
  %tobool101.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool101.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end8.i.i.for.cond107.preheader_crit_edge

if.end8.i.i.for.cond107.preheader_crit_edge:      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond107.preheader

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond107.preheader:                            ; preds = %if.end8.i.i.for.cond107.preheader_crit_edge, %for.body.for.cond107.preheader_crit_edge, %for.cond.preheader.for.cond107.preheader_crit_edge
  %__lvec.0789 = phi ptr [ %call9.i.i, %if.end8.i.i.for.cond107.preheader_crit_edge ], [ %___lvec_localtmp, %for.cond.preheader.for.cond107.preheader_crit_edge ], [ %___lvec_localtmp, %for.body.for.cond107.preheader_crit_edge ]
  %arrayidx109759 = getelementptr %struct.aa_label, ptr %call70, i32 0, i32 8, i32 0
  %69 = ptrtoint ptr %arrayidx109759 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx109759, align 4
  %tobool110.not760 = icmp eq ptr %70, null
  br i1 %tobool110.not760, label %for.cond107.preheader.for.cond158.preheader_crit_edge, label %for.cond107.preheader.for.body111_crit_edge

for.cond107.preheader.for.body111_crit_edge:      ; preds = %for.cond107.preheader
  br label %for.body111

for.cond107.preheader.for.cond158.preheader_crit_edge: ; preds = %for.cond107.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond158.preheader

for.cond158.preheader:                            ; preds = %if.end151.for.cond158.preheader_crit_edge, %for.cond107.preheader.for.cond158.preheader_crit_edge
  %71 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp160763 = icmp sgt i32 %72, 0
  br i1 %cmp160763, label %for.cond158.preheader.for.body161_crit_edge, label %for.cond158.preheader.for.end208_crit_edge

for.cond158.preheader.for.end208_crit_edge:       ; preds = %for.cond158.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end208

for.cond158.preheader.for.body161_crit_edge:      ; preds = %for.cond158.preheader
  br label %for.body161

for.body111:                                      ; preds = %if.end151.for.body111_crit_edge, %for.cond107.preheader.for.body111_crit_edge
  %73 = phi ptr [ %76, %if.end151.for.body111_crit_edge ], [ %70, %for.cond107.preheader.for.body111_crit_edge ]
  %__i.sroa.0.0762 = phi i32 [ %inc156, %if.end151.for.body111_crit_edge ], [ 0, %for.cond107.preheader.for.body111_crit_edge ]
  %call112 = call fastcc ptr @profile_transition(ptr noundef nonnull %73, ptr noundef %bprm, ptr noundef nonnull %call81, ptr noundef nonnull %cond, ptr noundef nonnull %unsafe)
  %tobool115.not = icmp eq ptr %call112, null
  br i1 %tobool115.not, label %if.end139.thread, label %if.end139, !prof !214

if.end139.thread:                                 ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 901, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.apparmor_bprm_creds_for_exec) #8
  br label %if.end151

if.end139:                                        ; preds = %for.body111
  %cmp.i = icmp ugt ptr %call112, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end139.do.body242_crit_edge, label %if.end139.if.end151_crit_edge

if.end139.if.end151_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end151

if.end139.do.body242_crit_edge:                   ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body242

if.end151:                                        ; preds = %if.end139.if.end151_crit_edge, %if.end139.thread
  %inc156 = add i32 %__i.sroa.0.0762, 1
  %arrayidx153 = getelementptr ptr, ptr %__lvec.0789, i32 %__i.sroa.0.0762
  %74 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call112, ptr %arrayidx153, align 4
  %arrayidx109 = getelementptr %struct.aa_label, ptr %call70, i32 0, i32 8, i32 %inc156
  %75 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx109, align 4
  %tobool110.not = icmp eq ptr %76, null
  br i1 %tobool110.not, label %if.end151.for.cond158.preheader_crit_edge, label %if.end151.for.body111_crit_edge

if.end151.for.body111_crit_edge:                  ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body111

if.end151.for.cond158.preheader_crit_edge:        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond158.preheader

for.body161:                                      ; preds = %for.body161.for.body161_crit_edge, %for.cond158.preheader.for.body161_crit_edge
  %__j.1765 = phi i32 [ %inc165, %for.body161.for.body161_crit_edge ], [ 0, %for.cond158.preheader.for.body161_crit_edge ]
  %__count.0764 = phi i32 [ %add, %for.body161.for.body161_crit_edge ], [ 0, %for.cond158.preheader.for.body161_crit_edge ]
  %arrayidx162 = getelementptr ptr, ptr %__lvec.0789, i32 %__j.1765
  %77 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx162, align 4
  %size163 = getelementptr inbounds %struct.aa_label, ptr %78, i32 0, i32 7
  %79 = ptrtoint ptr %size163 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %size163, align 4
  %add = add i32 %80, %__count.0764
  %inc165 = add nuw nsw i32 %__j.1765, 1
  %exitcond.not = icmp eq i32 %inc165, %72
  br i1 %exitcond.not, label %for.end166, label %for.body161.for.body161_crit_edge

for.body161.for.body161_crit_edge:                ; preds = %for.body161
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body161

for.end166:                                       ; preds = %for.body161
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %add)
  %cmp167 = icmp slt i32 %add, 9
  br i1 %cmp167, label %for.cond171.preheader, label %if.end8.i.i658

for.cond171.preheader:                            ; preds = %for.end166
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp172766 = icmp sgt i32 %add, 0
  br i1 %cmp172766, label %for.body173.preheader, label %for.cond171.preheader.for.cond187.preheader_crit_edge

for.cond171.preheader.for.cond187.preheader_crit_edge: ; preds = %for.cond171.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond187.preheader

for.body173.preheader:                            ; preds = %for.cond171.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %81 = shl nuw nsw i32 %add, 2
  %82 = call ptr @memset(ptr %___pvec_localtmp, i32 0, i32 %81)
  br label %for.cond187.preheader

if.end8.i.i658:                                   ; preds = %for.end166
  %mul179 = shl i32 %add, 2
  %call9.i.i657 = call noalias align 128 ptr @__kmalloc(i32 noundef %mul179, i32 noundef 3520) #11
  %tobool183.not = icmp eq ptr %call9.i.i657, null
  br i1 %tobool183.not, label %if.end8.i.i658.do.body242_crit_edge, label %if.end8.i.i658.for.cond187.preheader_crit_edge

if.end8.i.i658.for.cond187.preheader_crit_edge:   ; preds = %if.end8.i.i658
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond187.preheader

if.end8.i.i658.do.body242_crit_edge:              ; preds = %if.end8.i.i658
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body242

for.cond187.preheader:                            ; preds = %if.end8.i.i658.for.cond187.preheader_crit_edge, %for.body173.preheader, %for.cond171.preheader.for.cond187.preheader_crit_edge
  %__pvec.0801.ph = phi ptr [ %___pvec_localtmp, %for.cond171.preheader.for.cond187.preheader_crit_edge ], [ %___pvec_localtmp, %for.body173.preheader ], [ %call9.i.i657, %if.end8.i.i658.for.cond187.preheader_crit_edge ]
  %83 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pr = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp189773 = icmp sgt i32 %.pr, 0
  br i1 %cmp189773, label %for.cond187.preheader.for.cond192.preheader_crit_edge, label %for.cond187.preheader.for.end208_crit_edge

for.cond187.preheader.for.end208_crit_edge:       ; preds = %for.cond187.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end208

for.cond187.preheader.for.cond192.preheader_crit_edge: ; preds = %for.cond187.preheader
  br label %for.cond192.preheader

for.cond192.preheader:                            ; preds = %for.inc206.for.cond192.preheader_crit_edge, %for.cond187.preheader.for.cond192.preheader_crit_edge
  %__j.2775 = phi i32 [ %inc207, %for.inc206.for.cond192.preheader_crit_edge ], [ 0, %for.cond187.preheader.for.cond192.preheader_crit_edge ]
  %__k.0774 = phi i32 [ %__k.1.lcssa, %for.inc206.for.cond192.preheader_crit_edge ], [ 0, %for.cond187.preheader.for.cond192.preheader_crit_edge ]
  %arrayidx193 = getelementptr ptr, ptr %__lvec.0789, i32 %__j.2775
  %84 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx193, align 4
  %arrayidx196768 = getelementptr %struct.aa_label, ptr %85, i32 0, i32 8, i32 0
  %86 = ptrtoint ptr %arrayidx196768 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx196768, align 4
  %tobool197.not769 = icmp eq ptr %87, null
  br i1 %tobool197.not769, label %for.cond192.preheader.for.inc206_crit_edge, label %for.cond192.preheader.if.then.i665_crit_edge

for.cond192.preheader.if.then.i665_crit_edge:     ; preds = %for.cond192.preheader
  br label %if.then.i665

for.cond192.preheader.for.inc206_crit_edge:       ; preds = %for.cond192.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc206

if.then.i665:                                     ; preds = %aa_get_profile.exit.if.then.i665_crit_edge, %for.cond192.preheader.if.then.i665_crit_edge
  %88 = phi ptr [ %95, %aa_get_profile.exit.if.then.i665_crit_edge ], [ %87, %for.cond192.preheader.if.then.i665_crit_edge ]
  %__i.sroa.0.1771 = phi i32 [ %inc204, %aa_get_profile.exit.if.then.i665_crit_edge ], [ 0, %for.cond192.preheader.if.then.i665_crit_edge ]
  %__k.1770 = phi i32 [ %inc200, %aa_get_profile.exit.if.then.i665_crit_edge ], [ %__k.0774, %for.cond192.preheader.if.then.i665_crit_edge ]
  %label.i = getelementptr inbounds %struct.aa_profile, ptr %88, i32 0, i32 25
  %call.i.i.i.i.i.i.i662 = call zeroext i1 @__kasan_check_write(ptr noundef %label.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %label.i, i32 1, i32 3, i32 1) #8
  %89 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i, ptr %label.i, i32 1, ptr elementtype(i32) %label.i) #8, !srcloc !217
  %asmresult.i.i.i.i.i.i.i663 = extractvalue { i32, i32, i32 } %89, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i663)
  %tobool1.not.i.i.i.i.i664 = icmp eq i32 %asmresult.i.i.i.i.i.i.i663, 0
  br i1 %tobool1.not.i.i.i.i.i664, label %if.then.i665.if.end15.sink.split.i.i.i.i.i670_crit_edge, label %if.else.i.i.i.i.i668, !prof !214

if.then.i665.if.end15.sink.split.i.i.i.i.i670_crit_edge: ; preds = %if.then.i665
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i670

if.else.i.i.i.i.i668:                             ; preds = %if.then.i665
  %add.i.i.i.i.i666 = add i32 %asmresult.i.i.i.i.i.i.i663, 1
  %90 = or i32 %add.i.i.i.i.i666, %asmresult.i.i.i.i.i.i.i663
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %90)
  %.not.i.i.i.i.i667 = icmp sgt i32 %90, -1
  br i1 %.not.i.i.i.i.i667, label %if.else.i.i.i.i.i668.aa_get_profile.exit_crit_edge, label %if.else.i.i.i.i.i668.if.end15.sink.split.i.i.i.i.i670_crit_edge, !prof !218

if.else.i.i.i.i.i668.if.end15.sink.split.i.i.i.i.i670_crit_edge: ; preds = %if.else.i.i.i.i.i668
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i670

if.else.i.i.i.i.i668.aa_get_profile.exit_crit_edge: ; preds = %if.else.i.i.i.i.i668
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_get_profile.exit

if.end15.sink.split.i.i.i.i.i670:                 ; preds = %if.else.i.i.i.i.i668.if.end15.sink.split.i.i.i.i.i670_crit_edge, %if.then.i665.if.end15.sink.split.i.i.i.i.i670_crit_edge
  %.sink.i.i.i.i.i669 = phi i32 [ 2, %if.then.i665.if.end15.sink.split.i.i.i.i.i670_crit_edge ], [ 1, %if.else.i.i.i.i.i668.if.end15.sink.split.i.i.i.i.i670_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %label.i, i32 noundef %.sink.i.i.i.i.i669) #8
  br label %aa_get_profile.exit

aa_get_profile.exit:                              ; preds = %if.end15.sink.split.i.i.i.i.i670, %if.else.i.i.i.i.i668.aa_get_profile.exit_crit_edge
  %inc200 = add i32 %__k.1770, 1
  %arrayidx201 = getelementptr ptr, ptr %__pvec.0801.ph, i32 %__k.1770
  %91 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %88, ptr %arrayidx201, align 4
  %inc204 = add i32 %__i.sroa.0.1771, 1
  %92 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx193, align 4
  %arrayidx196 = getelementptr %struct.aa_label, ptr %93, i32 0, i32 8, i32 %inc204
  %94 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx196, align 4
  %tobool197.not = icmp eq ptr %95, null
  br i1 %tobool197.not, label %aa_get_profile.exit.for.inc206_crit_edge, label %aa_get_profile.exit.if.then.i665_crit_edge

aa_get_profile.exit.if.then.i665_crit_edge:       ; preds = %aa_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i665

aa_get_profile.exit.for.inc206_crit_edge:         ; preds = %aa_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc206

for.inc206:                                       ; preds = %aa_get_profile.exit.for.inc206_crit_edge, %for.cond192.preheader.for.inc206_crit_edge
  %__k.1.lcssa = phi i32 [ %__k.0774, %for.cond192.preheader.for.inc206_crit_edge ], [ %inc200, %aa_get_profile.exit.for.inc206_crit_edge ]
  %inc207 = add nuw nsw i32 %__j.2775, 1
  %96 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %size, align 4
  %cmp189 = icmp slt i32 %inc207, %97
  br i1 %cmp189, label %for.inc206.for.cond192.preheader_crit_edge, label %for.inc206.for.end208_crit_edge

for.inc206.for.end208_crit_edge:                  ; preds = %for.inc206
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end208

for.inc206.for.cond192.preheader_crit_edge:       ; preds = %for.inc206
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond192.preheader

for.end208:                                       ; preds = %for.inc206.for.end208_crit_edge, %for.cond187.preheader.for.end208_crit_edge, %for.cond158.preheader.for.end208_crit_edge
  %__count.0.lcssa793800814 = phi i32 [ %add, %for.cond187.preheader.for.end208_crit_edge ], [ 0, %for.cond158.preheader.for.end208_crit_edge ], [ %add, %for.inc206.for.end208_crit_edge ]
  %__pvec.0802 = phi ptr [ %__pvec.0801.ph, %for.cond187.preheader.for.end208_crit_edge ], [ %___pvec_localtmp, %for.cond158.preheader.for.end208_crit_edge ], [ %__pvec.0801.ph, %for.inc206.for.end208_crit_edge ]
  %call209 = call i32 @aa_vec_unique(ptr noundef nonnull %__pvec.0802, i32 noundef %__count.0.lcssa793800814, i32 noundef 0) #8
  %sub = sub i32 %__count.0.lcssa793800814, %call209
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp210 = icmp sgt i32 %sub, 1
  br i1 %cmp210, label %do.body221.thread, label %do.body221

do.body221.thread:                                ; preds = %for.end208
  call void @__sanitizer_cov_trace_pc() #10
  %call212 = call ptr @aa_vec_find_or_create_label(ptr noundef nonnull %__pvec.0802, i32 noundef %sub, i32 noundef 3264) #8
  br label %for.body225.preheader

do.body221:                                       ; preds = %for.end208
  %98 = ptrtoint ptr %__pvec.0802 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %__pvec.0802, align 4
  %label218 = getelementptr inbounds %struct.aa_profile, ptr %99, i32 0, i32 25
  %call219 = call fastcc ptr @aa_get_label(ptr noundef %label218)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp224776 = icmp eq i32 %sub, 1
  br i1 %cmp224776, label %do.body221.for.body225.preheader_crit_edge, label %do.body221.for.end233_crit_edge

do.body221.for.end233_crit_edge:                  ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end233

do.body221.for.body225.preheader_crit_edge:       ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body225.preheader

for.body225.preheader:                            ; preds = %do.body221.for.body225.preheader_crit_edge, %do.body221.thread
  %__new_.0810 = phi ptr [ %call212, %do.body221.thread ], [ %label218, %do.body221.for.body225.preheader_crit_edge ]
  br label %for.body225

for.body225:                                      ; preds = %for.inc231.for.body225_crit_edge, %for.body225.preheader
  %i222.0777 = phi i32 [ %inc232, %for.inc231.for.body225_crit_edge ], [ 0, %for.body225.preheader ]
  %arrayidx226 = getelementptr ptr, ptr %__pvec.0802, i32 %i222.0777
  %100 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx226, align 4
  %tobool.not.i671 = icmp eq ptr %101, null
  %cmp.i672 = icmp ugt ptr %101, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i671, %cmp.i672
  br i1 %spec.select.i, label %for.body225.for.inc231_crit_edge, label %if.then.i676

for.body225.for.inc231_crit_edge:                 ; preds = %for.body225
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc231

if.then.i676:                                     ; preds = %for.body225
  %label.i674 = getelementptr inbounds %struct.aa_profile, ptr %101, i32 0, i32 25
  %call.i.i.i.i.i.i.i675 = call zeroext i1 @__kasan_check_write(ptr noundef %label.i674, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  call void @llvm.prefetch.p0(ptr %label.i674, i32 1, i32 3, i32 1) #8
  %102 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i674, ptr %label.i674, i32 1, ptr elementtype(i32) %label.i674) #8, !srcloc !220
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %102, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i678, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i676
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i677 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i677, label %if.end5.i.i.i.i.i.for.inc231_crit_edge, label %if.then10.i.i.i.i.i, !prof !218

if.end5.i.i.i.i.i.for.inc231_crit_edge:           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc231

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %label.i674, i32 noundef 3) #8
  br label %for.inc231

if.then.i.i678:                                   ; preds = %if.then.i676
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !221
  call void @aa_label_kref(ptr noundef %label.i674) #8
  br label %for.inc231

for.inc231:                                       ; preds = %if.then.i.i678, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.for.inc231_crit_edge, %for.body225.for.inc231_crit_edge
  %inc232 = add nuw nsw i32 %i222.0777, 1
  %exitcond786.not = icmp eq i32 %inc232, %sub
  br i1 %exitcond786.not, label %for.inc231.for.end233_crit_edge, label %for.inc231.for.body225_crit_edge

for.inc231.for.body225_crit_edge:                 ; preds = %for.inc231
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body225

for.inc231.for.end233_crit_edge:                  ; preds = %for.inc231
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end233

for.end233:                                       ; preds = %for.inc231.for.end233_crit_edge, %do.body221.for.end233_crit_edge
  %__new_.0809 = phi ptr [ %label218, %do.body221.for.end233_crit_edge ], [ %__new_.0810, %for.inc231.for.end233_crit_edge ]
  %cmp235.not = icmp eq ptr %__pvec.0802, %___pvec_localtmp
  br i1 %cmp235.not, label %for.end233.do.body242_crit_edge, label %if.then236

for.end233.do.body242_crit_edge:                  ; preds = %for.end233
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body242

if.then236:                                       ; preds = %for.end233
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %__pvec.0802) #8
  br label %do.body242

do.body242:                                       ; preds = %if.then236, %for.end233.do.body242_crit_edge, %if.end8.i.i658.do.body242_crit_edge, %if.end139.do.body242_crit_edge
  %__new_.1 = phi ptr [ %__new_.0809, %if.then236 ], [ %__new_.0809, %for.end233.do.body242_crit_edge ], [ null, %if.end8.i.i658.do.body242_crit_edge ], [ %call112, %if.end139.do.body242_crit_edge ]
  %103 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp246778 = icmp sgt i32 %104, 0
  br i1 %cmp246778, label %do.body242.for.body247_crit_edge, label %do.body242.for.end255_crit_edge

do.body242.for.end255_crit_edge:                  ; preds = %do.body242
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end255

do.body242.for.body247_crit_edge:                 ; preds = %do.body242
  br label %for.body247

for.body247:                                      ; preds = %for.inc253.for.body247_crit_edge, %do.body242.for.body247_crit_edge
  %i243.0779 = phi i32 [ %inc254, %for.inc253.for.body247_crit_edge ], [ 0, %do.body242.for.body247_crit_edge ]
  %arrayidx248 = getelementptr ptr, ptr %__lvec.0789, i32 %i243.0779
  %105 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx248, align 4
  %tobool.not.i679 = icmp eq ptr %106, null
  %cmp.i680 = icmp ugt ptr %106, inttoptr (i32 -4096 to ptr)
  %spec.select.i681 = or i1 %tobool.not.i679, %cmp.i680
  br i1 %spec.select.i681, label %for.body247.for.inc253_crit_edge, label %if.then.i686

for.body247.for.inc253_crit_edge:                 ; preds = %for.body247
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc253

if.then.i686:                                     ; preds = %for.body247
  %call.i.i.i.i.i.i.i683 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %106, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  call void @llvm.prefetch.p0(ptr nonnull %106, i32 1, i32 3, i32 1) #8
  %107 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %106, ptr nonnull %106, i32 1, ptr nonnull elementtype(i32) %106) #8, !srcloc !220
  %asmresult.i.i.i.i.i.i.i.i684 = extractvalue { i32, i32, i32 } %107, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i684)
  %cmp.i.i.i.i.i685 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i684, 1
  br i1 %cmp.i.i.i.i.i685, label %if.then.i.i690, label %if.end5.i.i.i.i.i688

if.end5.i.i.i.i.i688:                             ; preds = %if.then.i686
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i684)
  %.not.i.i.i.i.i687 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i684, 0
  br i1 %.not.i.i.i.i.i687, label %if.end5.i.i.i.i.i688.for.inc253_crit_edge, label %if.then10.i.i.i.i.i689, !prof !218

if.end5.i.i.i.i.i688.for.inc253_crit_edge:        ; preds = %if.end5.i.i.i.i.i688
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc253

if.then10.i.i.i.i.i689:                           ; preds = %if.end5.i.i.i.i.i688
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %106, i32 noundef 3) #8
  br label %for.inc253

if.then.i.i690:                                   ; preds = %if.then.i686
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !221
  call void @aa_label_kref(ptr noundef nonnull %106) #8
  br label %for.inc253

for.inc253:                                       ; preds = %if.then.i.i690, %if.then10.i.i.i.i.i689, %if.end5.i.i.i.i.i688.for.inc253_crit_edge, %for.body247.for.inc253_crit_edge
  %inc254 = add nuw nsw i32 %i243.0779, 1
  %108 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %size, align 4
  %cmp246 = icmp slt i32 %inc254, %109
  br i1 %cmp246, label %for.inc253.for.body247_crit_edge, label %for.inc253.for.end255_crit_edge

for.inc253.for.end255_crit_edge:                  ; preds = %for.inc253
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end255

for.inc253.for.body247_crit_edge:                 ; preds = %for.inc253
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body247

for.end255:                                       ; preds = %for.inc253.for.end255_crit_edge, %do.body242.for.end255_crit_edge
  %cmp257.not = icmp eq ptr %__lvec.0789, %___lvec_localtmp
  br i1 %cmp257.not, label %for.end255.cleanup_crit_edge, label %if.then258

for.end255.cleanup_crit_edge:                     ; preds = %for.end255
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then258:                                       ; preds = %for.end255
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %__lvec.0789) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then258, %for.end255.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge
  %__new_.2 = phi ptr [ null, %if.end8.i.i.cleanup_crit_edge ], [ %__new_.1, %if.then258 ], [ %__new_.1, %for.end255.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %___pvec_localtmp) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %___lvec_localtmp) #8
  br label %__done

if.else269:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %sub272 = add i32 %61, -1
  %arrayidx273 = getelementptr %struct.aa_label, ptr %call70, i32 0, i32 8, i32 %sub272
  %110 = ptrtoint ptr %arrayidx273 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx273, align 4
  %call274 = call fastcc ptr @profile_transition(ptr noundef %111, ptr noundef %bprm, ptr noundef nonnull %call81, ptr noundef nonnull %cond, ptr noundef nonnull %unsafe)
  br label %__done

__done:                                           ; preds = %if.else269, %cleanup
  %__new_.3 = phi ptr [ %__new_.2, %cleanup ], [ %call274, %if.else269 ]
  %tobool276.not = icmp eq ptr %__new_.3, null
  br i1 %tobool276.not, label %do.body278, label %__done.if.end330_crit_edge

__done.if.end330_crit_edge:                       ; preds = %__done
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end330

do.body278:                                       ; preds = %__done
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_debug to i32))
  %112 = load i8, ptr @aa_g_debug, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool279.not = icmp eq i8 %112, 0
  br i1 %tobool279.not, label %do.body278.if.end330.thread_crit_edge, label %do.body281

do.body278.if.end330.thread_crit_edge:            ; preds = %do.body278
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end330.thread

do.body281:                                       ; preds = %do.body278
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @apparmor_bprm_creds_for_exec.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@apparmor_bprm_creds_for_exec, %land.lhs.true291)) #8
          to label %do.body304 [label %land.lhs.true291], !srcloc !223

land.lhs.true291:                                 ; preds = %do.body281
  %call292 = call i32 @___ratelimit(ptr noundef nonnull @apparmor_bprm_creds_for_exec._rs, ptr noundef nonnull @__func__.apparmor_bprm_creds_for_exec) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call292)
  %tobool293.not = icmp eq i32 %call292, 0
  br i1 %tobool293.not, label %land.lhs.true291.if.end330.thread_crit_edge, label %if.then294

land.lhs.true291.if.end330.thread_crit_edge:      ; preds = %land.lhs.true291
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end330.thread

if.then294:                                       ; preds = %land.lhs.true291
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @apparmor_bprm_creds_for_exec.descriptor, ptr noundef nonnull @.str.7) #8
  br label %if.end330.thread

do.body304:                                       ; preds = %do.body281, %if.then86
  %new.0 = phi ptr [ %call89, %if.then86 ], [ null, %do.body281 ]
  %tobool306.not = icmp eq ptr %new.0, null
  br i1 %tobool306.not, label %if.end330.thread.thread, label %do.body304.if.end330_crit_edge, !prof !214

do.body304.if.end330_crit_edge:                   ; preds = %do.body304
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end330

if.end330.thread.thread:                          ; preds = %do.body304
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 903, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.apparmor_bprm_creds_for_exec) #8
  br label %done

if.end330.thread:                                 ; preds = %if.then294, %land.lhs.true291.if.end330.thread_crit_edge, %do.body278.if.end330.thread_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 903, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.apparmor_bprm_creds_for_exec) #8
  br label %done

if.end330:                                        ; preds = %do.body304.if.end330_crit_edge, %__done.if.end330_crit_edge
  %new.0735 = phi ptr [ %new.0, %do.body304.if.end330_crit_edge ], [ %__new_.3, %__done.if.end330_crit_edge ]
  %cmp.i691 = icmp ugt ptr %new.0735, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i691, label %if.then341, label %if.end347

if.then341:                                       ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #10
  %113 = ptrtoint ptr %new.0735 to i32
  br label %done

if.end347:                                        ; preds = %if.end330
  %114 = ptrtoint ptr %unsafe71 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %unsafe71, align 4
  %and349 = and i32 %115, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and349)
  %tobool350.not = icmp eq i32 %and349, 0
  br i1 %tobool350.not, label %if.end347.if.end359_crit_edge, label %land.lhs.true351

if.end347.if.end359_crit_edge:                    ; preds = %if.end347
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end359

land.lhs.true351:                                 ; preds = %if.end347
  %flags352 = getelementptr inbounds %struct.aa_label, ptr %call70, i32 0, i32 5
  %116 = ptrtoint ptr %flags352 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %flags352, align 4
  %and353 = and i32 %117, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and353)
  %tobool354.not = icmp eq i32 %and353, 0
  br i1 %tobool354.not, label %land.lhs.true355, label %land.lhs.true351.if.end359_crit_edge

land.lhs.true351.if.end359_crit_edge:             ; preds = %land.lhs.true351
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end359

land.lhs.true355:                                 ; preds = %land.lhs.true351
  %118 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %add.ptr.i, align 8
  %call357 = call zeroext i1 @aa_label_is_unconfined_subset(ptr noundef nonnull %new.0735, ptr noundef %119) #8
  br i1 %call357, label %land.lhs.true355.if.end359_crit_edge, label %if.then358

land.lhs.true355.if.end359_crit_edge:             ; preds = %land.lhs.true355
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end359

if.then358:                                       ; preds = %land.lhs.true355
  call void @__sanitizer_cov_trace_pc() #10
  %120 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @.str.9, ptr %info, align 4
  br label %audit

if.end359:                                        ; preds = %land.lhs.true355.if.end359_crit_edge, %land.lhs.true351.if.end359_crit_edge, %if.end347.if.end359_crit_edge
  %121 = ptrtoint ptr %unsafe71 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %unsafe71, align 4
  %and366 = and i32 %122, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and366)
  %tobool367.not = icmp eq i32 %and366, 0
  br i1 %tobool367.not, label %if.end359.if.end373_crit_edge, label %if.then368

if.end359.if.end373_crit_edge:                    ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end373

if.then368:                                       ; preds = %if.end359
  %call369 = call fastcc i32 @may_change_ptraced_domain(ptr noundef nonnull %new.0735, ptr noundef nonnull %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call369)
  %tobool370.not = icmp eq i32 %call369, 0
  br i1 %tobool370.not, label %if.then368.if.end373_crit_edge, label %if.then368.audit_crit_edge

if.then368.audit_crit_edge:                       ; preds = %if.then368
  call void @__sanitizer_cov_trace_pc() #10
  br label %audit

if.then368.if.end373_crit_edge:                   ; preds = %if.then368
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end373

if.end373:                                        ; preds = %if.then368.if.end373_crit_edge, %if.end359.if.end373_crit_edge
  %123 = ptrtoint ptr %unsafe to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %unsafe, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool374.not = icmp eq i8 %124, 0
  br i1 %tobool374.not, label %if.end373.if.end411_crit_edge, label %if.then375

if.end373.if.end411_crit_edge:                    ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end411

if.then375:                                       ; preds = %if.end373
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_debug to i32))
  %125 = load i8, ptr @aa_g_debug, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool376.not = icmp eq i8 %125, 0
  br i1 %tobool376.not, label %if.then375.if.end410_crit_edge, label %do.body378

if.then375.if.end410_crit_edge:                   ; preds = %if.then375
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end410

do.body378:                                       ; preds = %if.then375
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @apparmor_bprm_creds_for_exec.__UNIQUE_ID_ddebug593, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@apparmor_bprm_creds_for_exec, %if.then390)) #8
          to label %do.end393 [label %if.then390], !srcloc !223

if.then390:                                       ; preds = %do.body378
  call void @__sanitizer_cov_trace_pc() #10
  %filename = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 14
  %126 = ptrtoint ptr %filename to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %filename, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @apparmor_bprm_creds_for_exec.__UNIQUE_ID_ddebug593, ptr noundef nonnull @.str.10, ptr noundef %127) #8
  br label %do.end393

do.end393:                                        ; preds = %if.then390, %do.body378
  call void @aa_label_printk(ptr noundef nonnull %new.0735, i32 noundef 3264) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @apparmor_bprm_creds_for_exec.__UNIQUE_ID_ddebug594, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@apparmor_bprm_creds_for_exec, %if.then406)) #8
          to label %if.end410 [label %if.then406], !srcloc !223

if.then406:                                       ; preds = %do.end393
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @apparmor_bprm_creds_for_exec.__UNIQUE_ID_ddebug594, ptr noundef nonnull @.str.11) #8
  br label %if.end410

if.end410:                                        ; preds = %if.then406, %do.end393, %if.then375.if.end410_crit_edge
  %secureexec = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 5
  %128 = ptrtoint ptr %secureexec to i32
  call void @__asan_load1_noabort(i32 %128)
  %bf.load = load i8, ptr %secureexec, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %secureexec, align 4
  br label %if.end411

if.end411:                                        ; preds = %if.end410, %if.end373.if.end411_crit_edge
  %proxy = getelementptr inbounds %struct.aa_label, ptr %call70, i32 0, i32 3
  %129 = ptrtoint ptr %proxy to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %proxy, align 4
  %proxy412 = getelementptr inbounds %struct.aa_label, ptr %new.0735, i32 0, i32 3
  %131 = ptrtoint ptr %proxy412 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %proxy412, align 4
  %cmp413.not = icmp eq ptr %130, %132
  br i1 %cmp413.not, label %if.end411.if.end451_crit_edge, label %if.then414

if.end411.if.end451_crit_edge:                    ; preds = %if.end411
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end451

if.then414:                                       ; preds = %if.end411
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_debug to i32))
  %133 = load i8, ptr @aa_g_debug, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool415.not = icmp eq i8 %133, 0
  br i1 %tobool415.not, label %if.then414.if.end450_crit_edge, label %do.body417

if.then414.if.end450_crit_edge:                   ; preds = %if.then414
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end450

do.body417:                                       ; preds = %if.then414
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @apparmor_bprm_creds_for_exec.__UNIQUE_ID_ddebug595, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@apparmor_bprm_creds_for_exec, %if.then429)) #8
          to label %do.end433 [label %if.then429], !srcloc !223

if.then429:                                       ; preds = %do.body417
  call void @__sanitizer_cov_trace_pc() #10
  %filename430 = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 14
  %134 = ptrtoint ptr %filename430 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %filename430, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @apparmor_bprm_creds_for_exec.__UNIQUE_ID_ddebug595, ptr noundef nonnull @.str.12, ptr noundef %135) #8
  br label %do.end433

do.end433:                                        ; preds = %if.then429, %do.body417
  call void @aa_label_printk(ptr noundef nonnull %new.0735, i32 noundef 3264) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @apparmor_bprm_creds_for_exec.__UNIQUE_ID_ddebug596, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@apparmor_bprm_creds_for_exec, %if.then446)) #8
          to label %if.end450 [label %if.then446], !srcloc !223

if.then446:                                       ; preds = %do.end433
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @apparmor_bprm_creds_for_exec.__UNIQUE_ID_ddebug596, ptr noundef nonnull @.str.11) #8
  br label %if.end450

if.end450:                                        ; preds = %if.then446, %do.end433, %if.then414.if.end450_crit_edge
  %per_clear = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 11
  %136 = ptrtoint ptr %per_clear to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %per_clear, align 4
  %or = or i32 %137, 7602176
  store i32 %or, ptr %per_clear, align 4
  br label %if.end451

if.end451:                                        ; preds = %if.end450, %if.end411.if.end451_crit_edge
  %138 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %cred, align 4
  %security.i692 = getelementptr inbounds %struct.cred, ptr %139, i32 0, i32 23
  %140 = ptrtoint ptr %security.i692 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %security.i692, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @apparmor_blob_sizes to i32))
  %142 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i693 = getelementptr i8, ptr %141, i32 %142
  %tobool.not.i694 = icmp eq ptr %add.ptr.i693, null
  br i1 %tobool.not.i694, label %do.end.i695, label %if.end451.cred_label.exit696_crit_edge, !prof !214

if.end451.cred_label.exit696_crit_edge:           ; preds = %if.end451
  call void @__sanitizer_cov_trace_pc() #10
  br label %cred_label.exit696

do.end.i695:                                      ; preds = %if.end451
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.cred_label) #8
  br label %cred_label.exit696

cred_label.exit696:                               ; preds = %do.end.i695, %if.end451.cred_label.exit696_crit_edge
  %143 = ptrtoint ptr %add.ptr.i693 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %add.ptr.i693, align 4
  %tobool.not.i697 = icmp eq ptr %144, null
  br i1 %tobool.not.i697, label %cred_label.exit696.aa_put_label.exit706_crit_edge, label %if.then.i701

cred_label.exit696.aa_put_label.exit706_crit_edge: ; preds = %cred_label.exit696
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_put_label.exit706

if.then.i701:                                     ; preds = %cred_label.exit696
  %call.i.i.i.i.i.i.i698 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %144, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  call void @llvm.prefetch.p0(ptr nonnull %144, i32 1, i32 3, i32 1) #8
  %145 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %144, ptr nonnull %144, i32 1, ptr nonnull elementtype(i32) %144) #8, !srcloc !220
  %asmresult.i.i.i.i.i.i.i.i699 = extractvalue { i32, i32, i32 } %145, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i699)
  %cmp.i.i.i.i.i700 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i699, 1
  br i1 %cmp.i.i.i.i.i700, label %if.then.i.i705, label %if.end5.i.i.i.i.i703

if.end5.i.i.i.i.i703:                             ; preds = %if.then.i701
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i699)
  %.not.i.i.i.i.i702 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i699, 0
  br i1 %.not.i.i.i.i.i702, label %if.end5.i.i.i.i.i703.aa_put_label.exit706_crit_edge, label %if.then10.i.i.i.i.i704, !prof !218

if.end5.i.i.i.i.i703.aa_put_label.exit706_crit_edge: ; preds = %if.end5.i.i.i.i.i703
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_put_label.exit706

if.then10.i.i.i.i.i704:                           ; preds = %if.end5.i.i.i.i.i703
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %144, i32 noundef 3) #8
  br label %aa_put_label.exit706

if.then.i.i705:                                   ; preds = %if.then.i701
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !221
  call void @aa_label_kref(ptr noundef nonnull %144) #8
  br label %aa_put_label.exit706

aa_put_label.exit706:                             ; preds = %if.then.i.i705, %if.then10.i.i.i.i.i704, %if.end5.i.i.i.i.i703.aa_put_label.exit706_crit_edge, %cred_label.exit696.aa_put_label.exit706_crit_edge
  %146 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %cred, align 4
  %security.i707 = getelementptr inbounds %struct.cred, ptr %147, i32 0, i32 23
  %148 = ptrtoint ptr %security.i707 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %security.i707, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @apparmor_blob_sizes to i32))
  %150 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i708 = getelementptr i8, ptr %149, i32 %150
  %tobool.not.i709 = icmp eq ptr %add.ptr.i708, null
  br i1 %tobool.not.i709, label %do.end.i710, label %aa_put_label.exit706.set_cred_label.exit_crit_edge, !prof !214

aa_put_label.exit706.set_cred_label.exit_crit_edge: ; preds = %aa_put_label.exit706
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_cred_label.exit

do.end.i710:                                      ; preds = %aa_put_label.exit706
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 35, i32 noundef 9, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.set_cred_label) #8
  br label %set_cred_label.exit

set_cred_label.exit:                              ; preds = %do.end.i710, %aa_put_label.exit706.set_cred_label.exit_crit_edge
  %151 = ptrtoint ptr %add.ptr.i708 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %new.0735, ptr %add.ptr.i708, align 4
  br label %done

done:                                             ; preds = %if.then.i.i729, %if.then10.i.i.i.i.i728, %if.end5.i.i.i.i.i727.done_crit_edge, %set_cred_label.exit, %if.then341, %if.end330.thread, %if.end330.thread.thread, %if.end80.done_crit_edge
  %error.1 = phi i32 [ %113, %if.then341 ], [ 0, %set_cred_label.exit ], [ -12, %if.end80.done_crit_edge ], [ -12, %if.end330.thread ], [ %__E.0.lcssa, %if.end5.i.i.i.i.i727.done_crit_edge ], [ %__E.0.lcssa, %if.then10.i.i.i.i.i728 ], [ %__E.0.lcssa, %if.then.i.i729 ], [ -12, %if.end330.thread.thread ]
  %tobool.not.i711 = icmp eq ptr %call70, null
  br i1 %tobool.not.i711, label %done.aa_put_label.exit720_crit_edge, label %if.then.i715

done.aa_put_label.exit720_crit_edge:              ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_put_label.exit720

if.then.i715:                                     ; preds = %done
  %call.i.i.i.i.i.i.i712 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call70, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  call void @llvm.prefetch.p0(ptr nonnull %call70, i32 1, i32 3, i32 1) #8
  %152 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call70, ptr nonnull %call70, i32 1, ptr nonnull elementtype(i32) %call70) #8, !srcloc !220
  %asmresult.i.i.i.i.i.i.i.i713 = extractvalue { i32, i32, i32 } %152, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i713)
  %cmp.i.i.i.i.i714 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i713, 1
  br i1 %cmp.i.i.i.i.i714, label %if.then.i.i719, label %if.end5.i.i.i.i.i717

if.end5.i.i.i.i.i717:                             ; preds = %if.then.i715
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i713)
  %.not.i.i.i.i.i716 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i713, 0
  br i1 %.not.i.i.i.i.i716, label %if.end5.i.i.i.i.i717.aa_put_label.exit720_crit_edge, label %if.then10.i.i.i.i.i718, !prof !218

if.end5.i.i.i.i.i717.aa_put_label.exit720_crit_edge: ; preds = %if.end5.i.i.i.i.i717
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_put_label.exit720

if.then10.i.i.i.i.i718:                           ; preds = %if.end5.i.i.i.i.i717
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %call70, i32 noundef 3) #8
  br label %aa_put_label.exit720

if.then.i.i719:                                   ; preds = %if.then.i715
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !221
  call void @aa_label_kref(ptr noundef nonnull %call70) #8
  br label %aa_put_label.exit720

aa_put_label.exit720:                             ; preds = %if.then.i.i719, %if.then10.i.i.i.i.i718, %if.end5.i.i.i.i.i717.aa_put_label.exit720_crit_edge, %done.aa_put_label.exit720_crit_edge
  call void @aa_put_buffer(ptr noundef %call81) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cond) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %unsafe) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info) #8
  ret i32 %error.1

audit:                                            ; preds = %if.then368.audit_crit_edge, %if.then358
  %error.2 = phi i32 [ %call369, %if.then368.audit_crit_edge ], [ -1, %if.then358 ]
  %arrayidx460780 = getelementptr %struct.aa_label, ptr %call70, i32 0, i32 8, i32 0
  %153 = ptrtoint ptr %arrayidx460780 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %arrayidx460780, align 4
  %tobool461.not781 = icmp eq ptr %154, null
  br i1 %tobool461.not781, label %audit.if.then.i725_crit_edge, label %do.body463.lr.ph

audit.if.then.i725_crit_edge:                     ; preds = %audit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i725

do.body463.lr.ph:                                 ; preds = %audit
  %filename464 = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 14
  %155 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %info, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i, 0
  br label %do.body463

do.body463:                                       ; preds = %do.body463.do.body463_crit_edge, %do.body463.lr.ph
  %157 = phi ptr [ %154, %do.body463.lr.ph ], [ %161, %do.body463.do.body463_crit_edge ]
  %__E.0783 = phi i32 [ 0, %do.body463.lr.ph ], [ %spec.select, %do.body463.do.body463_crit_edge ]
  %i455.sroa.0.0782 = phi i32 [ 0, %do.body463.lr.ph ], [ %inc474, %do.body463.do.body463_crit_edge ]
  %158 = ptrtoint ptr %filename464 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %filename464, align 4
  %call466 = call i32 @aa_audit_file(ptr noundef nonnull %157, ptr noundef nonnull @nullperms, ptr noundef nonnull @.str.13, i32 noundef 1, ptr noundef %159, ptr noundef null, ptr noundef nonnull %new.0735, [1 x i32] %.fca.0.insert, ptr noundef %156, i32 noundef %error.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call466)
  %tobool467.not = icmp eq i32 %call466, 0
  %spec.select = select i1 %tobool467.not, i32 %__E.0783, i32 %call466
  %inc474 = add i32 %i455.sroa.0.0782, 1
  %arrayidx460 = getelementptr %struct.aa_label, ptr %call70, i32 0, i32 8, i32 %inc474
  %160 = ptrtoint ptr %arrayidx460 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx460, align 4
  %tobool461.not = icmp eq ptr %161, null
  br i1 %tobool461.not, label %do.body463.if.then.i725_crit_edge, label %do.body463.do.body463_crit_edge

do.body463.do.body463_crit_edge:                  ; preds = %do.body463
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body463

do.body463.if.then.i725_crit_edge:                ; preds = %do.body463
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i725

if.then.i725:                                     ; preds = %do.body463.if.then.i725_crit_edge, %audit.if.then.i725_crit_edge
  %__E.0.lcssa = phi i32 [ 0, %audit.if.then.i725_crit_edge ], [ %spec.select, %do.body463.if.then.i725_crit_edge ]
  %call.i.i.i.i.i.i.i722 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %new.0735, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  call void @llvm.prefetch.p0(ptr nonnull %new.0735, i32 1, i32 3, i32 1) #8
  %162 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %new.0735, ptr nonnull %new.0735, i32 1, ptr nonnull elementtype(i32) %new.0735) #8, !srcloc !220
  %asmresult.i.i.i.i.i.i.i.i723 = extractvalue { i32, i32, i32 } %162, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i723)
  %cmp.i.i.i.i.i724 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i723, 1
  br i1 %cmp.i.i.i.i.i724, label %if.then.i.i729, label %if.end5.i.i.i.i.i727

if.end5.i.i.i.i.i727:                             ; preds = %if.then.i725
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i723)
  %.not.i.i.i.i.i726 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i723, 0
  br i1 %.not.i.i.i.i.i726, label %if.end5.i.i.i.i.i727.done_crit_edge, label %if.then10.i.i.i.i.i728, !prof !218

if.end5.i.i.i.i.i727.done_crit_edge:              ; preds = %if.end5.i.i.i.i.i727
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.then10.i.i.i.i.i728:                           ; preds = %if.end5.i.i.i.i.i727
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %new.0735, i32 noundef 3) #8
  br label %done

if.then.i.i729:                                   ; preds = %if.then.i725
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !221
  call void @aa_label_kref(ptr noundef nonnull %new.0735) #8
  br label %done
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @aa_get_newest_label(ptr noundef %l) unnamed_addr #3 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  %tobool.not = icmp eq ptr %l, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %tobool3.not, label %do.end, label %if.then2.if.end20_crit_edge, !prof !214

if.then2.if.end20_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 424, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.aa_get_newest_label) #8
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
  br i1 %tobool33.not, label %do.end51, label %if.end20.if.end57_crit_edge, !prof !214

if.end20.if.end57_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

do.end51:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 425, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.aa_get_newest_label) #8
  br label %if.end57

if.end57:                                         ; preds = %do.end51, %if.end20.if.end57_crit_edge
  %8 = ptrtoint ptr %proxy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %proxy, align 4
  %label68 = getelementptr inbounds %struct.aa_proxy, ptr %9, i32 0, i32 1
  %10 = tail call i32 @llvm.read_register.i32(metadata !204) #8
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !224
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i, label %if.end57.do.body.i.preheader_crit_edge, label %land.lhs.true.i.i

if.end57.do.body.i.preheader_crit_edge:           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.preheader

land.lhs.true.i.i:                                ; preds = %if.end57
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.do.body.i.preheader_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.do.body.i.preheader_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.preheader

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.do.body.i.preheader_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.do.body.i.preheader_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.preheader

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 696, ptr noundef nonnull @.str.41) #8
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.then.i.i, %land.lhs.true2.i.i.do.body.i.preheader_crit_edge, %land.lhs.true.i.i.do.body.i.preheader_crit_edge, %if.end57.do.body.i.preheader_crit_edge
  br label %do.body.i

do.body.i:                                        ; preds = %kref_get_unless_zero.exit.i.do.body.i_crit_edge, %do.body.i.preheader
  %14 = ptrtoint ptr %label68 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %label68, align 4
  %call.i = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.body.i.do.end8.i_crit_edge

do.body.i.do.end8.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %call3.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b17.i = load i1, ptr @aa_get_label_rcu.__warned, align 1
  br i1 %.b17.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @aa_get_label_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 401, ptr noundef nonnull @.str.39) #8
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %do.body.i.do.end8.i_crit_edge
  %tobool11.not.i = icmp eq ptr %15, null
  br i1 %tobool11.not.i, label %do.end8.i.do.end14.i_crit_edge, label %land.rhs.i

do.end8.i.do.end14.i_crit_edge:                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i

land.rhs.i:                                       ; preds = %do.end8.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #8
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %15, i32 noundef 4) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %18, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %15, i32 noundef 4) #8
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #8
  %20 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %15, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %22 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %15, ptr nonnull %15, i32 %21, i32 %add.i.i.i.i.i, ptr nonnull elementtype(i32) %15) #8, !srcloc !225
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %21
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !218

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %23 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %24, 1
  %25 = or i32 %add5.i.i.i.i.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i.i.i = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !218

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %15, i32 noundef 0) #8
  %26 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %27 = phi i32 [ %24, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  %tobool12.i.i.i.i.not.i = icmp eq i32 %27, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #8
  br i1 %tobool12.i.i.i.i.not.i, label %kref_get_unless_zero.exit.i.do.body.i_crit_edge, label %kref_get_unless_zero.exit.i.do.end14.i_crit_edge

kref_get_unless_zero.exit.i.do.end14.i_crit_edge: ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i

kref_get_unless_zero.exit.i.do.body.i_crit_edge:  ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.end14.i:                                       ; preds = %kref_get_unless_zero.exit.i.do.end14.i_crit_edge, %do.end8.i.do.end14.i_crit_edge
  %call.i18.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i18.i, label %do.end14.i.aa_get_label_rcu.exit_crit_edge, label %land.lhs.true.i21.i

do.end14.i.aa_get_label_rcu.exit_crit_edge:       ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_get_label_rcu.exit

land.lhs.true.i21.i:                              ; preds = %do.end14.i
  %call1.i19.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19.i)
  %tobool.not.i20.i = icmp eq i32 %call1.i19.i, 0
  br i1 %tobool.not.i20.i, label %land.lhs.true.i21.i.aa_get_label_rcu.exit_crit_edge, label %land.lhs.true2.i23.i

land.lhs.true.i21.i.aa_get_label_rcu.exit_crit_edge: ; preds = %land.lhs.true.i21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_get_label_rcu.exit

land.lhs.true2.i23.i:                             ; preds = %land.lhs.true.i21.i
  %.b4.i22.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22.i, label %land.lhs.true2.i23.i.aa_get_label_rcu.exit_crit_edge, label %if.then.i24.i

land.lhs.true2.i23.i.aa_get_label_rcu.exit_crit_edge: ; preds = %land.lhs.true2.i23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_get_label_rcu.exit

if.then.i24.i:                                    ; preds = %land.lhs.true2.i23.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 724, ptr noundef nonnull @.str.42) #8
  br label %aa_get_label_rcu.exit

aa_get_label_rcu.exit:                            ; preds = %if.then.i24.i, %land.lhs.true2.i23.i.aa_get_label_rcu.exit_crit_edge, %land.lhs.true.i21.i.aa_get_label_rcu.exit_crit_edge, %do.end14.i.aa_get_label_rcu.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !226
  %28 = call i32 @llvm.read_register.i32(metadata !204) #8
  %and.i.i.i.i.i25.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i25.i to ptr
  %preempt_count.i.i.i.i26.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i26.i, align 4
  %sub.i.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i26.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br i1 %tobool11.not.i, label %do.end89, label %aa_get_label_rcu.exit.return_crit_edge, !prof !214

aa_get_label_rcu.exit.return_crit_edge:           ; preds = %aa_get_label_rcu.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end89:                                         ; preds = %aa_get_label_rcu.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 431, i32 noundef 9, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.aa_get_newest_label) #8
  br label %return

if.then.i118:                                     ; preds = %if.end
  %call.i.i.i.i.i.i.i117 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %l, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull %l, i32 1, i32 3, i32 1) #8
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %l, ptr nonnull %l, i32 1, ptr nonnull elementtype(i32) %l) #8, !srcloc !217
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i118.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !214

if.then.i118.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i118
  %add.i.i.i.i.i119 = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %33 = or i32 %add.i.i.i.i.i119, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %.not.i.i.i.i.i120 = icmp sgt i32 %33, -1
  br i1 %.not.i.i.i.i.i120, label %if.else.i.i.i.i.i.return_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !218

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.return_crit_edge:               ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i118.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i118.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %l, i32 noundef %.sink.i.i.i.i.i) #8
  br label %return

return:                                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.return_crit_edge, %do.end89, %aa_get_label_rcu.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ null, %do.end89 ], [ %15, %aa_get_label_rcu.exit.return_crit_edge ], [ %l, %if.else.i.i.i.i.i.return_crit_edge ], [ %l, %if.end15.sink.split.i.i.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @aa_get_label(ptr noundef returned %l) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %tobool.not = icmp eq ptr %l, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %l, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull %l, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %l, ptr nonnull %l, i32 1, ptr nonnull elementtype(i32) %l) #8, !srcloc !217
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !214

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !218

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %l, i32 noundef %.sink.i.i.i.i) #8
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %l
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aa_get_buffer(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @handle_onexec(ptr noundef readonly %label, ptr noundef %onexec, i1 noundef zeroext %stack, ptr noundef %bprm, ptr noundef %buffer, ptr noundef %cond, ptr nocapture noundef writeonly %unsafe) unnamed_addr #0 align 64 {
entry:
  %___lvec_localtmp = alloca [8 x ptr], align 4
  %___pvec_localtmp = alloca [8 x ptr], align 4
  %___lvec_localtmp503 = alloca [8 x ptr], align 4
  %___pvec_localtmp505 = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %label, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !214

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 804, i32 noundef 9, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.handle_onexec) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %onexec, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !214

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 805, i32 noundef 9, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.handle_onexec) #8
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %tobool62.not = icmp eq ptr %bprm, null
  br i1 %tobool62.not, label %do.end80, label %if.end50.if.end86_crit_edge, !prof !214

if.end50.if.end86_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

do.end80:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 806, i32 noundef 9, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.handle_onexec) #8
  br label %if.end86

if.end86:                                         ; preds = %do.end80, %if.end50.if.end86_crit_edge
  %tobool98.not = icmp eq ptr %buffer, null
  br i1 %tobool98.not, label %do.end116, label %if.end86.if.end122_crit_edge, !prof !214

if.end86.if.end122_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

do.end116:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 807, i32 noundef 9, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.handle_onexec) #8
  br label %if.end122

if.end122:                                        ; preds = %do.end116, %if.end86.if.end122_crit_edge
  %vec431 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8
  %size433 = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 7
  %0 = ptrtoint ptr %size433 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size433, align 4
  %sub434 = add i32 %1, -1
  %arrayidx435 = getelementptr ptr, ptr %vec431, i32 %sub434
  %2 = ptrtoint ptr %arrayidx435 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx435, align 4
  %ns436 = getelementptr inbounds %struct.aa_profile, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ns436 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns436, align 4
  %6 = ptrtoint ptr %vec431 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vec431, align 4
  %tobool442.not1280 = icmp eq ptr %7, null
  br i1 %stack, label %if.else428, label %if.then133

if.then133:                                       ; preds = %if.end122
  br i1 %tobool442.not1280, label %if.then133.while.end_crit_edge, label %if.then133.land.rhs_crit_edge

if.then133.land.rhs_crit_edge:                    ; preds = %if.then133
  br label %land.rhs

if.then133.while.end_crit_edge:                   ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %if.then133.land.rhs_crit_edge
  %8 = phi ptr [ %12, %while.body.land.rhs_crit_edge ], [ %7, %if.then133.land.rhs_crit_edge ]
  %___i.01248 = phi i32 [ %inc, %while.body.land.rhs_crit_edge ], [ 0, %if.then133.land.rhs_crit_edge ]
  %ns140 = getelementptr inbounds %struct.aa_profile, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %ns140 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ns140, align 4
  %cmp.not = icmp eq ptr %10, %5
  br i1 %cmp.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %inc = add i32 %___i.01248, 1
  %arrayidx136 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %inc
  %11 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx136, align 4
  %tobool137.not = icmp eq ptr %12, null
  br i1 %tobool137.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %if.then133.while.end_crit_edge
  %___i.0.lcssa = phi i32 [ 0, %if.then133.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ], [ %___i.01248, %land.rhs.while.end_crit_edge ]
  %arrayidx1441250 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %___i.0.lcssa
  %13 = ptrtoint ptr %arrayidx1441250 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx1441250, align 4
  %tobool145.not1251 = icmp eq ptr %14, null
  br i1 %tobool145.not1251, label %while.end.if.end174_crit_edge, label %while.end.do.body146_crit_edge

while.end.do.body146_crit_edge:                   ; preds = %while.end
  br label %do.body146

while.end.if.end174_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end174

do.body146:                                       ; preds = %while.end167.do.body146_crit_edge, %while.end.do.body146_crit_edge
  %15 = phi ptr [ %.pr, %while.end167.do.body146_crit_edge ], [ %14, %while.end.do.body146_crit_edge ]
  %__i.sroa.0.01253 = phi i32 [ %___i153.0, %while.end167.do.body146_crit_edge ], [ %___i.0.lcssa, %while.end.do.body146_crit_edge ]
  %__E.01252 = phi i32 [ %spec.select, %while.end167.do.body146_crit_edge ], [ 0, %while.end.do.body146_crit_edge ]
  %call = tail call fastcc i32 @profile_onexec(ptr noundef nonnull %15, ptr noundef %onexec, i1 noundef zeroext false, ptr noundef %bprm, ptr noundef %buffer, ptr noundef %cond, ptr noundef %unsafe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool148.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool148.not, i32 %__E.01252, i32 %call
  br label %while.cond155

while.cond155:                                    ; preds = %land.rhs159.while.cond155_crit_edge, %do.body146
  %___i153.0.in = phi i32 [ %__i.sroa.0.01253, %do.body146 ], [ %___i153.0, %land.rhs159.while.cond155_crit_edge ]
  %___i153.0 = add i32 %___i153.0.in, 1
  %arrayidx157 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %___i153.0
  %16 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx157, align 4
  %tobool158.not = icmp eq ptr %17, null
  br i1 %tobool158.not, label %while.cond155.for.end_crit_edge, label %land.rhs159

while.cond155.for.end_crit_edge:                  ; preds = %while.cond155
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.rhs159:                                      ; preds = %while.cond155
  %ns162 = getelementptr inbounds %struct.aa_profile, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %ns162 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ns162, align 4
  %cmp163.not = icmp eq ptr %19, %5
  br i1 %cmp163.not, label %while.end167, label %land.rhs159.while.cond155_crit_edge

land.rhs159.while.cond155_crit_edge:              ; preds = %land.rhs159
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond155

while.end167:                                     ; preds = %land.rhs159
  %20 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load ptr, ptr %arrayidx157, align 4
  %tobool145.not = icmp eq ptr %.pr, null
  br i1 %tobool145.not, label %while.end167.for.end_crit_edge, label %while.end167.do.body146_crit_edge

while.end167.do.body146_crit_edge:                ; preds = %while.end167
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body146

while.end167.for.end_crit_edge:                   ; preds = %while.end167
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %while.end167.for.end_crit_edge, %while.cond155.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool171.not = icmp eq i32 %spec.select, 0
  br i1 %tobool171.not, label %for.end.if.end174_crit_edge, label %if.then172

for.end.if.end174_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end174

if.then172:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %21 = inttoptr i32 %spec.select to ptr
  br label %cleanup833

if.end174:                                        ; preds = %for.end.if.end174_crit_edge, %while.end.if.end174_crit_edge
  %22 = ptrtoint ptr %size433 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size433, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp177 = icmp sgt i32 %23, 1
  br i1 %cmp177, label %if.then178, label %if.else396

if.then178:                                       ; preds = %if.end174
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %___lvec_localtmp) #8
  %24 = call ptr @memset(ptr %___lvec_localtmp, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %___pvec_localtmp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %23)
  %cmp181 = icmp ult i32 %23, 9
  %25 = call ptr @memset(ptr %___pvec_localtmp, i32 255, i32 32)
  %26 = shl i32 %23, 2
  br i1 %cmp181, label %for.body187.preheader, label %if.end8.i.i

for.body187.preheader:                            ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #10
  %27 = call ptr @memset(ptr %___lvec_localtmp, i32 0, i32 %26)
  br label %for.cond202.preheader

if.end8.i.i:                                      ; preds = %if.then178
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %26, i32 noundef 3520) #11
  %tobool196.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool196.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end8.i.i.for.cond202.preheader_crit_edge

if.end8.i.i.for.cond202.preheader_crit_edge:      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond202.preheader

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond202.preheader:                            ; preds = %if.end8.i.i.for.cond202.preheader_crit_edge, %for.body187.preheader
  %__lvec.01333 = phi ptr [ %call9.i.i, %if.end8.i.i.for.cond202.preheader_crit_edge ], [ %___lvec_localtmp, %for.body187.preheader ]
  %28 = ptrtoint ptr %vec431 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vec431, align 4
  %tobool206.not1258 = icmp eq ptr %29, null
  br i1 %tobool206.not1258, label %for.cond202.preheader.for.cond267.preheader_crit_edge, label %for.cond202.preheader.for.body207_crit_edge

for.cond202.preheader.for.body207_crit_edge:      ; preds = %for.cond202.preheader
  br label %for.body207

for.cond202.preheader.for.cond267.preheader_crit_edge: ; preds = %for.cond202.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond267.preheader

for.cond267.preheader:                            ; preds = %if.end260.for.cond267.preheader_crit_edge, %for.cond202.preheader.for.cond267.preheader_crit_edge
  %30 = ptrtoint ptr %size433 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size433, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp2691261 = icmp sgt i32 %31, 0
  br i1 %cmp2691261, label %for.cond267.preheader.for.body270_crit_edge, label %for.cond267.preheader.for.end318_crit_edge

for.cond267.preheader.for.end318_crit_edge:       ; preds = %for.cond267.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end318

for.cond267.preheader.for.body270_crit_edge:      ; preds = %for.cond267.preheader
  br label %for.body270

for.body207:                                      ; preds = %if.end260.for.body207_crit_edge, %for.cond202.preheader.for.body207_crit_edge
  %32 = phi ptr [ %43, %if.end260.for.body207_crit_edge ], [ %29, %for.cond202.preheader.for.body207_crit_edge ]
  %__i179.sroa.0.01260 = phi i32 [ %inc265, %if.end260.for.body207_crit_edge ], [ 0, %for.cond202.preheader.for.body207_crit_edge ]
  %ns208 = getelementptr inbounds %struct.aa_profile, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %ns208 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ns208, align 4
  %35 = ptrtoint ptr %size433 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size433, align 4
  %sub212 = add i32 %36, -1
  %arrayidx213 = getelementptr ptr, ptr %vec431, i32 %sub212
  %37 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx213, align 4
  %ns214 = getelementptr inbounds %struct.aa_profile, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %ns214 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ns214, align 4
  %cmp215.not = icmp eq ptr %34, %40
  br i1 %cmp215.not, label %if.else218, label %if.then216

if.then216:                                       ; preds = %for.body207
  call void @__sanitizer_cov_trace_pc() #10
  %call217 = call fastcc ptr @profile_transition(ptr noundef nonnull %32, ptr noundef %bprm, ptr noundef %buffer, ptr noundef %cond, ptr noundef %unsafe)
  br label %if.end220

if.else218:                                       ; preds = %for.body207
  call void @__sanitizer_cov_trace_pc() #10
  %call219 = call fastcc ptr @aa_get_newest_label(ptr noundef %onexec)
  br label %if.end220

if.end220:                                        ; preds = %if.else218, %if.then216
  %__new.0 = phi ptr [ %call217, %if.then216 ], [ %call219, %if.else218 ]
  %tobool224.not = icmp eq ptr %__new.0, null
  br i1 %tobool224.not, label %if.end248.thread, label %if.end248, !prof !214

if.end248.thread:                                 ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 818, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.handle_onexec) #8
  br label %if.end260

if.end248:                                        ; preds = %if.end220
  %cmp.i = icmp ugt ptr %__new.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end248.do.body353_crit_edge, label %if.end248.if.end260_crit_edge

if.end248.if.end260_crit_edge:                    ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end260

if.end248.do.body353_crit_edge:                   ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body353

if.end260:                                        ; preds = %if.end248.if.end260_crit_edge, %if.end248.thread
  %inc265 = add i32 %__i179.sroa.0.01260, 1
  %arrayidx262 = getelementptr ptr, ptr %__lvec.01333, i32 %__i179.sroa.0.01260
  %41 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %__new.0, ptr %arrayidx262, align 4
  %arrayidx205 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %inc265
  %42 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx205, align 4
  %tobool206.not = icmp eq ptr %43, null
  br i1 %tobool206.not, label %if.end260.for.cond267.preheader_crit_edge, label %if.end260.for.body207_crit_edge

if.end260.for.body207_crit_edge:                  ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body207

if.end260.for.cond267.preheader_crit_edge:        ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond267.preheader

for.body270:                                      ; preds = %for.body270.for.body270_crit_edge, %for.cond267.preheader.for.body270_crit_edge
  %__j.11263 = phi i32 [ %inc275, %for.body270.for.body270_crit_edge ], [ 0, %for.cond267.preheader.for.body270_crit_edge ]
  %__count.01262 = phi i32 [ %add273, %for.body270.for.body270_crit_edge ], [ 0, %for.cond267.preheader.for.body270_crit_edge ]
  %arrayidx271 = getelementptr ptr, ptr %__lvec.01333, i32 %__j.11263
  %44 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx271, align 4
  %size272 = getelementptr inbounds %struct.aa_label, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %size272 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %size272, align 4
  %add273 = add i32 %47, %__count.01262
  %inc275 = add nuw nsw i32 %__j.11263, 1
  %exitcond.not = icmp eq i32 %inc275, %31
  br i1 %exitcond.not, label %for.end276, label %for.body270.for.body270_crit_edge

for.body270.for.body270_crit_edge:                ; preds = %for.body270
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body270

for.end276:                                       ; preds = %for.body270
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %add273)
  %cmp277 = icmp slt i32 %add273, 9
  br i1 %cmp277, label %for.cond281.preheader, label %if.end8.i.i1115

for.cond281.preheader:                            ; preds = %for.end276
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add273)
  %cmp2821265 = icmp sgt i32 %add273, 0
  br i1 %cmp2821265, label %for.body283.preheader, label %for.cond281.preheader.for.cond297.preheader_crit_edge

for.cond281.preheader.for.cond297.preheader_crit_edge: ; preds = %for.cond281.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond297.preheader

for.body283.preheader:                            ; preds = %for.cond281.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %48 = shl nuw nsw i32 %add273, 2
  %49 = call ptr @memset(ptr %___pvec_localtmp, i32 0, i32 %48)
  br label %for.cond297.preheader

if.end8.i.i1115:                                  ; preds = %for.end276
  %mul289 = shl i32 %add273, 2
  %call9.i.i1114 = call noalias align 128 ptr @__kmalloc(i32 noundef %mul289, i32 noundef 3520) #11
  %tobool293.not = icmp eq ptr %call9.i.i1114, null
  br i1 %tobool293.not, label %if.end8.i.i1115.do.body353_crit_edge, label %if.end8.i.i1115.for.cond297.preheader_crit_edge

if.end8.i.i1115.for.cond297.preheader_crit_edge:  ; preds = %if.end8.i.i1115
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond297.preheader

if.end8.i.i1115.do.body353_crit_edge:             ; preds = %if.end8.i.i1115
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body353

for.cond297.preheader:                            ; preds = %if.end8.i.i1115.for.cond297.preheader_crit_edge, %for.body283.preheader, %for.cond281.preheader.for.cond297.preheader_crit_edge
  %__pvec.01345.ph = phi ptr [ %___pvec_localtmp, %for.cond281.preheader.for.cond297.preheader_crit_edge ], [ %___pvec_localtmp, %for.body283.preheader ], [ %call9.i.i1114, %if.end8.i.i1115.for.cond297.preheader_crit_edge ]
  %50 = ptrtoint ptr %size433 to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pr1385 = load i32, ptr %size433, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1385)
  %cmp2991272 = icmp sgt i32 %.pr1385, 0
  br i1 %cmp2991272, label %for.cond297.preheader.for.cond302.preheader_crit_edge, label %for.cond297.preheader.for.end318_crit_edge

for.cond297.preheader.for.end318_crit_edge:       ; preds = %for.cond297.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end318

for.cond297.preheader.for.cond302.preheader_crit_edge: ; preds = %for.cond297.preheader
  br label %for.cond302.preheader

for.cond302.preheader:                            ; preds = %for.inc316.for.cond302.preheader_crit_edge, %for.cond297.preheader.for.cond302.preheader_crit_edge
  %__j.21274 = phi i32 [ %inc317, %for.inc316.for.cond302.preheader_crit_edge ], [ 0, %for.cond297.preheader.for.cond302.preheader_crit_edge ]
  %__k.01273 = phi i32 [ %__k.1.lcssa, %for.inc316.for.cond302.preheader_crit_edge ], [ 0, %for.cond297.preheader.for.cond302.preheader_crit_edge ]
  %arrayidx303 = getelementptr ptr, ptr %__lvec.01333, i32 %__j.21274
  %51 = ptrtoint ptr %arrayidx303 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx303, align 4
  %arrayidx3061267 = getelementptr %struct.aa_label, ptr %52, i32 0, i32 8, i32 0
  %53 = ptrtoint ptr %arrayidx3061267 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx3061267, align 4
  %tobool307.not1268 = icmp eq ptr %54, null
  br i1 %tobool307.not1268, label %for.cond302.preheader.for.inc316_crit_edge, label %for.cond302.preheader.if.then.i_crit_edge

for.cond302.preheader.if.then.i_crit_edge:        ; preds = %for.cond302.preheader
  br label %if.then.i

for.cond302.preheader.for.inc316_crit_edge:       ; preds = %for.cond302.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc316

if.then.i:                                        ; preds = %aa_get_profile.exit.if.then.i_crit_edge, %for.cond302.preheader.if.then.i_crit_edge
  %55 = phi ptr [ %62, %aa_get_profile.exit.if.then.i_crit_edge ], [ %54, %for.cond302.preheader.if.then.i_crit_edge ]
  %__i179.sroa.0.11270 = phi i32 [ %inc314, %aa_get_profile.exit.if.then.i_crit_edge ], [ 0, %for.cond302.preheader.if.then.i_crit_edge ]
  %__k.11269 = phi i32 [ %inc310, %aa_get_profile.exit.if.then.i_crit_edge ], [ %__k.01273, %for.cond302.preheader.if.then.i_crit_edge ]
  %label.i = getelementptr inbounds %struct.aa_profile, ptr %55, i32 0, i32 25
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %label.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %label.i, i32 1, i32 3, i32 1) #8
  %56 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i, ptr %label.i, i32 1, ptr elementtype(i32) %label.i) #8, !srcloc !217
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !214

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %57 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %.not.i.i.i.i.i = icmp sgt i32 %57, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.aa_get_profile.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !218

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.aa_get_profile.exit_crit_edge:  ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_get_profile.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %label.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %aa_get_profile.exit

aa_get_profile.exit:                              ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.aa_get_profile.exit_crit_edge
  %inc310 = add i32 %__k.11269, 1
  %arrayidx311 = getelementptr ptr, ptr %__pvec.01345.ph, i32 %__k.11269
  %58 = ptrtoint ptr %arrayidx311 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %arrayidx311, align 4
  %inc314 = add i32 %__i179.sroa.0.11270, 1
  %59 = ptrtoint ptr %arrayidx303 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx303, align 4
  %arrayidx306 = getelementptr %struct.aa_label, ptr %60, i32 0, i32 8, i32 %inc314
  %61 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx306, align 4
  %tobool307.not = icmp eq ptr %62, null
  br i1 %tobool307.not, label %aa_get_profile.exit.for.inc316_crit_edge, label %aa_get_profile.exit.if.then.i_crit_edge

aa_get_profile.exit.if.then.i_crit_edge:          ; preds = %aa_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

aa_get_profile.exit.for.inc316_crit_edge:         ; preds = %aa_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc316

for.inc316:                                       ; preds = %aa_get_profile.exit.for.inc316_crit_edge, %for.cond302.preheader.for.inc316_crit_edge
  %__k.1.lcssa = phi i32 [ %__k.01273, %for.cond302.preheader.for.inc316_crit_edge ], [ %inc310, %aa_get_profile.exit.for.inc316_crit_edge ]
  %inc317 = add nuw nsw i32 %__j.21274, 1
  %63 = ptrtoint ptr %size433 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %size433, align 4
  %cmp299 = icmp slt i32 %inc317, %64
  br i1 %cmp299, label %for.inc316.for.cond302.preheader_crit_edge, label %for.inc316.for.end318_crit_edge

for.inc316.for.end318_crit_edge:                  ; preds = %for.inc316
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end318

for.inc316.for.cond302.preheader_crit_edge:       ; preds = %for.inc316
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond302.preheader

for.end318:                                       ; preds = %for.inc316.for.end318_crit_edge, %for.cond297.preheader.for.end318_crit_edge, %for.cond267.preheader.for.end318_crit_edge
  %__count.0.lcssa133713441389 = phi i32 [ %add273, %for.cond297.preheader.for.end318_crit_edge ], [ 0, %for.cond267.preheader.for.end318_crit_edge ], [ %add273, %for.inc316.for.end318_crit_edge ]
  %__pvec.01346 = phi ptr [ %__pvec.01345.ph, %for.cond297.preheader.for.end318_crit_edge ], [ %___pvec_localtmp, %for.cond267.preheader.for.end318_crit_edge ], [ %__pvec.01345.ph, %for.inc316.for.end318_crit_edge ]
  %call319 = call i32 @aa_vec_unique(ptr noundef nonnull %__pvec.01346, i32 noundef %__count.0.lcssa133713441389, i32 noundef 0) #8
  %sub320 = sub i32 %__count.0.lcssa133713441389, %call319
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub320)
  %cmp321 = icmp sgt i32 %sub320, 1
  br i1 %cmp321, label %do.body332.thread, label %do.body332

do.body332.thread:                                ; preds = %for.end318
  call void @__sanitizer_cov_trace_pc() #10
  %call323 = call ptr @aa_vec_find_or_create_label(ptr noundef nonnull %__pvec.01346, i32 noundef %sub320, i32 noundef 3264) #8
  br label %for.body336.preheader

do.body332:                                       ; preds = %for.end318
  %65 = ptrtoint ptr %__pvec.01346 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %__pvec.01346, align 4
  %label329 = getelementptr inbounds %struct.aa_profile, ptr %66, i32 0, i32 25
  %call330 = call fastcc ptr @aa_get_label(ptr noundef %label329)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub320)
  %cmp3351275 = icmp eq i32 %sub320, 1
  br i1 %cmp3351275, label %do.body332.for.body336.preheader_crit_edge, label %do.body332.for.end344_crit_edge

do.body332.for.end344_crit_edge:                  ; preds = %do.body332
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end344

do.body332.for.body336.preheader_crit_edge:       ; preds = %do.body332
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body336.preheader

for.body336.preheader:                            ; preds = %do.body332.for.body336.preheader_crit_edge, %do.body332.thread
  %__new_.01354 = phi ptr [ %call323, %do.body332.thread ], [ %label329, %do.body332.for.body336.preheader_crit_edge ]
  br label %for.body336

for.body336:                                      ; preds = %for.inc342.for.body336_crit_edge, %for.body336.preheader
  %i333.01276 = phi i32 [ %inc343, %for.inc342.for.body336_crit_edge ], [ 0, %for.body336.preheader ]
  %arrayidx337 = getelementptr ptr, ptr %__pvec.01346, i32 %i333.01276
  %67 = ptrtoint ptr %arrayidx337 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx337, align 4
  %tobool.not.i1118 = icmp eq ptr %68, null
  %cmp.i1119 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i1118, %cmp.i1119
  br i1 %spec.select.i, label %for.body336.for.inc342_crit_edge, label %if.then.i1123

for.body336.for.inc342_crit_edge:                 ; preds = %for.body336
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc342

if.then.i1123:                                    ; preds = %for.body336
  %label.i1121 = getelementptr inbounds %struct.aa_profile, ptr %68, i32 0, i32 25
  %call.i.i.i.i.i.i.i1122 = call zeroext i1 @__kasan_check_write(ptr noundef %label.i1121, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  call void @llvm.prefetch.p0(ptr %label.i1121, i32 1, i32 3, i32 1) #8
  %69 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i1121, ptr %label.i1121, i32 1, ptr elementtype(i32) %label.i1121) #8, !srcloc !220
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i1125, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i1123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i1124 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i1124, label %if.end5.i.i.i.i.i.for.inc342_crit_edge, label %if.then10.i.i.i.i.i, !prof !218

if.end5.i.i.i.i.i.for.inc342_crit_edge:           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc342

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %label.i1121, i32 noundef 3) #8
  br label %for.inc342

if.then.i.i1125:                                  ; preds = %if.then.i1123
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !221
  call void @aa_label_kref(ptr noundef %label.i1121) #8
  br label %for.inc342

for.inc342:                                       ; preds = %if.then.i.i1125, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.for.inc342_crit_edge, %for.body336.for.inc342_crit_edge
  %inc343 = add nuw nsw i32 %i333.01276, 1
  %exitcond1325.not = icmp eq i32 %inc343, %sub320
  br i1 %exitcond1325.not, label %for.inc342.for.end344_crit_edge, label %for.inc342.for.body336_crit_edge

for.inc342.for.body336_crit_edge:                 ; preds = %for.inc342
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body336

for.inc342.for.end344_crit_edge:                  ; preds = %for.inc342
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end344

for.end344:                                       ; preds = %for.inc342.for.end344_crit_edge, %do.body332.for.end344_crit_edge
  %__new_.01353 = phi ptr [ %label329, %do.body332.for.end344_crit_edge ], [ %__new_.01354, %for.inc342.for.end344_crit_edge ]
  %cmp346.not = icmp eq ptr %__pvec.01346, %___pvec_localtmp
  br i1 %cmp346.not, label %for.end344.do.body353_crit_edge, label %if.then347

for.end344.do.body353_crit_edge:                  ; preds = %for.end344
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body353

if.then347:                                       ; preds = %for.end344
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %__pvec.01346) #8
  br label %do.body353

do.body353:                                       ; preds = %if.then347, %for.end344.do.body353_crit_edge, %if.end8.i.i1115.do.body353_crit_edge, %if.end248.do.body353_crit_edge
  %__new_.1 = phi ptr [ %__new_.01353, %if.then347 ], [ %__new_.01353, %for.end344.do.body353_crit_edge ], [ null, %if.end8.i.i1115.do.body353_crit_edge ], [ %__new.0, %if.end248.do.body353_crit_edge ]
  %70 = ptrtoint ptr %size433 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %size433, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp3571277 = icmp sgt i32 %71, 0
  br i1 %cmp3571277, label %do.body353.for.body358_crit_edge, label %do.body353.for.end366_crit_edge

do.body353.for.end366_crit_edge:                  ; preds = %do.body353
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end366

do.body353.for.body358_crit_edge:                 ; preds = %do.body353
  br label %for.body358

for.body358:                                      ; preds = %for.inc364.for.body358_crit_edge, %do.body353.for.body358_crit_edge
  %i354.01278 = phi i32 [ %inc365, %for.inc364.for.body358_crit_edge ], [ 0, %do.body353.for.body358_crit_edge ]
  %arrayidx359 = getelementptr ptr, ptr %__lvec.01333, i32 %i354.01278
  %72 = ptrtoint ptr %arrayidx359 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx359, align 4
  %tobool.not.i1126 = icmp eq ptr %73, null
  %cmp.i1127 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  %spec.select.i1128 = or i1 %tobool.not.i1126, %cmp.i1127
  br i1 %spec.select.i1128, label %for.body358.for.inc364_crit_edge, label %if.then.i1133

for.body358.for.inc364_crit_edge:                 ; preds = %for.body358
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc364

if.then.i1133:                                    ; preds = %for.body358
  %call.i.i.i.i.i.i.i1130 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %73, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  call void @llvm.prefetch.p0(ptr nonnull %73, i32 1, i32 3, i32 1) #8
  %74 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %73, ptr nonnull %73, i32 1, ptr nonnull elementtype(i32) %73) #8, !srcloc !220
  %asmresult.i.i.i.i.i.i.i.i1131 = extractvalue { i32, i32, i32 } %74, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i1131)
  %cmp.i.i.i.i.i1132 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i1131, 1
  br i1 %cmp.i.i.i.i.i1132, label %if.then.i.i1137, label %if.end5.i.i.i.i.i1135

if.end5.i.i.i.i.i1135:                            ; preds = %if.then.i1133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i1131)
  %.not.i.i.i.i.i1134 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i1131, 0
  br i1 %.not.i.i.i.i.i1134, label %if.end5.i.i.i.i.i1135.for.inc364_crit_edge, label %if.then10.i.i.i.i.i1136, !prof !218

if.end5.i.i.i.i.i1135.for.inc364_crit_edge:       ; preds = %if.end5.i.i.i.i.i1135
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc364

if.then10.i.i.i.i.i1136:                          ; preds = %if.end5.i.i.i.i.i1135
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %73, i32 noundef 3) #8
  br label %for.inc364

if.then.i.i1137:                                  ; preds = %if.then.i1133
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !221
  call void @aa_label_kref(ptr noundef nonnull %73) #8
  br label %for.inc364

for.inc364:                                       ; preds = %if.then.i.i1137, %if.then10.i.i.i.i.i1136, %if.end5.i.i.i.i.i1135.for.inc364_crit_edge, %for.body358.for.inc364_crit_edge
  %inc365 = add nuw nsw i32 %i354.01278, 1
  %75 = ptrtoint ptr %size433 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %size433, align 4
  %cmp357 = icmp slt i32 %inc365, %76
  br i1 %cmp357, label %for.inc364.for.body358_crit_edge, label %for.inc364.for.end366_crit_edge

for.inc364.for.end366_crit_edge:                  ; preds = %for.inc364
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end366

for.inc364.for.body358_crit_edge:                 ; preds = %for.inc364
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body358

for.end366:                                       ; preds = %for.inc364.for.end366_crit_edge, %do.body353.for.end366_crit_edge
  %cmp368.not = icmp eq ptr %__lvec.01333, %___lvec_localtmp
  br i1 %cmp368.not, label %for.end366.cleanup_crit_edge, label %if.then369

for.end366.cleanup_crit_edge:                     ; preds = %for.end366
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then369:                                       ; preds = %for.end366
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %__lvec.01333) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then369, %for.end366.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge
  %__new_.2 = phi ptr [ null, %if.end8.i.i.cleanup_crit_edge ], [ %__new_.1, %if.then369 ], [ %__new_.1, %for.end366.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %___pvec_localtmp) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %___lvec_localtmp) #8
  br label %__done

if.else396:                                       ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #10
  %call397 = tail call fastcc ptr @aa_get_newest_label(ptr noundef %onexec)
  br label %__done

__done:                                           ; preds = %if.else396, %cleanup
  %__new_.3 = phi ptr [ %__new_.2, %cleanup ], [ %call397, %if.else396 ]
  %tobool401.not = icmp eq ptr %__new_.3, null
  br i1 %tobool401.not, label %do.body403, label %__done.cleanup833_crit_edge

__done.cleanup833_crit_edge:                      ; preds = %__done
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup833

do.body403:                                       ; preds = %__done
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_debug to i32))
  %77 = load i8, ptr @aa_g_debug, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool404.not = icmp eq i8 %77, 0
  br i1 %tobool404.not, label %do.body403.if.end771_crit_edge, label %do.body406

do.body403.if.end771_crit_edge:                   ; preds = %do.body403
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end771

do.body406:                                       ; preds = %do.body403
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_onexec.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_onexec, %land.lhs.true)) #8
          to label %if.end771 [label %land.lhs.true], !srcloc !223

land.lhs.true:                                    ; preds = %do.body406
  %call417 = call i32 @___ratelimit(ptr noundef nonnull @handle_onexec._rs, ptr noundef nonnull @__func__.handle_onexec) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call417)
  %tobool418.not = icmp eq i32 %call417, 0
  br i1 %tobool418.not, label %land.lhs.true.if.end771_crit_edge, label %land.lhs.true.if.end771.sink.split_crit_edge

land.lhs.true.if.end771.sink.split_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end771.sink.split

land.lhs.true.if.end771_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end771

if.else428:                                       ; preds = %if.end122
  br i1 %tobool442.not1280, label %if.else428.while.end451_crit_edge, label %if.else428.land.rhs443_crit_edge

if.else428.land.rhs443_crit_edge:                 ; preds = %if.else428
  br label %land.rhs443

if.else428.while.end451_crit_edge:                ; preds = %if.else428
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end451

land.rhs443:                                      ; preds = %while.body449.land.rhs443_crit_edge, %if.else428.land.rhs443_crit_edge
  %78 = phi ptr [ %82, %while.body449.land.rhs443_crit_edge ], [ %7, %if.else428.land.rhs443_crit_edge ]
  %___i438.01281 = phi i32 [ %inc450, %while.body449.land.rhs443_crit_edge ], [ 0, %if.else428.land.rhs443_crit_edge ]
  %ns446 = getelementptr inbounds %struct.aa_profile, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %ns446 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ns446, align 4
  %cmp447.not = icmp eq ptr %80, %5
  br i1 %cmp447.not, label %land.rhs443.while.end451_crit_edge, label %while.body449

land.rhs443.while.end451_crit_edge:               ; preds = %land.rhs443
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end451

while.body449:                                    ; preds = %land.rhs443
  %inc450 = add i32 %___i438.01281, 1
  %arrayidx441 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %inc450
  %81 = ptrtoint ptr %arrayidx441 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx441, align 4
  %tobool442.not = icmp eq ptr %82, null
  br i1 %tobool442.not, label %while.body449.while.end451_crit_edge, label %while.body449.land.rhs443_crit_edge

while.body449.land.rhs443_crit_edge:              ; preds = %while.body449
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs443

while.body449.while.end451_crit_edge:             ; preds = %while.body449
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end451

while.end451:                                     ; preds = %while.body449.while.end451_crit_edge, %land.rhs443.while.end451_crit_edge, %if.else428.while.end451_crit_edge
  %___i438.0.lcssa = phi i32 [ 0, %if.else428.while.end451_crit_edge ], [ %inc450, %while.body449.while.end451_crit_edge ], [ %___i438.01281, %land.rhs443.while.end451_crit_edge ]
  %arrayidx4571284 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %___i438.0.lcssa
  %83 = ptrtoint ptr %arrayidx4571284 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx4571284, align 4
  %tobool458.not1285 = icmp eq ptr %84, null
  br i1 %tobool458.not1285, label %while.end451.if.end493_crit_edge, label %while.end451.do.body460_crit_edge

while.end451.do.body460_crit_edge:                ; preds = %while.end451
  br label %do.body460

while.end451.if.end493_crit_edge:                 ; preds = %while.end451
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end493

do.body460:                                       ; preds = %while.end485.do.body460_crit_edge, %while.end451.do.body460_crit_edge
  %85 = phi ptr [ %.pr1355, %while.end485.do.body460_crit_edge ], [ %84, %while.end451.do.body460_crit_edge ]
  %__E437.01287 = phi i32 [ %spec.select1084, %while.end485.do.body460_crit_edge ], [ 0, %while.end451.do.body460_crit_edge ]
  %__i429.sroa.0.01286 = phi i32 [ %___i470.0, %while.end485.do.body460_crit_edge ], [ %___i438.0.lcssa, %while.end451.do.body460_crit_edge ]
  %call463 = tail call fastcc i32 @profile_onexec(ptr noundef nonnull %85, ptr noundef %onexec, i1 noundef zeroext true, ptr noundef %bprm, ptr noundef %buffer, ptr noundef %cond, ptr noundef %unsafe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call463)
  %tobool464.not = icmp eq i32 %call463, 0
  %spec.select1084 = select i1 %tobool464.not, i32 %__E437.01287, i32 %call463
  br label %while.cond473

while.cond473:                                    ; preds = %land.rhs477.while.cond473_crit_edge, %do.body460
  %___i470.0.in = phi i32 [ %__i429.sroa.0.01286, %do.body460 ], [ %___i470.0, %land.rhs477.while.cond473_crit_edge ]
  %___i470.0 = add i32 %___i470.0.in, 1
  %arrayidx475 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %___i470.0
  %86 = ptrtoint ptr %arrayidx475 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx475, align 4
  %tobool476.not = icmp eq ptr %87, null
  br i1 %tobool476.not, label %while.cond473.for.end488_crit_edge, label %land.rhs477

while.cond473.for.end488_crit_edge:               ; preds = %while.cond473
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end488

land.rhs477:                                      ; preds = %while.cond473
  %ns480 = getelementptr inbounds %struct.aa_profile, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %ns480 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ns480, align 4
  %cmp481.not = icmp eq ptr %89, %5
  br i1 %cmp481.not, label %while.end485, label %land.rhs477.while.cond473_crit_edge

land.rhs477.while.cond473_crit_edge:              ; preds = %land.rhs477
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond473

while.end485:                                     ; preds = %land.rhs477
  %90 = ptrtoint ptr %arrayidx475 to i32
  call void @__asan_load4_noabort(i32 %90)
  %.pr1355 = load ptr, ptr %arrayidx475, align 4
  %tobool458.not = icmp eq ptr %.pr1355, null
  br i1 %tobool458.not, label %while.end485.for.end488_crit_edge, label %while.end485.do.body460_crit_edge

while.end485.do.body460_crit_edge:                ; preds = %while.end485
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body460

while.end485.for.end488_crit_edge:                ; preds = %while.end485
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end488

for.end488:                                       ; preds = %while.end485.for.end488_crit_edge, %while.cond473.for.end488_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select1084)
  %tobool490.not = icmp eq i32 %spec.select1084, 0
  br i1 %tobool490.not, label %for.end488.if.end493_crit_edge, label %if.then491

for.end488.if.end493_crit_edge:                   ; preds = %for.end488
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end493

if.then491:                                       ; preds = %for.end488
  call void @__sanitizer_cov_trace_pc() #10
  %91 = inttoptr i32 %spec.select1084 to ptr
  br label %cleanup833

if.end493:                                        ; preds = %for.end488.if.end493_crit_edge, %while.end451.if.end493_crit_edge
  %92 = ptrtoint ptr %size433 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %size433, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %93)
  %cmp497 = icmp sgt i32 %93, 1
  br i1 %cmp497, label %if.then498, label %if.else732

if.then498:                                       ; preds = %if.end493
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %___lvec_localtmp503) #8
  %94 = call ptr @memset(ptr %___lvec_localtmp503, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %___pvec_localtmp505) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %93)
  %cmp508 = icmp ult i32 %93, 9
  %95 = call ptr @memset(ptr %___pvec_localtmp505, i32 255, i32 32)
  %96 = shl i32 %93, 2
  br i1 %cmp508, label %for.body515.preheader, label %if.end8.i.i1164

for.body515.preheader:                            ; preds = %if.then498
  call void @__sanitizer_cov_trace_pc() #10
  %97 = call ptr @memset(ptr %___lvec_localtmp503, i32 0, i32 %96)
  br label %for.cond532.preheader

if.end8.i.i1164:                                  ; preds = %if.then498
  %call9.i.i1163 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %96, i32 noundef 3520) #11
  %tobool526.not = icmp eq ptr %call9.i.i1163, null
  br i1 %tobool526.not, label %if.end8.i.i1164.cleanup706_crit_edge, label %if.end8.i.i1164.for.cond532.preheader_crit_edge

if.end8.i.i1164.for.cond532.preheader_crit_edge:  ; preds = %if.end8.i.i1164
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond532.preheader

if.end8.i.i1164.cleanup706_crit_edge:             ; preds = %if.end8.i.i1164
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup706

for.cond532.preheader:                            ; preds = %if.end8.i.i1164.for.cond532.preheader_crit_edge, %for.body515.preheader
  %__lvec504.01361 = phi ptr [ %call9.i.i1163, %if.end8.i.i1164.for.cond532.preheader_crit_edge ], [ %___lvec_localtmp503, %for.body515.preheader ]
  %98 = ptrtoint ptr %vec431 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %vec431, align 4
  %tobool536.not1292 = icmp eq ptr %99, null
  br i1 %tobool536.not1292, label %for.cond532.preheader.for.cond599.preheader_crit_edge, label %for.cond532.preheader.for.body537_crit_edge

for.cond532.preheader.for.body537_crit_edge:      ; preds = %for.cond532.preheader
  br label %for.body537

for.cond532.preheader.for.cond599.preheader_crit_edge: ; preds = %for.cond532.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond599.preheader

for.cond599.preheader:                            ; preds = %if.end592.for.cond599.preheader_crit_edge, %for.cond532.preheader.for.cond599.preheader_crit_edge
  %100 = ptrtoint ptr %size433 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %size433, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp6011295 = icmp sgt i32 %101, 0
  br i1 %cmp6011295, label %for.cond599.preheader.for.body602_crit_edge, label %for.cond599.preheader.for.end650_crit_edge

for.cond599.preheader.for.end650_crit_edge:       ; preds = %for.cond599.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end650

for.cond599.preheader.for.body602_crit_edge:      ; preds = %for.cond599.preheader
  br label %for.body602

for.body537:                                      ; preds = %if.end592.for.body537_crit_edge, %for.cond532.preheader.for.body537_crit_edge
  %102 = phi ptr [ %113, %if.end592.for.body537_crit_edge ], [ %99, %for.cond532.preheader.for.body537_crit_edge ]
  %__j500.01294 = phi i32 [ %inc593, %if.end592.for.body537_crit_edge ], [ 0, %for.cond532.preheader.for.body537_crit_edge ]
  %ns539 = getelementptr inbounds %struct.aa_profile, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %ns539 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ns539, align 4
  %105 = ptrtoint ptr %size433 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %size433, align 4
  %sub543 = add i32 %106, -1
  %arrayidx544 = getelementptr ptr, ptr %vec431, i32 %sub543
  %107 = ptrtoint ptr %arrayidx544 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx544, align 4
  %ns545 = getelementptr inbounds %struct.aa_profile, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %ns545 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ns545, align 4
  %cmp546.not = icmp eq ptr %104, %110
  br i1 %cmp546.not, label %if.else549, label %if.then547

if.then547:                                       ; preds = %for.body537
  call void @__sanitizer_cov_trace_pc() #10
  %call548 = call fastcc ptr @profile_transition(ptr noundef nonnull %102, ptr noundef %bprm, ptr noundef %buffer, ptr noundef %cond, ptr noundef %unsafe)
  br label %if.end552

if.else549:                                       ; preds = %for.body537
  call void @__sanitizer_cov_trace_pc() #10
  %label550 = getelementptr inbounds %struct.aa_profile, ptr %102, i32 0, i32 25
  %call551 = call ptr @aa_label_merge(ptr noundef %label550, ptr noundef %onexec, i32 noundef 3264) #8
  br label %if.end552

if.end552:                                        ; preds = %if.else549, %if.then547
  %__new538.0 = phi ptr [ %call548, %if.then547 ], [ %call551, %if.else549 ]
  %tobool556.not = icmp eq ptr %__new538.0, null
  br i1 %tobool556.not, label %if.end580.thread, label %if.end580, !prof !214

if.end580.thread:                                 ; preds = %if.end552
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 831, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.handle_onexec) #8
  br label %if.end592

if.end580:                                        ; preds = %if.end552
  %cmp.i1167 = icmp ugt ptr %__new538.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1167, label %if.end580.do.body686_crit_edge, label %if.end580.if.end592_crit_edge

if.end580.if.end592_crit_edge:                    ; preds = %if.end580
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end592

if.end580.do.body686_crit_edge:                   ; preds = %if.end580
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body686

if.end592:                                        ; preds = %if.end580.if.end592_crit_edge, %if.end580.thread
  %inc593 = add i32 %__j500.01294, 1
  %arrayidx594 = getelementptr ptr, ptr %__lvec504.01361, i32 %__j500.01294
  %111 = ptrtoint ptr %arrayidx594 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %__new538.0, ptr %arrayidx594, align 4
  %arrayidx535 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %inc593
  %112 = ptrtoint ptr %arrayidx535 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx535, align 4
  %tobool536.not = icmp eq ptr %113, null
  br i1 %tobool536.not, label %if.end592.for.cond599.preheader_crit_edge, label %if.end592.for.body537_crit_edge

if.end592.for.body537_crit_edge:                  ; preds = %if.end592
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body537

if.end592.for.cond599.preheader_crit_edge:        ; preds = %if.end592
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond599.preheader

for.body602:                                      ; preds = %for.body602.for.body602_crit_edge, %for.cond599.preheader.for.body602_crit_edge
  %__count502.01297 = phi i32 [ %add605, %for.body602.for.body602_crit_edge ], [ 0, %for.cond599.preheader.for.body602_crit_edge ]
  %__j500.11296 = phi i32 [ %inc607, %for.body602.for.body602_crit_edge ], [ 0, %for.cond599.preheader.for.body602_crit_edge ]
  %arrayidx603 = getelementptr ptr, ptr %__lvec504.01361, i32 %__j500.11296
  %114 = ptrtoint ptr %arrayidx603 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx603, align 4
  %size604 = getelementptr inbounds %struct.aa_label, ptr %115, i32 0, i32 7
  %116 = ptrtoint ptr %size604 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %size604, align 4
  %add605 = add i32 %117, %__count502.01297
  %inc607 = add nuw nsw i32 %__j500.11296, 1
  %exitcond1326.not = icmp eq i32 %inc607, %101
  br i1 %exitcond1326.not, label %for.end608, label %for.body602.for.body602_crit_edge

for.body602.for.body602_crit_edge:                ; preds = %for.body602
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body602

for.end608:                                       ; preds = %for.body602
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %add605)
  %cmp609 = icmp slt i32 %add605, 9
  br i1 %cmp609, label %for.cond613.preheader, label %if.end8.i.i1194

for.cond613.preheader:                            ; preds = %for.end608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add605)
  %cmp6141299 = icmp sgt i32 %add605, 0
  br i1 %cmp6141299, label %for.body615.preheader, label %for.cond613.preheader.for.cond629.preheader_crit_edge

for.cond613.preheader.for.cond629.preheader_crit_edge: ; preds = %for.cond613.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond629.preheader

for.body615.preheader:                            ; preds = %for.cond613.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %118 = shl nuw nsw i32 %add605, 2
  %119 = call ptr @memset(ptr %___pvec_localtmp505, i32 0, i32 %118)
  br label %for.cond629.preheader

if.end8.i.i1194:                                  ; preds = %for.end608
  %mul621 = shl i32 %add605, 2
  %call9.i.i1193 = call noalias align 128 ptr @__kmalloc(i32 noundef %mul621, i32 noundef 3520) #11
  %tobool625.not = icmp eq ptr %call9.i.i1193, null
  br i1 %tobool625.not, label %if.end8.i.i1194.do.body686_crit_edge, label %if.end8.i.i1194.for.cond629.preheader_crit_edge

if.end8.i.i1194.for.cond629.preheader_crit_edge:  ; preds = %if.end8.i.i1194
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond629.preheader

if.end8.i.i1194.do.body686_crit_edge:             ; preds = %if.end8.i.i1194
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body686

for.cond629.preheader:                            ; preds = %if.end8.i.i1194.for.cond629.preheader_crit_edge, %for.body615.preheader, %for.cond613.preheader.for.cond629.preheader_crit_edge
  %__pvec506.01373.ph = phi ptr [ %___pvec_localtmp505, %for.cond613.preheader.for.cond629.preheader_crit_edge ], [ %___pvec_localtmp505, %for.body615.preheader ], [ %call9.i.i1193, %if.end8.i.i1194.for.cond629.preheader_crit_edge ]
  %120 = ptrtoint ptr %size433 to i32
  call void @__asan_load4_noabort(i32 %120)
  %.pr1390 = load i32, ptr %size433, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1390)
  %cmp6311306 = icmp sgt i32 %.pr1390, 0
  br i1 %cmp6311306, label %for.cond629.preheader.for.cond634.preheader_crit_edge, label %for.cond629.preheader.for.end650_crit_edge

for.cond629.preheader.for.end650_crit_edge:       ; preds = %for.cond629.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end650

for.cond629.preheader.for.cond634.preheader_crit_edge: ; preds = %for.cond629.preheader
  br label %for.cond634.preheader

for.cond634.preheader:                            ; preds = %for.inc648.for.cond634.preheader_crit_edge, %for.cond629.preheader.for.cond634.preheader_crit_edge
  %__k501.01308 = phi i32 [ %__k501.1.lcssa, %for.inc648.for.cond634.preheader_crit_edge ], [ 0, %for.cond629.preheader.for.cond634.preheader_crit_edge ]
  %__j500.21307 = phi i32 [ %inc649, %for.inc648.for.cond634.preheader_crit_edge ], [ 0, %for.cond629.preheader.for.cond634.preheader_crit_edge ]
  %arrayidx635 = getelementptr ptr, ptr %__lvec504.01361, i32 %__j500.21307
  %121 = ptrtoint ptr %arrayidx635 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx635, align 4
  %arrayidx6381301 = getelementptr %struct.aa_label, ptr %122, i32 0, i32 8, i32 0
  %123 = ptrtoint ptr %arrayidx6381301 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx6381301, align 4
  %tobool639.not1302 = icmp eq ptr %124, null
  br i1 %tobool639.not1302, label %for.cond634.preheader.for.inc648_crit_edge, label %for.cond634.preheader.if.then.i1202_crit_edge

for.cond634.preheader.if.then.i1202_crit_edge:    ; preds = %for.cond634.preheader
  br label %if.then.i1202

for.cond634.preheader.for.inc648_crit_edge:       ; preds = %for.cond634.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc648

if.then.i1202:                                    ; preds = %aa_get_profile.exit1208.if.then.i1202_crit_edge, %for.cond634.preheader.if.then.i1202_crit_edge
  %125 = phi ptr [ %132, %aa_get_profile.exit1208.if.then.i1202_crit_edge ], [ %124, %for.cond634.preheader.if.then.i1202_crit_edge ]
  %__k501.11304 = phi i32 [ %inc642, %aa_get_profile.exit1208.if.then.i1202_crit_edge ], [ %__k501.01308, %for.cond634.preheader.if.then.i1202_crit_edge ]
  %__i499.sroa.0.11303 = phi i32 [ %inc646, %aa_get_profile.exit1208.if.then.i1202_crit_edge ], [ 0, %for.cond634.preheader.if.then.i1202_crit_edge ]
  %label.i1198 = getelementptr inbounds %struct.aa_profile, ptr %125, i32 0, i32 25
  %call.i.i.i.i.i.i.i1199 = call zeroext i1 @__kasan_check_write(ptr noundef %label.i1198, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %label.i1198, i32 1, i32 3, i32 1) #8
  %126 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i1198, ptr %label.i1198, i32 1, ptr elementtype(i32) %label.i1198) #8, !srcloc !217
  %asmresult.i.i.i.i.i.i.i1200 = extractvalue { i32, i32, i32 } %126, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i1200)
  %tobool1.not.i.i.i.i.i1201 = icmp eq i32 %asmresult.i.i.i.i.i.i.i1200, 0
  br i1 %tobool1.not.i.i.i.i.i1201, label %if.then.i1202.if.end15.sink.split.i.i.i.i.i1207_crit_edge, label %if.else.i.i.i.i.i1205, !prof !214

if.then.i1202.if.end15.sink.split.i.i.i.i.i1207_crit_edge: ; preds = %if.then.i1202
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i1207

if.else.i.i.i.i.i1205:                            ; preds = %if.then.i1202
  %add.i.i.i.i.i1203 = add i32 %asmresult.i.i.i.i.i.i.i1200, 1
  %127 = or i32 %add.i.i.i.i.i1203, %asmresult.i.i.i.i.i.i.i1200
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %127)
  %.not.i.i.i.i.i1204 = icmp sgt i32 %127, -1
  br i1 %.not.i.i.i.i.i1204, label %if.else.i.i.i.i.i1205.aa_get_profile.exit1208_crit_edge, label %if.else.i.i.i.i.i1205.if.end15.sink.split.i.i.i.i.i1207_crit_edge, !prof !218

if.else.i.i.i.i.i1205.if.end15.sink.split.i.i.i.i.i1207_crit_edge: ; preds = %if.else.i.i.i.i.i1205
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i1207

if.else.i.i.i.i.i1205.aa_get_profile.exit1208_crit_edge: ; preds = %if.else.i.i.i.i.i1205
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_get_profile.exit1208

if.end15.sink.split.i.i.i.i.i1207:                ; preds = %if.else.i.i.i.i.i1205.if.end15.sink.split.i.i.i.i.i1207_crit_edge, %if.then.i1202.if.end15.sink.split.i.i.i.i.i1207_crit_edge
  %.sink.i.i.i.i.i1206 = phi i32 [ 2, %if.then.i1202.if.end15.sink.split.i.i.i.i.i1207_crit_edge ], [ 1, %if.else.i.i.i.i.i1205.if.end15.sink.split.i.i.i.i.i1207_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %label.i1198, i32 noundef %.sink.i.i.i.i.i1206) #8
  br label %aa_get_profile.exit1208

aa_get_profile.exit1208:                          ; preds = %if.end15.sink.split.i.i.i.i.i1207, %if.else.i.i.i.i.i1205.aa_get_profile.exit1208_crit_edge
  %inc642 = add i32 %__k501.11304, 1
  %arrayidx643 = getelementptr ptr, ptr %__pvec506.01373.ph, i32 %__k501.11304
  %128 = ptrtoint ptr %arrayidx643 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %125, ptr %arrayidx643, align 4
  %inc646 = add i32 %__i499.sroa.0.11303, 1
  %129 = ptrtoint ptr %arrayidx635 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx635, align 4
  %arrayidx638 = getelementptr %struct.aa_label, ptr %130, i32 0, i32 8, i32 %inc646
  %131 = ptrtoint ptr %arrayidx638 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx638, align 4
  %tobool639.not = icmp eq ptr %132, null
  br i1 %tobool639.not, label %aa_get_profile.exit1208.for.inc648_crit_edge, label %aa_get_profile.exit1208.if.then.i1202_crit_edge

aa_get_profile.exit1208.if.then.i1202_crit_edge:  ; preds = %aa_get_profile.exit1208
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i1202

aa_get_profile.exit1208.for.inc648_crit_edge:     ; preds = %aa_get_profile.exit1208
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc648

for.inc648:                                       ; preds = %aa_get_profile.exit1208.for.inc648_crit_edge, %for.cond634.preheader.for.inc648_crit_edge
  %__k501.1.lcssa = phi i32 [ %__k501.01308, %for.cond634.preheader.for.inc648_crit_edge ], [ %inc642, %aa_get_profile.exit1208.for.inc648_crit_edge ]
  %inc649 = add nuw nsw i32 %__j500.21307, 1
  %133 = ptrtoint ptr %size433 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %size433, align 4
  %cmp631 = icmp slt i32 %inc649, %134
  br i1 %cmp631, label %for.inc648.for.cond634.preheader_crit_edge, label %for.inc648.for.end650_crit_edge

for.inc648.for.end650_crit_edge:                  ; preds = %for.inc648
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end650

for.inc648.for.cond634.preheader_crit_edge:       ; preds = %for.inc648
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond634.preheader

for.end650:                                       ; preds = %for.inc648.for.end650_crit_edge, %for.cond629.preheader.for.end650_crit_edge, %for.cond599.preheader.for.end650_crit_edge
  %__count502.0.lcssa136513721394 = phi i32 [ %add605, %for.cond629.preheader.for.end650_crit_edge ], [ 0, %for.cond599.preheader.for.end650_crit_edge ], [ %add605, %for.inc648.for.end650_crit_edge ]
  %__pvec506.01374 = phi ptr [ %__pvec506.01373.ph, %for.cond629.preheader.for.end650_crit_edge ], [ %___pvec_localtmp505, %for.cond599.preheader.for.end650_crit_edge ], [ %__pvec506.01373.ph, %for.inc648.for.end650_crit_edge ]
  %call651 = call i32 @aa_vec_unique(ptr noundef nonnull %__pvec506.01374, i32 noundef %__count502.0.lcssa136513721394, i32 noundef 0) #8
  %sub652 = sub i32 %__count502.0.lcssa136513721394, %call651
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub652)
  %cmp653 = icmp sgt i32 %sub652, 1
  br i1 %cmp653, label %do.body664.thread, label %do.body664

do.body664.thread:                                ; preds = %for.end650
  call void @__sanitizer_cov_trace_pc() #10
  %call655 = call ptr @aa_vec_find_or_create_label(ptr noundef nonnull %__pvec506.01374, i32 noundef %sub652, i32 noundef 3264) #8
  br label %for.body668.preheader

do.body664:                                       ; preds = %for.end650
  %135 = ptrtoint ptr %__pvec506.01374 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %__pvec506.01374, align 4
  %label661 = getelementptr inbounds %struct.aa_profile, ptr %136, i32 0, i32 25
  %call662 = call fastcc ptr @aa_get_label(ptr noundef %label661)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub652)
  %cmp6671309 = icmp eq i32 %sub652, 1
  br i1 %cmp6671309, label %do.body664.for.body668.preheader_crit_edge, label %do.body664.for.end676_crit_edge

do.body664.for.end676_crit_edge:                  ; preds = %do.body664
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end676

do.body664.for.body668.preheader_crit_edge:       ; preds = %do.body664
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body668.preheader

for.body668.preheader:                            ; preds = %do.body664.for.body668.preheader_crit_edge, %do.body664.thread
  %__new_495.01382 = phi ptr [ %call655, %do.body664.thread ], [ %label661, %do.body664.for.body668.preheader_crit_edge ]
  br label %for.body668

for.body668:                                      ; preds = %for.inc674.for.body668_crit_edge, %for.body668.preheader
  %i665.01310 = phi i32 [ %inc675, %for.inc674.for.body668_crit_edge ], [ 0, %for.body668.preheader ]
  %arrayidx669 = getelementptr ptr, ptr %__pvec506.01374, i32 %i665.01310
  %137 = ptrtoint ptr %arrayidx669 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx669, align 4
  %tobool.not.i1209 = icmp eq ptr %138, null
  %cmp.i1210 = icmp ugt ptr %138, inttoptr (i32 -4096 to ptr)
  %spec.select.i1211 = or i1 %tobool.not.i1209, %cmp.i1210
  br i1 %spec.select.i1211, label %for.body668.for.inc674_crit_edge, label %if.then.i1217

for.body668.for.inc674_crit_edge:                 ; preds = %for.body668
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc674

if.then.i1217:                                    ; preds = %for.body668
  %label.i1213 = getelementptr inbounds %struct.aa_profile, ptr %138, i32 0, i32 25
  %call.i.i.i.i.i.i.i1214 = call zeroext i1 @__kasan_check_write(ptr noundef %label.i1213, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  call void @llvm.prefetch.p0(ptr %label.i1213, i32 1, i32 3, i32 1) #8
  %139 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i1213, ptr %label.i1213, i32 1, ptr elementtype(i32) %label.i1213) #8, !srcloc !220
  %asmresult.i.i.i.i.i.i.i.i1215 = extractvalue { i32, i32, i32 } %139, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i1215)
  %cmp.i.i.i.i.i1216 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i1215, 1
  br i1 %cmp.i.i.i.i.i1216, label %if.then.i.i1221, label %if.end5.i.i.i.i.i1219

if.end5.i.i.i.i.i1219:                            ; preds = %if.then.i1217
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i1215)
  %.not.i.i.i.i.i1218 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i1215, 0
  br i1 %.not.i.i.i.i.i1218, label %if.end5.i.i.i.i.i1219.for.inc674_crit_edge, label %if.then10.i.i.i.i.i1220, !prof !218

if.end5.i.i.i.i.i1219.for.inc674_crit_edge:       ; preds = %if.end5.i.i.i.i.i1219
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc674

if.then10.i.i.i.i.i1220:                          ; preds = %if.end5.i.i.i.i.i1219
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %label.i1213, i32 noundef 3) #8
  br label %for.inc674

if.then.i.i1221:                                  ; preds = %if.then.i1217
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !221
  call void @aa_label_kref(ptr noundef %label.i1213) #8
  br label %for.inc674

for.inc674:                                       ; preds = %if.then.i.i1221, %if.then10.i.i.i.i.i1220, %if.end5.i.i.i.i.i1219.for.inc674_crit_edge, %for.body668.for.inc674_crit_edge
  %inc675 = add nuw nsw i32 %i665.01310, 1
  %exitcond1327.not = icmp eq i32 %inc675, %sub652
  br i1 %exitcond1327.not, label %for.inc674.for.end676_crit_edge, label %for.inc674.for.body668_crit_edge

for.inc674.for.body668_crit_edge:                 ; preds = %for.inc674
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body668

for.inc674.for.end676_crit_edge:                  ; preds = %for.inc674
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end676

for.end676:                                       ; preds = %for.inc674.for.end676_crit_edge, %do.body664.for.end676_crit_edge
  %__new_495.01381 = phi ptr [ %label661, %do.body664.for.end676_crit_edge ], [ %__new_495.01382, %for.inc674.for.end676_crit_edge ]
  %cmp678.not = icmp eq ptr %__pvec506.01374, %___pvec_localtmp505
  br i1 %cmp678.not, label %for.end676.do.body686_crit_edge, label %if.then679

for.end676.do.body686_crit_edge:                  ; preds = %for.end676
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body686

if.then679:                                       ; preds = %for.end676
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %__pvec506.01374) #8
  br label %do.body686

do.body686:                                       ; preds = %if.then679, %for.end676.do.body686_crit_edge, %if.end8.i.i1194.do.body686_crit_edge, %if.end580.do.body686_crit_edge
  %__new_495.1 = phi ptr [ %__new_495.01381, %if.then679 ], [ %__new_495.01381, %for.end676.do.body686_crit_edge ], [ null, %if.end8.i.i1194.do.body686_crit_edge ], [ %__new538.0, %if.end580.do.body686_crit_edge ]
  %140 = ptrtoint ptr %size433 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %size433, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp6901311 = icmp sgt i32 %141, 0
  br i1 %cmp6901311, label %do.body686.for.body691_crit_edge, label %do.body686.for.end699_crit_edge

do.body686.for.end699_crit_edge:                  ; preds = %do.body686
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end699

do.body686.for.body691_crit_edge:                 ; preds = %do.body686
  br label %for.body691

for.body691:                                      ; preds = %for.inc697.for.body691_crit_edge, %do.body686.for.body691_crit_edge
  %i687.01312 = phi i32 [ %inc698, %for.inc697.for.body691_crit_edge ], [ 0, %do.body686.for.body691_crit_edge ]
  %arrayidx692 = getelementptr ptr, ptr %__lvec504.01361, i32 %i687.01312
  %142 = ptrtoint ptr %arrayidx692 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx692, align 4
  %tobool.not.i1223 = icmp eq ptr %143, null
  %cmp.i1224 = icmp ugt ptr %143, inttoptr (i32 -4096 to ptr)
  %spec.select.i1225 = or i1 %tobool.not.i1223, %cmp.i1224
  br i1 %spec.select.i1225, label %for.body691.for.inc697_crit_edge, label %if.then.i1230

for.body691.for.inc697_crit_edge:                 ; preds = %for.body691
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc697

if.then.i1230:                                    ; preds = %for.body691
  %call.i.i.i.i.i.i.i1227 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %143, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  call void @llvm.prefetch.p0(ptr nonnull %143, i32 1, i32 3, i32 1) #8
  %144 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %143, ptr nonnull %143, i32 1, ptr nonnull elementtype(i32) %143) #8, !srcloc !220
  %asmresult.i.i.i.i.i.i.i.i1228 = extractvalue { i32, i32, i32 } %144, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i1228)
  %cmp.i.i.i.i.i1229 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i1228, 1
  br i1 %cmp.i.i.i.i.i1229, label %if.then.i.i1234, label %if.end5.i.i.i.i.i1232

if.end5.i.i.i.i.i1232:                            ; preds = %if.then.i1230
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i1228)
  %.not.i.i.i.i.i1231 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i1228, 0
  br i1 %.not.i.i.i.i.i1231, label %if.end5.i.i.i.i.i1232.for.inc697_crit_edge, label %if.then10.i.i.i.i.i1233, !prof !218

if.end5.i.i.i.i.i1232.for.inc697_crit_edge:       ; preds = %if.end5.i.i.i.i.i1232
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc697

if.then10.i.i.i.i.i1233:                          ; preds = %if.end5.i.i.i.i.i1232
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %143, i32 noundef 3) #8
  br label %for.inc697

if.then.i.i1234:                                  ; preds = %if.then.i1230
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !221
  call void @aa_label_kref(ptr noundef nonnull %143) #8
  br label %for.inc697

for.inc697:                                       ; preds = %if.then.i.i1234, %if.then10.i.i.i.i.i1233, %if.end5.i.i.i.i.i1232.for.inc697_crit_edge, %for.body691.for.inc697_crit_edge
  %inc698 = add nuw nsw i32 %i687.01312, 1
  %145 = ptrtoint ptr %size433 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %size433, align 4
  %cmp690 = icmp slt i32 %inc698, %146
  br i1 %cmp690, label %for.inc697.for.body691_crit_edge, label %for.inc697.for.end699_crit_edge

for.inc697.for.end699_crit_edge:                  ; preds = %for.inc697
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end699

for.inc697.for.body691_crit_edge:                 ; preds = %for.inc697
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body691

for.end699:                                       ; preds = %for.inc697.for.end699_crit_edge, %do.body686.for.end699_crit_edge
  %cmp701.not = icmp eq ptr %__lvec504.01361, %___lvec_localtmp503
  br i1 %cmp701.not, label %for.end699.cleanup706_crit_edge, label %if.then702

for.end699.cleanup706_crit_edge:                  ; preds = %for.end699
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup706

if.then702:                                       ; preds = %for.end699
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %__lvec504.01361) #8
  br label %cleanup706

cleanup706:                                       ; preds = %if.then702, %for.end699.cleanup706_crit_edge, %if.end8.i.i1164.cleanup706_crit_edge
  %__new_495.2 = phi ptr [ null, %if.end8.i.i1164.cleanup706_crit_edge ], [ %__new_495.1, %if.then702 ], [ %__new_495.1, %for.end699.cleanup706_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %___pvec_localtmp505) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %___lvec_localtmp503) #8
  br label %__done738

if.else732:                                       ; preds = %if.end493
  call void @__sanitizer_cov_trace_pc() #10
  %sub719 = add i32 %93, -1
  %arrayidx720 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %sub719
  %147 = ptrtoint ptr %arrayidx720 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx720, align 4
  %label733 = getelementptr inbounds %struct.aa_profile, ptr %148, i32 0, i32 25
  %call734 = tail call ptr @aa_label_merge(ptr noundef %label733, ptr noundef %onexec, i32 noundef 3264) #8
  br label %__done738

__done738:                                        ; preds = %if.else732, %cleanup706
  %__new_495.3 = phi ptr [ %__new_495.2, %cleanup706 ], [ %call734, %if.else732 ]
  %tobool739.not = icmp eq ptr %__new_495.3, null
  br i1 %tobool739.not, label %do.body741, label %__done738.cleanup833_crit_edge

__done738.cleanup833_crit_edge:                   ; preds = %__done738
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup833

do.body741:                                       ; preds = %__done738
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_debug to i32))
  %149 = load i8, ptr @aa_g_debug, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool742.not = icmp eq i8 %149, 0
  br i1 %tobool742.not, label %do.body741.if.end771_crit_edge, label %do.body744

do.body741.if.end771_crit_edge:                   ; preds = %do.body741
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end771

do.body744:                                       ; preds = %do.body741
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_onexec.descriptor.48, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_onexec, %land.lhs.true756)) #8
          to label %if.end771 [label %land.lhs.true756], !srcloc !223

land.lhs.true756:                                 ; preds = %do.body744
  %call757 = call i32 @___ratelimit(ptr noundef nonnull @handle_onexec._rs.47, ptr noundef nonnull @__func__.handle_onexec) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call757)
  %tobool758.not = icmp eq i32 %call757, 0
  br i1 %tobool758.not, label %land.lhs.true756.if.end771_crit_edge, label %land.lhs.true756.if.end771.sink.split_crit_edge

land.lhs.true756.if.end771.sink.split_crit_edge:  ; preds = %land.lhs.true756
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end771.sink.split

land.lhs.true756.if.end771_crit_edge:             ; preds = %land.lhs.true756
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end771

if.end771.sink.split:                             ; preds = %land.lhs.true756.if.end771.sink.split_crit_edge, %land.lhs.true.if.end771.sink.split_crit_edge
  %handle_onexec.descriptor.48.sink = phi ptr [ @handle_onexec.descriptor, %land.lhs.true.if.end771.sink.split_crit_edge ], [ @handle_onexec.descriptor.48, %land.lhs.true756.if.end771.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull %handle_onexec.descriptor.48.sink, ptr noundef nonnull @.str.7) #8
  br label %if.end771

if.end771:                                        ; preds = %if.end771.sink.split, %land.lhs.true756.if.end771_crit_edge, %do.body744, %do.body741.if.end771_crit_edge, %land.lhs.true.if.end771_crit_edge, %do.body406, %do.body403.if.end771_crit_edge
  %vec774 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8
  %size776 = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 7
  %150 = ptrtoint ptr %size776 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %size776, align 4
  %sub777 = add i32 %151, -1
  %arrayidx778 = getelementptr ptr, ptr %vec774, i32 %sub777
  %152 = ptrtoint ptr %arrayidx778 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx778, align 4
  %ns779 = getelementptr inbounds %struct.aa_profile, ptr %153, i32 0, i32 2
  %154 = ptrtoint ptr %ns779 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %ns779, align 4
  %156 = ptrtoint ptr %vec774 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %vec774, align 4
  %tobool785.not1314 = icmp eq ptr %157, null
  br i1 %tobool785.not1314, label %if.end771.while.end794_crit_edge, label %if.end771.land.rhs786_crit_edge

if.end771.land.rhs786_crit_edge:                  ; preds = %if.end771
  br label %land.rhs786

if.end771.while.end794_crit_edge:                 ; preds = %if.end771
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end794

land.rhs786:                                      ; preds = %while.body792.land.rhs786_crit_edge, %if.end771.land.rhs786_crit_edge
  %158 = phi ptr [ %162, %while.body792.land.rhs786_crit_edge ], [ %157, %if.end771.land.rhs786_crit_edge ]
  %___i781.01315 = phi i32 [ %inc793, %while.body792.land.rhs786_crit_edge ], [ 0, %if.end771.land.rhs786_crit_edge ]
  %ns789 = getelementptr inbounds %struct.aa_profile, ptr %158, i32 0, i32 2
  %159 = ptrtoint ptr %ns789 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ns789, align 4
  %cmp790.not = icmp eq ptr %160, %155
  br i1 %cmp790.not, label %land.rhs786.while.end794_crit_edge, label %while.body792

land.rhs786.while.end794_crit_edge:               ; preds = %land.rhs786
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end794

while.body792:                                    ; preds = %land.rhs786
  %inc793 = add i32 %___i781.01315, 1
  %arrayidx784 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %inc793
  %161 = ptrtoint ptr %arrayidx784 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx784, align 4
  %tobool785.not = icmp eq ptr %162, null
  br i1 %tobool785.not, label %while.body792.while.end794_crit_edge, label %while.body792.land.rhs786_crit_edge

while.body792.land.rhs786_crit_edge:              ; preds = %while.body792
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs786

while.body792.while.end794_crit_edge:             ; preds = %while.body792
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end794

while.end794:                                     ; preds = %while.body792.while.end794_crit_edge, %land.rhs786.while.end794_crit_edge, %if.end771.while.end794_crit_edge
  %___i781.0.lcssa = phi i32 [ 0, %if.end771.while.end794_crit_edge ], [ %inc793, %while.body792.while.end794_crit_edge ], [ %___i781.01315, %land.rhs786.while.end794_crit_edge ]
  %arrayidx8001318 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %___i781.0.lcssa
  %163 = ptrtoint ptr %arrayidx8001318 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %arrayidx8001318, align 4
  %tobool801.not1319 = icmp eq ptr %164, null
  br i1 %tobool801.not1319, label %while.end794.cleanup833_crit_edge, label %do.body803.lr.ph

while.end794.cleanup833_crit_edge:                ; preds = %while.end794
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup833

do.body803.lr.ph:                                 ; preds = %while.end794
  %filename = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 14
  br label %do.body803

do.body803:                                       ; preds = %while.end827.do.body803_crit_edge, %do.body803.lr.ph
  %165 = phi ptr [ %164, %do.body803.lr.ph ], [ %.pr1383, %while.end827.do.body803_crit_edge ]
  %__E780.01321 = phi i32 [ 0, %do.body803.lr.ph ], [ %spec.select1085, %while.end827.do.body803_crit_edge ]
  %__i772.sroa.0.01320 = phi i32 [ %___i781.0.lcssa, %do.body803.lr.ph ], [ %___i812.0, %while.end827.do.body803_crit_edge ]
  %166 = ptrtoint ptr %filename to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %filename, align 4
  %call805 = call i32 @aa_audit_file(ptr noundef nonnull %165, ptr noundef nonnull @nullperms, ptr noundef nonnull @.str.23, i32 noundef 536870912, ptr noundef %167, ptr noundef null, ptr noundef %onexec, [1 x i32] zeroinitializer, ptr noundef nonnull @.str.32, i32 noundef -12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call805)
  %tobool806.not = icmp eq i32 %call805, 0
  %spec.select1085 = select i1 %tobool806.not, i32 %__E780.01321, i32 %call805
  br label %while.cond815

while.cond815:                                    ; preds = %land.rhs819.while.cond815_crit_edge, %do.body803
  %___i812.0.in = phi i32 [ %__i772.sroa.0.01320, %do.body803 ], [ %___i812.0, %land.rhs819.while.cond815_crit_edge ]
  %___i812.0 = add i32 %___i812.0.in, 1
  %arrayidx817 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %___i812.0
  %168 = ptrtoint ptr %arrayidx817 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx817, align 4
  %tobool818.not = icmp eq ptr %169, null
  br i1 %tobool818.not, label %while.cond815.for.end830.loopexit_crit_edge, label %land.rhs819

while.cond815.for.end830.loopexit_crit_edge:      ; preds = %while.cond815
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end830.loopexit

land.rhs819:                                      ; preds = %while.cond815
  %ns822 = getelementptr inbounds %struct.aa_profile, ptr %169, i32 0, i32 2
  %170 = ptrtoint ptr %ns822 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ns822, align 4
  %cmp823.not = icmp eq ptr %171, %155
  br i1 %cmp823.not, label %while.end827, label %land.rhs819.while.cond815_crit_edge

land.rhs819.while.cond815_crit_edge:              ; preds = %land.rhs819
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond815

while.end827:                                     ; preds = %land.rhs819
  %172 = ptrtoint ptr %arrayidx817 to i32
  call void @__asan_load4_noabort(i32 %172)
  %.pr1383 = load ptr, ptr %arrayidx817, align 4
  %tobool801.not = icmp eq ptr %.pr1383, null
  br i1 %tobool801.not, label %while.end827.for.end830.loopexit_crit_edge, label %while.end827.do.body803_crit_edge

while.end827.do.body803_crit_edge:                ; preds = %while.end827
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body803

while.end827.for.end830.loopexit_crit_edge:       ; preds = %while.end827
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end830.loopexit

for.end830.loopexit:                              ; preds = %while.end827.for.end830.loopexit_crit_edge, %while.cond815.for.end830.loopexit_crit_edge
  %phi.cast = inttoptr i32 %spec.select1085 to ptr
  br label %cleanup833

cleanup833:                                       ; preds = %for.end830.loopexit, %while.end794.cleanup833_crit_edge, %__done738.cleanup833_crit_edge, %if.then491, %__done.cleanup833_crit_edge, %if.then172
  %retval.0 = phi ptr [ %91, %if.then491 ], [ %21, %if.then172 ], [ %__new_495.3, %__done738.cleanup833_crit_edge ], [ %__new_.3, %__done.cleanup833_crit_edge ], [ null, %while.end794.cleanup833_crit_edge ], [ %phi.cast, %for.end830.loopexit ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @profile_transition(ptr noundef %profile, ptr noundef %bprm, ptr noundef %buffer, ptr noundef %cond, ptr nocapture noundef writeonly %secure_exec) unnamed_addr #0 align 64 {
entry:
  %info = alloca ptr, align 4
  %name = alloca ptr, align 4
  %perms = alloca %struct.aa_perms, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info) #8
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %info, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #8
  %1 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %name, align 4
  %file = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 13
  %2 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %file, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %perms) #8
  %4 = call ptr @memset(ptr %perms, i32 0, i32 44)
  %tobool.not = icmp eq ptr %profile, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !214

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 636, i32 noundef 9, ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.profile_transition) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %bprm, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !214

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 637, i32 noundef 9, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.profile_transition) #8
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %tobool62.not = icmp eq ptr %buffer, null
  br i1 %tobool62.not, label %do.end80, label %if.end50.if.end86_crit_edge, !prof !214

if.end50.if.end86_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

do.end80:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 638, i32 noundef 9, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.profile_transition) #8
  br label %if.end86

if.end86:                                         ; preds = %do.end80, %if.end50.if.end86_crit_edge
  %file96 = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 8
  %5 = ptrtoint ptr %file96 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %file96, align 4
  %f_path = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 1
  %path_flags = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 9
  %7 = ptrtoint ptr %path_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %path_flags, align 4
  %disconnected = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 10
  %9 = ptrtoint ptr %disconnected to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %disconnected, align 4
  %call = call i32 @aa_path_name(ptr noundef %f_path, i32 noundef %8, ptr noundef %buffer, ptr noundef nonnull %name, ptr noundef nonnull %info, ptr noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool97.not = icmp eq i32 %call, 0
  %mode127 = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 8
  %11 = ptrtoint ptr %mode127 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp128 = icmp eq i32 %12, 3
  br i1 %tobool97.not, label %if.end126, label %if.then98

if.then98:                                        ; preds = %if.end86
  br i1 %cmp128, label %if.then98.do.body101_crit_edge, label %lor.lhs.false

if.then98.do.body101_crit_edge:                   ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body101

lor.lhs.false:                                    ; preds = %if.then98
  %flags = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 25, i32 5
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool99.not = icmp eq i32 %and, 0
  br i1 %tobool99.not, label %lor.lhs.false.if.end125_crit_edge, label %lor.lhs.false.do.body101_crit_edge

lor.lhs.false.do.body101_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body101

lor.lhs.false.if.end125_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125

do.body101:                                       ; preds = %lor.lhs.false.do.body101_crit_edge, %if.then98.do.body101_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_debug to i32))
  %15 = load i8, ptr @aa_g_debug, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool102.not = icmp eq i8 %15, 0
  br i1 %tobool102.not, label %do.body101.do.end122_crit_edge, label %do.body104

do.body101.do.end122_crit_edge:                   ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end122

do.body104:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @profile_transition.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@profile_transition, %land.lhs.true)) #8
          to label %do.end122 [label %land.lhs.true], !srcloc !223

land.lhs.true:                                    ; preds = %do.body104
  %call114 = call i32 @___ratelimit(ptr noundef nonnull @profile_transition._rs, ptr noundef nonnull @__func__.profile_transition) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %land.lhs.true.do.end122_crit_edge, label %if.then116

land.lhs.true.do.end122_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end122

if.then116:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @profile_transition.descriptor, ptr noundef nonnull @.str.51) #8
  br label %do.end122

do.end122:                                        ; preds = %if.then116, %land.lhs.true.do.end122_crit_edge, %do.body104, %do.body101.do.end122_crit_edge
  %label123 = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 25
  %call124 = call fastcc ptr @aa_get_newest_label(ptr noundef %label123)
  br label %if.end125

if.end125:                                        ; preds = %do.end122, %lor.lhs.false.if.end125_crit_edge
  %error.0 = phi i32 [ 0, %do.end122 ], [ %call, %lor.lhs.false.if.end125_crit_edge ]
  %new.0 = phi ptr [ %call124, %do.end122 ], [ null, %lor.lhs.false.if.end125_crit_edge ]
  %filename = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 14
  %16 = ptrtoint ptr %filename to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %filename, align 4
  %18 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %name, align 4
  br label %audit

if.end126:                                        ; preds = %if.end86
  br i1 %cmp128, label %if.then129, label %if.end187

if.then129:                                       ; preds = %if.end126
  %ns = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 2
  %19 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ns, align 4
  %profiles = getelementptr inbounds %struct.aa_policy, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name, align 4
  %call131 = call fastcc ptr @find_attach(ptr noundef %bprm, ptr noundef %20, ptr noundef %profiles, ptr noundef %22, ptr noundef nonnull %info)
  %tobool132.not = icmp eq ptr %call131, null
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_debug to i32))
  %23 = load i8, ptr @aa_g_debug, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool161.not = icmp eq i8 %23, 0
  br i1 %tobool132.not, label %do.body160, label %do.body134

do.body134:                                       ; preds = %if.then129
  br i1 %tobool161.not, label %do.body134.cleanup_crit_edge, label %do.body137

do.body134.cleanup_crit_edge:                     ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body137:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @profile_transition.descriptor.58, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@profile_transition, %land.lhs.true149)) #8
          to label %cleanup [label %land.lhs.true149], !srcloc !223

land.lhs.true149:                                 ; preds = %do.body137
  %call150 = call i32 @___ratelimit(ptr noundef nonnull @profile_transition._rs.57, ptr noundef nonnull @__func__.profile_transition) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %land.lhs.true149.cleanup_crit_edge, label %if.then152

land.lhs.true149.cleanup_crit_edge:               ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then152:                                       ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @profile_transition.descriptor.58, ptr noundef nonnull @.str.59) #8
  br label %cleanup

do.body160:                                       ; preds = %if.then129
  br i1 %tobool161.not, label %do.body160.do.end184_crit_edge, label %do.body163

do.body160.do.end184_crit_edge:                   ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end184

do.body163:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @profile_transition.descriptor.61, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@profile_transition, %land.lhs.true175)) #8
          to label %do.end184 [label %land.lhs.true175], !srcloc !223

land.lhs.true175:                                 ; preds = %do.body163
  %call176 = call i32 @___ratelimit(ptr noundef nonnull @profile_transition._rs.60, ptr noundef nonnull @__func__.profile_transition) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %land.lhs.true175.do.end184_crit_edge, label %if.then178

land.lhs.true175.do.end184_crit_edge:             ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end184

if.then178:                                       ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @profile_transition.descriptor.61, ptr noundef nonnull @.str.62) #8
  br label %do.end184

do.end184:                                        ; preds = %if.then178, %land.lhs.true175.do.end184_crit_edge, %do.body163, %do.body160.do.end184_crit_edge
  %label185 = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 25
  %call186 = call fastcc ptr @aa_get_newest_label(ptr noundef %label185)
  br label %cleanup

if.end187:                                        ; preds = %if.end126
  %dfa = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 13, i32 1
  %24 = ptrtoint ptr %dfa to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dfa, align 4
  %26 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name, align 4
  %call189 = call i32 @aa_str_perms(ptr noundef %25, i32 noundef %3, ptr noundef %27, ptr noundef %cond, ptr noundef nonnull %perms) #8
  %28 = ptrtoint ptr %perms to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %perms, align 4
  %and190 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190)
  %tobool191.not = icmp eq i32 %and190, 0
  br i1 %tobool191.not, label %if.else209, label %if.then192

if.then192:                                       ; preds = %if.end187
  %30 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name, align 4
  %xindex = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 10
  %32 = ptrtoint ptr %xindex to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %xindex, align 4
  %conv = zext i16 %33 to i32
  %ns1.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 2
  %34 = ptrtoint ptr %ns1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ns1.i, align 4
  %and.i = and i32 %conv, 3072
  %36 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %if.then192.if.then14.i_crit_edge [
    i32 1024, label %if.then192.sw.bb5.i_crit_edge
    i32 2048, label %sw.bb2.i
  ]

if.then192.sw.bb5.i_crit_edge:                    ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i

if.then192.if.then14.i_crit_edge:                 ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.i

sw.bb2.i:                                         ; preds = %if.then192
  %table.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 13, i32 2, i32 1
  %37 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %table.i, align 4
  %and3.i = and i32 %conv, 1023
  %arrayidx.i = getelementptr ptr, ptr %38, i32 %and3.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %42)
  %cmp.not.i = icmp eq i8 %42, 38
  br i1 %cmp.not.i, label %sw.bb2.i.sw.bb5.i_crit_edge, label %if.then.i

sw.bb2.i.sw.bb5.i_crit_edge:                      ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i

if.then.i:                                        ; preds = %sw.bb2.i
  %tobool26.not56.i.i = icmp eq ptr %40, null
  br i1 %tobool26.not56.i.i, label %if.then.i.if.then14.i_crit_edge, label %for.body.lr.ph.i.i

if.then.i.if.then14.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i
  %and27.i.i = and i32 %conv, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i)
  %tobool28.not.i.i = icmp eq i32 %and27.i.i, 0
  br i1 %tobool28.not.i.i, label %if.end34.i.i, label %if.then29.i.i

if.then29.i.i:                                    ; preds = %for.body.lr.ph.i.i
  %call.i.i = call ptr @aa_find_child(ptr noundef %profile, ptr noundef nonnull %40) #8
  %tobool30.not.i.i = icmp eq ptr %call.i.i, null
  %label32.i.i = getelementptr inbounds %struct.aa_profile, ptr %call.i.i, i32 0, i32 25
  br i1 %tobool30.not.i.i, label %if.then29.i.i.if.then14.i_crit_edge, label %if.then29.i.i.sw.epilog.i_crit_edge

if.then29.i.i.sw.epilog.i_crit_edge:              ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then29.i.i.if.then14.i_crit_edge:              ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.i

if.end34.i.i:                                     ; preds = %for.body.lr.ph.i.i
  %label35.i.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 25
  %call36.i.i = call ptr @aa_label_parse(ptr noundef %label35.i.i, ptr noundef nonnull %40, i32 noundef 3264, i1 noundef zeroext true, i1 noundef zeroext false) #8
  %cmp.i.i.i = icmp ugt ptr %call36.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end34.i.i.if.then14.i_crit_edge, label %if.end34.i.i.sw.epilog.i_crit_edge

if.end34.i.i.sw.epilog.i_crit_edge:               ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.end34.i.i.if.then14.i_crit_edge:               ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.i

sw.bb5.i:                                         ; preds = %sw.bb2.i.sw.bb5.i_crit_edge, %if.then192.sw.bb5.i_crit_edge
  %stack.0.i = phi ptr [ null, %if.then192.sw.bb5.i_crit_edge ], [ %40, %sw.bb2.i.sw.bb5.i_crit_edge ]
  %and6.i = and i32 %conv, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool.not.i = icmp eq i32 %and6.i, 0
  %.profile.i = select i1 %tobool.not.i, ptr %35, ptr %profile
  %profiles.i = getelementptr inbounds %struct.aa_policy, ptr %.profile.i, i32 0, i32 3
  %call8.i = call fastcc ptr @find_attach(ptr noundef %bprm, ptr noundef %35, ptr noundef %profiles.i, ptr noundef %31, ptr noundef nonnull %info) #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb5.i, %if.end34.i.i.sw.epilog.i_crit_edge, %if.then29.i.i.sw.epilog.i_crit_edge
  %storemerge.i = phi ptr [ null, %if.end34.i.i.sw.epilog.i_crit_edge ], [ null, %if.then29.i.i.sw.epilog.i_crit_edge ], [ %31, %sw.bb5.i ]
  %new.1.i = phi ptr [ %call36.i.i, %if.end34.i.i.sw.epilog.i_crit_edge ], [ %label32.i.i, %if.then29.i.i.sw.epilog.i_crit_edge ], [ %call8.i, %sw.bb5.i ]
  %stack.1.i = phi ptr [ null, %if.end34.i.i.sw.epilog.i_crit_edge ], [ null, %if.then29.i.i.sw.epilog.i_crit_edge ], [ %stack.0.i, %sw.bb5.i ]
  %tobool13.not.i = icmp eq ptr %new.1.i, null
  br i1 %tobool13.not.i, label %sw.epilog.i.if.then14.i_crit_edge, label %sw.epilog.i.land.lhs.true.i_crit_edge

sw.epilog.i.land.lhs.true.i_crit_edge:            ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

sw.epilog.i.if.then14.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.i

if.then14.i:                                      ; preds = %sw.epilog.i.if.then14.i_crit_edge, %if.end34.i.i.if.then14.i_crit_edge, %if.then29.i.i.if.then14.i_crit_edge, %if.then.i.if.then14.i_crit_edge, %if.then192.if.then14.i_crit_edge
  %target.0 = phi ptr [ %storemerge.i, %sw.epilog.i.if.then14.i_crit_edge ], [ null, %if.then.i.if.then14.i_crit_edge ], [ null, %if.end34.i.i.if.then14.i_crit_edge ], [ null, %if.then29.i.i.if.then14.i_crit_edge ], [ null, %if.then192.if.then14.i_crit_edge ]
  %stack.171.i = phi ptr [ %stack.1.i, %sw.epilog.i.if.then14.i_crit_edge ], [ null, %if.then.i.if.then14.i_crit_edge ], [ null, %if.end34.i.i.if.then14.i_crit_edge ], [ null, %if.then29.i.i.if.then14.i_crit_edge ], [ null, %if.then192.if.then14.i_crit_edge ]
  %and15.i = and i32 %conv, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.else19.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.69, ptr %info, align 4
  %label.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 25
  %call18.i = call fastcc ptr @aa_get_newest_label(ptr noundef %label.i) #8
  br label %if.end28.i

if.else19.i:                                      ; preds = %if.then14.i
  %and20.i = and i32 %conv, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.else19.i.if.then204.critedge_crit_edge, label %if.then22.i

if.else19.i.if.then204.critedge_crit_edge:        ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then204.critedge

if.then22.i:                                      ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %ns1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ns1.i, align 4
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %unconfined.i, align 4
  %label24.i = getelementptr inbounds %struct.aa_profile, ptr %47, i32 0, i32 25
  %call25.i = call fastcc ptr @aa_get_newest_label(ptr noundef %label24.i) #8
  %48 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.70, ptr %info, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then22.i, %if.then17.i
  %new.2.i = phi ptr [ %call18.i, %if.then17.i ], [ %call25.i, %if.then22.i ]
  %tobool29.not.i = icmp eq ptr %new.2.i, null
  br i1 %tobool29.not.i, label %if.end28.i.if.then204.critedge_crit_edge, label %if.end28.i.land.lhs.true.i_crit_edge

if.end28.i.land.lhs.true.i_crit_edge:             ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.end28.i.if.then204.critedge_crit_edge:         ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then204.critedge

land.lhs.true.i:                                  ; preds = %if.end28.i.land.lhs.true.i_crit_edge, %sw.epilog.i.land.lhs.true.i_crit_edge
  %target.1 = phi ptr [ %target.0, %if.end28.i.land.lhs.true.i_crit_edge ], [ %storemerge.i, %sw.epilog.i.land.lhs.true.i_crit_edge ]
  %new.280.i = phi ptr [ %new.2.i, %if.end28.i.land.lhs.true.i_crit_edge ], [ %new.1.i, %sw.epilog.i.land.lhs.true.i_crit_edge ]
  %stack.17079.i = phi ptr [ %stack.171.i, %if.end28.i.land.lhs.true.i_crit_edge ], [ %stack.1.i, %sw.epilog.i.land.lhs.true.i_crit_edge ]
  %tobool30.not.i = icmp eq ptr %stack.17079.i, null
  br i1 %tobool30.not.i, label %land.lhs.true.i.land.lhs.true195_crit_edge, label %if.then.i.i

land.lhs.true.i.land.lhs.true195_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true195

if.then.i.i:                                      ; preds = %land.lhs.true.i
  %call33.i = call ptr @aa_label_parse(ptr noundef nonnull %new.280.i, ptr noundef nonnull %stack.17079.i, i32 noundef 3264, i1 noundef zeroext true, i1 noundef zeroext false) #8
  %cmp.i.i = icmp ugt ptr %call33.i, inttoptr (i32 -4096 to ptr)
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %new.280.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  call void @llvm.prefetch.p0(ptr nonnull %new.280.i, i32 1, i32 3, i32 1) #8
  %49 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %new.280.i, ptr nonnull %new.280.i, i32 1, ptr nonnull elementtype(i32) %new.280.i) #8, !srcloc !220
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.x_to_label.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !218

if.end5.i.i.i.i.i.i.x_to_label.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %x_to_label.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %new.280.i, i32 noundef 3) #8
  br label %x_to_label.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !221
  call void @aa_label_kref(ptr noundef nonnull %new.280.i) #8
  br label %x_to_label.exit

x_to_label.exit:                                  ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.x_to_label.exit_crit_edge
  %tobool194.not376 = icmp eq ptr %call33.i, null
  %tobool194.not = or i1 %cmp.i.i, %tobool194.not376
  br i1 %tobool194.not, label %x_to_label.exit.if.then204.critedge_crit_edge, label %x_to_label.exit.land.lhs.true195_crit_edge

x_to_label.exit.land.lhs.true195_crit_edge:       ; preds = %x_to_label.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true195

x_to_label.exit.if.then204.critedge_crit_edge:    ; preds = %x_to_label.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then204.critedge

land.lhs.true195:                                 ; preds = %x_to_label.exit.land.lhs.true195_crit_edge, %land.lhs.true.i.land.lhs.true195_crit_edge
  %new.4.i354 = phi ptr [ %call33.i, %x_to_label.exit.land.lhs.true195_crit_edge ], [ %new.280.i, %land.lhs.true.i.land.lhs.true195_crit_edge ]
  %proxy = getelementptr inbounds %struct.aa_label, ptr %new.4.i354, i32 0, i32 3
  %50 = ptrtoint ptr %proxy to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %proxy, align 4
  %proxy197 = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 25, i32 3
  %52 = ptrtoint ptr %proxy197 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %proxy197, align 4
  %cmp198 = icmp eq ptr %51, %53
  br i1 %cmp198, label %land.lhs.true200, label %land.lhs.true195.if.end231_crit_edge

land.lhs.true195.if.end231_crit_edge:             ; preds = %land.lhs.true195
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end231

land.lhs.true200:                                 ; preds = %land.lhs.true195
  %54 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %info, align 4
  %tobool201.not = icmp eq ptr %55, null
  br i1 %tobool201.not, label %land.lhs.true200.if.end231_crit_edge, label %land.lhs.true200.audit_crit_edge

land.lhs.true200.audit_crit_edge:                 ; preds = %land.lhs.true200
  call void @__sanitizer_cov_trace_pc() #10
  br label %audit

land.lhs.true200.if.end231_crit_edge:             ; preds = %land.lhs.true200
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end231

if.then204.critedge:                              ; preds = %x_to_label.exit.if.then204.critedge_crit_edge, %if.end28.i.if.then204.critedge_crit_edge, %if.else19.i.if.then204.critedge_crit_edge
  %target.2348 = phi ptr [ %target.1, %x_to_label.exit.if.then204.critedge_crit_edge ], [ %target.0, %if.end28.i.if.then204.critedge_crit_edge ], [ %target.0, %if.else19.i.if.then204.critedge_crit_edge ]
  %56 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.63, ptr %info, align 4
  %57 = ptrtoint ptr %perms to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %perms, align 4
  %and206 = and i32 %58, -2
  store i32 %and206, ptr %perms, align 4
  br label %audit

if.else209:                                       ; preds = %if.end187
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_g_profile_mode to i32))
  %59 = load i32, ptr @aa_g_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp210 = icmp eq i32 %59, 1
  br i1 %cmp210, label %if.else209.if.then216_crit_edge, label %lor.lhs.false212

if.else209.if.then216_crit_edge:                  ; preds = %if.else209
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then216

lor.lhs.false212:                                 ; preds = %if.else209
  %60 = ptrtoint ptr %mode127 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mode127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp214 = icmp eq i32 %61, 1
  br i1 %cmp214, label %lor.lhs.false212.if.then216_crit_edge, label %lor.lhs.false212.audit_crit_edge

lor.lhs.false212.audit_crit_edge:                 ; preds = %lor.lhs.false212
  call void @__sanitizer_cov_trace_pc() #10
  br label %audit

lor.lhs.false212.if.then216_crit_edge:            ; preds = %lor.lhs.false212
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then216

if.then216:                                       ; preds = %lor.lhs.false212.if.then216_crit_edge, %if.else209.if.then216_crit_edge
  %62 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %name, align 4
  %call217 = call ptr @aa_new_null_profile(ptr noundef %profile, i1 noundef zeroext false, ptr noundef %63, i32 noundef 3264) #8
  %tobool218.not = icmp eq ptr %call217, null
  br i1 %tobool218.not, label %if.end228.thread369, label %if.end228

if.end228.thread369:                              ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.64, ptr %info, align 4
  %xindex223372 = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 10
  %65 = ptrtoint ptr %xindex223372 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %xindex223372, align 4
  %67 = or i16 %66, 4096
  store i16 %67, ptr %xindex223372, align 4
  br label %audit

if.end228:                                        ; preds = %if.then216
  %label221 = getelementptr inbounds %struct.aa_profile, ptr %call217, i32 0, i32 25
  %xindex223 = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 10
  %68 = ptrtoint ptr %xindex223 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %xindex223, align 4
  %70 = or i16 %69, 4096
  store i16 %70, ptr %xindex223, align 4
  %tobool229.not = icmp eq ptr %label221, null
  br i1 %tobool229.not, label %if.end228.audit_crit_edge, label %if.end228.if.end231_crit_edge

if.end228.if.end231_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end231

if.end228.audit_crit_edge:                        ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #10
  br label %audit

if.end231:                                        ; preds = %if.end228.if.end231_crit_edge, %land.lhs.true200.if.end231_crit_edge, %land.lhs.true195.if.end231_crit_edge
  %new.2368 = phi ptr [ %label221, %if.end228.if.end231_crit_edge ], [ %new.4.i354, %land.lhs.true200.if.end231_crit_edge ], [ %new.4.i354, %land.lhs.true195.if.end231_crit_edge ]
  %error.2367 = phi i32 [ -13, %if.end228.if.end231_crit_edge ], [ 0, %land.lhs.true200.if.end231_crit_edge ], [ 0, %land.lhs.true195.if.end231_crit_edge ]
  %target.3366 = phi ptr [ null, %if.end228.if.end231_crit_edge ], [ %target.1, %land.lhs.true200.if.end231_crit_edge ], [ %target.1, %land.lhs.true195.if.end231_crit_edge ]
  %xindex232 = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 10
  %71 = ptrtoint ptr %xindex232 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %xindex232, align 4
  %73 = and i16 %72, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool235.not = icmp eq i16 %73, 0
  br i1 %tobool235.not, label %if.then236, label %if.end231.audit_crit_edge

if.end231.audit_crit_edge:                        ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #10
  br label %audit

if.then236:                                       ; preds = %if.end231
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_debug to i32))
  %74 = load i8, ptr @aa_g_debug, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool237.not = icmp eq i8 %74, 0
  br i1 %tobool237.not, label %if.then236.if.end271_crit_edge, label %do.body239

if.then236.if.end271_crit_edge:                   ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end271

do.body239:                                       ; preds = %if.then236
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @profile_transition.__UNIQUE_ID_ddebug589, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@profile_transition, %if.then251)) #8
          to label %do.end254 [label %if.then251], !srcloc !223

if.then251:                                       ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @profile_transition.__UNIQUE_ID_ddebug589, ptr noundef nonnull @.str.65, ptr noundef %76) #8
  br label %do.end254

do.end254:                                        ; preds = %if.then251, %do.body239
  call void @aa_label_printk(ptr noundef nonnull %new.2368, i32 noundef 3264) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @profile_transition.__UNIQUE_ID_ddebug590, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@profile_transition, %if.then267)) #8
          to label %if.end271 [label %if.then267], !srcloc !223

if.then267:                                       ; preds = %do.end254
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @profile_transition.__UNIQUE_ID_ddebug590, ptr noundef nonnull @.str.11) #8
  br label %if.end271

if.end271:                                        ; preds = %if.then267, %do.end254, %if.then236.if.end271_crit_edge
  %77 = ptrtoint ptr %secure_exec to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %secure_exec, align 1
  br label %audit

audit:                                            ; preds = %if.end271, %if.end231.audit_crit_edge, %if.end228.audit_crit_edge, %if.end228.thread369, %lor.lhs.false212.audit_crit_edge, %if.then204.critedge, %land.lhs.true200.audit_crit_edge, %if.end125
  %target.4 = phi ptr [ null, %if.end228.audit_crit_edge ], [ %target.3366, %if.end271 ], [ %target.3366, %if.end231.audit_crit_edge ], [ %target.1, %land.lhs.true200.audit_crit_edge ], [ null, %if.end125 ], [ null, %if.end228.thread369 ], [ %target.2348, %if.then204.critedge ], [ null, %lor.lhs.false212.audit_crit_edge ]
  %error.3 = phi i32 [ -13, %if.end228.audit_crit_edge ], [ %error.2367, %if.end271 ], [ %error.2367, %if.end231.audit_crit_edge ], [ 0, %land.lhs.true200.audit_crit_edge ], [ %error.0, %if.end125 ], [ -12, %if.end228.thread369 ], [ -13, %if.then204.critedge ], [ -13, %lor.lhs.false212.audit_crit_edge ]
  %new.3 = phi ptr [ null, %if.end228.audit_crit_edge ], [ %new.2368, %if.end271 ], [ %new.2368, %if.end231.audit_crit_edge ], [ %new.4.i354, %land.lhs.true200.audit_crit_edge ], [ %new.0, %if.end125 ], [ null, %if.end228.thread369 ], [ null, %if.then204.critedge ], [ null, %lor.lhs.false212.audit_crit_edge ]
  %78 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %name, align 4
  %80 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %info, align 4
  %82 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %82)
  %.unpack = load i32, ptr %cond, align 4
  %83 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call273 = call i32 @aa_audit_file(ptr noundef %profile, ptr noundef nonnull %perms, ptr noundef nonnull @.str.13, i32 noundef 1, ptr noundef %79, ptr noundef %target.4, ptr noundef %new.3, [1 x i32] %83, ptr noundef %81, i32 noundef %error.3) #8
  %tobool274.not = icmp eq ptr %new.3, null
  %84 = inttoptr i32 %error.3 to ptr
  %spec.select = select i1 %tobool274.not, ptr %84, ptr %new.3
  br label %cleanup

cleanup:                                          ; preds = %audit, %do.end184, %if.then152, %land.lhs.true149.cleanup_crit_edge, %do.body137, %do.body134.cleanup_crit_edge
  %retval.0 = phi ptr [ %call186, %do.end184 ], [ %call131, %land.lhs.true149.cleanup_crit_edge ], [ %call131, %if.then152 ], [ %call131, %do.body134.cleanup_crit_edge ], [ %call131, %do.body137 ], [ %spec.select, %audit ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %perms) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_vec_unique(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aa_vec_find_or_create_label(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aa_put_label(ptr noundef %l) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %tobool.not = icmp eq ptr %l, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %l, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  tail call void @llvm.prefetch.p0(ptr nonnull %l, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %l, ptr nonnull %l, i32 1, ptr nonnull elementtype(i32) %l) #8, !srcloc !220
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !218

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef nonnull %l, i32 noundef 3) #8
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !221
  tail call void @aa_label_kref(ptr noundef nonnull %l) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @aa_label_is_unconfined_subset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @may_change_ptraced_domain(ptr noundef %to_label, ptr nocapture noundef writeonly %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !204) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !224
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 696, ptr noundef nonnull @.str.41) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !204) #8
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %ptrace.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ptrace.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ptrace.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i16 = icmp eq i32 %9, 0
  br i1 %tobool.not.i16, label %rcu_read_lock.exit.out_crit_edge, label %if.then.i18, !prof !218

rcu_read_lock.exit.out_crit_edge:                 ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then.i18:                                      ; preds = %rcu_read_lock.exit
  %parent.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 72
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %parent.i, align 8
  %call.i17 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %tobool4.not.i = icmp eq i32 %call.i17, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i19, label %if.then.i18.ptrace_parent.exit_crit_edge

if.then.i18.ptrace_parent.exit_crit_edge:         ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #10
  br label %ptrace_parent.exit

land.lhs.true.i19:                                ; preds = %if.then.i18
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i19.ptrace_parent.exit_crit_edge, label %land.lhs.true7.i

land.lhs.true.i19.ptrace_parent.exit_crit_edge:   ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %ptrace_parent.exit

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i19
  %.b15.i = load i1, ptr @ptrace_parent.__warned, align 1
  br i1 %.b15.i, label %land.lhs.true7.i.ptrace_parent.exit_crit_edge, label %if.then9.i

land.lhs.true7.i.ptrace_parent.exit_crit_edge:    ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ptrace_parent.exit

if.then9.i:                                       ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ptrace_parent.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.72, i32 noundef 127, ptr noundef nonnull @.str.39) #8
  br label %ptrace_parent.exit

ptrace_parent.exit:                               ; preds = %if.then9.i, %land.lhs.true7.i.ptrace_parent.exit_crit_edge, %land.lhs.true.i19.ptrace_parent.exit_crit_edge, %if.then.i18.ptrace_parent.exit_crit_edge
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %ptrace_parent.exit.out_crit_edge, label %lor.lhs.false

ptrace_parent.exit.out_crit_edge:                 ; preds = %ptrace_parent.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false:                                    ; preds = %ptrace_parent.exit
  %call2 = tail call ptr @aa_get_task_label(ptr noundef nonnull %11) #8
  %flags = getelementptr inbounds %struct.aa_label, ptr %call2, i32 0, i32 5
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end6, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end6:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 @aa_may_ptrace(ptr noundef %call2, ptr noundef %to_label, i32 noundef 2) #8
  br label %out

out:                                              ; preds = %if.end6, %lor.lhs.false.out_crit_edge, %ptrace_parent.exit.out_crit_edge, %rcu_read_lock.exit.out_crit_edge
  %tracerl.036 = phi ptr [ %call2, %lor.lhs.false.out_crit_edge ], [ %call2, %if.end6 ], [ null, %ptrace_parent.exit.out_crit_edge ], [ null, %rcu_read_lock.exit.out_crit_edge ]
  %error.0 = phi i32 [ 0, %lor.lhs.false.out_crit_edge ], [ %call7, %if.end6 ], [ 0, %ptrace_parent.exit.out_crit_edge ], [ 0, %rcu_read_lock.exit.out_crit_edge ]
  %call.i20 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i20, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i23

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i23:                                ; preds = %out
  %call1.i21 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21)
  %tobool.not.i22 = icmp eq i32 %call1.i21, 0
  br i1 %tobool.not.i22, label %land.lhs.true.i23.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i25

land.lhs.true.i23.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i25:                               ; preds = %land.lhs.true.i23
  %.b4.i24 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i24, label %land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge, label %if.then.i26

land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i26:                                      ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 724, ptr noundef nonnull @.str.42) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i26, %land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i23.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !226
  %14 = tail call i32 @llvm.read_register.i32(metadata !204) #8
  %and.i.i.i.i.i27 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i27 to ptr
  %preempt_count.i.i.i.i28 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i28, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i28, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %tobool.not.i29 = icmp eq ptr %tracerl.036, null
  br i1 %tobool.not.i29, label %rcu_read_unlock.exit.aa_put_label.exit_crit_edge, label %if.then.i30

rcu_read_unlock.exit.aa_put_label.exit_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_put_label.exit

if.then.i30:                                      ; preds = %rcu_read_unlock.exit
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tracerl.036, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  tail call void @llvm.prefetch.p0(ptr nonnull %tracerl.036, i32 1, i32 3, i32 1) #8
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %tracerl.036, ptr nonnull %tracerl.036, i32 1, ptr nonnull elementtype(i32) %tracerl.036) #8, !srcloc !220
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !218

if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_put_label.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef nonnull %tracerl.036, i32 noundef 3) #8
  br label %aa_put_label.exit

if.then.i.i:                                      ; preds = %if.then.i30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !221
  tail call void @aa_label_kref(ptr noundef nonnull %tracerl.036) #8
  br label %aa_put_label.exit

aa_put_label.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, %rcu_read_unlock.exit.aa_put_label.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool8.not = icmp eq i32 %error.0, 0
  br i1 %tobool8.not, label %aa_put_label.exit.if.end10_crit_edge, label %if.then9

aa_put_label.exit.if.end10_crit_edge:             ; preds = %aa_put_label.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %aa_put_label.exit
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.71, ptr %info, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %aa_put_label.exit.if.end10_crit_edge
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_label_printk(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_put_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_audit_file(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_change_hat(ptr noundef %hats, i32 noundef %count, i64 noundef %token, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %perms = alloca %struct.aa_perms, align 4
  %info = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !204) #8
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
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %perms) #8
  %7 = call ptr @memset(ptr %perms, i32 0, i32 44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info) #8
  %8 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %info, align 4
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %cred4 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 99
  %11 = ptrtoint ptr %cred4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cred4, align 16
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %entry.get_cred.exit_crit_edge, label %do.body.i

entry.get_cred.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_cred.exit

do.body.i:                                        ; preds = %entry
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %12) #8
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !214

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__invalid_creds(ptr noundef nonnull %12, ptr noundef nonnull @.str.73, i32 noundef 253) #8
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %13 = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 28
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %13, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %12, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull %12, i32 1, i32 3, i32 1) #8
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %12, ptr nonnull %12, i32 1, ptr nonnull elementtype(i32) %12) #8, !srcloc !227
  br label %get_cred.exit

get_cred.exit:                                    ; preds = %__validate_creds.exit.i, %entry.get_cred.exit_crit_edge
  %security.i.i.i = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 23
  %16 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %security.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @apparmor_blob_sizes to i32))
  %18 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %17, i32 %18
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %get_cred.exit.cred_label.exit.i.i_crit_edge, !prof !214

get_cred.exit.cred_label.exit.i.i_crit_edge:      ; preds = %get_cred.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cred_label.exit.i.i

do.end.i.i.i:                                     ; preds = %get_cred.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.cred_label) #8
  br label %cred_label.exit.i.i

cred_label.exit.i.i:                              ; preds = %do.end.i.i.i, %get_cred.exit.cred_label.exit.i.i_crit_edge
  %19 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %cred_label.exit.i.i.aa_get_newest_cred_label.exit_crit_edge, !prof !214

cred_label.exit.i.i.aa_get_newest_cred_label.exit_crit_edge: ; preds = %cred_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_get_newest_cred_label.exit

do.end.i.i:                                       ; preds = %cred_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.aa_cred_raw_label) #8
  br label %aa_get_newest_cred_label.exit

aa_get_newest_cred_label.exit:                    ; preds = %do.end.i.i, %cred_label.exit.i.i.aa_get_newest_cred_label.exit_crit_edge
  %call1.i = tail call fastcc ptr @aa_get_newest_label(ptr noundef %20) #8
  %previous7 = getelementptr inbounds %struct.aa_task_ctx, ptr %add.ptr.i, i32 0, i32 2
  %21 = ptrtoint ptr %previous7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %previous7, align 8
  %call8 = tail call fastcc ptr @aa_get_newest_label(ptr noundef %22)
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %atomic_flags.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 66
  %25 = ptrtoint ptr %atomic_flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %atomic_flags.i, align 4
  %and1.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %aa_get_newest_cred_label.exit.if.end_crit_edge, label %land.lhs.true

aa_get_newest_cred_label.exit.if.end_crit_edge:   ; preds = %aa_get_newest_cred_label.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %aa_get_newest_cred_label.exit
  %flags12 = getelementptr inbounds %struct.aa_label, ptr %call1.i, i32 0, i32 5
  %27 = ptrtoint ptr %flags12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags12, align 4
  %and = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true13, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true13:                                  ; preds = %land.lhs.true
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i, align 8
  %tobool14.not = icmp eq ptr %30, null
  br i1 %tobool14.not, label %if.then, label %land.lhs.true13.if.end_crit_edge

land.lhs.true13.if.end_crit_edge:                 ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true13
  %tobool.not.i247 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i247, label %if.then.aa_get_label.exit_crit_edge, label %if.then.i

if.then.aa_get_label.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_get_label.exit

if.then.i:                                        ; preds = %if.then
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call1.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull %call1.i, i32 1, i32 3, i32 1) #8
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call1.i, ptr nonnull %call1.i, i32 1, ptr nonnull elementtype(i32) %call1.i) #8, !srcloc !217
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !214

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %32 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %.not.i.i.i.i.i = icmp sgt i32 %32, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.aa_get_label.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !218

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.aa_get_label.exit_crit_edge:    ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_get_label.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call1.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %aa_get_label.exit

aa_get_label.exit:                                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.aa_get_label.exit_crit_edge, %if.then.aa_get_label.exit_crit_edge
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call1.i, ptr %add.ptr.i, align 8
  br label %if.end

if.end:                                           ; preds = %aa_get_label.exit, %land.lhs.true13.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %aa_get_newest_cred_label.exit.if.end_crit_edge
  %flags17 = getelementptr inbounds %struct.aa_label, ptr %call1.i, i32 0, i32 5
  %34 = ptrtoint ptr %flags17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags17, align 4
  %and18 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.14, ptr %info, align 4
  br label %fail

if.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool22.not = icmp eq i32 %count, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end21
  %call24 = tail call fastcc ptr @change_hat(ptr noundef %call1.i, ptr noundef %hats, i32 noundef %count)
  %tobool26.not = icmp eq ptr %call24, null
  br i1 %tobool26.not, label %if.end45.thread, label %if.end45, !prof !214

if.end45.thread:                                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1182, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.aa_change_hat) #8
  br label %if.end58

if.end45:                                         ; preds = %if.then23
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then56, label %if.end45.if.end58_crit_edge

if.end45.if.end58_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then56:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %call24 to i32
  br label %aa_put_label.exit

if.end58:                                         ; preds = %if.end45.if.end58_crit_edge, %if.end45.thread
  %call59 = call fastcc i32 @may_change_ptraced_domain(ptr noundef %call24, ptr noundef nonnull %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end58.fail_crit_edge

if.end58.fail_crit_edge:                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end62:                                         ; preds = %if.end58
  %38 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task, align 8
  %atomic_flags.i248 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 66
  %40 = ptrtoint ptr %atomic_flags.i248 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %atomic_flags.i248, align 4
  %and1.i.i249 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i249)
  %tobool.i250.not = icmp eq i32 %and1.i.i249, 0
  br i1 %tobool.i250.not, label %if.end62.if.end97_crit_edge, label %land.lhs.true66

if.end62.if.end97_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

land.lhs.true66:                                  ; preds = %if.end62
  %42 = ptrtoint ptr %flags17 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags17, align 4
  %and68 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %land.lhs.true70, label %land.lhs.true66.if.end97_crit_edge

land.lhs.true66.if.end97_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

land.lhs.true70:                                  ; preds = %land.lhs.true66
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i, align 8
  %call72 = tail call zeroext i1 @aa_label_is_unconfined_subset(ptr noundef %call24, ptr noundef %45) #8
  br i1 %call72, label %land.lhs.true70.if.end97_crit_edge, label %do.body74

land.lhs.true70.if.end97_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

do.body74:                                        ; preds = %land.lhs.true70
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_debug to i32))
  %46 = load i8, ptr @aa_g_debug, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool75.not = icmp eq i8 %46, 0
  br i1 %tobool75.not, label %do.body74.out_crit_edge, label %do.body77

do.body74.out_crit_edge:                          ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body77:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aa_change_hat.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aa_change_hat, %land.lhs.true87)) #8
          to label %out [label %land.lhs.true87], !srcloc !223

land.lhs.true87:                                  ; preds = %do.body77
  %call88 = tail call i32 @___ratelimit(ptr noundef nonnull @aa_change_hat._rs, ptr noundef nonnull @__func__.aa_change_hat) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %land.lhs.true87.out_crit_edge, label %if.then90

land.lhs.true87.out_crit_edge:                    ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then90:                                        ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aa_change_hat.descriptor, ptr noundef nonnull @.str.15) #8
  br label %out

if.end97:                                         ; preds = %land.lhs.true70.if.end97_crit_edge, %land.lhs.true66.if.end97_crit_edge, %if.end62.if.end97_crit_edge
  %and98 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.end101, label %if.end97.out_crit_edge

if.end97.out_crit_edge:                           ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end101:                                        ; preds = %if.end97
  %call102 = tail call i32 @aa_set_current_hat(ptr noundef %call24, i64 noundef %token) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call102)
  %cmp = icmp eq i32 %call102, -13
  br i1 %cmp, label %if.end101.kill_crit_edge, label %if.end101.out_crit_edge

if.end101.out_crit_edge:                          ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end101.kill_crit_edge:                         ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %kill

if.else:                                          ; preds = %if.end21
  %tobool105.not = icmp ne ptr %call8, null
  %and107 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  %or.cond = and i1 %tobool108.not, %tobool105.not
  br i1 %or.cond, label %if.then109, label %if.else.aa_put_label.exit_crit_edge

if.else.aa_put_label.exit_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_put_label.exit

if.then109:                                       ; preds = %if.else
  %47 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task, align 8
  %atomic_flags.i251 = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 66
  %49 = ptrtoint ptr %atomic_flags.i251 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %atomic_flags.i251, align 4
  %and1.i.i252 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i252)
  %tobool.i253.not = icmp eq i32 %and1.i.i252, 0
  br i1 %tobool.i253.not, label %if.then109.if.end146_crit_edge, label %land.lhs.true117

if.then109.if.end146_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end146

land.lhs.true117:                                 ; preds = %if.then109
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr.i, align 8
  %call119 = tail call zeroext i1 @aa_label_is_unconfined_subset(ptr noundef nonnull %call8, ptr noundef %52) #8
  br i1 %call119, label %land.lhs.true117.if.end146_crit_edge, label %do.body121

land.lhs.true117.if.end146_crit_edge:             ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end146

do.body121:                                       ; preds = %land.lhs.true117
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_debug to i32))
  %53 = load i8, ptr @aa_g_debug, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool122.not = icmp eq i8 %53, 0
  br i1 %tobool122.not, label %do.body121.if.then.i263_crit_edge, label %do.body124

do.body121.if.then.i263_crit_edge:                ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i263

do.body124:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aa_change_hat.descriptor.17, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aa_change_hat, %land.lhs.true136)) #8
          to label %out [label %land.lhs.true136], !srcloc !223

land.lhs.true136:                                 ; preds = %do.body124
  %call137 = tail call i32 @___ratelimit(ptr noundef nonnull @aa_change_hat._rs.16, ptr noundef nonnull @__func__.aa_change_hat) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %land.lhs.true136.if.then.i263_crit_edge, label %if.then139

land.lhs.true136.if.then.i263_crit_edge:          ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i263

if.then139:                                       ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aa_change_hat.descriptor.17, ptr noundef nonnull @.str.15) #8
  br label %if.then.i263

if.end146:                                        ; preds = %land.lhs.true117.if.end146_crit_edge, %if.then109.if.end146_crit_edge
  %call147 = tail call i32 @aa_restore_previous_label(i64 noundef %token) #8
  %54 = zext i32 %call147 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %call147, label %if.end146.fail_crit_edge [
    i32 0, label %if.end146.if.then.i263_crit_edge
    i32 -13, label %if.end146.kill_crit_edge
  ]

if.end146.kill_crit_edge:                         ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #10
  br label %kill

if.end146.if.then.i263_crit_edge:                 ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i263

if.end146.fail_crit_edge:                         ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

out:                                              ; preds = %while.end191.out_crit_edge, %while.cond179.out_crit_edge, %while.end.out_crit_edge, %do.body124, %if.end101.out_crit_edge, %if.end97.out_crit_edge, %if.then90, %land.lhs.true87.out_crit_edge, %do.body77, %do.body74.out_crit_edge
  %error.0 = phi i32 [ 0, %if.end97.out_crit_edge ], [ %call102, %if.end101.out_crit_edge ], [ -1, %land.lhs.true87.out_crit_edge ], [ -1, %if.then90 ], [ -1, %do.body74.out_crit_edge ], [ -1, %do.body77 ], [ -1, %do.body124 ], [ %error.2, %while.end.out_crit_edge ], [ %error.2, %while.cond179.out_crit_edge ], [ %error.2, %while.end191.out_crit_edge ]
  %new.0 = phi ptr [ %call24, %if.end97.out_crit_edge ], [ %call24, %if.end101.out_crit_edge ], [ %call24, %land.lhs.true87.out_crit_edge ], [ %call24, %if.then90 ], [ %call24, %do.body74.out_crit_edge ], [ %call24, %do.body77 ], [ null, %do.body124 ], [ %new.2, %while.end.out_crit_edge ], [ %new.2, %while.cond179.out_crit_edge ], [ %new.2, %while.end191.out_crit_edge ]
  %tobool.not.i254 = icmp eq ptr %new.0, null
  br i1 %tobool.not.i254, label %out.aa_put_label.exit_crit_edge, label %if.then.i256

out.aa_put_label.exit_crit_edge:                  ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_put_label.exit

if.then.i256:                                     ; preds = %out
  %call.i.i.i.i.i.i.i255 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %new.0, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  call void @llvm.prefetch.p0(ptr nonnull %new.0, i32 1, i32 3, i32 1) #8
  %55 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %new.0, ptr nonnull %new.0, i32 1, ptr nonnull elementtype(i32) %new.0) #8, !srcloc !220
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i258, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i257 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i257, label %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !218

if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_put_label.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %new.0, i32 noundef 3) #8
  br label %aa_put_label.exit

if.then.i.i258:                                   ; preds = %if.then.i256
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !221
  call void @aa_label_kref(ptr noundef nonnull %new.0) #8
  br label %aa_put_label.exit

aa_put_label.exit:                                ; preds = %if.then.i.i258, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, %out.aa_put_label.exit_crit_edge, %if.else.aa_put_label.exit_crit_edge, %if.then56
  %error.0290 = phi i32 [ %error.0, %out.aa_put_label.exit_crit_edge ], [ %error.0, %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge ], [ %error.0, %if.then10.i.i.i.i.i ], [ %error.0, %if.then.i.i258 ], [ 0, %if.else.aa_put_label.exit_crit_edge ], [ %37, %if.then56 ]
  %tobool.not.i259 = icmp eq ptr %call8, null
  br i1 %tobool.not.i259, label %aa_put_label.exit.aa_put_label.exit268_crit_edge, label %aa_put_label.exit.if.then.i263_crit_edge

aa_put_label.exit.if.then.i263_crit_edge:         ; preds = %aa_put_label.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i263

aa_put_label.exit.aa_put_label.exit268_crit_edge: ; preds = %aa_put_label.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_put_label.exit268

if.then.i263:                                     ; preds = %aa_put_label.exit.if.then.i263_crit_edge, %if.end146.if.then.i263_crit_edge, %if.then139, %land.lhs.true136.if.then.i263_crit_edge, %do.body121.if.then.i263_crit_edge
  %error.0290293 = phi i32 [ %error.0290, %aa_put_label.exit.if.then.i263_crit_edge ], [ %call147, %if.end146.if.then.i263_crit_edge ], [ -1, %land.lhs.true136.if.then.i263_crit_edge ], [ -1, %if.then139 ], [ -1, %do.body121.if.then.i263_crit_edge ]
  %call.i.i.i.i.i.i.i260 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call8, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  call void @llvm.prefetch.p0(ptr nonnull %call8, i32 1, i32 3, i32 1) #8
  %56 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call8, ptr nonnull %call8, i32 1, ptr nonnull elementtype(i32) %call8) #8, !srcloc !220
  %asmresult.i.i.i.i.i.i.i.i261 = extractvalue { i32, i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i261)
  %cmp.i.i.i.i.i262 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i261, 1
  br i1 %cmp.i.i.i.i.i262, label %if.then.i.i267, label %if.end5.i.i.i.i.i265

if.end5.i.i.i.i.i265:                             ; preds = %if.then.i263
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i261)
  %.not.i.i.i.i.i264 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i261, 0
  br i1 %.not.i.i.i.i.i264, label %if.end5.i.i.i.i.i265.aa_put_label.exit268_crit_edge, label %if.then10.i.i.i.i.i266, !prof !218

if.end5.i.i.i.i.i265.aa_put_label.exit268_crit_edge: ; preds = %if.end5.i.i.i.i.i265
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_put_label.exit268

if.then10.i.i.i.i.i266:                           ; preds = %if.end5.i.i.i.i.i265
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %call8, i32 noundef 3) #8
  br label %aa_put_label.exit268

if.then.i.i267:                                   ; preds = %if.then.i263
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !221
  call void @aa_label_kref(ptr noundef nonnull %call8) #8
  br label %aa_put_label.exit268

aa_put_label.exit268:                             ; preds = %if.then.i.i267, %if.then10.i.i.i.i.i266, %if.end5.i.i.i.i.i265.aa_put_label.exit268_crit_edge, %aa_put_label.exit.aa_put_label.exit268_crit_edge
  %error.0290294 = phi i32 [ %error.0290, %aa_put_label.exit.aa_put_label.exit268_crit_edge ], [ %error.0290293, %if.end5.i.i.i.i.i265.aa_put_label.exit268_crit_edge ], [ %error.0290293, %if.then10.i.i.i.i.i266 ], [ %error.0290293, %if.then.i.i267 ]
  %tobool.not.i269 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i269, label %aa_put_label.exit268.aa_put_label.exit278_crit_edge, label %if.then.i273

aa_put_label.exit268.aa_put_label.exit278_crit_edge: ; preds = %aa_put_label.exit268
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_put_label.exit278

if.then.i273:                                     ; preds = %aa_put_label.exit268
  %call.i.i.i.i.i.i.i270 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call1.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  call void @llvm.prefetch.p0(ptr nonnull %call1.i, i32 1, i32 3, i32 1) #8
  %57 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call1.i, ptr nonnull %call1.i, i32 1, ptr nonnull elementtype(i32) %call1.i) #8, !srcloc !220
  %asmresult.i.i.i.i.i.i.i.i271 = extractvalue { i32, i32, i32 } %57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i271)
  %cmp.i.i.i.i.i272 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i271, 1
  br i1 %cmp.i.i.i.i.i272, label %if.then.i.i277, label %if.end5.i.i.i.i.i275

if.end5.i.i.i.i.i275:                             ; preds = %if.then.i273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i271)
  %.not.i.i.i.i.i274 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i271, 0
  br i1 %.not.i.i.i.i.i274, label %if.end5.i.i.i.i.i275.aa_put_label.exit278_crit_edge, label %if.then10.i.i.i.i.i276, !prof !218

if.end5.i.i.i.i.i275.aa_put_label.exit278_crit_edge: ; preds = %if.end5.i.i.i.i.i275
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_put_label.exit278

if.then10.i.i.i.i.i276:                           ; preds = %if.end5.i.i.i.i.i275
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %call1.i, i32 noundef 3) #8
  br label %aa_put_label.exit278

if.then.i.i277:                                   ; preds = %if.then.i273
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !221
  call void @aa_label_kref(ptr noundef nonnull %call1.i) #8
  br label %aa_put_label.exit278

aa_put_label.exit278:                             ; preds = %if.then.i.i277, %if.then10.i.i.i.i.i276, %if.end5.i.i.i.i.i275.aa_put_label.exit278_crit_edge, %aa_put_label.exit268.aa_put_label.exit278_crit_edge
  br i1 %tobool.not.i, label %aa_put_label.exit278.put_cred.exit_crit_edge, label %do.body.i281

aa_put_label.exit278.put_cred.exit_crit_edge:     ; preds = %aa_put_label.exit278
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_cred.exit

do.body.i281:                                     ; preds = %aa_put_label.exit278
  %call.i.i280 = call zeroext i1 @creds_are_invalid(ptr noundef nonnull %12) #8
  br i1 %call.i.i280, label %if.then.i.i282, label %do.body.i281.__validate_creds.exit.i283_crit_edge, !prof !214

do.body.i281.__validate_creds.exit.i283_crit_edge: ; preds = %do.body.i281
  call void @__sanitizer_cov_trace_pc() #10
  br label %__validate_creds.exit.i283

if.then.i.i282:                                   ; preds = %do.body.i281
  call void @__sanitizer_cov_trace_pc() #10
  call void @__invalid_creds(ptr noundef nonnull %12, ptr noundef nonnull @.str.73, i32 noundef 286) #8
  br label %__validate_creds.exit.i283

__validate_creds.exit.i283:                       ; preds = %if.then.i.i282, %do.body.i281.__validate_creds.exit.i283_crit_edge
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %12, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !228
  call void @llvm.prefetch.p0(ptr nonnull %12, i32 1, i32 3, i32 1) #8
  %58 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %12, ptr nonnull %12, i32 1, ptr nonnull elementtype(i32) %12) #8, !srcloc !229
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %58, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !230
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i283.put_cred.exit_crit_edge

__validate_creds.exit.i283.put_cred.exit_crit_edge: ; preds = %__validate_creds.exit.i283
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i283
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_cred(ptr noundef nonnull %12) #8
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i283.put_cred.exit_crit_edge, %aa_put_label.exit278.put_cred.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %perms) #8
  ret i32 %error.0290294

kill:                                             ; preds = %if.end146.kill_crit_edge, %if.end101.kill_crit_edge
  %target.0 = phi ptr [ %call24, %if.end101.kill_crit_edge ], [ %call8, %if.end146.kill_crit_edge ]
  %new.1 = phi ptr [ %call24, %if.end101.kill_crit_edge ], [ null, %if.end146.kill_crit_edge ]
  %59 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.18, ptr %info, align 4
  %kill156 = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 4
  %60 = ptrtoint ptr %kill156 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -2147483648, ptr %kill156, align 4
  br label %fail

fail:                                             ; preds = %kill, %if.end146.fail_crit_edge, %if.end58.fail_crit_edge, %if.then20
  %error.2 = phi i32 [ -1, %if.then20 ], [ %call59, %if.end58.fail_crit_edge ], [ -13, %kill ], [ %call147, %if.end146.fail_crit_edge ]
  %target.1 = phi ptr [ null, %if.then20 ], [ null, %if.end58.fail_crit_edge ], [ %target.0, %kill ], [ %call8, %if.end146.fail_crit_edge ]
  %new.2 = phi ptr [ null, %if.then20 ], [ %call24, %if.end58.fail_crit_edge ], [ %new.1, %kill ], [ null, %if.end146.fail_crit_edge ]
  %vec = getelementptr %struct.aa_label, ptr %call1.i, i32 0, i32 8
  %size = getelementptr inbounds %struct.aa_label, ptr %call1.i, i32 0, i32 7
  %61 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %size, align 4
  %sub = add i32 %62, -1
  %arrayidx157 = getelementptr ptr, ptr %vec, i32 %sub
  %63 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx157, align 4
  %ns = getelementptr inbounds %struct.aa_profile, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ns, align 4
  %67 = ptrtoint ptr %vec to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %vec, align 4
  %tobool160.not296 = icmp eq ptr %68, null
  br i1 %tobool160.not296, label %fail.while.end_crit_edge, label %fail.land.rhs_crit_edge

fail.land.rhs_crit_edge:                          ; preds = %fail
  br label %land.rhs

fail.while.end_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %fail.land.rhs_crit_edge
  %69 = phi ptr [ %73, %while.body.land.rhs_crit_edge ], [ %68, %fail.land.rhs_crit_edge ]
  %___i.0297 = phi i32 [ %inc, %while.body.land.rhs_crit_edge ], [ 0, %fail.land.rhs_crit_edge ]
  %ns163 = getelementptr inbounds %struct.aa_profile, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %ns163 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ns163, align 4
  %cmp164.not = icmp eq ptr %71, %66
  br i1 %cmp164.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %inc = add i32 %___i.0297, 1
  %arrayidx159 = getelementptr %struct.aa_label, ptr %call1.i, i32 0, i32 8, i32 %inc
  %72 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx159, align 4
  %tobool160.not = icmp eq ptr %73, null
  br i1 %tobool160.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %fail.while.end_crit_edge
  %___i.0.lcssa = phi i32 [ 0, %fail.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ], [ %___i.0297, %land.rhs.while.end_crit_edge ]
  %arrayidx168299 = getelementptr %struct.aa_label, ptr %call1.i, i32 0, i32 8, i32 %___i.0.lcssa
  %74 = ptrtoint ptr %arrayidx168299 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx168299, align 4
  %tobool169.not300 = icmp eq ptr %75, null
  br i1 %tobool169.not300, label %while.end.out_crit_edge, label %do.body170.lr.ph

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body170.lr.ph:                                 ; preds = %while.end
  %76 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %info, align 4
  br label %do.body170

do.body170:                                       ; preds = %while.end191.do.body170_crit_edge, %do.body170.lr.ph
  %78 = phi ptr [ %75, %do.body170.lr.ph ], [ %.pr, %while.end191.do.body170_crit_edge ]
  %__i.sroa.0.0301 = phi i32 [ %___i.0.lcssa, %do.body170.lr.ph ], [ %___i177.0, %while.end191.do.body170_crit_edge ]
  %call171 = call i32 @aa_audit_file(ptr noundef nonnull %78, ptr noundef nonnull %perms, ptr noundef nonnull @.str.19, i32 noundef -2147483648, ptr noundef null, ptr noundef null, ptr noundef %target.1, [1 x i32] zeroinitializer, ptr noundef %77, i32 noundef %error.2) #8
  br label %while.cond179

while.cond179:                                    ; preds = %land.rhs183.while.cond179_crit_edge, %do.body170
  %___i177.0.in = phi i32 [ %__i.sroa.0.0301, %do.body170 ], [ %___i177.0, %land.rhs183.while.cond179_crit_edge ]
  %___i177.0 = add i32 %___i177.0.in, 1
  %arrayidx181 = getelementptr %struct.aa_label, ptr %call1.i, i32 0, i32 8, i32 %___i177.0
  %79 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx181, align 4
  %tobool182.not = icmp eq ptr %80, null
  br i1 %tobool182.not, label %while.cond179.out_crit_edge, label %land.rhs183

while.cond179.out_crit_edge:                      ; preds = %while.cond179
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.rhs183:                                      ; preds = %while.cond179
  %ns186 = getelementptr inbounds %struct.aa_profile, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %ns186 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ns186, align 4
  %cmp187.not = icmp eq ptr %82, %66
  br i1 %cmp187.not, label %while.end191, label %land.rhs183.while.cond179_crit_edge

land.rhs183.while.cond179_crit_edge:              ; preds = %land.rhs183
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond179

while.end191:                                     ; preds = %land.rhs183
  %83 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pr = load ptr, ptr %arrayidx181, align 4
  %tobool169.not = icmp eq ptr %.pr, null
  br i1 %tobool169.not, label %while.end191.out_crit_edge, label %while.end191.do.body170_crit_edge

while.end191.do.body170_crit_edge:                ; preds = %while.end191
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body170

while.end191.out_crit_edge:                       ; preds = %while.end191
  call void @__sanitizer_cov_trace_pc() #10
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @change_hat(ptr noundef readonly %label, ptr noundef readonly %hats, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %___lvec_localtmp = alloca [8 x ptr], align 4
  %___pvec_localtmp = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %label, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !214

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1046, i32 noundef 9, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.19) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %hats, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !214

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1047, i32 noundef 9, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.19) #8
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp = icmp slt i32 %count, 1
  br i1 %cmp, label %do.end77, label %if.end50.if.end83_crit_edge, !prof !214

if.end50.if.end83_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

do.end77:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1048, i32 noundef 9, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.19) #8
  br label %if.end83

if.end83:                                         ; preds = %do.end77, %if.end50.if.end83_crit_edge
  %vec = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8
  %size = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 7
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %sub = add i32 %1, -1
  %arrayidx = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %flags94 = getelementptr inbounds %struct.aa_profile, ptr %3, i32 0, i32 25, i32 5
  %4 = ptrtoint ptr %flags94 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags94, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool95.not = icmp eq i32 %and, 0
  %6 = xor i1 %tobool95.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp98157 = icmp sgt i32 %count, 0
  br i1 %cmp98157, label %if.end83.for.body_crit_edge, label %if.end83.while.cond184.preheader_crit_edge

if.end83.while.cond184.preheader_crit_edge:       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond184.preheader

if.end83.for.body_crit_edge:                      ; preds = %if.end83
  br label %for.body

while.cond184.preheader:                          ; preds = %for.inc180.while.cond184.preheader_crit_edge, %if.end83.while.cond184.preheader_crit_edge
  %7 = ptrtoint ptr %vec to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vec, align 4
  %tobool187.not160 = icmp eq ptr %8, null
  br i1 %tobool187.not160, label %while.cond184.preheader.while.end202_crit_edge, label %land.rhs188.lr.ph

while.cond184.preheader.while.end202_crit_edge:   ; preds = %while.cond184.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end202

land.rhs188.lr.ph:                                ; preds = %while.cond184.preheader
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  %sub195 = add i32 %10, -1
  %arrayidx196 = getelementptr ptr, ptr %vec, i32 %sub195
  %11 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx196, align 4
  %ns197 = getelementptr inbounds %struct.aa_profile, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %ns197 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ns197, align 4
  br label %land.rhs188

for.body:                                         ; preds = %for.inc180.for.body_crit_edge, %if.end83.for.body_crit_edge
  %i.0158 = phi i32 [ %inc181, %for.inc180.for.body_crit_edge ], [ 0, %if.end83.for.body_crit_edge ]
  %arrayidx102 = getelementptr ptr, ptr %hats, i32 %i.0158
  %15 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx102, align 4
  %17 = ptrtoint ptr %vec to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vec, align 4
  %tobool105.not149 = icmp eq ptr %18, null
  br i1 %tobool105.not149, label %for.body.while.end_crit_edge, label %land.rhs106.lr.ph

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs106.lr.ph:                                ; preds = %for.body
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size, align 4
  %sub112 = add i32 %20, -1
  %arrayidx113 = getelementptr ptr, ptr %vec, i32 %sub112
  %21 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx113, align 4
  %ns114 = getelementptr inbounds %struct.aa_profile, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %ns114 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ns114, align 4
  br label %land.rhs106

land.rhs106:                                      ; preds = %while.body.land.rhs106_crit_edge, %land.rhs106.lr.ph
  %25 = phi ptr [ %18, %land.rhs106.lr.ph ], [ %29, %while.body.land.rhs106_crit_edge ]
  %___i.0150 = phi i32 [ 0, %land.rhs106.lr.ph ], [ %inc, %while.body.land.rhs106_crit_edge ]
  %ns = getelementptr inbounds %struct.aa_profile, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ns, align 4
  %cmp115.not = icmp eq ptr %27, %24
  br i1 %cmp115.not, label %land.rhs106.while.end_crit_edge, label %while.body

land.rhs106.while.end_crit_edge:                  ; preds = %land.rhs106
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %land.rhs106
  %inc = add i32 %___i.0150, 1
  %arrayidx104 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %inc
  %28 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx104, align 4
  %tobool105.not = icmp eq ptr %29, null
  br i1 %tobool105.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs106_crit_edge

while.body.land.rhs106_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs106

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs106.while.end_crit_edge, %for.body.while.end_crit_edge
  %___i.0.lcssa = phi i32 [ 0, %for.body.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ], [ %___i.0150, %land.rhs106.while.end_crit_edge ]
  %arrayidx122152 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %___i.0.lcssa
  %30 = ptrtoint ptr %arrayidx122152 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx122152, align 4
  %tobool123.not153 = icmp eq ptr %31, null
  br i1 %tobool123.not153, label %while.end.build_crit_edge, label %while.end.for.body124_crit_edge

while.end.for.body124_crit_edge:                  ; preds = %while.end
  br label %for.body124

while.end.build_crit_edge:                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %build

for.body124:                                      ; preds = %while.end177.for.body124_crit_edge, %while.end.for.body124_crit_edge
  %32 = phi ptr [ %.pr, %while.end177.for.body124_crit_edge ], [ %31, %while.end.for.body124_crit_edge ]
  %it.sroa.0.0154 = phi i32 [ %___i157.0, %while.end177.for.body124_crit_edge ], [ %___i.0.lcssa, %while.end.for.body124_crit_edge ]
  %flags134 = getelementptr inbounds %struct.aa_profile, ptr %32, i32 0, i32 25, i32 5
  %33 = ptrtoint ptr %flags134 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags134, align 4
  %and135 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool95.not, label %land.lhs.true132.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body124
  br i1 %tobool136.not, label %land.lhs.true.fail_crit_edge, label %if.end141

land.lhs.true.fail_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

land.lhs.true132.critedge:                        ; preds = %for.body124
  br i1 %tobool136.not, label %if.then.i, label %land.lhs.true132.critedge.fail_crit_edge

land.lhs.true132.critedge.fail_crit_edge:         ; preds = %land.lhs.true132.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.then.i:                                        ; preds = %land.lhs.true132.critedge
  %label.i = getelementptr inbounds %struct.aa_profile, ptr %32, i32 0, i32 25
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %label.i, i32 1, i32 3, i32 1) #8
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i, ptr %label.i, i32 1, ptr elementtype(i32) %label.i) #8, !srcloc !217
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !214

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %36 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %.not.i.i.i.i.i = icmp sgt i32 %36, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end141.thread_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !218

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end141.thread_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141.thread

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %label.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %if.end141.thread

if.end141.thread:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end141.thread_crit_edge
  %call142121 = tail call ptr @aa_find_child(ptr noundef nonnull %32, ptr noundef %16) #8
  br label %if.then.i7

if.end141:                                        ; preds = %land.lhs.true
  %parent = getelementptr inbounds %struct.aa_profile, ptr %32, i32 0, i32 1
  %call = tail call fastcc ptr @aa_get_profile_rcu(ptr noundef %parent)
  %call142 = tail call ptr @aa_find_child(ptr noundef %call, ptr noundef %16) #8
  %tobool.not.i4 = icmp eq ptr %call, null
  br i1 %tobool.not.i4, label %if.end141.aa_put_profile.exit_crit_edge, label %if.end141.if.then.i7_crit_edge

if.end141.if.then.i7_crit_edge:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i7

if.end141.aa_put_profile.exit_crit_edge:          ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_put_profile.exit

if.then.i7:                                       ; preds = %if.end141.if.then.i7_crit_edge, %if.end141.thread
  %call142124 = phi ptr [ %call142121, %if.end141.thread ], [ %call142, %if.end141.if.then.i7_crit_edge ]
  %root.0123 = phi ptr [ %32, %if.end141.thread ], [ %call, %if.end141.if.then.i7_crit_edge ]
  %label.i5 = getelementptr inbounds %struct.aa_profile, ptr %root.0123, i32 0, i32 25
  %call.i.i.i.i.i.i.i6 = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i5, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  tail call void @llvm.prefetch.p0(ptr %label.i5, i32 1, i32 3, i32 1) #8
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i5, ptr %label.i5, i32 1, ptr elementtype(i32) %label.i5) #8, !srcloc !220
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i8 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i8, label %if.end5.i.i.i.i.i.aa_put_profile.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !218

if.end5.i.i.i.i.i.aa_put_profile.exit_crit_edge:  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_put_profile.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %label.i5, i32 noundef 3) #8
  br label %aa_put_profile.exit

if.then.i.i:                                      ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !221
  tail call void @aa_label_kref(ptr noundef %label.i5) #8
  br label %aa_put_profile.exit

aa_put_profile.exit:                              ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_profile.exit_crit_edge, %if.end141.aa_put_profile.exit_crit_edge
  %call142125 = phi ptr [ %call142, %if.end141.aa_put_profile.exit_crit_edge ], [ %call142124, %if.end5.i.i.i.i.i.aa_put_profile.exit_crit_edge ], [ %call142124, %if.then10.i.i.i.i.i ], [ %call142124, %if.then.i.i ]
  %tobool143.not = icmp eq ptr %call142125, null
  br i1 %tobool143.not, label %if.then144, label %if.else149

if.then144:                                       ; preds = %aa_put_profile.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_g_profile_mode to i32))
  %38 = load i32, ptr @aa_g_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp145 = icmp eq i32 %38, 1
  br i1 %cmp145, label %if.then144.while.cond159.preheader_crit_edge, label %lor.lhs.false

if.then144.while.cond159.preheader_crit_edge:     ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond159.preheader

lor.lhs.false:                                    ; preds = %if.then144
  %mode = getelementptr inbounds %struct.aa_profile, ptr %32, i32 0, i32 8
  %39 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp146 = icmp eq i32 %40, 1
  br i1 %cmp146, label %lor.lhs.false.while.cond159.preheader_crit_edge, label %for.inc180

lor.lhs.false.while.cond159.preheader_crit_edge:  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond159.preheader

if.else149:                                       ; preds = %aa_put_profile.exit
  %flags151 = getelementptr inbounds %struct.aa_profile, ptr %call142125, i32 0, i32 25, i32 5
  %41 = ptrtoint ptr %flags151 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags151, align 4
  %and152 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  %label.i10 = getelementptr inbounds %struct.aa_profile, ptr %call142125, i32 0, i32 25
  %call.i.i.i.i.i.i.i11 = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i10, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8
  tail call void @llvm.prefetch.p0(ptr %label.i10, i32 1, i32 3, i32 1) #8
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i10, ptr %label.i10, i32 1, ptr elementtype(i32) %label.i10) #8
  %asmresult.i.i.i.i.i.i.i.i12 = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i12)
  %cmp.i.i.i.i.i13 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i12, 1
  br i1 %tobool153.not, label %if.then.i14, label %if.then.i25

if.then.i14:                                      ; preds = %if.else149
  %asmresult.i.i.i.i.i.i.i.i12.le = extractvalue { i32, i32, i32 } %43, 0
  br i1 %cmp.i.i.i.i.i13, label %if.then.i.i18, label %if.end5.i.i.i.i.i16

if.end5.i.i.i.i.i16:                              ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i12.le)
  %.not.i.i.i.i.i15 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i12.le, 0
  br i1 %.not.i.i.i.i.i15, label %if.end5.i.i.i.i.i16.fail_crit_edge, label %if.then10.i.i.i.i.i17, !prof !218

if.end5.i.i.i.i.i16.fail_crit_edge:               ; preds = %if.end5.i.i.i.i.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.then10.i.i.i.i.i17:                            ; preds = %if.end5.i.i.i.i.i16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %label.i10, i32 noundef 3) #8
  br label %fail

if.then.i.i18:                                    ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !221
  tail call void @aa_label_kref(ptr noundef %label.i10) #8
  br label %fail

if.then.i25:                                      ; preds = %if.else149
  br i1 %cmp.i.i.i.i.i13, label %if.then.i.i29, label %if.end5.i.i.i.i.i27

if.end5.i.i.i.i.i27:                              ; preds = %if.then.i25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i12)
  %.not.i.i.i.i.i26 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i12, 0
  br i1 %.not.i.i.i.i.i26, label %if.end5.i.i.i.i.i27.while.cond159.preheader_crit_edge, label %if.then10.i.i.i.i.i28, !prof !218

if.end5.i.i.i.i.i27.while.cond159.preheader_crit_edge: ; preds = %if.end5.i.i.i.i.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond159.preheader

if.then10.i.i.i.i.i28:                            ; preds = %if.end5.i.i.i.i.i27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %label.i10, i32 noundef 3) #8
  br label %while.cond159.preheader

if.then.i.i29:                                    ; preds = %if.then.i25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !221
  tail call void @aa_label_kref(ptr noundef %label.i10) #8
  br label %while.cond159.preheader

while.cond159.preheader:                          ; preds = %if.then.i.i29, %if.then10.i.i.i.i.i28, %if.end5.i.i.i.i.i27.while.cond159.preheader_crit_edge, %lor.lhs.false.while.cond159.preheader_crit_edge, %if.then144.while.cond159.preheader_crit_edge
  br label %while.cond159

while.cond159:                                    ; preds = %land.rhs163.while.cond159_crit_edge, %while.cond159.preheader
  %___i157.0.in = phi i32 [ %___i157.0, %land.rhs163.while.cond159_crit_edge ], [ %it.sroa.0.0154, %while.cond159.preheader ]
  %___i157.0 = add i32 %___i157.0.in, 1
  %arrayidx161 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %___i157.0
  %44 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx161, align 4
  %tobool162.not = icmp eq ptr %45, null
  br i1 %tobool162.not, label %while.cond159.build_crit_edge, label %land.rhs163

while.cond159.build_crit_edge:                    ; preds = %while.cond159
  call void @__sanitizer_cov_trace_pc() #10
  br label %build

land.rhs163:                                      ; preds = %while.cond159
  %ns166 = getelementptr inbounds %struct.aa_profile, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %ns166 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ns166, align 4
  %48 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %size, align 4
  %sub170 = add i32 %49, -1
  %arrayidx171 = getelementptr ptr, ptr %vec, i32 %sub170
  %50 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx171, align 4
  %ns172 = getelementptr inbounds %struct.aa_profile, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %ns172 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ns172, align 4
  %cmp173.not = icmp eq ptr %47, %53
  br i1 %cmp173.not, label %while.end177, label %land.rhs163.while.cond159_crit_edge

land.rhs163.while.cond159_crit_edge:              ; preds = %land.rhs163
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond159

while.end177:                                     ; preds = %land.rhs163
  %54 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr = load ptr, ptr %arrayidx161, align 4
  %tobool123.not = icmp eq ptr %.pr, null
  br i1 %tobool123.not, label %while.end177.build_crit_edge, label %while.end177.for.body124_crit_edge

while.end177.for.body124_crit_edge:               ; preds = %while.end177
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body124

while.end177.build_crit_edge:                     ; preds = %while.end177
  call void @__sanitizer_cov_trace_pc() #10
  br label %build

for.inc180:                                       ; preds = %lor.lhs.false
  %inc181 = add nuw nsw i32 %i.0158, 1
  %exitcond.not = icmp eq i32 %inc181, %count
  br i1 %exitcond.not, label %for.inc180.while.cond184.preheader_crit_edge, label %for.inc180.for.body_crit_edge

for.inc180.for.body_crit_edge:                    ; preds = %for.inc180
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc180.while.cond184.preheader_crit_edge:     ; preds = %for.inc180
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond184.preheader

land.rhs188:                                      ; preds = %while.body200.land.rhs188_crit_edge, %land.rhs188.lr.ph
  %55 = phi ptr [ %8, %land.rhs188.lr.ph ], [ %59, %while.body200.land.rhs188_crit_edge ]
  %___i183.0161 = phi i32 [ 0, %land.rhs188.lr.ph ], [ %inc201, %while.body200.land.rhs188_crit_edge ]
  %ns191 = getelementptr inbounds %struct.aa_profile, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %ns191 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ns191, align 4
  %cmp198.not = icmp eq ptr %57, %14
  br i1 %cmp198.not, label %land.rhs188.while.end202_crit_edge, label %while.body200

land.rhs188.while.end202_crit_edge:               ; preds = %land.rhs188
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end202

while.body200:                                    ; preds = %land.rhs188
  %inc201 = add i32 %___i183.0161, 1
  %arrayidx186 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %inc201
  %58 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx186, align 4
  %tobool187.not = icmp eq ptr %59, null
  br i1 %tobool187.not, label %while.body200.while.end202_crit_edge, label %while.body200.land.rhs188_crit_edge

while.body200.land.rhs188_crit_edge:              ; preds = %while.body200
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs188

while.body200.while.end202_crit_edge:             ; preds = %while.body200
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end202

while.end202:                                     ; preds = %while.body200.while.end202_crit_edge, %land.rhs188.while.end202_crit_edge, %while.cond184.preheader.while.end202_crit_edge
  %___i183.0.lcssa = phi i32 [ 0, %while.cond184.preheader.while.end202_crit_edge ], [ %inc201, %while.body200.while.end202_crit_edge ], [ %___i183.0161, %land.rhs188.while.end202_crit_edge ]
  %arrayidx208164 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %___i183.0.lcssa
  %60 = ptrtoint ptr %arrayidx208164 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx208164, align 4
  %tobool209.not165 = icmp eq ptr %61, null
  br i1 %tobool209.not165, label %while.end202.fail_crit_edge, label %while.end202.for.body210_crit_edge

while.end202.for.body210_crit_edge:               ; preds = %while.end202
  br label %for.body210

while.end202.fail_crit_edge:                      ; preds = %while.end202
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

for.body210:                                      ; preds = %while.end237.for.body210_crit_edge, %while.end202.for.body210_crit_edge
  %62 = phi ptr [ %.pr214, %while.end237.for.body210_crit_edge ], [ %61, %while.end202.for.body210_crit_edge ]
  %it.sroa.0.1166 = phi i32 [ %___i216.0, %while.end237.for.body210_crit_edge ], [ %___i183.0.lcssa, %while.end202.for.body210_crit_edge ]
  %profiles = getelementptr inbounds %struct.aa_policy, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %profiles to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %profiles, align 4
  %cmp.i.not = icmp eq ptr %64, %profiles
  br i1 %cmp.i.not, label %for.body210.while.cond219_crit_edge, label %for.body210.fail_crit_edge

for.body210.fail_crit_edge:                       ; preds = %for.body210
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

for.body210.while.cond219_crit_edge:              ; preds = %for.body210
  br label %while.cond219

while.cond219:                                    ; preds = %land.rhs223.while.cond219_crit_edge, %for.body210.while.cond219_crit_edge
  %___i216.0.in = phi i32 [ %___i216.0, %land.rhs223.while.cond219_crit_edge ], [ %it.sroa.0.1166, %for.body210.while.cond219_crit_edge ]
  %___i216.0 = add i32 %___i216.0.in, 1
  %arrayidx221 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %___i216.0
  %65 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx221, align 4
  %tobool222.not = icmp eq ptr %66, null
  br i1 %tobool222.not, label %while.cond219.fail_crit_edge, label %land.rhs223

while.cond219.fail_crit_edge:                     ; preds = %while.cond219
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

land.rhs223:                                      ; preds = %while.cond219
  %ns226 = getelementptr inbounds %struct.aa_profile, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %ns226 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ns226, align 4
  %69 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %size, align 4
  %sub230 = add i32 %70, -1
  %arrayidx231 = getelementptr ptr, ptr %vec, i32 %sub230
  %71 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx231, align 4
  %ns232 = getelementptr inbounds %struct.aa_profile, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %ns232 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ns232, align 4
  %cmp233.not = icmp eq ptr %68, %74
  br i1 %cmp233.not, label %while.end237, label %land.rhs223.while.cond219_crit_edge

land.rhs223.while.cond219_crit_edge:              ; preds = %land.rhs223
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond219

while.end237:                                     ; preds = %land.rhs223
  %75 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pr214 = load ptr, ptr %arrayidx221, align 4
  %tobool209.not = icmp eq ptr %.pr214, null
  br i1 %tobool209.not, label %while.end237.fail_crit_edge, label %while.end237.for.body210_crit_edge

while.end237.for.body210_crit_edge:               ; preds = %while.end237
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body210

while.end237.fail_crit_edge:                      ; preds = %while.end237
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

fail:                                             ; preds = %if.then552, %land.lhs.true549.fail_crit_edge, %do.body539, %do.body536.fail_crit_edge, %while.end237.fail_crit_edge, %while.cond219.fail_crit_edge, %for.body210.fail_crit_edge, %while.end202.fail_crit_edge, %if.then.i.i18, %if.then10.i.i.i.i.i17, %if.end5.i.i.i.i.i16.fail_crit_edge, %land.lhs.true132.critedge.fail_crit_edge, %land.lhs.true.fail_crit_edge
  %error.0 = phi i32 [ -12, %if.then552 ], [ -12, %do.body536.fail_crit_edge ], [ -12, %land.lhs.true549.fail_crit_edge ], [ -1, %if.end5.i.i.i.i.i16.fail_crit_edge ], [ -1, %if.then10.i.i.i.i.i17 ], [ -1, %if.then.i.i18 ], [ -12, %do.body539 ], [ -10, %while.end202.fail_crit_edge ], [ -10, %while.cond219.fail_crit_edge ], [ -2, %for.body210.fail_crit_edge ], [ -10, %while.end237.fail_crit_edge ], [ -1, %land.lhs.true.fail_crit_edge ], [ -1, %land.lhs.true132.critedge.fail_crit_edge ]
  %info.0 = phi ptr [ @.str.80, %if.then552 ], [ @.str.80, %do.body536.fail_crit_edge ], [ @.str.80, %land.lhs.true549.fail_crit_edge ], [ @.str.77, %if.end5.i.i.i.i.i16.fail_crit_edge ], [ @.str.77, %if.then10.i.i.i.i.i17 ], [ @.str.77, %if.then.i.i18 ], [ @.str.80, %do.body539 ], [ @.str.79, %while.end202.fail_crit_edge ], [ @.str.79, %while.cond219.fail_crit_edge ], [ @.str.78, %for.body210.fail_crit_edge ], [ @.str.79, %while.end237.fail_crit_edge ], [ @.str.76, %land.lhs.true.fail_crit_edge ], [ @.str.76, %land.lhs.true132.critedge.fail_crit_edge ]
  %name.0 = phi ptr [ %16, %if.then552 ], [ %16, %do.body536.fail_crit_edge ], [ %16, %land.lhs.true549.fail_crit_edge ], [ %16, %if.end5.i.i.i.i.i16.fail_crit_edge ], [ %16, %if.then10.i.i.i.i.i17 ], [ %16, %if.then.i.i18 ], [ %16, %do.body539 ], [ null, %while.end202.fail_crit_edge ], [ null, %while.cond219.fail_crit_edge ], [ null, %while.end237.fail_crit_edge ], [ null, %for.body210.fail_crit_edge ], [ %16, %land.lhs.true.fail_crit_edge ], [ %16, %land.lhs.true132.critedge.fail_crit_edge ]
  %76 = ptrtoint ptr %vec to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %vec, align 4
  %tobool245.not196 = icmp eq ptr %77, null
  br i1 %tobool245.not196, label %fail.while.end260_crit_edge, label %land.rhs246.lr.ph

fail.while.end260_crit_edge:                      ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end260

land.rhs246.lr.ph:                                ; preds = %fail
  %78 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %size, align 4
  %sub253 = add i32 %79, -1
  %arrayidx254 = getelementptr ptr, ptr %vec, i32 %sub253
  %80 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx254, align 4
  %ns255 = getelementptr inbounds %struct.aa_profile, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %ns255 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ns255, align 4
  br label %land.rhs246

land.rhs246:                                      ; preds = %while.body258.land.rhs246_crit_edge, %land.rhs246.lr.ph
  %84 = phi ptr [ %77, %land.rhs246.lr.ph ], [ %88, %while.body258.land.rhs246_crit_edge ]
  %___i241.0197 = phi i32 [ 0, %land.rhs246.lr.ph ], [ %inc259, %while.body258.land.rhs246_crit_edge ]
  %ns249 = getelementptr inbounds %struct.aa_profile, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %ns249 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ns249, align 4
  %cmp256.not = icmp eq ptr %86, %83
  br i1 %cmp256.not, label %land.rhs246.while.end260_crit_edge, label %while.body258

land.rhs246.while.end260_crit_edge:               ; preds = %land.rhs246
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end260

while.body258:                                    ; preds = %land.rhs246
  %inc259 = add i32 %___i241.0197, 1
  %arrayidx244 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %inc259
  %87 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx244, align 4
  %tobool245.not = icmp eq ptr %88, null
  br i1 %tobool245.not, label %while.body258.while.end260_crit_edge, label %while.body258.land.rhs246_crit_edge

while.body258.land.rhs246_crit_edge:              ; preds = %while.body258
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs246

while.body258.while.end260_crit_edge:             ; preds = %while.body258
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end260

while.end260:                                     ; preds = %while.body258.while.end260_crit_edge, %land.rhs246.while.end260_crit_edge, %fail.while.end260_crit_edge
  %___i241.0.lcssa = phi i32 [ 0, %fail.while.end260_crit_edge ], [ %inc259, %while.body258.while.end260_crit_edge ], [ %___i241.0197, %land.rhs246.while.end260_crit_edge ]
  %arrayidx266200 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %___i241.0.lcssa
  %89 = ptrtoint ptr %arrayidx266200 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx266200, align 4
  %tobool267.not201 = icmp eq ptr %90, null
  br i1 %tobool267.not201, label %while.end260.for.end303_crit_edge, label %for.body268.lr.ph

while.end260.for.end303_crit_edge:                ; preds = %while.end260
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end303

for.body268.lr.ph:                                ; preds = %while.end260
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp269 = icmp sgt i32 %count, 1
  br label %for.body268

for.body268:                                      ; preds = %while.end300.for.body268_crit_edge, %for.body268.lr.ph
  %91 = phi ptr [ %90, %for.body268.lr.ph ], [ %.pr216, %while.end300.for.body268_crit_edge ]
  %it.sroa.0.2202 = phi i32 [ %___i241.0.lcssa, %for.body268.lr.ph ], [ %___i279.0, %while.end300.for.body268_crit_edge ]
  br i1 %cmp269, label %for.body268.if.then275_crit_edge, label %lor.lhs.false270

for.body268.if.then275_crit_edge:                 ; preds = %for.body268
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then275

lor.lhs.false270:                                 ; preds = %for.body268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_g_profile_mode to i32))
  %92 = load i32, ptr @aa_g_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %92)
  %cmp271 = icmp eq i32 %92, 1
  br i1 %cmp271, label %lor.lhs.false270.if.then275_crit_edge, label %lor.lhs.false272

lor.lhs.false270.if.then275_crit_edge:            ; preds = %lor.lhs.false270
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then275

lor.lhs.false272:                                 ; preds = %lor.lhs.false270
  %mode273 = getelementptr inbounds %struct.aa_profile, ptr %91, i32 0, i32 8
  %93 = ptrtoint ptr %mode273 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %mode273, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %94)
  %cmp274 = icmp eq i32 %94, 1
  br i1 %cmp274, label %lor.lhs.false272.if.then275_crit_edge, label %lor.lhs.false272.while.cond282.preheader_crit_edge

lor.lhs.false272.while.cond282.preheader_crit_edge: ; preds = %lor.lhs.false272
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond282.preheader

lor.lhs.false272.if.then275_crit_edge:            ; preds = %lor.lhs.false272
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then275

if.then275:                                       ; preds = %lor.lhs.false272.if.then275_crit_edge, %lor.lhs.false270.if.then275_crit_edge, %for.body268.if.then275_crit_edge
  %call276 = call i32 @aa_audit_file(ptr noundef nonnull %91, ptr noundef nonnull @nullperms, ptr noundef nonnull @.str.19, i32 noundef -2147483648, ptr noundef %name.0, ptr noundef null, ptr noundef null, [1 x i32] zeroinitializer, ptr noundef nonnull %info.0, i32 noundef %error.0) #8
  br label %while.cond282.preheader

while.cond282.preheader:                          ; preds = %if.then275, %lor.lhs.false272.while.cond282.preheader_crit_edge
  br label %while.cond282

while.cond282:                                    ; preds = %land.rhs286.while.cond282_crit_edge, %while.cond282.preheader
  %___i279.0.in = phi i32 [ %___i279.0, %land.rhs286.while.cond282_crit_edge ], [ %it.sroa.0.2202, %while.cond282.preheader ]
  %___i279.0 = add i32 %___i279.0.in, 1
  %arrayidx284 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %___i279.0
  %95 = ptrtoint ptr %arrayidx284 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx284, align 4
  %tobool285.not = icmp eq ptr %96, null
  br i1 %tobool285.not, label %while.cond282.for.end303_crit_edge, label %land.rhs286

while.cond282.for.end303_crit_edge:               ; preds = %while.cond282
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end303

land.rhs286:                                      ; preds = %while.cond282
  %ns289 = getelementptr inbounds %struct.aa_profile, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %ns289 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ns289, align 4
  %99 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %size, align 4
  %sub293 = add i32 %100, -1
  %arrayidx294 = getelementptr ptr, ptr %vec, i32 %sub293
  %101 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx294, align 4
  %ns295 = getelementptr inbounds %struct.aa_profile, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %ns295 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ns295, align 4
  %cmp296.not = icmp eq ptr %98, %104
  br i1 %cmp296.not, label %while.end300, label %land.rhs286.while.cond282_crit_edge

land.rhs286.while.cond282_crit_edge:              ; preds = %land.rhs286
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond282

while.end300:                                     ; preds = %land.rhs286
  %105 = ptrtoint ptr %arrayidx284 to i32
  call void @__asan_load4_noabort(i32 %105)
  %.pr216 = load ptr, ptr %arrayidx284, align 4
  %tobool267.not = icmp eq ptr %.pr216, null
  br i1 %tobool267.not, label %while.end300.for.end303_crit_edge, label %while.end300.for.body268_crit_edge

while.end300.for.body268_crit_edge:               ; preds = %while.end300
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body268

while.end300.for.end303_crit_edge:                ; preds = %while.end300
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end303

for.end303:                                       ; preds = %while.end300.for.end303_crit_edge, %while.cond282.for.end303_crit_edge, %while.end260.for.end303_crit_edge
  %106 = inttoptr i32 %error.0 to ptr
  br label %cleanup564

build:                                            ; preds = %while.end177.build_crit_edge, %while.cond159.build_crit_edge, %while.end.build_crit_edge
  %107 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %108)
  %cmp307 = icmp sgt i32 %108, 1
  br i1 %cmp307, label %if.then308, label %if.else528

if.then308:                                       ; preds = %build
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %___lvec_localtmp) #8
  %109 = call ptr @memset(ptr %___lvec_localtmp, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %___pvec_localtmp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %108)
  %cmp310 = icmp ult i32 %108, 9
  %110 = call ptr @memset(ptr %___pvec_localtmp, i32 255, i32 32)
  %111 = shl i32 %108, 2
  br i1 %cmp310, label %for.body316.preheader, label %if.end8.i.i

for.body316.preheader:                            ; preds = %if.then308
  call void @__sanitizer_cov_trace_pc() #10
  %112 = call ptr @memset(ptr %___lvec_localtmp, i32 0, i32 %111)
  br label %for.cond331.preheader

if.end8.i.i:                                      ; preds = %if.then308
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %111, i32 noundef 3520) #11
  %tobool326.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool326.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end8.i.i.for.cond331.preheader_crit_edge

if.end8.i.i.for.cond331.preheader_crit_edge:      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond331.preheader

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond331.preheader:                            ; preds = %if.end8.i.i.for.cond331.preheader_crit_edge, %for.body316.preheader
  %__lvec.0220 = phi ptr [ %call9.i.i, %if.end8.i.i.for.cond331.preheader_crit_edge ], [ %___lvec_localtmp, %for.body316.preheader ]
  %113 = ptrtoint ptr %vec to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %vec, align 4
  %tobool335.not174 = icmp eq ptr %114, null
  br i1 %tobool335.not174, label %for.cond331.preheader.for.cond398.preheader_crit_edge, label %for.cond331.preheader.for.body336_crit_edge

for.cond331.preheader.for.body336_crit_edge:      ; preds = %for.cond331.preheader
  br label %for.body336

for.cond331.preheader.for.cond398.preheader_crit_edge: ; preds = %for.cond331.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond398.preheader

for.cond398.preheader:                            ; preds = %if.end391.for.cond398.preheader_crit_edge, %for.cond331.preheader.for.cond398.preheader_crit_edge
  %115 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp400177 = icmp sgt i32 %116, 0
  br i1 %cmp400177, label %for.cond398.preheader.for.body401_crit_edge, label %for.cond398.preheader.for.end449_crit_edge

for.cond398.preheader.for.end449_crit_edge:       ; preds = %for.cond398.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end449

for.cond398.preheader.for.body401_crit_edge:      ; preds = %for.cond398.preheader
  br label %for.body401

for.body336:                                      ; preds = %if.end391.for.body336_crit_edge, %for.cond331.preheader.for.body336_crit_edge
  %117 = phi ptr [ %130, %if.end391.for.body336_crit_edge ], [ %114, %for.cond331.preheader.for.body336_crit_edge ]
  %__j.0176 = phi i32 [ %inc392, %if.end391.for.body336_crit_edge ], [ 0, %for.cond331.preheader.for.body336_crit_edge ]
  %ns337 = getelementptr inbounds %struct.aa_profile, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %ns337 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ns337, align 4
  %120 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %size, align 4
  %sub341 = add i32 %121, -1
  %arrayidx342 = getelementptr ptr, ptr %vec, i32 %sub341
  %122 = ptrtoint ptr %arrayidx342 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx342, align 4
  %ns343 = getelementptr inbounds %struct.aa_profile, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %ns343 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ns343, align 4
  %cmp344.not = icmp eq ptr %119, %125
  br i1 %cmp344.not, label %if.end351, label %if.then345

if.then345:                                       ; preds = %for.body336
  %label346 = getelementptr inbounds %struct.aa_profile, ptr %117, i32 0, i32 25
  %tobool.not.i32 = icmp eq ptr %label346, null
  br i1 %tobool.not.i32, label %if.then345.if.end379.thread_crit_edge, label %if.then.i36

if.then345.if.end379.thread_crit_edge:            ; preds = %if.then345
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end379.thread

if.then.i36:                                      ; preds = %if.then345
  %call.i.i.i.i.i.i.i33 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %label346, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull %label346, i32 1, i32 3, i32 1) #8
  %126 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %label346, ptr nonnull %label346, i32 1, ptr nonnull elementtype(i32) %label346) #8, !srcloc !217
  %asmresult.i.i.i.i.i.i.i34 = extractvalue { i32, i32, i32 } %126, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i34)
  %tobool1.not.i.i.i.i.i35 = icmp eq i32 %asmresult.i.i.i.i.i.i.i34, 0
  br i1 %tobool1.not.i.i.i.i.i35, label %if.then.i36.if.end15.sink.split.i.i.i.i.i41_crit_edge, label %if.else.i.i.i.i.i39, !prof !214

if.then.i36.if.end15.sink.split.i.i.i.i.i41_crit_edge: ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i41

if.else.i.i.i.i.i39:                              ; preds = %if.then.i36
  %add.i.i.i.i.i37 = add i32 %asmresult.i.i.i.i.i.i.i34, 1
  %127 = or i32 %add.i.i.i.i.i37, %asmresult.i.i.i.i.i.i.i34
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %127)
  %.not.i.i.i.i.i38 = icmp sgt i32 %127, -1
  br i1 %.not.i.i.i.i.i38, label %if.else.i.i.i.i.i39.if.end379_crit_edge, label %if.else.i.i.i.i.i39.if.end15.sink.split.i.i.i.i.i41_crit_edge, !prof !218

if.else.i.i.i.i.i39.if.end15.sink.split.i.i.i.i.i41_crit_edge: ; preds = %if.else.i.i.i.i.i39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i41

if.else.i.i.i.i.i39.if.end379_crit_edge:          ; preds = %if.else.i.i.i.i.i39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end379

if.end15.sink.split.i.i.i.i.i41:                  ; preds = %if.else.i.i.i.i.i39.if.end15.sink.split.i.i.i.i.i41_crit_edge, %if.then.i36.if.end15.sink.split.i.i.i.i.i41_crit_edge
  %.sink.i.i.i.i.i40 = phi i32 [ 2, %if.then.i36.if.end15.sink.split.i.i.i.i.i41_crit_edge ], [ 1, %if.else.i.i.i.i.i39.if.end15.sink.split.i.i.i.i.i41_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %label346, i32 noundef %.sink.i.i.i.i.i40) #8
  br label %if.end379

if.end351:                                        ; preds = %for.body336
  %call350 = call fastcc ptr @build_change_hat(ptr noundef nonnull %117, ptr noundef %16, i1 noundef zeroext %6)
  %tobool355.not = icmp eq ptr %call350, null
  br i1 %tobool355.not, label %if.end351.if.end379.thread_crit_edge, label %if.end351.if.end379_crit_edge, !prof !214

if.end351.if.end379_crit_edge:                    ; preds = %if.end351
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end379

if.end351.if.end379.thread_crit_edge:             ; preds = %if.end351
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end379.thread

if.end379.thread:                                 ; preds = %if.end351.if.end379.thread_crit_edge, %if.then345.if.end379.thread_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1122, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.19) #8
  br label %if.end391

if.end379:                                        ; preds = %if.end351.if.end379_crit_edge, %if.end15.sink.split.i.i.i.i.i41, %if.else.i.i.i.i.i39.if.end379_crit_edge
  %__new.0130 = phi ptr [ %call350, %if.end351.if.end379_crit_edge ], [ %label346, %if.else.i.i.i.i.i39.if.end379_crit_edge ], [ %label346, %if.end15.sink.split.i.i.i.i.i41 ]
  %cmp.i42 = icmp ugt ptr %__new.0130, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42, label %if.end379.do.body484_crit_edge, label %if.end379.if.end391_crit_edge

if.end379.if.end391_crit_edge:                    ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end391

if.end379.do.body484_crit_edge:                   ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body484

if.end391:                                        ; preds = %if.end379.if.end391_crit_edge, %if.end379.thread
  %__new.0130137 = phi ptr [ null, %if.end379.thread ], [ %__new.0130, %if.end379.if.end391_crit_edge ]
  %inc392 = add i32 %__j.0176, 1
  %arrayidx393 = getelementptr ptr, ptr %__lvec.0220, i32 %__j.0176
  %128 = ptrtoint ptr %arrayidx393 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %__new.0130137, ptr %arrayidx393, align 4
  %arrayidx334 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %inc392
  %129 = ptrtoint ptr %arrayidx334 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx334, align 4
  %tobool335.not = icmp eq ptr %130, null
  br i1 %tobool335.not, label %if.end391.for.cond398.preheader_crit_edge, label %if.end391.for.body336_crit_edge

if.end391.for.body336_crit_edge:                  ; preds = %if.end391
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body336

if.end391.for.cond398.preheader_crit_edge:        ; preds = %if.end391
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond398.preheader

for.body401:                                      ; preds = %for.body401.for.body401_crit_edge, %for.cond398.preheader.for.body401_crit_edge
  %__count.0179 = phi i32 [ %add404, %for.body401.for.body401_crit_edge ], [ 0, %for.cond398.preheader.for.body401_crit_edge ]
  %__j.1178 = phi i32 [ %inc406, %for.body401.for.body401_crit_edge ], [ 0, %for.cond398.preheader.for.body401_crit_edge ]
  %arrayidx402 = getelementptr ptr, ptr %__lvec.0220, i32 %__j.1178
  %131 = ptrtoint ptr %arrayidx402 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx402, align 4
  %size403 = getelementptr inbounds %struct.aa_label, ptr %132, i32 0, i32 7
  %133 = ptrtoint ptr %size403 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %size403, align 4
  %add404 = add i32 %134, %__count.0179
  %inc406 = add nuw nsw i32 %__j.1178, 1
  %exitcond211.not = icmp eq i32 %inc406, %116
  br i1 %exitcond211.not, label %for.end407, label %for.body401.for.body401_crit_edge

for.body401.for.body401_crit_edge:                ; preds = %for.body401
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body401

for.end407:                                       ; preds = %for.body401
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %add404)
  %cmp408 = icmp slt i32 %add404, 9
  br i1 %cmp408, label %for.cond412.preheader, label %if.end8.i.i69

for.cond412.preheader:                            ; preds = %for.end407
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add404)
  %cmp413181 = icmp sgt i32 %add404, 0
  br i1 %cmp413181, label %for.body414.preheader, label %for.cond412.preheader.for.cond428.preheader_crit_edge

for.cond412.preheader.for.cond428.preheader_crit_edge: ; preds = %for.cond412.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond428.preheader

for.body414.preheader:                            ; preds = %for.cond412.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %135 = shl nuw nsw i32 %add404, 2
  %136 = call ptr @memset(ptr %___pvec_localtmp, i32 0, i32 %135)
  br label %for.cond428.preheader

if.end8.i.i69:                                    ; preds = %for.end407
  %mul420 = shl i32 %add404, 2
  %call9.i.i68 = call noalias align 128 ptr @__kmalloc(i32 noundef %mul420, i32 noundef 3520) #11
  %tobool424.not = icmp eq ptr %call9.i.i68, null
  br i1 %tobool424.not, label %if.end8.i.i69.do.body484_crit_edge, label %if.end8.i.i69.for.cond428.preheader_crit_edge

if.end8.i.i69.for.cond428.preheader_crit_edge:    ; preds = %if.end8.i.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond428.preheader

if.end8.i.i69.do.body484_crit_edge:               ; preds = %if.end8.i.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body484

for.cond428.preheader:                            ; preds = %if.end8.i.i69.for.cond428.preheader_crit_edge, %for.body414.preheader, %for.cond412.preheader.for.cond428.preheader_crit_edge
  %__pvec.0232.ph = phi ptr [ %___pvec_localtmp, %for.cond412.preheader.for.cond428.preheader_crit_edge ], [ %___pvec_localtmp, %for.body414.preheader ], [ %call9.i.i68, %if.end8.i.i69.for.cond428.preheader_crit_edge ]
  %137 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %137)
  %.pr242 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr242)
  %cmp430188 = icmp sgt i32 %.pr242, 0
  br i1 %cmp430188, label %for.cond428.preheader.for.cond433.preheader_crit_edge, label %for.cond428.preheader.for.end449_crit_edge

for.cond428.preheader.for.end449_crit_edge:       ; preds = %for.cond428.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end449

for.cond428.preheader.for.cond433.preheader_crit_edge: ; preds = %for.cond428.preheader
  br label %for.cond433.preheader

for.cond433.preheader:                            ; preds = %for.inc447.for.cond433.preheader_crit_edge, %for.cond428.preheader.for.cond433.preheader_crit_edge
  %__k.0190 = phi i32 [ %__k.1.lcssa, %for.inc447.for.cond433.preheader_crit_edge ], [ 0, %for.cond428.preheader.for.cond433.preheader_crit_edge ]
  %__j.2189 = phi i32 [ %inc448, %for.inc447.for.cond433.preheader_crit_edge ], [ 0, %for.cond428.preheader.for.cond433.preheader_crit_edge ]
  %arrayidx434 = getelementptr ptr, ptr %__lvec.0220, i32 %__j.2189
  %138 = ptrtoint ptr %arrayidx434 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx434, align 4
  %arrayidx437183 = getelementptr %struct.aa_label, ptr %139, i32 0, i32 8, i32 0
  %140 = ptrtoint ptr %arrayidx437183 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx437183, align 4
  %tobool438.not184 = icmp eq ptr %141, null
  br i1 %tobool438.not184, label %for.cond433.preheader.for.inc447_crit_edge, label %for.cond433.preheader.if.then.i77_crit_edge

for.cond433.preheader.if.then.i77_crit_edge:      ; preds = %for.cond433.preheader
  br label %if.then.i77

for.cond433.preheader.for.inc447_crit_edge:       ; preds = %for.cond433.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc447

if.then.i77:                                      ; preds = %aa_get_profile.exit83.if.then.i77_crit_edge, %for.cond433.preheader.if.then.i77_crit_edge
  %142 = phi ptr [ %149, %aa_get_profile.exit83.if.then.i77_crit_edge ], [ %141, %for.cond433.preheader.if.then.i77_crit_edge ]
  %__k.1186 = phi i32 [ %inc441, %aa_get_profile.exit83.if.then.i77_crit_edge ], [ %__k.0190, %for.cond433.preheader.if.then.i77_crit_edge ]
  %__i.sroa.0.1185 = phi i32 [ %inc445, %aa_get_profile.exit83.if.then.i77_crit_edge ], [ 0, %for.cond433.preheader.if.then.i77_crit_edge ]
  %label.i73 = getelementptr inbounds %struct.aa_profile, ptr %142, i32 0, i32 25
  %call.i.i.i.i.i.i.i74 = call zeroext i1 @__kasan_check_write(ptr noundef %label.i73, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %label.i73, i32 1, i32 3, i32 1) #8
  %143 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i73, ptr %label.i73, i32 1, ptr elementtype(i32) %label.i73) #8, !srcloc !217
  %asmresult.i.i.i.i.i.i.i75 = extractvalue { i32, i32, i32 } %143, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i75)
  %tobool1.not.i.i.i.i.i76 = icmp eq i32 %asmresult.i.i.i.i.i.i.i75, 0
  br i1 %tobool1.not.i.i.i.i.i76, label %if.then.i77.if.end15.sink.split.i.i.i.i.i82_crit_edge, label %if.else.i.i.i.i.i80, !prof !214

if.then.i77.if.end15.sink.split.i.i.i.i.i82_crit_edge: ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i82

if.else.i.i.i.i.i80:                              ; preds = %if.then.i77
  %add.i.i.i.i.i78 = add i32 %asmresult.i.i.i.i.i.i.i75, 1
  %144 = or i32 %add.i.i.i.i.i78, %asmresult.i.i.i.i.i.i.i75
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %144)
  %.not.i.i.i.i.i79 = icmp sgt i32 %144, -1
  br i1 %.not.i.i.i.i.i79, label %if.else.i.i.i.i.i80.aa_get_profile.exit83_crit_edge, label %if.else.i.i.i.i.i80.if.end15.sink.split.i.i.i.i.i82_crit_edge, !prof !218

if.else.i.i.i.i.i80.if.end15.sink.split.i.i.i.i.i82_crit_edge: ; preds = %if.else.i.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i82

if.else.i.i.i.i.i80.aa_get_profile.exit83_crit_edge: ; preds = %if.else.i.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_get_profile.exit83

if.end15.sink.split.i.i.i.i.i82:                  ; preds = %if.else.i.i.i.i.i80.if.end15.sink.split.i.i.i.i.i82_crit_edge, %if.then.i77.if.end15.sink.split.i.i.i.i.i82_crit_edge
  %.sink.i.i.i.i.i81 = phi i32 [ 2, %if.then.i77.if.end15.sink.split.i.i.i.i.i82_crit_edge ], [ 1, %if.else.i.i.i.i.i80.if.end15.sink.split.i.i.i.i.i82_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %label.i73, i32 noundef %.sink.i.i.i.i.i81) #8
  br label %aa_get_profile.exit83

aa_get_profile.exit83:                            ; preds = %if.end15.sink.split.i.i.i.i.i82, %if.else.i.i.i.i.i80.aa_get_profile.exit83_crit_edge
  %inc441 = add i32 %__k.1186, 1
  %arrayidx442 = getelementptr ptr, ptr %__pvec.0232.ph, i32 %__k.1186
  %145 = ptrtoint ptr %arrayidx442 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %142, ptr %arrayidx442, align 4
  %inc445 = add i32 %__i.sroa.0.1185, 1
  %146 = ptrtoint ptr %arrayidx434 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx434, align 4
  %arrayidx437 = getelementptr %struct.aa_label, ptr %147, i32 0, i32 8, i32 %inc445
  %148 = ptrtoint ptr %arrayidx437 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx437, align 4
  %tobool438.not = icmp eq ptr %149, null
  br i1 %tobool438.not, label %aa_get_profile.exit83.for.inc447_crit_edge, label %aa_get_profile.exit83.if.then.i77_crit_edge

aa_get_profile.exit83.if.then.i77_crit_edge:      ; preds = %aa_get_profile.exit83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i77

aa_get_profile.exit83.for.inc447_crit_edge:       ; preds = %aa_get_profile.exit83
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc447

for.inc447:                                       ; preds = %aa_get_profile.exit83.for.inc447_crit_edge, %for.cond433.preheader.for.inc447_crit_edge
  %__k.1.lcssa = phi i32 [ %__k.0190, %for.cond433.preheader.for.inc447_crit_edge ], [ %inc441, %aa_get_profile.exit83.for.inc447_crit_edge ]
  %inc448 = add nuw nsw i32 %__j.2189, 1
  %150 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %size, align 4
  %cmp430 = icmp slt i32 %inc448, %151
  br i1 %cmp430, label %for.inc447.for.cond433.preheader_crit_edge, label %for.inc447.for.end449_crit_edge

for.inc447.for.end449_crit_edge:                  ; preds = %for.inc447
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end449

for.inc447.for.cond433.preheader_crit_edge:       ; preds = %for.inc447
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond433.preheader

for.end449:                                       ; preds = %for.inc447.for.end449_crit_edge, %for.cond428.preheader.for.end449_crit_edge, %for.cond398.preheader.for.end449_crit_edge
  %__count.0.lcssa224231246 = phi i32 [ %add404, %for.cond428.preheader.for.end449_crit_edge ], [ 0, %for.cond398.preheader.for.end449_crit_edge ], [ %add404, %for.inc447.for.end449_crit_edge ]
  %__pvec.0233 = phi ptr [ %__pvec.0232.ph, %for.cond428.preheader.for.end449_crit_edge ], [ %___pvec_localtmp, %for.cond398.preheader.for.end449_crit_edge ], [ %__pvec.0232.ph, %for.inc447.for.end449_crit_edge ]
  %call450 = call i32 @aa_vec_unique(ptr noundef nonnull %__pvec.0233, i32 noundef %__count.0.lcssa224231246, i32 noundef 0) #8
  %sub451 = sub i32 %__count.0.lcssa224231246, %call450
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub451)
  %cmp452 = icmp sgt i32 %sub451, 1
  br i1 %cmp452, label %do.body463.thread, label %do.body463

do.body463.thread:                                ; preds = %for.end449
  call void @__sanitizer_cov_trace_pc() #10
  %call454 = call ptr @aa_vec_find_or_create_label(ptr noundef nonnull %__pvec.0233, i32 noundef %sub451, i32 noundef 3264) #8
  br label %for.body467.preheader

do.body463:                                       ; preds = %for.end449
  %152 = ptrtoint ptr %__pvec.0233 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %__pvec.0233, align 4
  %label460 = getelementptr inbounds %struct.aa_profile, ptr %153, i32 0, i32 25
  %call461 = call fastcc ptr @aa_get_label(ptr noundef %label460)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub451)
  %cmp466191 = icmp eq i32 %sub451, 1
  br i1 %cmp466191, label %do.body463.for.body467.preheader_crit_edge, label %do.body463.for.end475_crit_edge

do.body463.for.end475_crit_edge:                  ; preds = %do.body463
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end475

do.body463.for.body467.preheader_crit_edge:       ; preds = %do.body463
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body467.preheader

for.body467.preheader:                            ; preds = %do.body463.for.body467.preheader_crit_edge, %do.body463.thread
  %__new_.0241 = phi ptr [ %call454, %do.body463.thread ], [ %label460, %do.body463.for.body467.preheader_crit_edge ]
  br label %for.body467

for.body467:                                      ; preds = %for.inc473.for.body467_crit_edge, %for.body467.preheader
  %i464.0192 = phi i32 [ %inc474, %for.inc473.for.body467_crit_edge ], [ 0, %for.body467.preheader ]
  %arrayidx468 = getelementptr ptr, ptr %__pvec.0233, i32 %i464.0192
  %154 = ptrtoint ptr %arrayidx468 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx468, align 4
  %tobool.not.i84 = icmp eq ptr %155, null
  %cmp.i85 = icmp ugt ptr %155, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i84, %cmp.i85
  br i1 %spec.select.i, label %for.body467.for.inc473_crit_edge, label %if.then.i91

for.body467.for.inc473_crit_edge:                 ; preds = %for.body467
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc473

if.then.i91:                                      ; preds = %for.body467
  %label.i87 = getelementptr inbounds %struct.aa_profile, ptr %155, i32 0, i32 25
  %call.i.i.i.i.i.i.i88 = call zeroext i1 @__kasan_check_write(ptr noundef %label.i87, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  call void @llvm.prefetch.p0(ptr %label.i87, i32 1, i32 3, i32 1) #8
  %156 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i87, ptr %label.i87, i32 1, ptr elementtype(i32) %label.i87) #8, !srcloc !220
  %asmresult.i.i.i.i.i.i.i.i89 = extractvalue { i32, i32, i32 } %156, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i89)
  %cmp.i.i.i.i.i90 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i89, 1
  br i1 %cmp.i.i.i.i.i90, label %if.then.i.i95, label %if.end5.i.i.i.i.i93

if.end5.i.i.i.i.i93:                              ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i89)
  %.not.i.i.i.i.i92 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i89, 0
  br i1 %.not.i.i.i.i.i92, label %if.end5.i.i.i.i.i93.for.inc473_crit_edge, label %if.then10.i.i.i.i.i94, !prof !218

if.end5.i.i.i.i.i93.for.inc473_crit_edge:         ; preds = %if.end5.i.i.i.i.i93
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc473

if.then10.i.i.i.i.i94:                            ; preds = %if.end5.i.i.i.i.i93
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %label.i87, i32 noundef 3) #8
  br label %for.inc473

if.then.i.i95:                                    ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !221
  call void @aa_label_kref(ptr noundef %label.i87) #8
  br label %for.inc473

for.inc473:                                       ; preds = %if.then.i.i95, %if.then10.i.i.i.i.i94, %if.end5.i.i.i.i.i93.for.inc473_crit_edge, %for.body467.for.inc473_crit_edge
  %inc474 = add nuw nsw i32 %i464.0192, 1
  %exitcond212.not = icmp eq i32 %inc474, %sub451
  br i1 %exitcond212.not, label %for.inc473.for.end475_crit_edge, label %for.inc473.for.body467_crit_edge

for.inc473.for.body467_crit_edge:                 ; preds = %for.inc473
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body467

for.inc473.for.end475_crit_edge:                  ; preds = %for.inc473
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end475

for.end475:                                       ; preds = %for.inc473.for.end475_crit_edge, %do.body463.for.end475_crit_edge
  %__new_.0240 = phi ptr [ %label460, %do.body463.for.end475_crit_edge ], [ %__new_.0241, %for.inc473.for.end475_crit_edge ]
  %cmp477.not = icmp eq ptr %__pvec.0233, %___pvec_localtmp
  br i1 %cmp477.not, label %for.end475.do.body484_crit_edge, label %if.then478

for.end475.do.body484_crit_edge:                  ; preds = %for.end475
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body484

if.then478:                                       ; preds = %for.end475
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %__pvec.0233) #8
  br label %do.body484

do.body484:                                       ; preds = %if.then478, %for.end475.do.body484_crit_edge, %if.end8.i.i69.do.body484_crit_edge, %if.end379.do.body484_crit_edge
  %__new_.1 = phi ptr [ %__new_.0240, %if.then478 ], [ %__new_.0240, %for.end475.do.body484_crit_edge ], [ null, %if.end8.i.i69.do.body484_crit_edge ], [ %__new.0130, %if.end379.do.body484_crit_edge ]
  %157 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %cmp488193 = icmp sgt i32 %158, 0
  br i1 %cmp488193, label %do.body484.for.body489_crit_edge, label %do.body484.for.end497_crit_edge

do.body484.for.end497_crit_edge:                  ; preds = %do.body484
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end497

do.body484.for.body489_crit_edge:                 ; preds = %do.body484
  br label %for.body489

for.body489:                                      ; preds = %for.inc495.for.body489_crit_edge, %do.body484.for.body489_crit_edge
  %i485.0194 = phi i32 [ %inc496, %for.inc495.for.body489_crit_edge ], [ 0, %do.body484.for.body489_crit_edge ]
  %arrayidx490 = getelementptr ptr, ptr %__lvec.0220, i32 %i485.0194
  %159 = ptrtoint ptr %arrayidx490 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx490, align 4
  %tobool.not.i97 = icmp eq ptr %160, null
  %cmp.i98 = icmp ugt ptr %160, inttoptr (i32 -4096 to ptr)
  %spec.select.i99 = or i1 %tobool.not.i97, %cmp.i98
  br i1 %spec.select.i99, label %for.body489.for.inc495_crit_edge, label %if.then.i104

for.body489.for.inc495_crit_edge:                 ; preds = %for.body489
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc495

if.then.i104:                                     ; preds = %for.body489
  %call.i.i.i.i.i.i.i101 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %160, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  call void @llvm.prefetch.p0(ptr nonnull %160, i32 1, i32 3, i32 1) #8
  %161 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %160, ptr nonnull %160, i32 1, ptr nonnull elementtype(i32) %160) #8, !srcloc !220
  %asmresult.i.i.i.i.i.i.i.i102 = extractvalue { i32, i32, i32 } %161, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i102)
  %cmp.i.i.i.i.i103 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i102, 1
  br i1 %cmp.i.i.i.i.i103, label %if.then.i.i108, label %if.end5.i.i.i.i.i106

if.end5.i.i.i.i.i106:                             ; preds = %if.then.i104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i102)
  %.not.i.i.i.i.i105 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i102, 0
  br i1 %.not.i.i.i.i.i105, label %if.end5.i.i.i.i.i106.for.inc495_crit_edge, label %if.then10.i.i.i.i.i107, !prof !218

if.end5.i.i.i.i.i106.for.inc495_crit_edge:        ; preds = %if.end5.i.i.i.i.i106
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc495

if.then10.i.i.i.i.i107:                           ; preds = %if.end5.i.i.i.i.i106
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %160, i32 noundef 3) #8
  br label %for.inc495

if.then.i.i108:                                   ; preds = %if.then.i104
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !221
  call void @aa_label_kref(ptr noundef nonnull %160) #8
  br label %for.inc495

for.inc495:                                       ; preds = %if.then.i.i108, %if.then10.i.i.i.i.i107, %if.end5.i.i.i.i.i106.for.inc495_crit_edge, %for.body489.for.inc495_crit_edge
  %inc496 = add nuw nsw i32 %i485.0194, 1
  %162 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %size, align 4
  %cmp488 = icmp slt i32 %inc496, %163
  br i1 %cmp488, label %for.inc495.for.body489_crit_edge, label %for.inc495.for.end497_crit_edge

for.inc495.for.end497_crit_edge:                  ; preds = %for.inc495
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end497

for.inc495.for.body489_crit_edge:                 ; preds = %for.inc495
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body489

for.end497:                                       ; preds = %for.inc495.for.end497_crit_edge, %do.body484.for.end497_crit_edge
  %cmp499.not = icmp eq ptr %__lvec.0220, %___lvec_localtmp
  br i1 %cmp499.not, label %for.end497.cleanup_crit_edge, label %if.then500

for.end497.cleanup_crit_edge:                     ; preds = %for.end497
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then500:                                       ; preds = %for.end497
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %__lvec.0220) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then500, %for.end497.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge
  %__new_.2 = phi ptr [ null, %if.end8.i.i.cleanup_crit_edge ], [ %__new_.1, %if.then500 ], [ %__new_.1, %for.end497.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %___pvec_localtmp) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %___lvec_localtmp) #8
  br label %__done

if.else528:                                       ; preds = %build
  call void @__sanitizer_cov_trace_pc() #10
  %sub514 = add i32 %108, -1
  %arrayidx515 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %sub514
  %164 = ptrtoint ptr %arrayidx515 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx515, align 4
  %call530 = tail call fastcc ptr @build_change_hat(ptr noundef %165, ptr noundef %16, i1 noundef zeroext %6)
  br label %__done

__done:                                           ; preds = %if.else528, %cleanup
  %__new_.3 = phi ptr [ %__new_.2, %cleanup ], [ %call530, %if.else528 ]
  %tobool534.not = icmp eq ptr %__new_.3, null
  br i1 %tobool534.not, label %do.body536, label %__done.cleanup564_crit_edge

__done.cleanup564_crit_edge:                      ; preds = %__done
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup564

do.body536:                                       ; preds = %__done
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_debug to i32))
  %166 = load i8, ptr @aa_g_debug, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool537.not = icmp eq i8 %166, 0
  br i1 %tobool537.not, label %do.body536.fail_crit_edge, label %do.body539

do.body536.fail_crit_edge:                        ; preds = %do.body536
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

do.body539:                                       ; preds = %do.body536
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_hat.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_hat, %land.lhs.true549)) #8
          to label %fail [label %land.lhs.true549], !srcloc !223

land.lhs.true549:                                 ; preds = %do.body539
  %call550 = call i32 @___ratelimit(ptr noundef nonnull @change_hat._rs, ptr noundef nonnull @.str.19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call550)
  %tobool551.not = icmp eq i32 %call550, 0
  br i1 %tobool551.not, label %land.lhs.true549.fail_crit_edge, label %if.then552

land.lhs.true549.fail_crit_edge:                  ; preds = %land.lhs.true549
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.then552:                                       ; preds = %land.lhs.true549
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @change_hat.descriptor, ptr noundef nonnull @.str.7) #8
  br label %fail

cleanup564:                                       ; preds = %__done.cleanup564_crit_edge, %for.end303
  %retval.0 = phi ptr [ %106, %for.end303 ], [ %__new_.3, %__done.cleanup564_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_set_current_hat(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_restore_previous_label(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_change_profile(ptr noundef %fqname, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %perms = alloca %struct.aa_perms, align 4
  %info = alloca ptr, align 4
  %___lvec_localtmp = alloca [8 x ptr], align 4
  %___pvec_localtmp = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %perms) #8
  %0 = call ptr @memset(ptr %perms, i32 0, i32 44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info) #8
  %1 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %info, align 4
  %and = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %2 = tail call i32 @llvm.read_register.i32(metadata !204) #8
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %security.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 215
  %6 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @apparmor_blob_sizes, i32 0, i32 6) to i32))
  %8 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @apparmor_blob_sizes, i32 0, i32 6), align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 99
  %9 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cred.i.i, align 16
  %security.i.i.i.i = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 23
  %11 = ptrtoint ptr %security.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %security.i.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @apparmor_blob_sizes to i32))
  %13 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %12, i32 %13
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %do.end.i.i.i.i, label %entry.cred_label.exit.i.i.i_crit_edge, !prof !214

entry.cred_label.exit.i.i.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cred_label.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.cred_label) #8
  br label %cred_label.exit.i.i.i

cred_label.exit.i.i.i:                            ; preds = %do.end.i.i.i.i, %entry.cred_label.exit.i.i.i_crit_edge
  %14 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i, label %aa_current_raw_label.exit.i, label %aa_current_raw_label.exit.thread.i, !prof !214

aa_current_raw_label.exit.i:                      ; preds = %cred_label.exit.i.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.aa_cred_raw_label) #8
  call void @__asan_load4_noabort(i32 32)
  %16 = load i32, ptr inttoptr (i32 32 to ptr), align 32
  %and.i799 = and i32 %16, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i799)
  %tobool.not.i = icmp eq i32 %and.i799, 0
  br i1 %tobool.not.i, label %aa_current_raw_label.exit.i.aa_get_current_label.exit_crit_edge, label %aa_current_raw_label.exit.i.if.then.i_crit_edge

aa_current_raw_label.exit.i.if.then.i_crit_edge:  ; preds = %aa_current_raw_label.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

aa_current_raw_label.exit.i.aa_get_current_label.exit_crit_edge: ; preds = %aa_current_raw_label.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_get_current_label.exit

aa_current_raw_label.exit.thread.i:               ; preds = %cred_label.exit.i.i.i
  %flags5.i = getelementptr inbounds %struct.aa_label, ptr %15, i32 0, i32 5
  %17 = ptrtoint ptr %flags5.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags5.i, align 4
  %and6.i = and i32 %18, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool.not7.i = icmp eq i32 %and6.i, 0
  br i1 %tobool.not7.i, label %if.then.i.i, label %aa_current_raw_label.exit.thread.i.if.then.i_crit_edge

aa_current_raw_label.exit.thread.i.if.then.i_crit_edge: ; preds = %aa_current_raw_label.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %aa_current_raw_label.exit.thread.i.if.then.i_crit_edge, %aa_current_raw_label.exit.i.if.then.i_crit_edge
  %call1.i = tail call fastcc ptr @aa_get_newest_label(ptr noundef %15) #8
  br label %aa_get_current_label.exit

if.then.i.i:                                      ; preds = %aa_current_raw_label.exit.thread.i
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %15, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull %15, i32 1, i32 3, i32 1) #8
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %15, ptr nonnull %15, i32 1, ptr nonnull elementtype(i32) %15) #8, !srcloc !217
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !214

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %20 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %.not.i.i.i.i.i.i = icmp sgt i32 %20, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.aa_get_current_label.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !218

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.aa_get_current_label.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_get_current_label.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %15, i32 noundef %.sink.i.i.i.i.i.i) #8
  br label %aa_get_current_label.exit

aa_get_current_label.exit:                        ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.aa_get_current_label.exit_crit_edge, %if.then.i, %aa_current_raw_label.exit.i.aa_get_current_label.exit_crit_edge
  %retval.0.i800 = phi ptr [ %call1.i, %if.then.i ], [ %15, %if.else.i.i.i.i.i.i.aa_get_current_label.exit_crit_edge ], [ %15, %if.end15.sink.split.i.i.i.i.i.i ], [ null, %aa_current_raw_label.exit.i.aa_get_current_label.exit_crit_edge ]
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %atomic_flags.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 66
  %23 = ptrtoint ptr %atomic_flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %atomic_flags.i, align 4
  %and1.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %aa_get_current_label.exit.if.end_crit_edge, label %land.lhs.true

aa_get_current_label.exit.if.end_crit_edge:       ; preds = %aa_get_current_label.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %aa_get_current_label.exit
  %flags6 = getelementptr inbounds %struct.aa_label, ptr %retval.0.i800, i32 0, i32 5
  %25 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags6, align 4
  %and7 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %land.lhs.true9, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true9:                                   ; preds = %land.lhs.true
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 8
  %tobool10.not = icmp eq ptr %28, null
  br i1 %tobool10.not, label %if.then, label %land.lhs.true9.if.end_crit_edge

land.lhs.true9.if.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true9
  %tobool.not.i801 = icmp eq ptr %retval.0.i800, null
  br i1 %tobool.not.i801, label %if.then.aa_get_label.exit_crit_edge, label %if.then.i802

if.then.aa_get_label.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_get_label.exit

if.then.i802:                                     ; preds = %if.then
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %retval.0.i800, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull %retval.0.i800, i32 1, i32 3, i32 1) #8
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %retval.0.i800, ptr nonnull %retval.0.i800, i32 1, ptr nonnull elementtype(i32) %retval.0.i800) #8, !srcloc !217
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i802.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !214

if.then.i802.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i802
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i802
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %30 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %.not.i.i.i.i.i = icmp sgt i32 %30, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.aa_get_label.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !218

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.aa_get_label.exit_crit_edge:    ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_get_label.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i802.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i802.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %retval.0.i800, i32 noundef %.sink.i.i.i.i.i) #8
  br label %aa_get_label.exit

aa_get_label.exit:                                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.aa_get_label.exit_crit_edge, %if.then.aa_get_label.exit_crit_edge
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %retval.0.i800, ptr %add.ptr.i, align 8
  br label %if.end

if.end:                                           ; preds = %aa_get_label.exit, %land.lhs.true9.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %aa_get_current_label.exit.if.end_crit_edge
  %tobool13.not = icmp eq ptr %fqname, null
  br i1 %tobool13.not, label %if.end.if.then15_crit_edge, label %lor.lhs.false

if.end.if.then15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

lor.lhs.false:                                    ; preds = %if.end
  %32 = ptrtoint ptr %fqname to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %fqname, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool14.not = icmp eq i8 %33, 0
  br i1 %tobool14.not, label %lor.lhs.false.if.then15_crit_edge, label %if.end32

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %if.end.if.then15_crit_edge
  %tobool.not.i803 = icmp eq ptr %retval.0.i800, null
  br i1 %tobool.not.i803, label %if.then15.aa_put_label.exit_crit_edge, label %if.then.i806

if.then15.aa_put_label.exit_crit_edge:            ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_put_label.exit

if.then.i806:                                     ; preds = %if.then15
  %call.i.i.i.i.i.i.i804 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %retval.0.i800, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  tail call void @llvm.prefetch.p0(ptr nonnull %retval.0.i800, i32 1, i32 3, i32 1) #8
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %retval.0.i800, ptr nonnull %retval.0.i800, i32 1, ptr nonnull elementtype(i32) %retval.0.i800) #8, !srcloc !220
  %asmresult.i.i.i.i.i.i.i.i805 = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i805)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i805, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i808, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i806
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i805)
  %.not.i.i.i.i.i807 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i805, 0
  br i1 %.not.i.i.i.i.i807, label %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !218

if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_put_label.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef nonnull %retval.0.i800, i32 noundef 3) #8
  br label %aa_put_label.exit

if.then.i.i808:                                   ; preds = %if.then.i806
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !221
  tail call void @aa_label_kref(ptr noundef nonnull %retval.0.i800) #8
  br label %aa_put_label.exit

aa_put_label.exit:                                ; preds = %if.then.i.i808, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, %if.then15.aa_put_label.exit_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_debug to i32))
  %35 = load i8, ptr @aa_g_debug, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool16.not = icmp eq i8 %35, 0
  br i1 %tobool16.not, label %aa_put_label.exit.cleanup596_crit_edge, label %do.body18

aa_put_label.exit.cleanup596_crit_edge:           ; preds = %aa_put_label.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup596

do.body18:                                        ; preds = %aa_put_label.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aa_change_profile.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aa_change_profile, %land.lhs.true24)) #8
          to label %cleanup596 [label %land.lhs.true24], !srcloc !223

land.lhs.true24:                                  ; preds = %do.body18
  %call25 = tail call i32 @___ratelimit(ptr noundef nonnull @aa_change_profile._rs, ptr noundef nonnull @.str.20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true24.cleanup596_crit_edge, label %if.then27

land.lhs.true24.cleanup596_crit_edge:             ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup596

if.then27:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aa_change_profile.descriptor, ptr noundef nonnull @.str.21) #8
  br label %cleanup596

if.end32:                                         ; preds = %lor.lhs.false
  %and33 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %.str.23..str.22 = select i1 %tobool.not, ptr @.str.23, ptr @.str.22
  %.str.25..str.24 = select i1 %tobool.not, ptr @.str.25, ptr @.str.24
  %request.0 = select i1 %tobool34.not, i32 1073741824, i32 536870912
  %op.0 = select i1 %tobool34.not, ptr %.str.25..str.24, ptr %.str.23..str.22
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %33)
  %cmp = icmp eq i8 %33, 38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %extract.t = icmp ne i32 %and, 0
  %stack.0.off0 = or i1 %extract.t, %cmp
  %fqname.addr.0.idx = zext i1 %cmp to i32
  %fqname.addr.0 = getelementptr i8, ptr %fqname, i32 %fqname.addr.0.idx
  %call48 = tail call ptr @aa_label_parse(ptr noundef %retval.0.i800, ptr noundef %fqname.addr.0, i32 noundef 3264, i1 noundef zeroext true, i1 noundef zeroext false) #8
  %cmp.i = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then50, label %if.end71

if.then50:                                        ; preds = %if.end32
  %36 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.26, ptr %info, align 4
  %37 = ptrtoint ptr %call48 to i32
  %and52 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %lor.lhs.false54, label %if.then50.audit_crit_edge

if.then50.audit_crit_edge:                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %audit

lor.lhs.false54:                                  ; preds = %if.then50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_g_profile_mode to i32))
  %38 = load i32, ptr @aa_g_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp55 = icmp eq i32 %38, 1
  br i1 %cmp55, label %lor.lhs.false54.if.end61_crit_edge, label %lor.lhs.false57

lor.lhs.false54.if.end61_crit_edge:               ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

lor.lhs.false57:                                  ; preds = %lor.lhs.false54
  %size = getelementptr inbounds %struct.aa_label, ptr %retval.0.i800, i32 0, i32 7
  %39 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size, align 4
  %sub = add i32 %40, -1
  %arrayidx = getelementptr %struct.aa_label, ptr %retval.0.i800, i32 0, i32 8, i32 %sub
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 4
  %mode = getelementptr inbounds %struct.aa_profile, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp58 = icmp eq i32 %44, 1
  br i1 %cmp58, label %lor.lhs.false57.if.end61_crit_edge, label %lor.lhs.false57.audit_crit_edge

lor.lhs.false57.audit_crit_edge:                  ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #10
  br label %audit

lor.lhs.false57.if.end61_crit_edge:               ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.end61:                                         ; preds = %lor.lhs.false57.if.end61_crit_edge, %lor.lhs.false54.if.end61_crit_edge
  %size63 = getelementptr inbounds %struct.aa_label, ptr %retval.0.i800, i32 0, i32 7
  %45 = ptrtoint ptr %size63 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size63, align 4
  %sub64 = add i32 %46, -1
  %arrayidx65 = getelementptr %struct.aa_label, ptr %retval.0.i800, i32 0, i32 8, i32 %sub64
  %47 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx65, align 4
  %call66 = tail call ptr @aa_new_null_profile(ptr noundef %48, i1 noundef zeroext false, ptr noundef %fqname.addr.0, i32 noundef 3264) #8
  %tobool67.not = icmp eq ptr %call66, null
  br i1 %tobool67.not, label %if.then68, label %cleanup

if.then68:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.27, ptr %info, align 4
  br label %audit

cleanup:                                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %label70 = getelementptr inbounds %struct.aa_profile, ptr %call66, i32 0, i32 25
  br label %check

if.end71:                                         ; preds = %if.end32
  %vec72 = getelementptr %struct.aa_label, ptr %retval.0.i800, i32 0, i32 8
  %size74 = getelementptr inbounds %struct.aa_label, ptr %retval.0.i800, i32 0, i32 7
  %50 = ptrtoint ptr %size74 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %size74, align 4
  %sub75 = add i32 %51, -1
  %arrayidx76 = getelementptr ptr, ptr %vec72, i32 %sub75
  %52 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx76, align 4
  %ns = getelementptr inbounds %struct.aa_profile, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ns, align 4
  %56 = ptrtoint ptr %vec72 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %vec72, align 4
  %tobool79.not965 = icmp eq ptr %57, null
  br i1 %tobool79.not965, label %if.end71.while.end_crit_edge, label %if.end71.land.rhs_crit_edge

if.end71.land.rhs_crit_edge:                      ; preds = %if.end71
  br label %land.rhs

if.end71.while.end_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %if.end71.land.rhs_crit_edge
  %58 = phi ptr [ %62, %while.body.land.rhs_crit_edge ], [ %57, %if.end71.land.rhs_crit_edge ]
  %___i.0966 = phi i32 [ %inc, %while.body.land.rhs_crit_edge ], [ 0, %if.end71.land.rhs_crit_edge ]
  %ns82 = getelementptr inbounds %struct.aa_profile, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %ns82 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ns82, align 4
  %cmp83.not = icmp eq ptr %60, %55
  br i1 %cmp83.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %inc = add i32 %___i.0966, 1
  %arrayidx78 = getelementptr %struct.aa_label, ptr %retval.0.i800, i32 0, i32 8, i32 %inc
  %61 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx78, align 4
  %tobool79.not = icmp eq ptr %62, null
  br i1 %tobool79.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %if.end71.while.end_crit_edge
  %___i.0.lcssa = phi i32 [ 0, %if.end71.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ], [ %___i.0966, %land.rhs.while.end_crit_edge ]
  %arrayidx88968 = getelementptr %struct.aa_label, ptr %retval.0.i800, i32 0, i32 8, i32 %___i.0.lcssa
  %63 = ptrtoint ptr %arrayidx88968 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx88968, align 4
  %tobool89.not969 = icmp eq ptr %64, null
  br i1 %tobool89.not969, label %while.end.check_crit_edge, label %while.end.do.body90_crit_edge

while.end.do.body90_crit_edge:                    ; preds = %while.end
  br label %do.body90

while.end.check_crit_edge:                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %check

do.body90:                                        ; preds = %while.end113.do.body90_crit_edge, %while.end.do.body90_crit_edge
  %65 = phi ptr [ %.pr, %while.end113.do.body90_crit_edge ], [ %64, %while.end.do.body90_crit_edge ]
  %__i.sroa.0.0971 = phi i32 [ %___i98.0, %while.end113.do.body90_crit_edge ], [ %___i.0.lcssa, %while.end.do.body90_crit_edge ]
  %__E.0970 = phi i32 [ %69, %while.end113.do.body90_crit_edge ], [ 0, %while.end.do.body90_crit_edge ]
  %file.i = getelementptr inbounds %struct.aa_profile, ptr %65, i32 0, i32 13
  %66 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %file.i, align 4
  %call.i = call fastcc i32 @change_profile_perms(ptr noundef nonnull %65, ptr noundef %call48, i1 noundef zeroext %stack.0.off0, i32 noundef %request.0, i32 noundef %67, ptr noundef nonnull %perms) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %do.body90.change_profile_perms_wrapper.exit.thread_crit_edge, label %change_profile_perms_wrapper.exit

do.body90.change_profile_perms_wrapper.exit.thread_crit_edge: ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #10
  br label %change_profile_perms_wrapper.exit.thread

change_profile_perms_wrapper.exit:                ; preds = %do.body90
  %call4.i = call i32 @aa_audit_file(ptr noundef nonnull %65, ptr noundef nonnull %perms, ptr noundef nonnull %op.0, i32 noundef %request.0, ptr noundef nonnull %fqname, ptr noundef null, ptr noundef %call48, [1 x i32] zeroinitializer, ptr noundef null, i32 noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool93.not = icmp eq i32 %call4.i, 0
  br i1 %tobool93.not, label %change_profile_perms_wrapper.exit.change_profile_perms_wrapper.exit.thread_crit_edge, label %change_profile_perms_wrapper.exit._crit_edge

change_profile_perms_wrapper.exit._crit_edge:     ; preds = %change_profile_perms_wrapper.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %68

change_profile_perms_wrapper.exit.change_profile_perms_wrapper.exit.thread_crit_edge: ; preds = %change_profile_perms_wrapper.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %change_profile_perms_wrapper.exit.thread

change_profile_perms_wrapper.exit.thread:         ; preds = %change_profile_perms_wrapper.exit.change_profile_perms_wrapper.exit.thread_crit_edge, %do.body90.change_profile_perms_wrapper.exit.thread_crit_edge
  br label %68

68:                                               ; preds = %change_profile_perms_wrapper.exit.thread, %change_profile_perms_wrapper.exit._crit_edge
  %69 = phi i32 [ %__E.0970, %change_profile_perms_wrapper.exit.thread ], [ %call4.i, %change_profile_perms_wrapper.exit._crit_edge ]
  br label %while.cond100

while.cond100:                                    ; preds = %land.rhs104.while.cond100_crit_edge, %68
  %___i98.0.in = phi i32 [ %__i.sroa.0.0971, %68 ], [ %___i98.0, %land.rhs104.while.cond100_crit_edge ]
  %___i98.0 = add i32 %___i98.0.in, 1
  %arrayidx102 = getelementptr %struct.aa_label, ptr %retval.0.i800, i32 0, i32 8, i32 %___i98.0
  %70 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx102, align 4
  %tobool103.not = icmp eq ptr %71, null
  br i1 %tobool103.not, label %while.cond100.for.end_crit_edge, label %land.rhs104

while.cond100.for.end_crit_edge:                  ; preds = %while.cond100
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.rhs104:                                      ; preds = %while.cond100
  %ns107 = getelementptr inbounds %struct.aa_profile, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %ns107 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ns107, align 4
  %cmp108.not = icmp eq ptr %73, %55
  br i1 %cmp108.not, label %while.end113, label %land.rhs104.while.cond100_crit_edge

land.rhs104.while.cond100_crit_edge:              ; preds = %land.rhs104
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond100

while.end113:                                     ; preds = %land.rhs104
  %74 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pr = load ptr, ptr %arrayidx102, align 4
  %tobool89.not = icmp eq ptr %.pr, null
  br i1 %tobool89.not, label %while.end113.for.end_crit_edge, label %while.end113.do.body90_crit_edge

while.end113.do.body90_crit_edge:                 ; preds = %while.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body90

while.end113.for.end_crit_edge:                   ; preds = %while.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %while.end113.for.end_crit_edge, %while.cond100.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool117.not = icmp eq i32 %69, 0
  br i1 %tobool117.not, label %for.end.check_crit_edge, label %for.end.aa_put_label.exit913_crit_edge

for.end.aa_put_label.exit913_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_put_label.exit913

for.end.check_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %check

check:                                            ; preds = %for.end.check_crit_edge, %while.end.check_crit_edge, %cleanup
  %target.1 = phi ptr [ %label70, %cleanup ], [ %call48, %for.end.check_crit_edge ], [ %call48, %while.end.check_crit_edge ]
  %call120 = call fastcc i32 @may_change_ptraced_domain(ptr noundef %target.1, ptr noundef nonnull %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %check.if.end191_crit_edge, label %land.lhs.true122

check.if.end191_crit_edge:                        ; preds = %check
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

land.lhs.true122:                                 ; preds = %check
  %vec125 = getelementptr %struct.aa_label, ptr %retval.0.i800, i32 0, i32 8
  %size127 = getelementptr inbounds %struct.aa_label, ptr %retval.0.i800, i32 0, i32 7
  %75 = ptrtoint ptr %size127 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %size127, align 4
  %sub128 = add i32 %76, -1
  %arrayidx129 = getelementptr ptr, ptr %vec125, i32 %sub128
  %77 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx129, align 4
  %ns130 = getelementptr inbounds %struct.aa_profile, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %ns130 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ns130, align 4
  %81 = ptrtoint ptr %vec125 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %vec125, align 4
  %tobool136.not974 = icmp eq ptr %82, null
  br i1 %tobool136.not974, label %land.lhs.true122.while.end146_crit_edge, label %land.lhs.true122.land.rhs137_crit_edge

land.lhs.true122.land.rhs137_crit_edge:           ; preds = %land.lhs.true122
  br label %land.rhs137

land.lhs.true122.while.end146_crit_edge:          ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end146

land.rhs137:                                      ; preds = %while.body144.land.rhs137_crit_edge, %land.lhs.true122.land.rhs137_crit_edge
  %83 = phi ptr [ %87, %while.body144.land.rhs137_crit_edge ], [ %82, %land.lhs.true122.land.rhs137_crit_edge ]
  %___i132.0975 = phi i32 [ %inc145, %while.body144.land.rhs137_crit_edge ], [ 0, %land.lhs.true122.land.rhs137_crit_edge ]
  %ns140 = getelementptr inbounds %struct.aa_profile, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %ns140 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ns140, align 4
  %cmp141.not = icmp eq ptr %85, %80
  br i1 %cmp141.not, label %land.rhs137.while.end146_crit_edge, label %while.body144

land.rhs137.while.end146_crit_edge:               ; preds = %land.rhs137
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end146

while.body144:                                    ; preds = %land.rhs137
  %inc145 = add i32 %___i132.0975, 1
  %arrayidx135 = getelementptr %struct.aa_label, ptr %retval.0.i800, i32 0, i32 8, i32 %inc145
  %86 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx135, align 4
  %tobool136.not = icmp eq ptr %87, null
  br i1 %tobool136.not, label %while.body144.while.end146_crit_edge, label %while.body144.land.rhs137_crit_edge

while.body144.land.rhs137_crit_edge:              ; preds = %while.body144
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs137

while.body144.while.end146_crit_edge:             ; preds = %while.body144
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end146

while.end146:                                     ; preds = %while.body144.while.end146_crit_edge, %land.rhs137.while.end146_crit_edge, %land.lhs.true122.while.end146_crit_edge
  %___i132.0.lcssa = phi i32 [ 0, %land.lhs.true122.while.end146_crit_edge ], [ %inc145, %while.body144.while.end146_crit_edge ], [ %___i132.0975, %land.rhs137.while.end146_crit_edge ]
  %arrayidx152978 = getelementptr %struct.aa_label, ptr %retval.0.i800, i32 0, i32 8, i32 %___i132.0.lcssa
  %88 = ptrtoint ptr %arrayidx152978 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx152978, align 4
  %tobool153.not979 = icmp eq ptr %89, null
  br i1 %tobool153.not979, label %while.end146.audit_crit_edge, label %do.body155.lr.ph

while.end146.audit_crit_edge:                     ; preds = %while.end146
  call void @__sanitizer_cov_trace_pc() #10
  br label %audit

do.body155.lr.ph:                                 ; preds = %while.end146
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_g_profile_mode to i32))
  %90 = load i32, ptr @aa_g_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %90)
  %cmp157 = icmp eq i32 %90, 1
  br label %do.body155

do.body155:                                       ; preds = %while.end184.do.body155_crit_edge, %do.body155.lr.ph
  %91 = phi ptr [ %89, %do.body155.lr.ph ], [ %.pr1022, %while.end184.do.body155_crit_edge ]
  %__E131.0981 = phi i32 [ 0, %do.body155.lr.ph ], [ %95, %while.end184.do.body155_crit_edge ]
  %__i123.sroa.0.0980 = phi i32 [ %___i132.0.lcssa, %do.body155.lr.ph ], [ %___i168.0, %while.end184.do.body155_crit_edge ]
  br i1 %cmp157, label %do.body155.lor.end.thread_crit_edge, label %lor.end

do.body155.lor.end.thread_crit_edge:              ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end.thread

lor.end:                                          ; preds = %do.body155
  %mode159 = getelementptr inbounds %struct.aa_profile, ptr %91, i32 0, i32 8
  %92 = ptrtoint ptr %mode159 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %mode159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %93)
  %cmp160 = icmp eq i32 %93, 1
  br i1 %cmp160, label %lor.end.lor.end.thread_crit_edge, label %lor.end._crit_edge

lor.end._crit_edge:                               ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %94

lor.end.lor.end.thread_crit_edge:                 ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end.thread

lor.end.thread:                                   ; preds = %lor.end.lor.end.thread_crit_edge, %do.body155.lor.end.thread_crit_edge
  br label %94

94:                                               ; preds = %lor.end.thread, %lor.end._crit_edge
  %95 = phi i32 [ 1, %lor.end.thread ], [ %__E131.0981, %lor.end._crit_edge ]
  br label %while.cond171

while.cond171:                                    ; preds = %land.rhs175.while.cond171_crit_edge, %94
  %___i168.0.in = phi i32 [ %__i123.sroa.0.0980, %94 ], [ %___i168.0, %land.rhs175.while.cond171_crit_edge ]
  %___i168.0 = add i32 %___i168.0.in, 1
  %arrayidx173 = getelementptr %struct.aa_label, ptr %retval.0.i800, i32 0, i32 8, i32 %___i168.0
  %96 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx173, align 4
  %tobool174.not = icmp eq ptr %97, null
  br i1 %tobool174.not, label %while.cond171.for.end187_crit_edge, label %land.rhs175

while.cond171.for.end187_crit_edge:               ; preds = %while.cond171
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end187

land.rhs175:                                      ; preds = %while.cond171
  %ns178 = getelementptr inbounds %struct.aa_profile, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %ns178 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ns178, align 4
  %cmp179.not = icmp eq ptr %99, %80
  br i1 %cmp179.not, label %while.end184, label %land.rhs175.while.cond171_crit_edge

land.rhs175.while.cond171_crit_edge:              ; preds = %land.rhs175
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond171

while.end184:                                     ; preds = %land.rhs175
  %100 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load4_noabort(i32 %100)
  %.pr1022 = load ptr, ptr %arrayidx173, align 4
  %tobool153.not = icmp eq ptr %.pr1022, null
  br i1 %tobool153.not, label %while.end184.for.end187_crit_edge, label %while.end184.do.body155_crit_edge

while.end184.do.body155_crit_edge:                ; preds = %while.end184
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body155

while.end184.for.end187_crit_edge:                ; preds = %while.end184
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end187

for.end187:                                       ; preds = %while.end184.for.end187_crit_edge, %while.cond171.for.end187_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool189.not = icmp eq i32 %95, 0
  br i1 %tobool189.not, label %for.end187.audit_crit_edge, label %for.end187.if.end191_crit_edge

for.end187.if.end191_crit_edge:                   ; preds = %for.end187
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

for.end187.audit_crit_edge:                       ; preds = %for.end187
  call void @__sanitizer_cov_trace_pc() #10
  br label %audit

if.end191:                                        ; preds = %for.end187.if.end191_crit_edge, %check.if.end191_crit_edge
  %and192 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192)
  %tobool193.not = icmp eq i32 %and192, 0
  br i1 %tobool193.not, label %if.end195, label %if.end191.aa_put_label.exit913_crit_edge

if.end191.aa_put_label.exit913_crit_edge:         ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_put_label.exit913

if.end195:                                        ; preds = %if.end191
  br i1 %stack.0.off0, label %if.end508.thread, label %if.then197

if.then197:                                       ; preds = %if.end195
  %size199 = getelementptr inbounds %struct.aa_label, ptr %retval.0.i800, i32 0, i32 7
  %101 = ptrtoint ptr %size199 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %size199, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %102)
  %cmp200 = icmp sgt i32 %102, 1
  br i1 %cmp200, label %if.then202, label %if.else436

if.then202:                                       ; preds = %if.then197
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %___lvec_localtmp) #8
  %103 = call ptr @memset(ptr %___lvec_localtmp, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %___pvec_localtmp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %102)
  %cmp205 = icmp ult i32 %102, 9
  %104 = call ptr @memset(ptr %___pvec_localtmp, i32 255, i32 32)
  br i1 %cmp205, label %for.cond209.preheader, label %if.end8.i.i

for.cond209.preheader:                            ; preds = %if.then202
  %105 = ptrtoint ptr %size199 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %size199, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp211983 = icmp sgt i32 %106, 0
  br i1 %cmp211983, label %for.cond209.preheader.for.body213_crit_edge, label %for.cond209.preheader.for.cond228.preheader_crit_edge

for.cond209.preheader.for.cond228.preheader_crit_edge: ; preds = %for.cond209.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond228.preheader

for.cond209.preheader.for.body213_crit_edge:      ; preds = %for.cond209.preheader
  br label %for.body213

for.body213:                                      ; preds = %for.body213.for.body213_crit_edge, %for.cond209.preheader.for.body213_crit_edge
  %i208.0984 = phi i32 [ %inc216, %for.body213.for.body213_crit_edge ], [ 0, %for.cond209.preheader.for.body213_crit_edge ]
  %arrayidx214 = getelementptr ptr, ptr %___lvec_localtmp, i32 %i208.0984
  %107 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %arrayidx214, align 4
  %inc216 = add nuw nsw i32 %i208.0984, 1
  %108 = ptrtoint ptr %size199 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %size199, align 4
  %cmp211 = icmp slt i32 %inc216, %109
  br i1 %cmp211, label %for.body213.for.body213_crit_edge, label %for.body213.for.cond228.preheader_crit_edge

for.body213.for.cond228.preheader_crit_edge:      ; preds = %for.body213
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond228.preheader

for.body213.for.body213_crit_edge:                ; preds = %for.body213
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body213

if.end8.i.i:                                      ; preds = %if.then202
  %mul = shl i32 %102, 2
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #11
  %tobool223.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool223.not, label %if.end8.i.i.cleanup409_crit_edge, label %if.end8.i.i.for.cond228.preheader_crit_edge

if.end8.i.i.for.cond228.preheader_crit_edge:      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond228.preheader

if.end8.i.i.cleanup409_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup409

for.cond228.preheader:                            ; preds = %if.end8.i.i.for.cond228.preheader_crit_edge, %for.body213.for.cond228.preheader_crit_edge, %for.cond209.preheader.for.cond228.preheader_crit_edge
  %__lvec.01028 = phi ptr [ %call9.i.i, %if.end8.i.i.for.cond228.preheader_crit_edge ], [ %___lvec_localtmp, %for.cond209.preheader.for.cond228.preheader_crit_edge ], [ %___lvec_localtmp, %for.body213.for.cond228.preheader_crit_edge ]
  %arrayidx231985 = getelementptr %struct.aa_label, ptr %retval.0.i800, i32 0, i32 8, i32 0
  %110 = ptrtoint ptr %arrayidx231985 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx231985, align 4
  %tobool232.not986 = icmp eq ptr %111, null
  br i1 %tobool232.not986, label %for.cond228.preheader.for.cond294.preheader_crit_edge, label %for.body233.lr.ph

for.cond228.preheader.for.cond294.preheader_crit_edge: ; preds = %for.cond228.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond294.preheader

for.body233.lr.ph:                                ; preds = %for.cond228.preheader
  %tobool.not.i822 = icmp eq ptr %target.1, null
  br label %for.body233

for.cond294.preheader:                            ; preds = %if.end287.for.cond294.preheader_crit_edge, %for.cond228.preheader.for.cond294.preheader_crit_edge
  %112 = ptrtoint ptr %size199 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %size199, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp296989 = icmp sgt i32 %113, 0
  br i1 %cmp296989, label %for.cond294.preheader.for.body298_crit_edge, label %for.cond294.preheader.for.end349_crit_edge

for.cond294.preheader.for.end349_crit_edge:       ; preds = %for.cond294.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end349

for.cond294.preheader.for.body298_crit_edge:      ; preds = %for.cond294.preheader
  br label %for.body298

for.body233:                                      ; preds = %if.end287.for.body233_crit_edge, %for.body233.lr.ph
  %114 = phi ptr [ %111, %for.body233.lr.ph ], [ %129, %if.end287.for.body233_crit_edge ]
  %__j.0988 = phi i32 [ 0, %for.body233.lr.ph ], [ %inc288, %if.end287.for.body233_crit_edge ]
  %ns234 = getelementptr inbounds %struct.aa_profile, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %ns234 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ns234, align 4
  %117 = ptrtoint ptr %size199 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %size199, align 4
  %sub238 = add i32 %118, -1
  %arrayidx239 = getelementptr %struct.aa_label, ptr %retval.0.i800, i32 0, i32 8, i32 %sub238
  %119 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx239, align 4
  %ns240 = getelementptr inbounds %struct.aa_profile, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %ns240 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ns240, align 4
  %cmp241.not = icmp eq ptr %116, %122
  br i1 %cmp241.not, label %if.else246, label %if.then243

if.then243:                                       ; preds = %for.body233
  %label244 = getelementptr inbounds %struct.aa_profile, ptr %114, i32 0, i32 25
  %tobool.not.i811 = icmp eq ptr %label244, null
  br i1 %tobool.not.i811, label %if.then243.if.end275.thread_crit_edge, label %if.then.i815

if.then243.if.end275.thread_crit_edge:            ; preds = %if.then243
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end275.thread

if.then.i815:                                     ; preds = %if.then243
  %call.i.i.i.i.i.i.i812 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %label244, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull %label244, i32 1, i32 3, i32 1) #8
  %123 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %label244, ptr nonnull %label244, i32 1, ptr nonnull elementtype(i32) %label244) #8, !srcloc !217
  %asmresult.i.i.i.i.i.i.i813 = extractvalue { i32, i32, i32 } %123, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i813)
  %tobool1.not.i.i.i.i.i814 = icmp eq i32 %asmresult.i.i.i.i.i.i.i813, 0
  br i1 %tobool1.not.i.i.i.i.i814, label %if.then.i815.if.end15.sink.split.i.i.i.i.i820_crit_edge, label %if.else.i.i.i.i.i818, !prof !214

if.then.i815.if.end15.sink.split.i.i.i.i.i820_crit_edge: ; preds = %if.then.i815
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i820

if.else.i.i.i.i.i818:                             ; preds = %if.then.i815
  %add.i.i.i.i.i816 = add i32 %asmresult.i.i.i.i.i.i.i813, 1
  %124 = or i32 %add.i.i.i.i.i816, %asmresult.i.i.i.i.i.i.i813
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %124)
  %.not.i.i.i.i.i817 = icmp sgt i32 %124, -1
  br i1 %.not.i.i.i.i.i817, label %if.else.i.i.i.i.i818.if.end275_crit_edge, label %if.else.i.i.i.i.i818.if.end15.sink.split.i.i.i.i.i820_crit_edge, !prof !218

if.else.i.i.i.i.i818.if.end15.sink.split.i.i.i.i.i820_crit_edge: ; preds = %if.else.i.i.i.i.i818
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i820

if.else.i.i.i.i.i818.if.end275_crit_edge:         ; preds = %if.else.i.i.i.i.i818
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end275

if.end15.sink.split.i.i.i.i.i820:                 ; preds = %if.else.i.i.i.i.i818.if.end15.sink.split.i.i.i.i.i820_crit_edge, %if.then.i815.if.end15.sink.split.i.i.i.i.i820_crit_edge
  %.sink.i.i.i.i.i819 = phi i32 [ 2, %if.then.i815.if.end15.sink.split.i.i.i.i.i820_crit_edge ], [ 1, %if.else.i.i.i.i.i818.if.end15.sink.split.i.i.i.i.i820_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %label244, i32 noundef %.sink.i.i.i.i.i819) #8
  br label %if.end275

if.else246:                                       ; preds = %for.body233
  br i1 %tobool.not.i822, label %if.else246.if.end275.thread_crit_edge, label %if.then.i826

if.else246.if.end275.thread_crit_edge:            ; preds = %if.else246
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end275.thread

if.then.i826:                                     ; preds = %if.else246
  %call.i.i.i.i.i.i.i823 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %target.1, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull %target.1, i32 1, i32 3, i32 1) #8
  %125 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %target.1, ptr nonnull %target.1, i32 1, ptr nonnull elementtype(i32) %target.1) #8, !srcloc !217
  %asmresult.i.i.i.i.i.i.i824 = extractvalue { i32, i32, i32 } %125, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i824)
  %tobool1.not.i.i.i.i.i825 = icmp eq i32 %asmresult.i.i.i.i.i.i.i824, 0
  br i1 %tobool1.not.i.i.i.i.i825, label %if.then.i826.if.end15.sink.split.i.i.i.i.i831_crit_edge, label %if.else.i.i.i.i.i829, !prof !214

if.then.i826.if.end15.sink.split.i.i.i.i.i831_crit_edge: ; preds = %if.then.i826
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i831

if.else.i.i.i.i.i829:                             ; preds = %if.then.i826
  %add.i.i.i.i.i827 = add i32 %asmresult.i.i.i.i.i.i.i824, 1
  %126 = or i32 %add.i.i.i.i.i827, %asmresult.i.i.i.i.i.i.i824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %126)
  %.not.i.i.i.i.i828 = icmp sgt i32 %126, -1
  br i1 %.not.i.i.i.i.i828, label %if.else.i.i.i.i.i829.if.end275_crit_edge, label %if.else.i.i.i.i.i829.if.end15.sink.split.i.i.i.i.i831_crit_edge, !prof !218

if.else.i.i.i.i.i829.if.end15.sink.split.i.i.i.i.i831_crit_edge: ; preds = %if.else.i.i.i.i.i829
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i831

if.else.i.i.i.i.i829.if.end275_crit_edge:         ; preds = %if.else.i.i.i.i.i829
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end275

if.end15.sink.split.i.i.i.i.i831:                 ; preds = %if.else.i.i.i.i.i829.if.end15.sink.split.i.i.i.i.i831_crit_edge, %if.then.i826.if.end15.sink.split.i.i.i.i.i831_crit_edge
  %.sink.i.i.i.i.i830 = phi i32 [ 2, %if.then.i826.if.end15.sink.split.i.i.i.i.i831_crit_edge ], [ 1, %if.else.i.i.i.i.i829.if.end15.sink.split.i.i.i.i.i831_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %target.1, i32 noundef %.sink.i.i.i.i.i830) #8
  br label %if.end275

if.end275.thread:                                 ; preds = %if.else246.if.end275.thread_crit_edge, %if.then243.if.end275.thread_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1409, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20) #8
  br label %if.end287

if.end275:                                        ; preds = %if.end15.sink.split.i.i.i.i.i831, %if.else.i.i.i.i.i829.if.end275_crit_edge, %if.end15.sink.split.i.i.i.i.i820, %if.else.i.i.i.i.i818.if.end275_crit_edge
  %__new.0.ph = phi ptr [ %target.1, %if.end15.sink.split.i.i.i.i.i831 ], [ %target.1, %if.else.i.i.i.i.i829.if.end275_crit_edge ], [ %label244, %if.end15.sink.split.i.i.i.i.i820 ], [ %label244, %if.else.i.i.i.i.i818.if.end275_crit_edge ]
  %cmp.i833 = icmp ugt ptr %__new.0.ph, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i833, label %if.end275.do.body387_crit_edge, label %if.end275.if.end287_crit_edge

if.end275.if.end287_crit_edge:                    ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end287

if.end275.do.body387_crit_edge:                   ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body387

if.end287:                                        ; preds = %if.end275.if.end287_crit_edge, %if.end275.thread
  %__new.0946949 = phi ptr [ null, %if.end275.thread ], [ %__new.0.ph, %if.end275.if.end287_crit_edge ]
  %inc288 = add i32 %__j.0988, 1
  %arrayidx289 = getelementptr ptr, ptr %__lvec.01028, i32 %__j.0988
  %127 = ptrtoint ptr %arrayidx289 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %__new.0946949, ptr %arrayidx289, align 4
  %arrayidx231 = getelementptr %struct.aa_label, ptr %retval.0.i800, i32 0, i32 8, i32 %inc288
  %128 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx231, align 4
  %tobool232.not = icmp eq ptr %129, null
  br i1 %tobool232.not, label %if.end287.for.cond294.preheader_crit_edge, label %if.end287.for.body233_crit_edge

if.end287.for.body233_crit_edge:                  ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body233

if.end287.for.cond294.preheader_crit_edge:        ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond294.preheader

for.body298:                                      ; preds = %for.body298.for.body298_crit_edge, %for.cond294.preheader.for.body298_crit_edge
  %__count.0991 = phi i32 [ %add301, %for.body298.for.body298_crit_edge ], [ 0, %for.cond294.preheader.for.body298_crit_edge ]
  %__j.1990 = phi i32 [ %inc303, %for.body298.for.body298_crit_edge ], [ 0, %for.cond294.preheader.for.body298_crit_edge ]
  %arrayidx299 = getelementptr ptr, ptr %__lvec.01028, i32 %__j.1990
  %130 = ptrtoint ptr %arrayidx299 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx299, align 4
  %size300 = getelementptr inbounds %struct.aa_label, ptr %131, i32 0, i32 7
  %132 = ptrtoint ptr %size300 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %size300, align 4
  %add301 = add i32 %133, %__count.0991
  %inc303 = add nuw nsw i32 %__j.1990, 1
  %exitcond.not = icmp eq i32 %inc303, %113
  br i1 %exitcond.not, label %for.end304, label %for.body298.for.body298_crit_edge

for.body298.for.body298_crit_edge:                ; preds = %for.body298
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body298

for.end304:                                       ; preds = %for.body298
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %add301)
  %cmp305 = icmp slt i32 %add301, 9
  br i1 %cmp305, label %for.cond310.preheader, label %if.end8.i.i860

for.cond310.preheader:                            ; preds = %for.end304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add301)
  %cmp311993 = icmp sgt i32 %add301, 0
  br i1 %cmp311993, label %for.body313.preheader, label %for.cond310.preheader.for.cond327.preheader_crit_edge

for.cond310.preheader.for.cond327.preheader_crit_edge: ; preds = %for.cond310.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond327.preheader

for.body313.preheader:                            ; preds = %for.cond310.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %134 = shl nuw nsw i32 %add301, 2
  %135 = call ptr @memset(ptr %___pvec_localtmp, i32 0, i32 %134)
  br label %for.cond327.preheader

if.end8.i.i860:                                   ; preds = %for.end304
  %mul319 = shl i32 %add301, 2
  %call9.i.i859 = call noalias align 128 ptr @__kmalloc(i32 noundef %mul319, i32 noundef 3520) #11
  %tobool323.not = icmp eq ptr %call9.i.i859, null
  br i1 %tobool323.not, label %if.end8.i.i860.do.body387_crit_edge, label %if.end8.i.i860.for.cond327.preheader_crit_edge

if.end8.i.i860.for.cond327.preheader_crit_edge:   ; preds = %if.end8.i.i860
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond327.preheader

if.end8.i.i860.do.body387_crit_edge:              ; preds = %if.end8.i.i860
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body387

for.cond327.preheader:                            ; preds = %if.end8.i.i860.for.cond327.preheader_crit_edge, %for.body313.preheader, %for.cond310.preheader.for.cond327.preheader_crit_edge
  %__pvec.01040.ph = phi ptr [ %___pvec_localtmp, %for.cond310.preheader.for.cond327.preheader_crit_edge ], [ %___pvec_localtmp, %for.body313.preheader ], [ %call9.i.i859, %if.end8.i.i860.for.cond327.preheader_crit_edge ]
  %136 = ptrtoint ptr %size199 to i32
  call void @__asan_load4_noabort(i32 %136)
  %.pr1052 = load i32, ptr %size199, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1052)
  %cmp3291000 = icmp sgt i32 %.pr1052, 0
  br i1 %cmp3291000, label %for.cond327.preheader.for.cond333.preheader_crit_edge, label %for.cond327.preheader.for.end349_crit_edge

for.cond327.preheader.for.end349_crit_edge:       ; preds = %for.cond327.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end349

for.cond327.preheader.for.cond333.preheader_crit_edge: ; preds = %for.cond327.preheader
  br label %for.cond333.preheader

for.cond333.preheader:                            ; preds = %for.inc347.for.cond333.preheader_crit_edge, %for.cond327.preheader.for.cond333.preheader_crit_edge
  %__k.01002 = phi i32 [ %__k.1.lcssa, %for.inc347.for.cond333.preheader_crit_edge ], [ 0, %for.cond327.preheader.for.cond333.preheader_crit_edge ]
  %__j.21001 = phi i32 [ %inc348, %for.inc347.for.cond333.preheader_crit_edge ], [ 0, %for.cond327.preheader.for.cond333.preheader_crit_edge ]
  %arrayidx334 = getelementptr ptr, ptr %__lvec.01028, i32 %__j.21001
  %137 = ptrtoint ptr %arrayidx334 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx334, align 4
  %arrayidx337995 = getelementptr %struct.aa_label, ptr %138, i32 0, i32 8, i32 0
  %139 = ptrtoint ptr %arrayidx337995 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx337995, align 4
  %tobool338.not996 = icmp eq ptr %140, null
  br i1 %tobool338.not996, label %for.cond333.preheader.for.inc347_crit_edge, label %for.cond333.preheader.if.then.i867_crit_edge

for.cond333.preheader.if.then.i867_crit_edge:     ; preds = %for.cond333.preheader
  br label %if.then.i867

for.cond333.preheader.for.inc347_crit_edge:       ; preds = %for.cond333.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc347

if.then.i867:                                     ; preds = %aa_get_profile.exit.if.then.i867_crit_edge, %for.cond333.preheader.if.then.i867_crit_edge
  %141 = phi ptr [ %148, %aa_get_profile.exit.if.then.i867_crit_edge ], [ %140, %for.cond333.preheader.if.then.i867_crit_edge ]
  %__k.1998 = phi i32 [ %inc341, %aa_get_profile.exit.if.then.i867_crit_edge ], [ %__k.01002, %for.cond333.preheader.if.then.i867_crit_edge ]
  %__i203.sroa.0.1997 = phi i32 [ %inc345, %aa_get_profile.exit.if.then.i867_crit_edge ], [ 0, %for.cond333.preheader.if.then.i867_crit_edge ]
  %label.i = getelementptr inbounds %struct.aa_profile, ptr %141, i32 0, i32 25
  %call.i.i.i.i.i.i.i864 = call zeroext i1 @__kasan_check_write(ptr noundef %label.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %label.i, i32 1, i32 3, i32 1) #8
  %142 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i, ptr %label.i, i32 1, ptr elementtype(i32) %label.i) #8, !srcloc !217
  %asmresult.i.i.i.i.i.i.i865 = extractvalue { i32, i32, i32 } %142, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i865)
  %tobool1.not.i.i.i.i.i866 = icmp eq i32 %asmresult.i.i.i.i.i.i.i865, 0
  br i1 %tobool1.not.i.i.i.i.i866, label %if.then.i867.if.end15.sink.split.i.i.i.i.i872_crit_edge, label %if.else.i.i.i.i.i870, !prof !214

if.then.i867.if.end15.sink.split.i.i.i.i.i872_crit_edge: ; preds = %if.then.i867
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i872

if.else.i.i.i.i.i870:                             ; preds = %if.then.i867
  %add.i.i.i.i.i868 = add i32 %asmresult.i.i.i.i.i.i.i865, 1
  %143 = or i32 %add.i.i.i.i.i868, %asmresult.i.i.i.i.i.i.i865
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %143)
  %.not.i.i.i.i.i869 = icmp sgt i32 %143, -1
  br i1 %.not.i.i.i.i.i869, label %if.else.i.i.i.i.i870.aa_get_profile.exit_crit_edge, label %if.else.i.i.i.i.i870.if.end15.sink.split.i.i.i.i.i872_crit_edge, !prof !218

if.else.i.i.i.i.i870.if.end15.sink.split.i.i.i.i.i872_crit_edge: ; preds = %if.else.i.i.i.i.i870
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i872

if.else.i.i.i.i.i870.aa_get_profile.exit_crit_edge: ; preds = %if.else.i.i.i.i.i870
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_get_profile.exit

if.end15.sink.split.i.i.i.i.i872:                 ; preds = %if.else.i.i.i.i.i870.if.end15.sink.split.i.i.i.i.i872_crit_edge, %if.then.i867.if.end15.sink.split.i.i.i.i.i872_crit_edge
  %.sink.i.i.i.i.i871 = phi i32 [ 2, %if.then.i867.if.end15.sink.split.i.i.i.i.i872_crit_edge ], [ 1, %if.else.i.i.i.i.i870.if.end15.sink.split.i.i.i.i.i872_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %label.i, i32 noundef %.sink.i.i.i.i.i871) #8
  br label %aa_get_profile.exit

aa_get_profile.exit:                              ; preds = %if.end15.sink.split.i.i.i.i.i872, %if.else.i.i.i.i.i870.aa_get_profile.exit_crit_edge
  %inc341 = add i32 %__k.1998, 1
  %arrayidx342 = getelementptr ptr, ptr %__pvec.01040.ph, i32 %__k.1998
  %144 = ptrtoint ptr %arrayidx342 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %141, ptr %arrayidx342, align 4
  %inc345 = add i32 %__i203.sroa.0.1997, 1
  %145 = ptrtoint ptr %arrayidx334 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx334, align 4
  %arrayidx337 = getelementptr %struct.aa_label, ptr %146, i32 0, i32 8, i32 %inc345
  %147 = ptrtoint ptr %arrayidx337 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx337, align 4
  %tobool338.not = icmp eq ptr %148, null
  br i1 %tobool338.not, label %aa_get_profile.exit.for.inc347_crit_edge, label %aa_get_profile.exit.if.then.i867_crit_edge

aa_get_profile.exit.if.then.i867_crit_edge:       ; preds = %aa_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i867

aa_get_profile.exit.for.inc347_crit_edge:         ; preds = %aa_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc347

for.inc347:                                       ; preds = %aa_get_profile.exit.for.inc347_crit_edge, %for.cond333.preheader.for.inc347_crit_edge
  %__k.1.lcssa = phi i32 [ %__k.01002, %for.cond333.preheader.for.inc347_crit_edge ], [ %inc341, %aa_get_profile.exit.for.inc347_crit_edge ]
  %inc348 = add nuw nsw i32 %__j.21001, 1
  %149 = ptrtoint ptr %size199 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %size199, align 4
  %cmp329 = icmp slt i32 %inc348, %150
  br i1 %cmp329, label %for.inc347.for.cond333.preheader_crit_edge, label %for.inc347.for.end349_crit_edge

for.inc347.for.end349_crit_edge:                  ; preds = %for.inc347
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end349

for.inc347.for.cond333.preheader_crit_edge:       ; preds = %for.inc347
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond333.preheader

for.end349:                                       ; preds = %for.inc347.for.end349_crit_edge, %for.cond327.preheader.for.end349_crit_edge, %for.cond294.preheader.for.end349_crit_edge
  %__count.0.lcssa103210391056 = phi i32 [ %add301, %for.cond327.preheader.for.end349_crit_edge ], [ 0, %for.cond294.preheader.for.end349_crit_edge ], [ %add301, %for.inc347.for.end349_crit_edge ]
  %__pvec.01041 = phi ptr [ %__pvec.01040.ph, %for.cond327.preheader.for.end349_crit_edge ], [ %___pvec_localtmp, %for.cond294.preheader.for.end349_crit_edge ], [ %__pvec.01040.ph, %for.inc347.for.end349_crit_edge ]
  %call350 = call i32 @aa_vec_unique(ptr noundef nonnull %__pvec.01041, i32 noundef %__count.0.lcssa103210391056, i32 noundef 0) #8
  %sub351 = sub i32 %__count.0.lcssa103210391056, %call350
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub351)
  %cmp352 = icmp sgt i32 %sub351, 1
  br i1 %cmp352, label %do.body364.thread, label %do.body364

do.body364.thread:                                ; preds = %for.end349
  call void @__sanitizer_cov_trace_pc() #10
  %call355 = call ptr @aa_vec_find_or_create_label(ptr noundef nonnull %__pvec.01041, i32 noundef %sub351, i32 noundef 3264) #8
  br label %for.body369.preheader

do.body364:                                       ; preds = %for.end349
  %151 = ptrtoint ptr %__pvec.01041 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %__pvec.01041, align 4
  %label361 = getelementptr inbounds %struct.aa_profile, ptr %152, i32 0, i32 25
  %call362 = call fastcc ptr @aa_get_label(ptr noundef %label361)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub351)
  %cmp3671003 = icmp eq i32 %sub351, 1
  br i1 %cmp3671003, label %do.body364.for.body369.preheader_crit_edge, label %do.body364.for.end377_crit_edge

do.body364.for.end377_crit_edge:                  ; preds = %do.body364
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end377

do.body364.for.body369.preheader_crit_edge:       ; preds = %do.body364
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body369.preheader

for.body369.preheader:                            ; preds = %do.body364.for.body369.preheader_crit_edge, %do.body364.thread
  %__new_.01049 = phi ptr [ %call355, %do.body364.thread ], [ %label361, %do.body364.for.body369.preheader_crit_edge ]
  br label %for.body369

for.body369:                                      ; preds = %for.inc375.for.body369_crit_edge, %for.body369.preheader
  %i365.01004 = phi i32 [ %inc376, %for.inc375.for.body369_crit_edge ], [ 0, %for.body369.preheader ]
  %arrayidx370 = getelementptr ptr, ptr %__pvec.01041, i32 %i365.01004
  %153 = ptrtoint ptr %arrayidx370 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %arrayidx370, align 4
  %tobool.not.i873 = icmp eq ptr %154, null
  %cmp.i874 = icmp ugt ptr %154, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i873, %cmp.i874
  br i1 %spec.select.i, label %for.body369.for.inc375_crit_edge, label %if.then.i880

for.body369.for.inc375_crit_edge:                 ; preds = %for.body369
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc375

if.then.i880:                                     ; preds = %for.body369
  %label.i876 = getelementptr inbounds %struct.aa_profile, ptr %154, i32 0, i32 25
  %call.i.i.i.i.i.i.i877 = call zeroext i1 @__kasan_check_write(ptr noundef %label.i876, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  call void @llvm.prefetch.p0(ptr %label.i876, i32 1, i32 3, i32 1) #8
  %155 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i876, ptr %label.i876, i32 1, ptr elementtype(i32) %label.i876) #8, !srcloc !220
  %asmresult.i.i.i.i.i.i.i.i878 = extractvalue { i32, i32, i32 } %155, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i878)
  %cmp.i.i.i.i.i879 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i878, 1
  br i1 %cmp.i.i.i.i.i879, label %if.then.i.i884, label %if.end5.i.i.i.i.i882

if.end5.i.i.i.i.i882:                             ; preds = %if.then.i880
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i878)
  %.not.i.i.i.i.i881 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i878, 0
  br i1 %.not.i.i.i.i.i881, label %if.end5.i.i.i.i.i882.for.inc375_crit_edge, label %if.then10.i.i.i.i.i883, !prof !218

if.end5.i.i.i.i.i882.for.inc375_crit_edge:        ; preds = %if.end5.i.i.i.i.i882
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc375

if.then10.i.i.i.i.i883:                           ; preds = %if.end5.i.i.i.i.i882
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %label.i876, i32 noundef 3) #8
  br label %for.inc375

if.then.i.i884:                                   ; preds = %if.then.i880
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !221
  call void @aa_label_kref(ptr noundef %label.i876) #8
  br label %for.inc375

for.inc375:                                       ; preds = %if.then.i.i884, %if.then10.i.i.i.i.i883, %if.end5.i.i.i.i.i882.for.inc375_crit_edge, %for.body369.for.inc375_crit_edge
  %inc376 = add nuw nsw i32 %i365.01004, 1
  %exitcond1018.not = icmp eq i32 %inc376, %sub351
  br i1 %exitcond1018.not, label %for.inc375.for.end377_crit_edge, label %for.inc375.for.body369_crit_edge

for.inc375.for.body369_crit_edge:                 ; preds = %for.inc375
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body369

for.inc375.for.end377_crit_edge:                  ; preds = %for.inc375
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end377

for.end377:                                       ; preds = %for.inc375.for.end377_crit_edge, %do.body364.for.end377_crit_edge
  %__new_.01048 = phi ptr [ %label361, %do.body364.for.end377_crit_edge ], [ %__new_.01049, %for.inc375.for.end377_crit_edge ]
  %cmp379.not = icmp eq ptr %__pvec.01041, %___pvec_localtmp
  br i1 %cmp379.not, label %for.end377.do.body387_crit_edge, label %if.then381

for.end377.do.body387_crit_edge:                  ; preds = %for.end377
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body387

if.then381:                                       ; preds = %for.end377
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %__pvec.01041) #8
  br label %do.body387

do.body387:                                       ; preds = %if.then381, %for.end377.do.body387_crit_edge, %if.end8.i.i860.do.body387_crit_edge, %if.end275.do.body387_crit_edge
  %__new_.1 = phi ptr [ %__new_.01048, %if.then381 ], [ %__new_.01048, %for.end377.do.body387_crit_edge ], [ null, %if.end8.i.i860.do.body387_crit_edge ], [ %__new.0.ph, %if.end275.do.body387_crit_edge ]
  %156 = ptrtoint ptr %size199 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %size199, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp3911005 = icmp sgt i32 %157, 0
  br i1 %cmp3911005, label %do.body387.for.body393_crit_edge, label %do.body387.for.end401_crit_edge

do.body387.for.end401_crit_edge:                  ; preds = %do.body387
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end401

do.body387.for.body393_crit_edge:                 ; preds = %do.body387
  br label %for.body393

for.body393:                                      ; preds = %for.inc399.for.body393_crit_edge, %do.body387.for.body393_crit_edge
  %i388.01006 = phi i32 [ %inc400, %for.inc399.for.body393_crit_edge ], [ 0, %do.body387.for.body393_crit_edge ]
  %arrayidx394 = getelementptr ptr, ptr %__lvec.01028, i32 %i388.01006
  %158 = ptrtoint ptr %arrayidx394 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx394, align 4
  %tobool.not.i885 = icmp eq ptr %159, null
  %cmp.i886 = icmp ugt ptr %159, inttoptr (i32 -4096 to ptr)
  %spec.select.i887 = or i1 %tobool.not.i885, %cmp.i886
  br i1 %spec.select.i887, label %for.body393.for.inc399_crit_edge, label %if.then.i892

for.body393.for.inc399_crit_edge:                 ; preds = %for.body393
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc399

if.then.i892:                                     ; preds = %for.body393
  %call.i.i.i.i.i.i.i889 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %159, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  call void @llvm.prefetch.p0(ptr nonnull %159, i32 1, i32 3, i32 1) #8
  %160 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %159, ptr nonnull %159, i32 1, ptr nonnull elementtype(i32) %159) #8, !srcloc !220
  %asmresult.i.i.i.i.i.i.i.i890 = extractvalue { i32, i32, i32 } %160, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i890)
  %cmp.i.i.i.i.i891 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i890, 1
  br i1 %cmp.i.i.i.i.i891, label %if.then.i.i896, label %if.end5.i.i.i.i.i894

if.end5.i.i.i.i.i894:                             ; preds = %if.then.i892
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i890)
  %.not.i.i.i.i.i893 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i890, 0
  br i1 %.not.i.i.i.i.i893, label %if.end5.i.i.i.i.i894.for.inc399_crit_edge, label %if.then10.i.i.i.i.i895, !prof !218

if.end5.i.i.i.i.i894.for.inc399_crit_edge:        ; preds = %if.end5.i.i.i.i.i894
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc399

if.then10.i.i.i.i.i895:                           ; preds = %if.end5.i.i.i.i.i894
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %159, i32 noundef 3) #8
  br label %for.inc399

if.then.i.i896:                                   ; preds = %if.then.i892
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !221
  call void @aa_label_kref(ptr noundef nonnull %159) #8
  br label %for.inc399

for.inc399:                                       ; preds = %if.then.i.i896, %if.then10.i.i.i.i.i895, %if.end5.i.i.i.i.i894.for.inc399_crit_edge, %for.body393.for.inc399_crit_edge
  %inc400 = add nuw nsw i32 %i388.01006, 1
  %161 = ptrtoint ptr %size199 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %size199, align 4
  %cmp391 = icmp slt i32 %inc400, %162
  br i1 %cmp391, label %for.inc399.for.body393_crit_edge, label %for.inc399.for.end401_crit_edge

for.inc399.for.end401_crit_edge:                  ; preds = %for.inc399
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end401

for.inc399.for.body393_crit_edge:                 ; preds = %for.inc399
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body393

for.end401:                                       ; preds = %for.inc399.for.end401_crit_edge, %do.body387.for.end401_crit_edge
  %cmp403.not = icmp eq ptr %__lvec.01028, %___lvec_localtmp
  br i1 %cmp403.not, label %for.end401.cleanup409_crit_edge, label %if.then405

for.end401.cleanup409_crit_edge:                  ; preds = %for.end401
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup409

if.then405:                                       ; preds = %for.end401
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %__lvec.01028) #8
  br label %cleanup409

cleanup409:                                       ; preds = %if.then405, %for.end401.cleanup409_crit_edge, %if.end8.i.i.cleanup409_crit_edge
  %__new_.2 = phi ptr [ null, %if.end8.i.i.cleanup409_crit_edge ], [ %__new_.1, %if.then405 ], [ %__new_.1, %for.end401.cleanup409_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %___pvec_localtmp) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %___lvec_localtmp) #8
  br label %__done

if.else436:                                       ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #10
  %call437 = call fastcc ptr @aa_get_label(ptr noundef %target.1)
  br label %__done

__done:                                           ; preds = %if.else436, %cleanup409
  %__new_.3 = phi ptr [ %__new_.2, %cleanup409 ], [ %target.1, %if.else436 ]
  %tobool441.not = icmp eq ptr %__new_.3, null
  br i1 %tobool441.not, label %do.body443, label %__done.if.end468_crit_edge

__done.if.end468_crit_edge:                       ; preds = %__done
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end468

do.body443:                                       ; preds = %__done
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_debug to i32))
  %163 = load i8, ptr @aa_g_debug, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool444.not = icmp eq i8 %163, 0
  br i1 %tobool444.not, label %do.body443.if.end468_crit_edge, label %do.body446

do.body443.if.end468_crit_edge:                   ; preds = %do.body443
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end468

do.body446:                                       ; preds = %do.body443
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aa_change_profile.descriptor.29, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aa_change_profile, %land.lhs.true458)) #8
          to label %if.end468 [label %land.lhs.true458], !srcloc !223

land.lhs.true458:                                 ; preds = %do.body446
  %call459 = call i32 @___ratelimit(ptr noundef nonnull @aa_change_profile._rs.28, ptr noundef nonnull @.str.20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call459)
  %tobool460.not = icmp eq i32 %call459, 0
  br i1 %tobool460.not, label %land.lhs.true458.if.end468_crit_edge, label %if.then461

land.lhs.true458.if.end468_crit_edge:             ; preds = %land.lhs.true458
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end468

if.then461:                                       ; preds = %land.lhs.true458
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aa_change_profile.descriptor.29, ptr noundef nonnull @.str.7) #8
  br label %if.end468

if.end468:                                        ; preds = %if.then461, %land.lhs.true458.if.end468_crit_edge, %do.body446, %do.body443.if.end468_crit_edge, %__done.if.end468_crit_edge
  %164 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %task, align 8
  %atomic_flags.i898 = getelementptr inbounds %struct.task_struct, ptr %165, i32 0, i32 66
  %166 = ptrtoint ptr %atomic_flags.i898 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load volatile i32, ptr %atomic_flags.i898, align 4
  %and1.i.i899 = and i32 %167, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i899)
  %tobool.i900.not = icmp eq i32 %and1.i.i899, 0
  br i1 %tobool.i900.not, label %if.end468.if.end508_crit_edge, label %land.lhs.true474

if.end468.if.end508_crit_edge:                    ; preds = %if.end468
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end508

land.lhs.true474:                                 ; preds = %if.end468
  %flags475 = getelementptr inbounds %struct.aa_label, ptr %retval.0.i800, i32 0, i32 5
  %168 = ptrtoint ptr %flags475 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %flags475, align 4
  %and476 = and i32 %169, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and476)
  %tobool477.not = icmp eq i32 %and476, 0
  br i1 %tobool477.not, label %land.lhs.true478, label %land.lhs.true474.if.end508_crit_edge

land.lhs.true474.if.end508_crit_edge:             ; preds = %land.lhs.true474
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end508

land.lhs.true478:                                 ; preds = %land.lhs.true474
  %170 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %add.ptr.i, align 8
  %call480 = call zeroext i1 @aa_label_is_unconfined_subset(ptr noundef %__new_.3, ptr noundef %171) #8
  br i1 %call480, label %land.lhs.true478.if.end508_crit_edge, label %do.body482

land.lhs.true478.if.end508_crit_edge:             ; preds = %land.lhs.true478
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end508

do.body482:                                       ; preds = %land.lhs.true478
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_debug to i32))
  %172 = load i8, ptr @aa_g_debug, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool483.not = icmp eq i8 %172, 0
  br i1 %tobool483.not, label %do.body482.out_crit_edge, label %do.body485

do.body482.out_crit_edge:                         ; preds = %do.body482
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body485:                                       ; preds = %do.body482
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aa_change_profile.descriptor.31, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aa_change_profile, %land.lhs.true497)) #8
          to label %out [label %land.lhs.true497], !srcloc !223

land.lhs.true497:                                 ; preds = %do.body485
  %call498 = call i32 @___ratelimit(ptr noundef nonnull @aa_change_profile._rs.30, ptr noundef nonnull @.str.20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call498)
  %tobool499.not = icmp eq i32 %call498, 0
  br i1 %tobool499.not, label %land.lhs.true497.out_crit_edge, label %if.then500

land.lhs.true497.out_crit_edge:                   ; preds = %land.lhs.true497
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then500:                                       ; preds = %land.lhs.true497
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aa_change_profile.descriptor.31, ptr noundef nonnull @.str.15) #8
  br label %out

if.end508:                                        ; preds = %land.lhs.true478.if.end508_crit_edge, %land.lhs.true474.if.end508_crit_edge, %if.end468.if.end508_crit_edge
  br i1 %tobool34.not, label %if.end508.if.end515_crit_edge, label %if.else525

if.end508.if.end515_crit_edge:                    ; preds = %if.end508
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end515

if.end508.thread:                                 ; preds = %if.end195
  br i1 %tobool34.not, label %if.then513, label %if.end508.thread.if.end528_crit_edge

if.end508.thread.if.end528_crit_edge:             ; preds = %if.end508.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end528

if.then513:                                       ; preds = %if.end508.thread
  call void @__sanitizer_cov_trace_pc() #10
  %call514 = call ptr @aa_label_merge(ptr noundef %retval.0.i800, ptr noundef %target.1, i32 noundef 3264) #8
  br label %if.end515

if.end515:                                        ; preds = %if.then513, %if.end508.if.end515_crit_edge
  %new.1 = phi ptr [ %call514, %if.then513 ], [ %__new_.3, %if.end508.if.end515_crit_edge ]
  %tobool.not.i901 = icmp eq ptr %new.1, null
  %cmp.i902 = icmp ugt ptr %new.1, inttoptr (i32 -4096 to ptr)
  %spec.select.i903 = or i1 %tobool.not.i901, %cmp.i902
  br i1 %spec.select.i903, label %if.then517, label %if.end523

if.then517:                                       ; preds = %if.end515
  call void @__sanitizer_cov_trace_pc() #10
  %173 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr @.str.32, ptr %info, align 4
  %174 = ptrtoint ptr %new.1 to i32
  %spec.select = select i1 %tobool.not.i901, i32 -12, i32 %174
  %175 = ptrtoint ptr %perms to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %perms, align 4
  br label %audit

if.end523:                                        ; preds = %if.end515
  call void @__sanitizer_cov_trace_pc() #10
  %call524 = call i32 @aa_replace_current_label(ptr noundef nonnull %new.1) #8
  br label %audit

if.else525:                                       ; preds = %if.end508
  br i1 %tobool441.not, label %if.else525.if.end528_crit_edge, label %if.then527

if.else525.if.end528_crit_edge:                   ; preds = %if.else525
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end528

if.then527:                                       ; preds = %if.else525
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @aa_put_label(ptr noundef nonnull %__new_.3)
  br label %if.end528

if.end528:                                        ; preds = %if.then527, %if.else525.if.end528_crit_edge, %if.end508.thread.if.end528_crit_edge
  %call530 = call i32 @aa_set_current_onexec(ptr noundef %target.1, i1 noundef zeroext %stack.0.off0) #8
  br label %audit

audit:                                            ; preds = %if.end528, %if.end523, %if.then517, %for.end187.audit_crit_edge, %while.end146.audit_crit_edge, %if.then68, %lor.lhs.false57.audit_crit_edge, %if.then50.audit_crit_edge
  %error.2 = phi i32 [ %call530, %if.end528 ], [ %spec.select, %if.then517 ], [ %call524, %if.end523 ], [ %call120, %for.end187.audit_crit_edge ], [ %37, %if.then50.audit_crit_edge ], [ %37, %lor.lhs.false57.audit_crit_edge ], [ -12, %if.then68 ], [ %call120, %while.end146.audit_crit_edge ]
  %target.2 = phi ptr [ %target.1, %if.end528 ], [ %target.1, %if.then517 ], [ %target.1, %if.end523 ], [ %target.1, %for.end187.audit_crit_edge ], [ null, %if.then50.audit_crit_edge ], [ null, %lor.lhs.false57.audit_crit_edge ], [ null, %if.then68 ], [ %target.1, %while.end146.audit_crit_edge ]
  %new.3 = phi ptr [ null, %if.end528 ], [ null, %if.then517 ], [ %new.1, %if.end523 ], [ null, %for.end187.audit_crit_edge ], [ null, %if.then50.audit_crit_edge ], [ null, %lor.lhs.false57.audit_crit_edge ], [ null, %if.then68 ], [ null, %while.end146.audit_crit_edge ]
  %vec534 = getelementptr %struct.aa_label, ptr %retval.0.i800, i32 0, i32 8
  %size536 = getelementptr inbounds %struct.aa_label, ptr %retval.0.i800, i32 0, i32 7
  %176 = ptrtoint ptr %size536 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %size536, align 4
  %sub537 = add i32 %177, -1
  %arrayidx538 = getelementptr ptr, ptr %vec534, i32 %sub537
  %178 = ptrtoint ptr %arrayidx538 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %arrayidx538, align 4
  %ns539 = getelementptr inbounds %struct.aa_profile, ptr %179, i32 0, i32 2
  %180 = ptrtoint ptr %ns539 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %ns539, align 4
  %182 = ptrtoint ptr %vec534 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %vec534, align 4
  %tobool545.not1008 = icmp eq ptr %183, null
  br i1 %tobool545.not1008, label %audit.while.end555_crit_edge, label %audit.land.rhs546_crit_edge

audit.land.rhs546_crit_edge:                      ; preds = %audit
  br label %land.rhs546

audit.while.end555_crit_edge:                     ; preds = %audit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end555

land.rhs546:                                      ; preds = %while.body553.land.rhs546_crit_edge, %audit.land.rhs546_crit_edge
  %184 = phi ptr [ %188, %while.body553.land.rhs546_crit_edge ], [ %183, %audit.land.rhs546_crit_edge ]
  %___i541.01009 = phi i32 [ %inc554, %while.body553.land.rhs546_crit_edge ], [ 0, %audit.land.rhs546_crit_edge ]
  %ns549 = getelementptr inbounds %struct.aa_profile, ptr %184, i32 0, i32 2
  %185 = ptrtoint ptr %ns549 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %ns549, align 4
  %cmp550.not = icmp eq ptr %186, %181
  br i1 %cmp550.not, label %land.rhs546.while.end555_crit_edge, label %while.body553

land.rhs546.while.end555_crit_edge:               ; preds = %land.rhs546
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end555

while.body553:                                    ; preds = %land.rhs546
  %inc554 = add i32 %___i541.01009, 1
  %arrayidx544 = getelementptr %struct.aa_label, ptr %retval.0.i800, i32 0, i32 8, i32 %inc554
  %187 = ptrtoint ptr %arrayidx544 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %arrayidx544, align 4
  %tobool545.not = icmp eq ptr %188, null
  br i1 %tobool545.not, label %while.body553.while.end555_crit_edge, label %while.body553.land.rhs546_crit_edge

while.body553.land.rhs546_crit_edge:              ; preds = %while.body553
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs546

while.body553.while.end555_crit_edge:             ; preds = %while.body553
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end555

while.end555:                                     ; preds = %while.body553.while.end555_crit_edge, %land.rhs546.while.end555_crit_edge, %audit.while.end555_crit_edge
  %___i541.0.lcssa = phi i32 [ 0, %audit.while.end555_crit_edge ], [ %inc554, %while.body553.while.end555_crit_edge ], [ %___i541.01009, %land.rhs546.while.end555_crit_edge ]
  %arrayidx5611012 = getelementptr %struct.aa_label, ptr %retval.0.i800, i32 0, i32 8, i32 %___i541.0.lcssa
  %189 = ptrtoint ptr %arrayidx5611012 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %arrayidx5611012, align 4
  %tobool562.not1013 = icmp eq ptr %190, null
  br i1 %tobool562.not1013, label %while.end555.out_crit_edge, label %do.body564.lr.ph

while.end555.out_crit_edge:                       ; preds = %while.end555
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body564.lr.ph:                                 ; preds = %while.end555
  %tobool566.not = icmp eq ptr %new.3, null
  %target.2.new.3 = select i1 %tobool566.not, ptr %target.2, ptr %new.3
  %191 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %info, align 4
  br label %do.body564

do.body564:                                       ; preds = %while.end591.do.body564_crit_edge, %do.body564.lr.ph
  %193 = phi ptr [ %190, %do.body564.lr.ph ], [ %.pr1050, %while.end591.do.body564_crit_edge ]
  %__E540.01015 = phi i32 [ 0, %do.body564.lr.ph ], [ %__E540.1, %while.end591.do.body564_crit_edge ]
  %__i532.sroa.0.01014 = phi i32 [ %___i541.0.lcssa, %do.body564.lr.ph ], [ %___i575.0, %while.end591.do.body564_crit_edge ]
  %call568 = call i32 @aa_audit_file(ptr noundef nonnull %193, ptr noundef nonnull %perms, ptr noundef nonnull %op.0, i32 noundef %request.0, ptr noundef nonnull %fqname, ptr noundef null, ptr noundef %target.2.new.3, [1 x i32] zeroinitializer, ptr noundef %192, i32 noundef %error.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call568)
  %tobool569.not = icmp eq i32 %call568, 0
  %__E540.1 = select i1 %tobool569.not, i32 %__E540.01015, i32 %call568
  br label %while.cond578

while.cond578:                                    ; preds = %land.rhs582.while.cond578_crit_edge, %do.body564
  %___i575.0.in = phi i32 [ %__i532.sroa.0.01014, %do.body564 ], [ %___i575.0, %land.rhs582.while.cond578_crit_edge ]
  %___i575.0 = add i32 %___i575.0.in, 1
  %arrayidx580 = getelementptr %struct.aa_label, ptr %retval.0.i800, i32 0, i32 8, i32 %___i575.0
  %194 = ptrtoint ptr %arrayidx580 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %arrayidx580, align 4
  %tobool581.not = icmp eq ptr %195, null
  br i1 %tobool581.not, label %while.cond578.out_crit_edge, label %land.rhs582

while.cond578.out_crit_edge:                      ; preds = %while.cond578
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.rhs582:                                      ; preds = %while.cond578
  %ns585 = getelementptr inbounds %struct.aa_profile, ptr %195, i32 0, i32 2
  %196 = ptrtoint ptr %ns585 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %ns585, align 4
  %cmp586.not = icmp eq ptr %197, %181
  br i1 %cmp586.not, label %while.end591, label %land.rhs582.while.cond578_crit_edge

land.rhs582.while.cond578_crit_edge:              ; preds = %land.rhs582
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond578

while.end591:                                     ; preds = %land.rhs582
  %198 = ptrtoint ptr %arrayidx580 to i32
  call void @__asan_load4_noabort(i32 %198)
  %.pr1050 = load ptr, ptr %arrayidx580, align 4
  %tobool562.not = icmp eq ptr %.pr1050, null
  br i1 %tobool562.not, label %while.end591.out_crit_edge, label %while.end591.do.body564_crit_edge

while.end591.do.body564_crit_edge:                ; preds = %while.end591
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body564

while.end591.out_crit_edge:                       ; preds = %while.end591
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %while.end591.out_crit_edge, %while.cond578.out_crit_edge, %while.end555.out_crit_edge, %if.then500, %land.lhs.true497.out_crit_edge, %do.body485, %do.body482.out_crit_edge
  %error.3 = phi i32 [ -1, %land.lhs.true497.out_crit_edge ], [ -1, %if.then500 ], [ -1, %do.body482.out_crit_edge ], [ -1, %do.body485 ], [ 0, %while.end555.out_crit_edge ], [ %__E540.1, %while.cond578.out_crit_edge ], [ %__E540.1, %while.end591.out_crit_edge ]
  %target.3 = phi ptr [ %target.1, %land.lhs.true497.out_crit_edge ], [ %target.1, %if.then500 ], [ %target.1, %do.body482.out_crit_edge ], [ %target.1, %do.body485 ], [ %target.2, %while.end555.out_crit_edge ], [ %target.2, %while.cond578.out_crit_edge ], [ %target.2, %while.end591.out_crit_edge ]
  %new.4 = phi ptr [ %__new_.3, %land.lhs.true497.out_crit_edge ], [ %__new_.3, %if.then500 ], [ %__new_.3, %do.body482.out_crit_edge ], [ %__new_.3, %do.body485 ], [ %new.3, %while.end555.out_crit_edge ], [ %new.3, %while.cond578.out_crit_edge ], [ %new.3, %while.end591.out_crit_edge ]
  %tobool.not.i904 = icmp eq ptr %new.4, null
  br i1 %tobool.not.i904, label %out.aa_put_label.exit913_crit_edge, label %if.then.i908

out.aa_put_label.exit913_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_put_label.exit913

if.then.i908:                                     ; preds = %out
  %call.i.i.i.i.i.i.i905 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %new.4, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  call void @llvm.prefetch.p0(ptr nonnull %new.4, i32 1, i32 3, i32 1) #8
  %199 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %new.4, ptr nonnull %new.4, i32 1, ptr nonnull elementtype(i32) %new.4) #8, !srcloc !220
  %asmresult.i.i.i.i.i.i.i.i906 = extractvalue { i32, i32, i32 } %199, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i906)
  %cmp.i.i.i.i.i907 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i906, 1
  br i1 %cmp.i.i.i.i.i907, label %if.then.i.i912, label %if.end5.i.i.i.i.i910

if.end5.i.i.i.i.i910:                             ; preds = %if.then.i908
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i906)
  %.not.i.i.i.i.i909 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i906, 0
  br i1 %.not.i.i.i.i.i909, label %if.end5.i.i.i.i.i910.aa_put_label.exit913_crit_edge, label %if.then10.i.i.i.i.i911, !prof !218

if.end5.i.i.i.i.i910.aa_put_label.exit913_crit_edge: ; preds = %if.end5.i.i.i.i.i910
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_put_label.exit913

if.then10.i.i.i.i.i911:                           ; preds = %if.end5.i.i.i.i.i910
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %new.4, i32 noundef 3) #8
  br label %aa_put_label.exit913

if.then.i.i912:                                   ; preds = %if.then.i908
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !221
  call void @aa_label_kref(ptr noundef nonnull %new.4) #8
  br label %aa_put_label.exit913

aa_put_label.exit913:                             ; preds = %if.then.i.i912, %if.then10.i.i.i.i.i911, %if.end5.i.i.i.i.i910.aa_put_label.exit913_crit_edge, %out.aa_put_label.exit913_crit_edge, %if.end191.aa_put_label.exit913_crit_edge, %for.end.aa_put_label.exit913_crit_edge
  %target.3963 = phi ptr [ %target.3, %out.aa_put_label.exit913_crit_edge ], [ %target.3, %if.end5.i.i.i.i.i910.aa_put_label.exit913_crit_edge ], [ %target.3, %if.then10.i.i.i.i.i911 ], [ %target.3, %if.then.i.i912 ], [ %call48, %for.end.aa_put_label.exit913_crit_edge ], [ %target.1, %if.end191.aa_put_label.exit913_crit_edge ]
  %error.3962 = phi i32 [ %error.3, %out.aa_put_label.exit913_crit_edge ], [ %error.3, %if.end5.i.i.i.i.i910.aa_put_label.exit913_crit_edge ], [ %error.3, %if.then10.i.i.i.i.i911 ], [ %error.3, %if.then.i.i912 ], [ %69, %for.end.aa_put_label.exit913_crit_edge ], [ %call120, %if.end191.aa_put_label.exit913_crit_edge ]
  %tobool.not.i914 = icmp eq ptr %target.3963, null
  br i1 %tobool.not.i914, label %aa_put_label.exit913.aa_put_label.exit923_crit_edge, label %if.then.i918

aa_put_label.exit913.aa_put_label.exit923_crit_edge: ; preds = %aa_put_label.exit913
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_put_label.exit923

if.then.i918:                                     ; preds = %aa_put_label.exit913
  %call.i.i.i.i.i.i.i915 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %target.3963, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  call void @llvm.prefetch.p0(ptr nonnull %target.3963, i32 1, i32 3, i32 1) #8
  %200 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %target.3963, ptr nonnull %target.3963, i32 1, ptr nonnull elementtype(i32) %target.3963) #8, !srcloc !220
  %asmresult.i.i.i.i.i.i.i.i916 = extractvalue { i32, i32, i32 } %200, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i916)
  %cmp.i.i.i.i.i917 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i916, 1
  br i1 %cmp.i.i.i.i.i917, label %if.then.i.i922, label %if.end5.i.i.i.i.i920

if.end5.i.i.i.i.i920:                             ; preds = %if.then.i918
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i916)
  %.not.i.i.i.i.i919 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i916, 0
  br i1 %.not.i.i.i.i.i919, label %if.end5.i.i.i.i.i920.aa_put_label.exit923_crit_edge, label %if.then10.i.i.i.i.i921, !prof !218

if.end5.i.i.i.i.i920.aa_put_label.exit923_crit_edge: ; preds = %if.end5.i.i.i.i.i920
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_put_label.exit923

if.then10.i.i.i.i.i921:                           ; preds = %if.end5.i.i.i.i.i920
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %target.3963, i32 noundef 3) #8
  br label %aa_put_label.exit923

if.then.i.i922:                                   ; preds = %if.then.i918
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !221
  call void @aa_label_kref(ptr noundef nonnull %target.3963) #8
  br label %aa_put_label.exit923

aa_put_label.exit923:                             ; preds = %if.then.i.i922, %if.then10.i.i.i.i.i921, %if.end5.i.i.i.i.i920.aa_put_label.exit923_crit_edge, %aa_put_label.exit913.aa_put_label.exit923_crit_edge
  %tobool.not.i924 = icmp eq ptr %retval.0.i800, null
  br i1 %tobool.not.i924, label %aa_put_label.exit923.cleanup596_crit_edge, label %if.then.i928

aa_put_label.exit923.cleanup596_crit_edge:        ; preds = %aa_put_label.exit923
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup596

if.then.i928:                                     ; preds = %aa_put_label.exit923
  %call.i.i.i.i.i.i.i925 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %retval.0.i800, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  call void @llvm.prefetch.p0(ptr nonnull %retval.0.i800, i32 1, i32 3, i32 1) #8
  %201 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %retval.0.i800, ptr nonnull %retval.0.i800, i32 1, ptr nonnull elementtype(i32) %retval.0.i800) #8, !srcloc !220
  %asmresult.i.i.i.i.i.i.i.i926 = extractvalue { i32, i32, i32 } %201, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i926)
  %cmp.i.i.i.i.i927 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i926, 1
  br i1 %cmp.i.i.i.i.i927, label %if.then.i.i932, label %if.end5.i.i.i.i.i930

if.end5.i.i.i.i.i930:                             ; preds = %if.then.i928
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i926)
  %.not.i.i.i.i.i929 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i926, 0
  br i1 %.not.i.i.i.i.i929, label %if.end5.i.i.i.i.i930.cleanup596_crit_edge, label %if.then10.i.i.i.i.i931, !prof !218

if.end5.i.i.i.i.i930.cleanup596_crit_edge:        ; preds = %if.end5.i.i.i.i.i930
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup596

if.then10.i.i.i.i.i931:                           ; preds = %if.end5.i.i.i.i.i930
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %retval.0.i800, i32 noundef 3) #8
  br label %cleanup596

if.then.i.i932:                                   ; preds = %if.then.i928
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !221
  call void @aa_label_kref(ptr noundef nonnull %retval.0.i800) #8
  br label %cleanup596

cleanup596:                                       ; preds = %if.then.i.i932, %if.then10.i.i.i.i.i931, %if.end5.i.i.i.i.i930.cleanup596_crit_edge, %aa_put_label.exit923.cleanup596_crit_edge, %if.then27, %land.lhs.true24.cleanup596_crit_edge, %do.body18, %aa_put_label.exit.cleanup596_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true24.cleanup596_crit_edge ], [ -22, %if.then27 ], [ -22, %aa_put_label.exit.cleanup596_crit_edge ], [ -22, %do.body18 ], [ %error.3962, %aa_put_label.exit923.cleanup596_crit_edge ], [ %error.3962, %if.end5.i.i.i.i.i930.cleanup596_crit_edge ], [ %error.3962, %if.then10.i.i.i.i.i931 ], [ %error.3962, %if.then.i.i932 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %perms) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aa_new_null_profile(ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aa_label_merge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_replace_current_label(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_set_current_onexec(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @profile_onexec(ptr noundef %profile, ptr noundef %onexec, i1 noundef zeroext %stack, ptr noundef readonly %bprm, ptr noundef %buffer, ptr noundef %cond, ptr nocapture noundef writeonly %secure_exec) unnamed_addr #0 align 64 {
entry:
  %perms = alloca %struct.aa_perms, align 4
  %xname = alloca ptr, align 4
  %info = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 13
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %file, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %perms) #8
  %2 = call ptr @memset(ptr %perms, i32 0, i32 44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xname) #8
  %3 = ptrtoint ptr %xname to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %xname, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info) #8
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.49, ptr %info, align 4
  %tobool.not = icmp eq ptr %profile, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !214

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 732, i32 noundef 9, ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.profile_onexec) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %onexec, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !214

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 733, i32 noundef 9, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.profile_onexec) #8
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %tobool62.not = icmp eq ptr %bprm, null
  br i1 %tobool62.not, label %do.end80, label %if.end50.if.end86_crit_edge, !prof !214

if.end50.if.end86_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

do.end80:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 734, i32 noundef 9, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.profile_onexec) #8
  br label %if.end86

if.end86:                                         ; preds = %do.end80, %if.end50.if.end86_crit_edge
  %tobool98.not = icmp eq ptr %buffer, null
  br i1 %tobool98.not, label %do.end116, label %if.end86.if.end122_crit_edge, !prof !214

if.end86.if.end122_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

do.end116:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 735, i32 noundef 9, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.profile_onexec) #8
  br label %if.end122

if.end122:                                        ; preds = %do.end116, %if.end86.if.end122_crit_edge
  %mode = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 8
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp = icmp eq i32 %6, 3
  br i1 %cmp, label %if.end122.cleanup_crit_edge, label %if.end133

if.end122.cleanup_crit_edge:                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end133:                                        ; preds = %if.end122
  %file134 = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 8
  %7 = ptrtoint ptr %file134 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %file134, align 4
  %f_path = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 1
  %path_flags = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 9
  %9 = ptrtoint ptr %path_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %path_flags, align 4
  %disconnected = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 10
  %11 = ptrtoint ptr %disconnected to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %disconnected, align 4
  %call = call i32 @aa_path_name(ptr noundef %f_path, i32 noundef %10, ptr noundef %buffer, ptr noundef nonnull %xname, ptr noundef nonnull %info, ptr noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool135.not = icmp eq i32 %call, 0
  br i1 %tobool135.not, label %if.end165, label %if.then136

if.then136:                                       ; preds = %if.end133
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp138 = icmp eq i32 %14, 3
  br i1 %cmp138, label %if.then136.do.body141_crit_edge, label %lor.lhs.false

if.then136.do.body141_crit_edge:                  ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body141

lor.lhs.false:                                    ; preds = %if.then136
  %flags = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 25, i32 5
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool139.not = icmp eq i32 %and, 0
  br i1 %tobool139.not, label %lor.lhs.false.if.end164_crit_edge, label %lor.lhs.false.do.body141_crit_edge

lor.lhs.false.do.body141_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body141

lor.lhs.false.if.end164_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end164

do.body141:                                       ; preds = %lor.lhs.false.do.body141_crit_edge, %if.then136.do.body141_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_debug to i32))
  %17 = load i8, ptr @aa_g_debug, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool142.not = icmp eq i8 %17, 0
  br i1 %tobool142.not, label %do.body141.if.end164_crit_edge, label %do.body144

do.body141.if.end164_crit_edge:                   ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end164

do.body144:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @profile_onexec.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@profile_onexec, %land.lhs.true)) #8
          to label %if.end164 [label %land.lhs.true], !srcloc !223

land.lhs.true:                                    ; preds = %do.body144
  %call155 = call i32 @___ratelimit(ptr noundef nonnull @profile_onexec._rs, ptr noundef nonnull @__func__.profile_onexec) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %land.lhs.true.if.end164_crit_edge, label %if.then157

land.lhs.true.if.end164_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end164

if.then157:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @profile_onexec.descriptor, ptr noundef nonnull @.str.51) #8
  br label %if.end164

if.end164:                                        ; preds = %if.then157, %land.lhs.true.if.end164_crit_edge, %do.body144, %do.body141.if.end164_crit_edge, %lor.lhs.false.if.end164_crit_edge
  %error.0 = phi i32 [ %call, %lor.lhs.false.if.end164_crit_edge ], [ 0, %land.lhs.true.if.end164_crit_edge ], [ 0, %if.then157 ], [ 0, %do.body141.if.end164_crit_edge ], [ 0, %do.body144 ]
  %filename = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 14
  %18 = ptrtoint ptr %filename to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %filename, align 4
  %20 = ptrtoint ptr %xname to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %xname, align 4
  br label %audit

if.end165:                                        ; preds = %if.end133
  %dfa = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 13, i32 1
  %21 = ptrtoint ptr %dfa to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dfa, align 4
  %23 = ptrtoint ptr %xname to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xname, align 4
  %call167 = call i32 @aa_str_perms(ptr noundef %22, i32 noundef %1, ptr noundef %24, ptr noundef %cond, ptr noundef nonnull %perms) #8
  %25 = ptrtoint ptr %perms to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %perms, align 4
  %and168 = and i32 %26, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %tobool169.not = icmp eq i32 %and168, 0
  br i1 %tobool169.not, label %if.then170, label %if.end171

if.then170:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.52, ptr %info, align 4
  br label %audit

if.end171:                                        ; preds = %if.end165
  %28 = ptrtoint ptr %dfa to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dfa, align 4
  %call.i = call i32 @aa_dfa_next(ptr noundef %29, i32 noundef %call167, i8 noundef zeroext 0) #8
  %call176 = call fastcc i32 @change_profile_perms(ptr noundef %profile, ptr noundef %onexec, i1 noundef zeroext %stack, i32 noundef 536870912, i32 noundef %call.i, ptr noundef nonnull %perms)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.end181, label %if.then178

if.then178:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %perms to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %perms, align 4
  %and180 = and i32 %31, -536870913
  store i32 %and180, ptr %perms, align 4
  br label %audit

if.end181:                                        ; preds = %if.end171
  %xindex = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 10
  %32 = ptrtoint ptr %xindex to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %xindex, align 4
  %34 = and i16 %33, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool183.not = icmp eq i16 %34, 0
  br i1 %tobool183.not, label %if.then184, label %if.end181.audit_crit_edge

if.end181.audit_crit_edge:                        ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #10
  br label %audit

if.then184:                                       ; preds = %if.end181
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_debug to i32))
  %35 = load i8, ptr @aa_g_debug, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool185.not = icmp eq i8 %35, 0
  br i1 %tobool185.not, label %if.then184.if.end219_crit_edge, label %do.body187

if.then184.if.end219_crit_edge:                   ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end219

do.body187:                                       ; preds = %if.then184
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @profile_onexec.__UNIQUE_ID_ddebug591, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@profile_onexec, %if.then199)) #8
          to label %do.end202 [label %if.then199], !srcloc !223

if.then199:                                       ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %xname to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %xname, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @profile_onexec.__UNIQUE_ID_ddebug591, ptr noundef nonnull @.str.53, ptr noundef %37) #8
  br label %do.end202

do.end202:                                        ; preds = %if.then199, %do.body187
  call void @aa_label_printk(ptr noundef %onexec, i32 noundef 3264) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @profile_onexec.__UNIQUE_ID_ddebug592, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@profile_onexec, %if.then215)) #8
          to label %if.end219 [label %if.then215], !srcloc !223

if.then215:                                       ; preds = %do.end202
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @profile_onexec.__UNIQUE_ID_ddebug592, ptr noundef nonnull @.str.11) #8
  br label %if.end219

if.end219:                                        ; preds = %if.then215, %do.end202, %if.then184.if.end219_crit_edge
  %38 = ptrtoint ptr %secure_exec to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %secure_exec, align 1
  br label %audit

audit:                                            ; preds = %if.end219, %if.end181.audit_crit_edge, %if.then178, %if.then170, %if.end164
  %error.1 = phi i32 [ %error.0, %if.end164 ], [ %call176, %if.then178 ], [ 0, %if.end181.audit_crit_edge ], [ 0, %if.end219 ], [ 0, %if.then170 ]
  %39 = ptrtoint ptr %xname to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %xname, align 4
  %41 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %info, align 4
  %43 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %43)
  %.unpack = load i32, ptr %cond, align 4
  %44 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call221 = call i32 @aa_audit_file(ptr noundef %profile, ptr noundef nonnull %perms, ptr noundef nonnull @.str.13, i32 noundef 536870912, ptr noundef %40, ptr noundef null, ptr noundef %onexec, [1 x i32] %44, ptr noundef %42, i32 noundef %error.1) #8
  br label %cleanup

cleanup:                                          ; preds = %audit, %if.end122.cleanup_crit_edge
  %retval.0 = phi i32 [ %call221, %audit ], [ 0, %if.end122.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xname) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %perms) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_path_name(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_str_perms(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @change_profile_perms(ptr noundef %profile, ptr nocapture noundef readonly %target, i1 noundef zeroext %stack, i32 noundef %request, i32 noundef %start, ptr noundef %perms) unnamed_addr #0 align 64 {
entry:
  %tmp.i1.i = alloca %struct.aa_perms, align 4
  %cond.i2.i = alloca %struct.path_cond, align 8
  %tmp32.i.i = alloca %struct.aa_perms, align 4
  %cond.i.i = alloca %struct.path_cond, align 8
  %tmp.i.i = alloca %struct.aa_perms, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 8
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %perms to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1610612736, ptr %perms, align 4
  %kill = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 4
  %3 = ptrtoint ptr %kill to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %kill, align 4
  %quiet = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 3
  %4 = ptrtoint ptr %quiet to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %quiet, align 4
  %audit = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 1
  %5 = ptrtoint ptr %audit to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %audit, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = call ptr @memcpy(ptr %perms, ptr @nullperms, i32 44)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cond.i.i) #8
  %7 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %cond.i.i, align 8
  %arrayidx22.i.i = getelementptr %struct.aa_label, ptr %target, i32 0, i32 8, i32 0
  %8 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx22.i.i, align 4
  %tobool.not23.i.i = icmp eq ptr %9, null
  br i1 %tobool.not23.i.i, label %if.end.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end.for.end.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end
  %ns.i.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %10 = phi ptr [ %9, %for.body.lr.ph.i.i ], [ %34, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.sroa.0.024.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %11 = ptrtoint ptr %ns.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ns.i.i, align 4
  %ns4.i.i = getelementptr inbounds %struct.aa_profile, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %ns4.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ns4.i.i, align 4
  %call.i.i = tail call zeroext i1 @aa_ns_visible(ptr noundef %12, ptr noundef %14, i1 noundef zeroext true) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %ns4.i.i.le = getelementptr inbounds %struct.aa_profile, ptr %10, i32 0, i32 2
  br i1 %stack, label %if.then.i.i.i, label %if.end.i.i.if.end.i.i.i_crit_edge

if.end.i.i.if.end.i.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dfa.i.i.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 13, i32 1
  %15 = ptrtoint ptr %dfa.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dfa.i.i.i, align 4
  %call.i.i.i = tail call i32 @aa_dfa_match(ptr noundef %16, i32 noundef %start, ptr noundef nonnull @.str.55) #8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.end.i.i.if.end.i.i.i_crit_edge
  %state.addr.0.i.i.i = phi i32 [ %call.i.i.i, %if.then.i.i.i ], [ %start, %if.end.i.i.if.end.i.i.i_crit_edge ]
  %17 = ptrtoint ptr %ns.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ns.i.i, align 4
  %19 = ptrtoint ptr %ns4.i.i.le to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ns4.i.i.le, align 4
  %cmp.i.i.i = icmp eq ptr %18, %20
  br i1 %cmp.i.i.i, label %if.then2.i.i.i, label %if.end6.i.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dfa4.i.i.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 13, i32 1
  br label %match_component.exit.i.i

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i.i.i = tail call ptr @aa_ns_name(ptr noundef %18, ptr noundef %20, i1 noundef zeroext true) #8
  %dfa11.i.i.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 13, i32 1
  %21 = ptrtoint ptr %dfa11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dfa11.i.i.i, align 4
  %call12.i.i.i = tail call i32 @aa_dfa_match_len(ptr noundef %22, i32 noundef %state.addr.0.i.i.i, ptr noundef nonnull @.str.56, i32 noundef 1) #8
  %23 = ptrtoint ptr %dfa11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dfa11.i.i.i, align 4
  %call15.i.i.i = tail call i32 @aa_dfa_match(ptr noundef %24, i32 noundef %call12.i.i.i, ptr noundef %call9.i.i.i) #8
  %25 = ptrtoint ptr %dfa11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dfa11.i.i.i, align 4
  %call18.i.i.i = tail call i32 @aa_dfa_match_len(ptr noundef %26, i32 noundef %call15.i.i.i, ptr noundef nonnull @.str.56, i32 noundef 1) #8
  br label %match_component.exit.i.i

match_component.exit.i.i:                         ; preds = %if.end6.i.i.i, %if.then2.i.i.i
  %dfa11.sink.i.i.i = phi ptr [ %dfa11.i.i.i, %if.end6.i.i.i ], [ %dfa4.i.i.i, %if.then2.i.i.i ]
  %call18.sink.i.i.i = phi i32 [ %call18.i.i.i, %if.end6.i.i.i ], [ %state.addr.0.i.i.i, %if.then2.i.i.i ]
  %27 = ptrtoint ptr %dfa11.sink.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dfa11.sink.i.i.i, align 4
  %hname22.i.i.i = getelementptr inbounds %struct.aa_policy, ptr %10, i32 0, i32 1
  %29 = ptrtoint ptr %hname22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hname22.i.i.i, align 4
  %call23.i.i.i = tail call i32 @aa_dfa_match(ptr noundef %28, i32 noundef %call18.sink.i.i.i, ptr noundef %30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i.i)
  %tobool8.not.i.i = icmp eq i32 %call23.i.i.i, 0
  br i1 %tobool8.not.i.i, label %match_component.exit.i.i.fail.i.i_crit_edge, label %for.cond14.preheader.i.i

match_component.exit.i.i.fail.i.i_crit_edge:      ; preds = %match_component.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail.i.i

for.cond14.preheader.i.i:                         ; preds = %match_component.exit.i.i
  %i.sroa.0.125.i.i = add i32 %i.sroa.0.024.i.i, 1
  %arrayidx1726.i.i = getelementptr %struct.aa_label, ptr %target, i32 0, i32 8, i32 %i.sroa.0.125.i.i
  %31 = ptrtoint ptr %arrayidx1726.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx1726.i.i, align 4
  %tobool18.not27.i.i = icmp eq ptr %32, null
  br i1 %tobool18.not27.i.i, label %for.cond14.preheader.i.i.for.end34.i.i_crit_edge, label %for.body19.lr.ph.i.i

for.cond14.preheader.i.i.for.end34.i.i_crit_edge: ; preds = %for.cond14.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end34.i.i

for.body19.lr.ph.i.i:                             ; preds = %for.cond14.preheader.i.i
  %dfa.i.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 13, i32 1
  br label %for.body19.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add i32 %i.sroa.0.024.i.i, 1
  %arrayidx.i.i = getelementptr %struct.aa_label, ptr %target, i32 0, i32 8, i32 %inc.i.i
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.end.for.end.i.i_crit_edge
  %35 = call ptr @memcpy(ptr %perms, ptr @allperms, i32 44)
  br label %label_compound_match.exit.thread.i

for.body19.i.i:                                   ; preds = %for.inc31.i.i.for.body19.i.i_crit_edge, %for.body19.lr.ph.i.i
  %36 = phi ptr [ %32, %for.body19.lr.ph.i.i ], [ %58, %for.inc31.i.i.for.body19.i.i_crit_edge ]
  %i.sroa.0.129.i.i = phi i32 [ %i.sroa.0.125.i.i, %for.body19.lr.ph.i.i ], [ %i.sroa.0.1.i.i, %for.inc31.i.i.for.body19.i.i_crit_edge ]
  %state.addr.028.i.i = phi i32 [ %call23.i.i.i, %for.body19.lr.ph.i.i ], [ %state.addr.1.i.i, %for.inc31.i.i.for.body19.i.i_crit_edge ]
  %37 = ptrtoint ptr %ns.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ns.i.i, align 4
  %ns21.i.i = getelementptr inbounds %struct.aa_profile, ptr %36, i32 0, i32 2
  %39 = ptrtoint ptr %ns21.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ns21.i.i, align 4
  %call23.i.i = tail call zeroext i1 @aa_ns_visible(ptr noundef %38, ptr noundef %40, i1 noundef zeroext true) #8
  br i1 %call23.i.i, label %if.end25.i.i, label %for.body19.i.i.for.inc31.i.i_crit_edge

for.body19.i.i.for.inc31.i.i_crit_edge:           ; preds = %for.body19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc31.i.i

if.end25.i.i:                                     ; preds = %for.body19.i.i
  %41 = ptrtoint ptr %dfa.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dfa.i.i, align 4
  %call26.i.i = tail call i32 @aa_dfa_match(ptr noundef %42, i32 noundef %state.addr.028.i.i, ptr noundef nonnull @.str.54) #8
  %43 = ptrtoint ptr %ns.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ns.i.i, align 4
  %45 = ptrtoint ptr %ns21.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ns21.i.i, align 4
  %cmp.i4.i.i = icmp eq ptr %44, %46
  br i1 %cmp.i4.i.i, label %if.end25.i.i.match_component.exit18.i.i_crit_edge, label %if.end6.i13.i.i

if.end25.i.i.match_component.exit18.i.i_crit_edge: ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %match_component.exit18.i.i

if.end6.i13.i.i:                                  ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i8.i.i = tail call ptr @aa_ns_name(ptr noundef %44, ptr noundef %46, i1 noundef zeroext true) #8
  %47 = ptrtoint ptr %dfa.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dfa.i.i, align 4
  %call12.i10.i.i = tail call i32 @aa_dfa_match_len(ptr noundef %48, i32 noundef %call26.i.i, ptr noundef nonnull @.str.56, i32 noundef 1) #8
  %49 = ptrtoint ptr %dfa.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dfa.i.i, align 4
  %call15.i11.i.i = tail call i32 @aa_dfa_match(ptr noundef %50, i32 noundef %call12.i10.i.i, ptr noundef %call9.i8.i.i) #8
  %51 = ptrtoint ptr %dfa.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dfa.i.i, align 4
  %call18.i12.i.i = tail call i32 @aa_dfa_match_len(ptr noundef %52, i32 noundef %call15.i11.i.i, ptr noundef nonnull @.str.56, i32 noundef 1) #8
  br label %match_component.exit18.i.i

match_component.exit18.i.i:                       ; preds = %if.end6.i13.i.i, %if.end25.i.i.match_component.exit18.i.i_crit_edge
  %call18.sink.i15.i.i = phi i32 [ %call18.i12.i.i, %if.end6.i13.i.i ], [ %call26.i.i, %if.end25.i.i.match_component.exit18.i.i_crit_edge ]
  %53 = ptrtoint ptr %dfa.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dfa.i.i, align 4
  %hname22.i16.i.i = getelementptr inbounds %struct.aa_policy, ptr %36, i32 0, i32 1
  %55 = ptrtoint ptr %hname22.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hname22.i16.i.i, align 4
  %call23.i17.i.i = tail call i32 @aa_dfa_match(ptr noundef %54, i32 noundef %call18.sink.i15.i.i, ptr noundef %56) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i17.i.i)
  %tobool28.not.i.i = icmp eq i32 %call23.i17.i.i, 0
  br i1 %tobool28.not.i.i, label %match_component.exit18.i.i.fail.i.i_crit_edge, label %match_component.exit18.i.i.for.inc31.i.i_crit_edge

match_component.exit18.i.i.for.inc31.i.i_crit_edge: ; preds = %match_component.exit18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc31.i.i

match_component.exit18.i.i.fail.i.i_crit_edge:    ; preds = %match_component.exit18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail.i.i

for.inc31.i.i:                                    ; preds = %match_component.exit18.i.i.for.inc31.i.i_crit_edge, %for.body19.i.i.for.inc31.i.i_crit_edge
  %state.addr.1.i.i = phi i32 [ %call23.i17.i.i, %match_component.exit18.i.i.for.inc31.i.i_crit_edge ], [ %state.addr.028.i.i, %for.body19.i.i.for.inc31.i.i_crit_edge ]
  %i.sroa.0.1.i.i = add i32 %i.sroa.0.129.i.i, 1
  %arrayidx17.i.i = getelementptr %struct.aa_label, ptr %target, i32 0, i32 8, i32 %i.sroa.0.1.i.i
  %57 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx17.i.i, align 4
  %tobool18.not.i.i = icmp eq ptr %58, null
  br i1 %tobool18.not.i.i, label %for.inc31.i.i.for.end34.i.i_crit_edge, label %for.inc31.i.i.for.body19.i.i_crit_edge

for.inc31.i.i.for.body19.i.i_crit_edge:           ; preds = %for.inc31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body19.i.i

for.inc31.i.i.for.end34.i.i_crit_edge:            ; preds = %for.inc31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end34.i.i

for.end34.i.i:                                    ; preds = %for.inc31.i.i.for.end34.i.i_crit_edge, %for.cond14.preheader.i.i.for.end34.i.i_crit_edge
  %state.addr.0.lcssa.i.i = phi i32 [ %call23.i.i.i, %for.cond14.preheader.i.i.for.end34.i.i_crit_edge ], [ %state.addr.1.i.i, %for.inc31.i.i.for.end34.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i.i) #8
  %dfa36.i.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 13, i32 1
  %59 = ptrtoint ptr %dfa36.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dfa36.i.i, align 4
  call void @aa_compute_fperms(ptr nonnull sret(%struct.aa_perms) align 4 %tmp.i.i, ptr noundef %60, i32 noundef %state.addr.0.lcssa.i.i, ptr noundef nonnull %cond.i.i) #8
  %61 = call ptr @memcpy(ptr %perms, ptr %tmp.i.i, i32 44)
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i.i) #8
  call void @aa_apply_modes_to_perms(ptr noundef %profile, ptr noundef %perms) #8
  %62 = ptrtoint ptr %perms to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %perms, align 4
  %and.i.i = and i32 %63, %request
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %request)
  %cmp.not.i.i = icmp eq i32 %and.i.i, %request
  br i1 %cmp.not.i.i, label %for.end34.i.i.label_compound_match.exit.thread.i_crit_edge, label %for.end34.i.i.if.end.i_crit_edge

for.end34.i.i.if.end.i_crit_edge:                 ; preds = %for.end34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

for.end34.i.i.label_compound_match.exit.thread.i_crit_edge: ; preds = %for.end34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %label_compound_match.exit.thread.i

fail.i.i:                                         ; preds = %match_component.exit18.i.i.fail.i.i_crit_edge, %match_component.exit.i.i.fail.i.i_crit_edge
  %64 = call ptr @memcpy(ptr %perms, ptr @nullperms, i32 44)
  br label %if.end.i

label_compound_match.exit.thread.i:               ; preds = %for.end34.i.i.label_compound_match.exit.thread.i_crit_edge, %for.end.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cond.i.i) #8
  br label %return

if.end.i:                                         ; preds = %fail.i.i, %for.end34.i.i.if.end.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cond.i.i) #8
  %65 = call ptr @memcpy(ptr %perms, ptr @allperms, i32 44)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i1.i) #8
  %66 = call ptr @memset(ptr %tmp.i1.i, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cond.i2.i) #8
  %67 = ptrtoint ptr %cond.i2.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 0, ptr %cond.i2.i, align 8
  %68 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx22.i.i, align 4
  %tobool.not25.i.i = icmp eq ptr %69, null
  br i1 %tobool.not25.i.i, label %if.end.i.label_components_match.exit.i_crit_edge, label %if.end.i.for.body.i7.i_crit_edge

if.end.i.for.body.i7.i_crit_edge:                 ; preds = %if.end.i
  br label %for.body.i7.i

if.end.i.label_components_match.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %label_components_match.exit.i

for.body.i7.i:                                    ; preds = %for.inc.i33.i.for.body.i7.i_crit_edge, %if.end.i.for.body.i7.i_crit_edge
  %70 = phi ptr [ %92, %for.inc.i33.i.for.body.i7.i_crit_edge ], [ %69, %if.end.i.for.body.i7.i_crit_edge ]
  %i.sroa.0.026.i.i = phi i32 [ %inc.i30.i, %for.inc.i33.i.for.body.i7.i_crit_edge ], [ 0, %if.end.i.for.body.i7.i_crit_edge ]
  %71 = ptrtoint ptr %ns.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ns.i.i, align 4
  %ns4.i5.i = getelementptr inbounds %struct.aa_profile, ptr %70, i32 0, i32 2
  %73 = ptrtoint ptr %ns4.i5.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ns4.i5.i, align 4
  %call.i6.i = call zeroext i1 @aa_ns_visible(ptr noundef %72, ptr noundef %74, i1 noundef zeroext true) #8
  br i1 %call.i6.i, label %if.end.i9.i, label %for.inc.i33.i

if.end.i9.i:                                      ; preds = %for.body.i7.i
  %ns4.i5.i.le = getelementptr inbounds %struct.aa_profile, ptr %70, i32 0, i32 2
  br i1 %stack, label %if.then.i.i12.i, label %if.end.i9.i.if.end.i.i15.i_crit_edge

if.end.i9.i.if.end.i.i15.i_crit_edge:             ; preds = %if.end.i9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i15.i

if.then.i.i12.i:                                  ; preds = %if.end.i9.i
  call void @__sanitizer_cov_trace_pc() #10
  %dfa.i.i10.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 13, i32 1
  %75 = ptrtoint ptr %dfa.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dfa.i.i10.i, align 4
  %call.i.i11.i = call i32 @aa_dfa_match(ptr noundef %76, i32 noundef %start, ptr noundef nonnull @.str.55) #8
  br label %if.end.i.i15.i

if.end.i.i15.i:                                   ; preds = %if.then.i.i12.i, %if.end.i9.i.if.end.i.i15.i_crit_edge
  %state.addr.0.i.i13.i = phi i32 [ %call.i.i11.i, %if.then.i.i12.i ], [ %start, %if.end.i9.i.if.end.i.i15.i_crit_edge ]
  %77 = ptrtoint ptr %ns.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ns.i.i, align 4
  %79 = ptrtoint ptr %ns4.i5.i.le to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ns4.i5.i.le, align 4
  %cmp.i.i14.i = icmp eq ptr %78, %80
  br i1 %cmp.i.i14.i, label %if.then2.i.i17.i, label %if.end6.i.i23.i

if.then2.i.i17.i:                                 ; preds = %if.end.i.i15.i
  call void @__sanitizer_cov_trace_pc() #10
  %dfa4.i.i16.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 13, i32 1
  br label %match_component.exit.i29.i

if.end6.i.i23.i:                                  ; preds = %if.end.i.i15.i
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i.i18.i = call ptr @aa_ns_name(ptr noundef %78, ptr noundef %80, i1 noundef zeroext true) #8
  %dfa11.i.i19.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 13, i32 1
  %81 = ptrtoint ptr %dfa11.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dfa11.i.i19.i, align 4
  %call12.i.i20.i = call i32 @aa_dfa_match_len(ptr noundef %82, i32 noundef %state.addr.0.i.i13.i, ptr noundef nonnull @.str.56, i32 noundef 1) #8
  %83 = ptrtoint ptr %dfa11.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dfa11.i.i19.i, align 4
  %call15.i.i21.i = call i32 @aa_dfa_match(ptr noundef %84, i32 noundef %call12.i.i20.i, ptr noundef %call9.i.i18.i) #8
  %85 = ptrtoint ptr %dfa11.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dfa11.i.i19.i, align 4
  %call18.i.i22.i = call i32 @aa_dfa_match_len(ptr noundef %86, i32 noundef %call15.i.i21.i, ptr noundef nonnull @.str.56, i32 noundef 1) #8
  br label %match_component.exit.i29.i

match_component.exit.i29.i:                       ; preds = %if.end6.i.i23.i, %if.then2.i.i17.i
  %dfa11.sink.i.i24.i = phi ptr [ %dfa11.i.i19.i, %if.end6.i.i23.i ], [ %dfa4.i.i16.i, %if.then2.i.i17.i ]
  %call18.sink.i.i25.i = phi i32 [ %call18.i.i22.i, %if.end6.i.i23.i ], [ %state.addr.0.i.i13.i, %if.then2.i.i17.i ]
  %87 = ptrtoint ptr %dfa11.sink.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dfa11.sink.i.i24.i, align 4
  %hname22.i.i26.i = getelementptr inbounds %struct.aa_policy, ptr %70, i32 0, i32 1
  %89 = ptrtoint ptr %hname22.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hname22.i.i26.i, align 4
  %call23.i.i27.i = call i32 @aa_dfa_match(ptr noundef %88, i32 noundef %call18.sink.i.i25.i, ptr noundef %90) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i27.i)
  %tobool8.not.i28.i = icmp eq i32 %call23.i.i27.i, 0
  br i1 %tobool8.not.i28.i, label %match_component.exit.i29.i.fail.i39.i_crit_edge, label %next.i.i

match_component.exit.i29.i.fail.i39.i_crit_edge:  ; preds = %match_component.exit.i29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail.i39.i

for.inc.i33.i:                                    ; preds = %for.body.i7.i
  %inc.i30.i = add i32 %i.sroa.0.026.i.i, 1
  %arrayidx.i31.i = getelementptr %struct.aa_label, ptr %target, i32 0, i32 8, i32 %inc.i30.i
  %91 = ptrtoint ptr %arrayidx.i31.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx.i31.i, align 4
  %tobool.not.i32.i = icmp eq ptr %92, null
  br i1 %tobool.not.i32.i, label %for.inc.i33.i.label_components_match.exit.i_crit_edge, label %for.inc.i33.i.for.body.i7.i_crit_edge

for.inc.i33.i.for.body.i7.i_crit_edge:            ; preds = %for.inc.i33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i7.i

for.inc.i33.i.label_components_match.exit.i_crit_edge: ; preds = %for.inc.i33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %label_components_match.exit.i

next.i.i:                                         ; preds = %match_component.exit.i29.i
  %dfa.i34.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 13, i32 1
  %93 = ptrtoint ptr %dfa.i34.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dfa.i34.i, align 4
  call void @aa_compute_fperms(ptr nonnull sret(%struct.aa_perms) align 4 %tmp.i1.i, ptr noundef %94, i32 noundef %call23.i.i27.i, ptr noundef nonnull %cond.i2.i) #8
  call void @aa_apply_modes_to_perms(ptr noundef %profile, ptr noundef nonnull %tmp.i1.i) #8
  call void @aa_perms_accum(ptr noundef %perms, ptr noundef nonnull %tmp.i1.i) #8
  %i.sroa.0.127.i.i = add i32 %i.sroa.0.026.i.i, 1
  %arrayidx1828.i.i = getelementptr %struct.aa_label, ptr %target, i32 0, i32 8, i32 %i.sroa.0.127.i.i
  %95 = ptrtoint ptr %arrayidx1828.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx1828.i.i, align 4
  %tobool19.not29.i.i = icmp eq ptr %96, null
  br i1 %tobool19.not29.i.i, label %next.i.i.for.end38.i.i_crit_edge, label %next.i.i.for.body20.i.i_crit_edge

next.i.i.for.body20.i.i_crit_edge:                ; preds = %next.i.i
  br label %for.body20.i.i

next.i.i.for.end38.i.i_crit_edge:                 ; preds = %next.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end38.i.i

for.body20.i.i:                                   ; preds = %for.inc35.i.i.for.body20.i.i_crit_edge, %next.i.i.for.body20.i.i_crit_edge
  %97 = phi ptr [ %122, %for.inc35.i.i.for.body20.i.i_crit_edge ], [ %96, %next.i.i.for.body20.i.i_crit_edge ]
  %i.sroa.0.130.i.i = phi i32 [ %i.sroa.0.1.i35.i, %for.inc35.i.i.for.body20.i.i_crit_edge ], [ %i.sroa.0.127.i.i, %next.i.i.for.body20.i.i_crit_edge ]
  %98 = ptrtoint ptr %ns.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ns.i.i, align 4
  %ns22.i.i = getelementptr inbounds %struct.aa_profile, ptr %97, i32 0, i32 2
  %100 = ptrtoint ptr %ns22.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ns22.i.i, align 4
  %call24.i.i = call zeroext i1 @aa_ns_visible(ptr noundef %99, ptr noundef %101, i1 noundef zeroext true) #8
  br i1 %call24.i.i, label %if.end26.i.i, label %for.body20.i.i.for.inc35.i.i_crit_edge

for.body20.i.i.for.inc35.i.i_crit_edge:           ; preds = %for.body20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc35.i.i

if.end26.i.i:                                     ; preds = %for.body20.i.i
  br i1 %stack, label %if.then.i3.i.i, label %if.end26.i.i.if.end.i8.i.i_crit_edge

if.end26.i.i.if.end.i8.i.i_crit_edge:             ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i8.i.i

if.then.i3.i.i:                                   ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %dfa.i34.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dfa.i34.i, align 4
  %call.i2.i.i = call i32 @aa_dfa_match(ptr noundef %103, i32 noundef %start, ptr noundef nonnull @.str.55) #8
  br label %if.end.i8.i.i

if.end.i8.i.i:                                    ; preds = %if.then.i3.i.i, %if.end26.i.i.if.end.i8.i.i_crit_edge
  %state.addr.0.i4.i.i = phi i32 [ %call.i2.i.i, %if.then.i3.i.i ], [ %start, %if.end26.i.i.if.end.i8.i.i_crit_edge ]
  %104 = ptrtoint ptr %ns.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ns.i.i, align 4
  %106 = ptrtoint ptr %ns22.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ns22.i.i, align 4
  %cmp.i7.i.i = icmp eq ptr %105, %107
  br i1 %cmp.i7.i.i, label %if.end.i8.i.i.match_component.exit21.i.i_crit_edge, label %if.end6.i16.i.i

if.end.i8.i.i.match_component.exit21.i.i_crit_edge: ; preds = %if.end.i8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %match_component.exit21.i.i

if.end6.i16.i.i:                                  ; preds = %if.end.i8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i11.i.i = call ptr @aa_ns_name(ptr noundef %105, ptr noundef %107, i1 noundef zeroext true) #8
  %108 = ptrtoint ptr %dfa.i34.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dfa.i34.i, align 4
  %call12.i13.i.i = call i32 @aa_dfa_match_len(ptr noundef %109, i32 noundef %state.addr.0.i4.i.i, ptr noundef nonnull @.str.56, i32 noundef 1) #8
  %110 = ptrtoint ptr %dfa.i34.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dfa.i34.i, align 4
  %call15.i14.i.i = call i32 @aa_dfa_match(ptr noundef %111, i32 noundef %call12.i13.i.i, ptr noundef %call9.i11.i.i) #8
  %112 = ptrtoint ptr %dfa.i34.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dfa.i34.i, align 4
  %call18.i15.i.i = call i32 @aa_dfa_match_len(ptr noundef %113, i32 noundef %call15.i14.i.i, ptr noundef nonnull @.str.56, i32 noundef 1) #8
  br label %match_component.exit21.i.i

match_component.exit21.i.i:                       ; preds = %if.end6.i16.i.i, %if.end.i8.i.i.match_component.exit21.i.i_crit_edge
  %call18.sink.i18.i.i = phi i32 [ %call18.i15.i.i, %if.end6.i16.i.i ], [ %state.addr.0.i4.i.i, %if.end.i8.i.i.match_component.exit21.i.i_crit_edge ]
  %114 = ptrtoint ptr %dfa.i34.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dfa.i34.i, align 4
  %hname22.i19.i.i = getelementptr inbounds %struct.aa_policy, ptr %97, i32 0, i32 1
  %116 = ptrtoint ptr %hname22.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hname22.i19.i.i, align 4
  %call23.i20.i.i = call i32 @aa_dfa_match(ptr noundef %115, i32 noundef %call18.sink.i18.i.i, ptr noundef %117) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i20.i.i)
  %tobool29.not.i.i = icmp eq i32 %call23.i20.i.i, 0
  br i1 %tobool29.not.i.i, label %match_component.exit21.i.i.fail.i39.i_crit_edge, label %if.end31.i.i

match_component.exit21.i.i.fail.i39.i_crit_edge:  ; preds = %match_component.exit21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail.i39.i

if.end31.i.i:                                     ; preds = %match_component.exit21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp32.i.i) #8
  %118 = ptrtoint ptr %dfa.i34.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dfa.i34.i, align 4
  call void @aa_compute_fperms(ptr nonnull sret(%struct.aa_perms) align 4 %tmp32.i.i, ptr noundef %119, i32 noundef %call23.i20.i.i, ptr noundef nonnull %cond.i2.i) #8
  %120 = call ptr @memcpy(ptr %tmp.i1.i, ptr %tmp32.i.i, i32 44)
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp32.i.i) #8
  call void @aa_apply_modes_to_perms(ptr noundef %profile, ptr noundef nonnull %tmp.i1.i) #8
  call void @aa_perms_accum(ptr noundef %perms, ptr noundef nonnull %tmp.i1.i) #8
  br label %for.inc35.i.i

for.inc35.i.i:                                    ; preds = %if.end31.i.i, %for.body20.i.i.for.inc35.i.i_crit_edge
  %i.sroa.0.1.i35.i = add i32 %i.sroa.0.130.i.i, 1
  %arrayidx18.i.i = getelementptr %struct.aa_label, ptr %target, i32 0, i32 8, i32 %i.sroa.0.1.i35.i
  %121 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx18.i.i, align 4
  %tobool19.not.i.i = icmp eq ptr %122, null
  br i1 %tobool19.not.i.i, label %for.inc35.i.i.for.end38.i.i_crit_edge, label %for.inc35.i.i.for.body20.i.i_crit_edge

for.inc35.i.i.for.body20.i.i_crit_edge:           ; preds = %for.inc35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body20.i.i

for.inc35.i.i.for.end38.i.i_crit_edge:            ; preds = %for.inc35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end38.i.i

for.end38.i.i:                                    ; preds = %for.inc35.i.i.for.end38.i.i_crit_edge, %next.i.i.for.end38.i.i_crit_edge
  %123 = ptrtoint ptr %perms to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %perms, align 4
  %and.i36.i = and i32 %124, %request
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i36.i, i32 %request)
  %cmp.not.i37.i = icmp eq i32 %and.i36.i, %request
  %..i38.i = select i1 %cmp.not.i37.i, i32 0, i32 -13
  br label %label_components_match.exit.i

fail.i39.i:                                       ; preds = %match_component.exit21.i.i.fail.i39.i_crit_edge, %match_component.exit.i29.i.fail.i39.i_crit_edge
  %125 = call ptr @memcpy(ptr %perms, ptr @nullperms, i32 44)
  br label %label_components_match.exit.i

label_components_match.exit.i:                    ; preds = %fail.i39.i, %for.end38.i.i, %for.inc.i33.i.label_components_match.exit.i_crit_edge, %if.end.i.label_components_match.exit.i_crit_edge
  %retval.0.i40.i = phi i32 [ -13, %fail.i39.i ], [ %..i38.i, %for.end38.i.i ], [ 0, %if.end.i.label_components_match.exit.i_crit_edge ], [ 0, %for.inc.i33.i.label_components_match.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cond.i2.i) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i1.i) #8
  br label %return

return:                                           ; preds = %label_components_match.exit.i, %label_compound_match.exit.thread.i, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %retval.0.i40.i, %label_components_match.exit.i ], [ 0, %label_compound_match.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_dfa_next(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @aa_ns_visible(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_dfa_match(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_compute_fperms(ptr sret(%struct.aa_perms) align 4, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_apply_modes_to_perms(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aa_ns_name(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_dfa_match_len(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_perms_accum(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_attach(ptr noundef readonly %bprm, ptr noundef %ns, ptr noundef %head, ptr noundef %name, ptr nocapture noundef writeonly %info) unnamed_addr #0 align 64 {
entry:
  %value.i = alloca ptr, align 4
  %old.i.i.i.i.i = alloca i32, align 4
  %count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !214

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 396, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.find_attach) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %head, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !214

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 397, i32 noundef 9, ptr noundef nonnull @.str.66, ptr noundef nonnull @__func__.find_attach) #8
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %0 = tail call i32 @llvm.read_register.i32(metadata !204) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !224
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end50.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end50.rcu_read_lock.exit_crit_edge:            ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end50
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 696, ptr noundef nonnull @.str.41) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end50.rcu_read_lock.exit_crit_edge
  %tobool103.not = icmp eq ptr %bprm, null
  %revision = getelementptr inbounds %struct.aa_ns, ptr %ns, i32 0, i32 9
  %file.i = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 8
  br label %restart

restart.critedge:                                 ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #8
  br label %restart.backedge

restart.backedge:                                 ; preds = %restart.critedge321, %restart.critedge320, %restart.critedge
  br label %restart

restart.critedge320:                              ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #8
  br label %restart.backedge

restart.critedge321:                              ; preds = %aa_put_profile.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #8
  br label %restart.backedge

restart:                                          ; preds = %restart.backedge, %rcu_read_lock.exit
  %candidate.0 = phi ptr [ null, %rcu_read_lock.exit ], [ %candidate.1349, %restart.backedge ]
  %conflict.0.off0 = phi i1 [ false, %rcu_read_lock.exit ], [ %conflict.1.off0352, %restart.backedge ]
  %candidate_xattrs.0 = phi i32 [ 0, %rcu_read_lock.exit ], [ %candidate_xattrs.1354, %restart.backedge ]
  %candidate_len.0 = phi i32 [ 0, %rcu_read_lock.exit ], [ %candidate_len.1357, %restart.backedge ]
  %call = call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool61.not = icmp eq i32 %call, 0
  br i1 %tobool61.not, label %land.lhs.true, label %restart.do.end69_crit_edge

restart.do.end69_crit_edge:                       ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end69

land.lhs.true:                                    ; preds = %restart
  %call62 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %land.lhs.true.do.end69_crit_edge, label %land.lhs.true64

land.lhs.true.do.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end69

land.lhs.true64:                                  ; preds = %land.lhs.true
  %.b226 = load i1, ptr @find_attach.__warned, align 1
  br i1 %.b226, label %land.lhs.true64.do.end69_crit_edge, label %if.then66

land.lhs.true64.do.end69_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end69

if.then66:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @find_attach.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 401, ptr noundef nonnull @.str.67) #8
  br label %do.end69

do.end69:                                         ; preds = %if.then66, %land.lhs.true64.do.end69_crit_edge, %land.lhs.true.do.end69_crit_edge, %restart.do.end69_crit_edge
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn346 = load volatile ptr, ptr %head, align 4
  %cmp.not348 = icmp eq ptr %.pn346, %head
  br i1 %cmp.not348, label %do.end69.for.end_crit_edge, label %do.end69.for.body_crit_edge

do.end69.for.body_crit_edge:                      ; preds = %do.end69
  br label %for.body

do.end69.for.end_crit_edge:                       ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end69.for.body_crit_edge
  %.pn360 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn346, %do.end69.for.body_crit_edge ]
  %candidate_len.1357 = phi i32 [ %candidate_len.5, %for.inc.for.body_crit_edge ], [ %candidate_len.0, %do.end69.for.body_crit_edge ]
  %candidate_xattrs.1354 = phi i32 [ %candidate_xattrs.5, %for.inc.for.body_crit_edge ], [ %candidate_xattrs.0, %do.end69.for.body_crit_edge ]
  %conflict.1.off0352 = phi i1 [ %conflict.6.off0, %for.inc.for.body_crit_edge ], [ %conflict.0.off0, %do.end69.for.body_crit_edge ]
  %candidate.1349 = phi ptr [ %candidate.5, %for.inc.for.body_crit_edge ], [ %candidate.0, %do.end69.for.body_crit_edge ]
  %profile.0361 = getelementptr i8, ptr %.pn360, i32 -8
  %flags = getelementptr i8, ptr %.pn360, i32 428
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool75.not = icmp eq i32 %and, 0
  br i1 %tobool75.not, label %for.body.if.end82_crit_edge, label %land.lhs.true76

for.body.if.end82_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

land.lhs.true76:                                  ; preds = %for.body
  %label = getelementptr i8, ptr %.pn360, i32 396
  %ns78 = getelementptr i8, ptr %.pn360, i32 20
  %7 = ptrtoint ptr %ns78 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ns78, align 4
  %unconfined = getelementptr inbounds %struct.aa_ns, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %unconfined to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %unconfined, align 4
  %label79 = getelementptr inbounds %struct.aa_profile, ptr %10, i32 0, i32 25
  %cmp80 = icmp eq ptr %label, %label79
  br i1 %cmp80, label %land.lhs.true76.for.inc_crit_edge, label %land.lhs.true76.if.end82_crit_edge

land.lhs.true76.if.end82_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

land.lhs.true76.for.inc_crit_edge:                ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end82:                                         ; preds = %land.lhs.true76.if.end82_crit_edge, %for.body.if.end82_crit_edge
  %xmatch = getelementptr i8, ptr %.pn360, i32 32
  %11 = ptrtoint ptr %xmatch to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xmatch, align 4
  %tobool83.not = icmp eq ptr %12, null
  br i1 %tobool83.not, label %if.else, label %if.then84

if.then84:                                        ; preds = %if.end82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #8
  %13 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %count, align 4, !annotation !216
  %14 = ptrtoint ptr %xmatch to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xmatch, align 4
  %call86 = call i32 @aa_dfa_leftmatch(ptr noundef %15, i32 noundef 1, ptr noundef %name, ptr noundef nonnull %count) #8
  %16 = ptrtoint ptr %xmatch to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xmatch, align 4
  %tables = getelementptr inbounds %struct.aa_dfa, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %tables to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tables, align 4
  %td_data = getelementptr inbounds %struct.table_header, ptr %19, i32 0, i32 4
  %arrayidx88 = getelementptr i32, ptr %td_data, i32 %call86
  %20 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx88, align 4
  %and97 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.then84.cleanup140.thread_crit_edge, label %if.then99

if.then84.cleanup140.thread_crit_edge:            ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup140.thread

if.then99:                                        ; preds = %if.then84
  %22 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %candidate_len.1357)
  %cmp100 = icmp ult i32 %23, %candidate_len.1357
  br i1 %cmp100, label %if.then99.cleanup140.thread311_crit_edge, label %if.end102

if.then99.cleanup140.thread311_crit_edge:         ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup140.thread311

if.end102:                                        ; preds = %if.then99
  br i1 %tobool103.not, label %if.end102.if.end127_crit_edge, label %land.lhs.true104

if.end102.if.end127_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

land.lhs.true104:                                 ; preds = %if.end102
  %xattr_count = getelementptr i8, ptr %.pn360, i32 196
  %24 = ptrtoint ptr %xattr_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xattr_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool105.not = icmp eq i32 %25, 0
  br i1 %tobool105.not, label %land.lhs.true104.if.end127_crit_edge, label %if.then106

land.lhs.true104.if.end127_crit_edge:             ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

if.then106:                                       ; preds = %land.lhs.true104
  %26 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %revision, align 4
  %tobool.not.i239 = icmp eq ptr %profile.0361, null
  br i1 %tobool.not.i239, label %restart.critedge320, label %land.lhs.true.i240

land.lhs.true.i240:                               ; preds = %if.then106
  %label.i = getelementptr i8, ptr %.pn360, i32 396
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #8
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %label.i, i32 noundef 4) #8
  %28 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %label.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %land.lhs.true.i240
  %30 = phi i32 [ %29, %land.lhs.true.i240 ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %31 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i.i.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %30, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %label.i, i32 noundef 4) #8
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #8
  %32 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %label.i, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %34 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %label.i, ptr %label.i, i32 %33, i32 %add.i.i.i.i.i, ptr elementtype(i32) %label.i) #8, !srcloc !225
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %34, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %34, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %33
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !218

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %35 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %36, 1
  %37 = or i32 %add5.i.i.i.i.i, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %.not.i.i.i.i.i = icmp sgt i32 %37, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !218

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %label.i, i32 noundef 0) #8
  %38 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %39 = phi i32 [ %36, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %39, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #8
  br i1 %tobool12.i.i.i.i.not.i, label %restart.critedge, label %if.end114

if.end114:                                        ; preds = %kref_get_unless_zero.exit.i
  %call.i241 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i241, label %if.end114.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i244

if.end114.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i244:                               ; preds = %if.end114
  %call1.i242 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i242)
  %tobool.not.i243 = icmp eq i32 %call1.i242, 0
  br i1 %tobool.not.i243, label %land.lhs.true.i244.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i246

land.lhs.true.i244.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i244
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i246:                              ; preds = %land.lhs.true.i244
  %.b4.i245 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i245, label %land.lhs.true2.i246.rcu_read_unlock.exit_crit_edge, label %if.then.i247

land.lhs.true2.i246.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i246
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i247:                                     ; preds = %land.lhs.true2.i246
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 724, ptr noundef nonnull @.str.42) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i247, %land.lhs.true2.i246.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i244.rcu_read_unlock.exit_crit_edge, %if.end114.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !226
  %40 = call i32 @llvm.read_register.i32(metadata !204) #8
  %and.i.i.i.i.i248 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i248 to ptr
  %preempt_count.i.i.i.i249 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i249 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i249, align 4
  %sub.i.i.i = add i32 %43, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i249, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #8
  %44 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %value.i, align 4
  %45 = ptrtoint ptr %xattr_count to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %xattr_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool2.not.i = icmp eq i32 %46, 0
  br i1 %tobool2.not.i, label %rcu_read_unlock.exit.aa_xattrs_match.exit_crit_edge, label %do.body.i

rcu_read_unlock.exit.aa_xattrs_match.exit_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_xattrs_match.exit

do.body.i:                                        ; preds = %rcu_read_unlock.exit
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 322) #8
  %47 = ptrtoint ptr %xmatch to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %xmatch, align 4
  %call.i251 = call i32 @aa_dfa_outofband_transition(ptr noundef %48, i32 noundef %call86) #8
  %49 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %file.i, align 4
  %dentry.i = getelementptr inbounds %struct.file, ptr %50, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dentry.i, align 4
  %53 = ptrtoint ptr %xattr_count to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %xattr_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp71.i = icmp sgt i32 %54, 0
  br i1 %cmp71.i, label %for.body.lr.ph.i, label %do.body.i.out.i_crit_edge

do.body.i.out.i_crit_edge:                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

for.body.lr.ph.i:                                 ; preds = %do.body.i
  %xattrs.i = getelementptr i8, ptr %.pn360, i32 200
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ret.074.i = phi i32 [ %46, %for.body.lr.ph.i ], [ %ret.3.i, %for.inc.i.for.body.i_crit_edge ]
  %i.073.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %state.addr.072.i = phi i32 [ %call.i251, %for.body.lr.ph.i ], [ %call3070.i, %for.inc.i.for.body.i_crit_edge ]
  %55 = ptrtoint ptr %xattrs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %xattrs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %56, i32 %i.073.i
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i, align 4
  %call7.i = call i32 @vfs_getxattr_alloc(ptr noundef nonnull @init_user_ns, ptr noundef %52, ptr noundef %58, ptr noundef nonnull %value.i, i32 noundef 0, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7.i)
  %cmp8.i = icmp sgt i32 %call7.i, -1
  %59 = ptrtoint ptr %xmatch to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %xmatch, align 4
  br i1 %cmp8.i, label %if.then9.i, label %if.then32.i

if.then9.i:                                       ; preds = %for.body.i
  %call.i.i = call i32 @aa_dfa_next(ptr noundef %60, i32 noundef %state.addr.072.i, i8 noundef zeroext 0) #8
  %61 = ptrtoint ptr %xmatch to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %xmatch, align 4
  %63 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %value.i, align 4
  %call13.i = call i32 @aa_dfa_match_len(ptr noundef %62, i32 noundef %call.i.i, ptr noundef %64, i32 noundef %call7.i) #8
  %65 = ptrtoint ptr %xmatch to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %xmatch, align 4
  %tables.i = getelementptr inbounds %struct.aa_dfa, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %tables.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tables.i, align 4
  %td_data.i = getelementptr inbounds %struct.table_header, ptr %68, i32 0, i32 4
  %arrayidx16.i = getelementptr i32, ptr %td_data.i, i32 %call13.i
  %69 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx16.i, align 4
  %and24.i = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.then9.i.out.i_crit_edge, label %if.end28.i

if.then9.i.out.i_crit_edge:                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end28.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  %call30.i = call i32 @aa_dfa_outofband_transition(ptr noundef %66, i32 noundef %call13.i) #8
  br label %for.inc.i

if.then32.i:                                      ; preds = %for.body.i
  %call3066.i = call i32 @aa_dfa_outofband_transition(ptr noundef %60, i32 noundef %state.addr.072.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3066.i)
  %tobool33.not.i = icmp eq i32 %call3066.i, 0
  br i1 %tobool33.not.i, label %if.then32.i.out.i_crit_edge, label %if.end35.i

if.then32.i.out.i_crit_edge:                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end35.i:                                       ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i = add i32 %ret.074.i, -1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end35.i, %if.end28.i
  %call3070.i = phi i32 [ %call3066.i, %if.end35.i ], [ %call30.i, %if.end28.i ]
  %ret.3.i = phi i32 [ %dec.i, %if.end35.i ], [ %ret.074.i, %if.end28.i ]
  %inc.i = add nuw nsw i32 %i.073.i, 1
  %71 = ptrtoint ptr %xattr_count to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %xattr_count, align 4
  %cmp.i = icmp slt i32 %inc.i, %72
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.out.i_crit_edge

for.inc.i.out.i_crit_edge:                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

out.i:                                            ; preds = %for.inc.i.out.i_crit_edge, %if.then32.i.out.i_crit_edge, %if.then9.i.out.i_crit_edge, %do.body.i.out.i_crit_edge
  %ret.4.i = phi i32 [ %46, %do.body.i.out.i_crit_edge ], [ %ret.3.i, %for.inc.i.out.i_crit_edge ], [ -22, %if.then32.i.out.i_crit_edge ], [ -22, %if.then9.i.out.i_crit_edge ]
  %73 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %value.i, align 4
  call void @kfree(ptr noundef %74) #8
  br label %aa_xattrs_match.exit

aa_xattrs_match.exit:                             ; preds = %out.i, %rcu_read_unlock.exit.aa_xattrs_match.exit_crit_edge
  %retval.0.i252 = phi i32 [ %ret.4.i, %out.i ], [ 0, %rcu_read_unlock.exit.aa_xattrs_match.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  %75 = call i32 @llvm.read_register.i32(metadata !204) #8
  %and.i.i.i.i.i228 = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i.i.i228 to ptr
  %preempt_count.i.i.i.i229 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %preempt_count.i.i.i.i229 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %preempt_count.i.i.i.i229, align 4
  %add.i.i.i230 = add i32 %78, 1
  store volatile i32 %add.i.i.i230, ptr %preempt_count.i.i.i.i229, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !224
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i231 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i231, label %aa_xattrs_match.exit.if.then.i257_crit_edge, label %land.lhs.true.i234

aa_xattrs_match.exit.if.then.i257_crit_edge:      ; preds = %aa_xattrs_match.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i257

land.lhs.true.i234:                               ; preds = %aa_xattrs_match.exit
  %call1.i232 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i232)
  %tobool.not.i233 = icmp eq i32 %call1.i232, 0
  br i1 %tobool.not.i233, label %land.lhs.true.i234.if.then.i257_crit_edge, label %land.lhs.true2.i236

land.lhs.true.i234.if.then.i257_crit_edge:        ; preds = %land.lhs.true.i234
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i257

land.lhs.true2.i236:                              ; preds = %land.lhs.true.i234
  %.b4.i235 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i235, label %land.lhs.true2.i236.if.then.i257_crit_edge, label %if.then.i237

land.lhs.true2.i236.if.then.i257_crit_edge:       ; preds = %land.lhs.true2.i236
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i257

if.then.i237:                                     ; preds = %land.lhs.true2.i236
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 696, ptr noundef nonnull @.str.41) #8
  br label %if.then.i257

if.then.i257:                                     ; preds = %if.then.i237, %land.lhs.true2.i236.if.then.i257_crit_edge, %land.lhs.true.i234.if.then.i257_crit_edge, %aa_xattrs_match.exit.if.then.i257_crit_edge
  %call.i.i.i.i.i.i.i255 = call zeroext i1 @__kasan_check_write(ptr noundef %label.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  call void @llvm.prefetch.p0(ptr %label.i, i32 1, i32 3, i32 1) #8
  %79 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i, ptr %label.i, i32 1, ptr elementtype(i32) %label.i) #8, !srcloc !220
  %asmresult.i.i.i.i.i.i.i.i256 = extractvalue { i32, i32, i32 } %79, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i256)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i256, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i256)
  %.not.i.i.i.i.i258 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i256, 0
  br i1 %.not.i.i.i.i.i258, label %if.end5.i.i.i.i.i.aa_put_profile.exit_crit_edge, label %if.then10.i.i.i.i.i259, !prof !218

if.end5.i.i.i.i.i.aa_put_profile.exit_crit_edge:  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_put_profile.exit

if.then10.i.i.i.i.i259:                           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %label.i, i32 noundef 3) #8
  br label %aa_put_profile.exit

if.then.i.i:                                      ; preds = %if.then.i257
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !221
  call void @aa_label_kref(ptr noundef %label.i) #8
  br label %aa_put_profile.exit

aa_put_profile.exit:                              ; preds = %if.then.i.i, %if.then10.i.i.i.i.i259, %if.end5.i.i.i.i.i.aa_put_profile.exit_crit_edge
  %80 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %81)
  %cmp121.not = icmp eq i32 %27, %81
  br i1 %cmp121.not, label %cleanup, label %restart.critedge321

cleanup:                                          ; preds = %aa_put_profile.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i252)
  %cmp124 = icmp slt i32 %retval.0.i252, 0
  br i1 %cmp124, label %cleanup140, label %cleanup.if.end127_crit_edge

cleanup.if.end127_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

if.end127:                                        ; preds = %cleanup.if.end127_crit_edge, %land.lhs.true104.if.end127_crit_edge, %if.end102.if.end127_crit_edge
  %ret.1 = phi i32 [ %retval.0.i252, %cleanup.if.end127_crit_edge ], [ 0, %land.lhs.true104.if.end127_crit_edge ], [ 0, %if.end102.if.end127_crit_edge ]
  %82 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %candidate_len.1357)
  %cmp128 = icmp ne i32 %83, %candidate_len.1357
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.1, i32 %candidate_xattrs.1354)
  %cmp130.not = icmp sgt i32 %ret.1, %candidate_xattrs.1354
  %or.cond = select i1 %cmp128, i1 true, i1 %cmp130.not
  br i1 %or.cond, label %cleanup136.thread297, label %if.then131

if.then131:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.1, i32 %candidate_xattrs.1354)
  %cmp132 = icmp eq i32 %ret.1, %candidate_xattrs.1354
  %spec.select = select i1 %cmp132, i1 true, i1 %conflict.1.off0352
  br label %cleanup140.thread311

cleanup136.thread297:                             ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  %xmatch_len = getelementptr i8, ptr %.pn360, i32 36
  %84 = ptrtoint ptr %xmatch_len to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %xmatch_len, align 4
  br label %cleanup140.thread

cleanup140.thread:                                ; preds = %cleanup136.thread297, %if.then84.cleanup140.thread_crit_edge
  %candidate.3 = phi ptr [ %candidate.1349, %if.then84.cleanup140.thread_crit_edge ], [ %profile.0361, %cleanup136.thread297 ]
  %conflict.4.off0 = phi i1 [ %conflict.1.off0352, %if.then84.cleanup140.thread_crit_edge ], [ false, %cleanup136.thread297 ]
  %candidate_xattrs.3 = phi i32 [ %candidate_xattrs.1354, %if.then84.cleanup140.thread_crit_edge ], [ %ret.1, %cleanup136.thread297 ]
  %candidate_len.3 = phi i32 [ %candidate_len.1357, %if.then84.cleanup140.thread_crit_edge ], [ %85, %cleanup136.thread297 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #8
  br label %for.inc

cleanup140.thread311:                             ; preds = %if.then131, %if.then99.cleanup140.thread311_crit_edge
  %conflict.5.off0.ph = phi i1 [ %spec.select, %if.then131 ], [ %conflict.1.off0352, %if.then99.cleanup140.thread311_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #8
  br label %for.inc

cleanup140:                                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #8
  br label %for.inc

if.else:                                          ; preds = %if.end82
  %86 = ptrtoint ptr %profile.0361 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %profile.0361, align 4
  %call147 = call i32 @strcmp(ptr noundef %87, ptr noundef %name) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.else.out_crit_edge, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %cleanup140, %cleanup140.thread311, %cleanup140.thread, %land.lhs.true76.for.inc_crit_edge
  %candidate.5 = phi ptr [ %candidate.1349, %land.lhs.true76.for.inc_crit_edge ], [ %candidate.1349, %cleanup140 ], [ %candidate.1349, %if.else.for.inc_crit_edge ], [ %candidate.3, %cleanup140.thread ], [ %candidate.1349, %cleanup140.thread311 ]
  %conflict.6.off0 = phi i1 [ %conflict.1.off0352, %land.lhs.true76.for.inc_crit_edge ], [ %conflict.1.off0352, %cleanup140 ], [ %conflict.1.off0352, %if.else.for.inc_crit_edge ], [ %conflict.4.off0, %cleanup140.thread ], [ %conflict.5.off0.ph, %cleanup140.thread311 ]
  %candidate_xattrs.5 = phi i32 [ %candidate_xattrs.1354, %land.lhs.true76.for.inc_crit_edge ], [ %candidate_xattrs.1354, %cleanup140 ], [ %candidate_xattrs.1354, %if.else.for.inc_crit_edge ], [ %candidate_xattrs.3, %cleanup140.thread ], [ %candidate_xattrs.1354, %cleanup140.thread311 ]
  %candidate_len.5 = phi i32 [ %candidate_len.1357, %land.lhs.true76.for.inc_crit_edge ], [ %candidate_len.1357, %cleanup140 ], [ %candidate_len.1357, %if.else.for.inc_crit_edge ], [ %candidate_len.3, %cleanup140.thread ], [ %candidate_len.1357, %cleanup140.thread311 ]
  %88 = ptrtoint ptr %.pn360 to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pn = load volatile ptr, ptr %.pn360, align 4
  %cmp.not = icmp eq ptr %.pn, %head
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end69.for.end_crit_edge
  %candidate.1.lcssa = phi ptr [ %candidate.5, %for.inc.for.end_crit_edge ], [ %candidate.0, %do.end69.for.end_crit_edge ]
  %conflict.1.off0.lcssa = phi i1 [ %conflict.6.off0, %for.inc.for.end_crit_edge ], [ %conflict.0.off0, %do.end69.for.end_crit_edge ]
  %tobool162.not = icmp eq ptr %candidate.1.lcssa, null
  %brmerge = select i1 %tobool162.not, i1 true, i1 %conflict.1.off0.lcssa
  br i1 %brmerge, label %if.then164, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then164:                                       ; preds = %for.end
  br i1 %conflict.1.off0.lcssa, label %if.then166, label %if.then164.if.end167_crit_edge

if.then164.if.end167_crit_edge:                   ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end167

if.then166:                                       ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @.str.68, ptr %info, align 4
  br label %if.end167

if.end167:                                        ; preds = %if.then166, %if.then164.if.end167_crit_edge
  %call.i261 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i261, label %if.end167.rcu_read_unlock.exit271_crit_edge, label %land.lhs.true.i264

if.end167.rcu_read_unlock.exit271_crit_edge:      ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit271

land.lhs.true.i264:                               ; preds = %if.end167
  %call1.i262 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i262)
  %tobool.not.i263 = icmp eq i32 %call1.i262, 0
  br i1 %tobool.not.i263, label %land.lhs.true.i264.rcu_read_unlock.exit271_crit_edge, label %land.lhs.true2.i266

land.lhs.true.i264.rcu_read_unlock.exit271_crit_edge: ; preds = %land.lhs.true.i264
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit271

land.lhs.true2.i266:                              ; preds = %land.lhs.true.i264
  %.b4.i265 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i265, label %land.lhs.true2.i266.rcu_read_unlock.exit271_crit_edge, label %if.then.i267

land.lhs.true2.i266.rcu_read_unlock.exit271_crit_edge: ; preds = %land.lhs.true2.i266
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit271

if.then.i267:                                     ; preds = %land.lhs.true2.i266
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 724, ptr noundef nonnull @.str.42) #8
  br label %rcu_read_unlock.exit271

rcu_read_unlock.exit271:                          ; preds = %if.then.i267, %land.lhs.true2.i266.rcu_read_unlock.exit271_crit_edge, %land.lhs.true.i264.rcu_read_unlock.exit271_crit_edge, %if.end167.rcu_read_unlock.exit271_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !226
  %90 = call i32 @llvm.read_register.i32(metadata !204) #8
  %and.i.i.i.i.i268 = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i.i.i.i268 to ptr
  %preempt_count.i.i.i.i269 = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %preempt_count.i.i.i.i269 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %preempt_count.i.i.i.i269, align 4
  %sub.i.i.i270 = add i32 %93, -1
  store volatile i32 %sub.i.i.i270, ptr %preempt_count.i.i.i.i269, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup171

out:                                              ; preds = %for.end.out_crit_edge, %if.else.out_crit_edge
  %candidate.6 = phi ptr [ %candidate.1.lcssa, %for.end.out_crit_edge ], [ %profile.0361, %if.else.out_crit_edge ]
  %label.i272 = getelementptr inbounds %struct.aa_profile, ptr %candidate.6, i32 0, i32 25
  %call.i273 = call fastcc ptr @aa_get_newest_label(ptr noundef %label.i272) #8
  %call2.i = call fastcc ptr @aa_get_newest_label(ptr noundef %label.i272) #8
  %size.i = getelementptr inbounds %struct.aa_label, ptr %call2.i, i32 0, i32 7
  %94 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %size.i, align 4
  %sub.i = add i32 %95, -1
  %arrayidx.i274 = getelementptr %struct.aa_label, ptr %call.i273, i32 0, i32 8, i32 %sub.i
  %96 = ptrtoint ptr %arrayidx.i274 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i274, align 4
  %call.i275 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i275, label %out.rcu_read_unlock.exit285_crit_edge, label %land.lhs.true.i278

out.rcu_read_unlock.exit285_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit285

land.lhs.true.i278:                               ; preds = %out
  %call1.i276 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i276)
  %tobool.not.i277 = icmp eq i32 %call1.i276, 0
  br i1 %tobool.not.i277, label %land.lhs.true.i278.rcu_read_unlock.exit285_crit_edge, label %land.lhs.true2.i280

land.lhs.true.i278.rcu_read_unlock.exit285_crit_edge: ; preds = %land.lhs.true.i278
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit285

land.lhs.true2.i280:                              ; preds = %land.lhs.true.i278
  %.b4.i279 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i279, label %land.lhs.true2.i280.rcu_read_unlock.exit285_crit_edge, label %if.then.i281

land.lhs.true2.i280.rcu_read_unlock.exit285_crit_edge: ; preds = %land.lhs.true2.i280
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit285

if.then.i281:                                     ; preds = %land.lhs.true2.i280
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 724, ptr noundef nonnull @.str.42) #8
  br label %rcu_read_unlock.exit285

rcu_read_unlock.exit285:                          ; preds = %if.then.i281, %land.lhs.true2.i280.rcu_read_unlock.exit285_crit_edge, %land.lhs.true.i278.rcu_read_unlock.exit285_crit_edge, %out.rcu_read_unlock.exit285_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !226
  %98 = call i32 @llvm.read_register.i32(metadata !204) #8
  %and.i.i.i.i.i282 = and i32 %98, -16384
  %99 = inttoptr i32 %and.i.i.i.i.i282 to ptr
  %preempt_count.i.i.i.i283 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %preempt_count.i.i.i.i283 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %preempt_count.i.i.i.i283, align 4
  %sub.i.i.i284 = add i32 %101, -1
  store volatile i32 %sub.i.i.i284, ptr %preempt_count.i.i.i.i283, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %label170 = getelementptr inbounds %struct.aa_profile, ptr %97, i32 0, i32 25
  br label %cleanup171

cleanup171:                                       ; preds = %rcu_read_unlock.exit285, %rcu_read_unlock.exit271
  %retval.0 = phi ptr [ %label170, %rcu_read_unlock.exit285 ], [ null, %rcu_read_unlock.exit271 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_dfa_leftmatch(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_dfa_outofband_transition(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getxattr_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_label_kref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aa_get_task_label(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_may_ptrace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @aa_get_profile_rcu(ptr noundef %p) unnamed_addr #3 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !204) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !224
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.do.body.preheader_crit_edge, label %land.lhs.true.i

entry.do.body.preheader_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.preheader

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.body.preheader_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.do.body.preheader_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.preheader

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.do.body.preheader_crit_edge, label %if.then.i

land.lhs.true2.i.do.body.preheader_crit_edge:     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.preheader

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 696, ptr noundef nonnull @.str.41) #8
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.then.i, %land.lhs.true2.i.do.body.preheader_crit_edge, %land.lhs.true.i.do.body.preheader_crit_edge, %entry.do.body.preheader_crit_edge
  br label %do.body

do.body:                                          ; preds = %kref_get_unless_zero.exit.do.body_crit_edge, %do.body.preheader
  %4 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %p, align 4
  %call = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body.do.end8_crit_edge

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

land.lhs.true:                                    ; preds = %do.body
  %call3 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b17 = load i1, ptr @aa_get_profile_rcu.__warned, align 1
  br i1 %.b17, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @aa_get_profile_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.81, i32 noundef 279, ptr noundef nonnull @.str.39) #8
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %do.body.do.end8_crit_edge
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %do.end8.do.end14_crit_edge, label %land.rhs

do.end8.do.end14_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

land.rhs:                                         ; preds = %do.end8
  %label = getelementptr inbounds %struct.aa_profile, ptr %5, i32 0, i32 25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #8
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %label, i32 noundef 4) #8
  %6 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %label, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %land.rhs
  %8 = phi i32 [ %7, %land.rhs ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %9 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %8, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %label, i32 noundef 4) #8
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #8
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %label, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %label, ptr %label, i32 %11, i32 %add.i.i.i.i, ptr elementtype(i32) %label) #8, !srcloc !225
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !218

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !218

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %label, i32 noundef 0) #8
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %17 = phi i32 [ %14, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  %tobool12.i.i.i.i.not = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #8
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.do.body_crit_edge, label %kref_get_unless_zero.exit.do.end14_crit_edge

kref_get_unless_zero.exit.do.end14_crit_edge:     ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

kref_get_unless_zero.exit.do.body_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end14:                                         ; preds = %kref_get_unless_zero.exit.do.end14_crit_edge, %do.end8.do.end14_crit_edge
  %call.i18 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i18, label %do.end14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i21

do.end14.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i21:                                ; preds = %do.end14
  %call1.i19 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19)
  %tobool.not.i20 = icmp eq i32 %call1.i19, 0
  br i1 %tobool.not.i20, label %land.lhs.true.i21.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i23

land.lhs.true.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i23:                               ; preds = %land.lhs.true.i21
  %.b4.i22 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22, label %land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge, label %if.then.i24

land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i24:                                      ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 724, ptr noundef nonnull @.str.42) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i24, %land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i21.rcu_read_unlock.exit_crit_edge, %do.end14.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !226
  %18 = call i32 @llvm.read_register.i32(metadata !204) #8
  %and.i.i.i.i.i25 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i25 to ptr
  %preempt_count.i.i.i.i26 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i26, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i26, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @build_change_hat(ptr noundef %profile, ptr noundef %name, i1 noundef zeroext %sibling) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 25, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %sibling, label %land.lhs.true, label %land.lhs.true3.critedge

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool1.not, label %land.lhs.true.if.then36.critedge_crit_edge, label %if.then

land.lhs.true.if.then36.critedge_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36.critedge

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %parent = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 1
  %call = tail call fastcc ptr @aa_get_profile_rcu(ptr noundef %parent)
  br label %if.end11

land.lhs.true3.critedge:                          ; preds = %entry
  br i1 %tobool1.not, label %if.then8, label %land.lhs.true3.critedge.if.then36.critedge_crit_edge

land.lhs.true3.critedge.if.then36.critedge_crit_edge: ; preds = %land.lhs.true3.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36.critedge

if.then8:                                         ; preds = %land.lhs.true3.critedge
  %tobool.not.i = icmp eq ptr %profile, null
  br i1 %tobool.not.i, label %if.then8.if.end11_crit_edge, label %if.then.i

if.then8.if.end11_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then.i:                                        ; preds = %if.then8
  %label.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 25
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %label.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i, ptr %label.i, i32 1, ptr elementtype(i32) %label.i) #8, !srcloc !217
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !214

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end11_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !218

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end11_crit_edge:             ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %label.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %if.end11

if.end11:                                         ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end11_crit_edge, %if.then8.if.end11_crit_edge, %if.then
  %root.0 = phi ptr [ %call, %if.then ], [ null, %if.then8.if.end11_crit_edge ], [ %profile, %if.else.i.i.i.i.i.if.end11_crit_edge ], [ %profile, %if.end15.sink.split.i.i.i.i.i ]
  %call12 = tail call ptr @aa_find_child(ptr noundef %root.0, ptr noundef %name) #8
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then14, label %if.end11.if.end22_crit_edge

if.end11.if.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then14:                                        ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_g_profile_mode to i32))
  %4 = load i32, ptr @aa_g_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then14.if.then16_crit_edge, label %lor.lhs.false

if.then14.if.then16_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

lor.lhs.false:                                    ; preds = %if.then14
  %mode = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 8
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp15 = icmp eq i32 %6, 1
  br i1 %cmp15, label %lor.lhs.false.if.then16_crit_edge, label %lor.lhs.false.if.end22_crit_edge

lor.lhs.false.if.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

if.then16:                                        ; preds = %lor.lhs.false.if.then16_crit_edge, %if.then14.if.then16_crit_edge
  %call17 = tail call ptr @aa_new_null_profile(ptr noundef %profile, i1 noundef zeroext true, ptr noundef %name, i32 noundef 3264) #8
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.then19, label %if.then16.if.end22_crit_edge

if.then16.if.end22_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.then16.if.end22_crit_edge, %lor.lhs.false.if.end22_crit_edge, %if.end11.if.end22_crit_edge
  %hat.0 = phi ptr [ %call12, %if.end11.if.end22_crit_edge ], [ %call17, %if.then16.if.end22_crit_edge ], [ null, %if.then19 ], [ null, %lor.lhs.false.if.end22_crit_edge ]
  %info.0 = phi ptr [ null, %if.end11.if.end22_crit_edge ], [ null, %if.then16.if.end22_crit_edge ], [ @.str.27, %if.then19 ], [ null, %lor.lhs.false.if.end22_crit_edge ]
  %error.0 = phi i32 [ 0, %if.end11.if.end22_crit_edge ], [ -2, %if.then16.if.end22_crit_edge ], [ -12, %if.then19 ], [ -2, %lor.lhs.false.if.end22_crit_edge ]
  %tobool.not.i65 = icmp eq ptr %root.0, null
  br i1 %tobool.not.i65, label %if.end22.audit_crit_edge, label %if.then.i68

if.end22.audit_crit_edge:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %audit

if.then.i68:                                      ; preds = %if.end22
  %label.i66 = getelementptr inbounds %struct.aa_profile, ptr %root.0, i32 0, i32 25
  %call.i.i.i.i.i.i.i67 = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i66, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  tail call void @llvm.prefetch.p0(ptr %label.i66, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i66, ptr %label.i66, i32 1, ptr elementtype(i32) %label.i66) #8, !srcloc !220
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i69 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i69, label %if.end5.i.i.i.i.i.audit_crit_edge, label %if.then10.i.i.i.i.i, !prof !218

if.end5.i.i.i.i.i.audit_crit_edge:                ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %audit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %label.i66, i32 noundef 3) #8
  br label %audit

if.then.i.i:                                      ; preds = %if.then.i68
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !221
  tail call void @aa_label_kref(ptr noundef %label.i66) #8
  br label %audit

audit:                                            ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.audit_crit_edge, %if.end22.audit_crit_edge
  %tobool23.not = icmp eq ptr %hat.0, null
  br i1 %tobool23.not, label %audit.if.then36.critedge_crit_edge, label %cond.true

audit.if.then36.critedge_crit_edge:               ; preds = %audit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36.critedge

cond.true:                                        ; preds = %audit
  %hname = getelementptr inbounds %struct.aa_policy, ptr %hat.0, i32 0, i32 1
  %8 = ptrtoint ptr %hname to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hname, align 4
  %label26.c63 = getelementptr inbounds %struct.aa_profile, ptr %hat.0, i32 0, i32 25
  %call30.c64 = tail call i32 @aa_audit_file(ptr noundef %profile, ptr noundef nonnull @nullperms, ptr noundef nonnull @.str.19, i32 noundef -2147483648, ptr noundef %name, ptr noundef %9, ptr noundef %label26.c63, [1 x i32] zeroinitializer, ptr noundef %info.0, i32 noundef %error.0) #8
  %10 = zext i32 %error.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %error.0, label %cond.true.if.then36_crit_edge [
    i32 0, label %cond.true.cleanup_crit_edge
    i32 -2, label %cond.true.cleanup_crit_edge77
  ]

cond.true.cleanup_crit_edge77:                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.true.cleanup_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.true.if.then36_crit_edge:                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36

if.then36.critedge:                               ; preds = %audit.if.then36.critedge_crit_edge, %land.lhs.true3.critedge.if.then36.critedge_crit_edge, %land.lhs.true.if.then36.critedge_crit_edge
  %error.175 = phi i32 [ %error.0, %audit.if.then36.critedge_crit_edge ], [ -1, %land.lhs.true.if.then36.critedge_crit_edge ], [ -1, %land.lhs.true3.critedge.if.then36.critedge_crit_edge ]
  %info.174 = phi ptr [ %info.0, %audit.if.then36.critedge_crit_edge ], [ @.str.82, %land.lhs.true.if.then36.critedge_crit_edge ], [ @.str.82, %land.lhs.true3.critedge.if.then36.critedge_crit_edge ]
  %call30.c = tail call i32 @aa_audit_file(ptr noundef %profile, ptr noundef nonnull @nullperms, ptr noundef nonnull @.str.19, i32 noundef -2147483648, ptr noundef %name, ptr noundef null, ptr noundef null, [1 x i32] zeroinitializer, ptr noundef %info.174, i32 noundef %error.175) #8
  br label %if.then36

if.then36:                                        ; preds = %if.then36.critedge, %cond.true.if.then36_crit_edge
  %error.176 = phi i32 [ %error.175, %if.then36.critedge ], [ %error.0, %cond.true.if.then36_crit_edge ]
  %11 = inttoptr i32 %error.176 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %cond.true.cleanup_crit_edge, %cond.true.cleanup_crit_edge77
  %retval.0 = phi ptr [ %11, %if.then36 ], [ %label26.c63, %cond.true.cleanup_crit_edge ], [ %label26.c63, %cond.true.cleanup_crit_edge77 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !12, !13, !14, !15, !16, !18, !20, !22, !23, !25, !26, !28, !29, !31, !33, !35, !37, !39, !41, !42, !43, !45, !46, !48, !50, !52, !53, !54, !55, !57, !59, !61, !63, !65, !67, !69, !70, !72, !73, !75, !77, !78, !79, !81, !82, !83, !85, !87, !89, !90, !92, !93, !94, !96, !97, !99, !100, !102, !104, !106, !108, !109, !111, !112, !114, !116, !117, !119, !120, !121, !123, !125, !126, !128, !130, !132, !134, !136, !138, !139, !141, !142, !143, !145, !146, !147, !149, !151, !153, !154, !156, !158, !160, !162, !163, !165, !167, !169, !171, !173, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !195, !197, !199, !200, !202}
!llvm.named.register.sp = !{!204}
!llvm.module.flags = !{!205, !206, !207, !208, !209, !210, !211, !212}
!llvm.ident = !{!213}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/apparmor/domain.c", i32 518, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.x_table_lookup, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/apparmor/domain.c", i32 871, i32 2}
!6 = !{ptr @__func__.apparmor_bprm_creds_for_exec, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../security/apparmor/domain.c", i32 872, i32 2}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../security/apparmor/domain.c", i32 899, i32 9}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @apparmor_bprm_creds_for_exec._rs, !10, !"_rs", i1 false, i1 false}
!13 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @apparmor_bprm_creds_for_exec.descriptor, !10, !"descriptor", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../security/apparmor/domain.c", i32 903, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../security/apparmor/domain.c", i32 924, i32 10}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../security/apparmor/domain.c", i32 942, i32 4}
!22 = !{ptr @apparmor_bprm_creds_for_exec.__UNIQUE_ID_ddebug593, !21, !"__UNIQUE_ID_ddebug593", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../security/apparmor/domain.c", i32 945, i32 4}
!25 = !{ptr @apparmor_bprm_creds_for_exec.__UNIQUE_ID_ddebug594, !24, !"__UNIQUE_ID_ddebug594", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../security/apparmor/domain.c", i32 953, i32 4}
!28 = !{ptr @apparmor_bprm_creds_for_exec.__UNIQUE_ID_ddebug595, !27, !"__UNIQUE_ID_ddebug595", i1 false, i1 false}
!29 = !{ptr @apparmor_bprm_creds_for_exec.__UNIQUE_ID_ddebug596, !30, !"__UNIQUE_ID_ddebug596", i1 false, i1 false}
!30 = !{!"../security/apparmor/domain.c", i32 956, i32 4}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../security/apparmor/domain.c", i32 971, i32 10}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../security/apparmor/domain.c", i32 1160, i32 9}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../security/apparmor/domain.c", i32 1175, i32 10}
!37 = !{ptr @__func__.aa_change_hat, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../security/apparmor/domain.c", i32 1182, i32 3}
!39 = !{ptr @aa_change_hat._rs, !40, !"_rs", i1 false, i1 false}
!40 = !{!"../security/apparmor/domain.c", i32 1201, i32 4}
!41 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @aa_change_hat.descriptor, !40, !"descriptor", i1 false, i1 false}
!43 = !{ptr @aa_change_hat._rs.16, !44, !"_rs", i1 false, i1 false}
!44 = !{!"../security/apparmor/domain.c", i32 1222, i32 4}
!45 = !{ptr @aa_change_hat.descriptor.17, !44, !"descriptor", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../security/apparmor/domain.c", i32 1248, i32 9}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../security/apparmor/domain.c", i32 1252, i32 2}
!50 = !{ptr @aa_change_profile._rs, !51, !"_rs", i1 false, i1 false}
!51 = !{!"../security/apparmor/domain.c", i32 1321, i32 3}
!52 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @aa_change_profile.descriptor, !51, !"descriptor", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../security/apparmor/domain.c", i32 1328, i32 9}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../security/apparmor/domain.c", i32 1330, i32 9}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../security/apparmor/domain.c", i32 1334, i32 9}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../security/apparmor/domain.c", i32 1336, i32 9}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../security/apparmor/domain.c", i32 1348, i32 10}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../security/apparmor/domain.c", i32 1362, i32 11}
!67 = !{ptr @aa_change_profile._rs.28, !68, !"_rs", i1 false, i1 false}
!68 = !{!"../security/apparmor/domain.c", i32 1407, i32 9}
!69 = !{ptr @aa_change_profile.descriptor.29, !68, !"descriptor", i1 false, i1 false}
!70 = !{ptr @aa_change_profile._rs.30, !71, !"_rs", i1 false, i1 false}
!71 = !{!"../security/apparmor/domain.c", i32 1417, i32 4}
!72 = !{ptr @aa_change_profile.descriptor.31, !71, !"descriptor", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../security/apparmor/domain.c", i32 1428, i32 11}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../security/apparmor/include/cred.h", i32 26, i32 2}
!77 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @__func__.cred_label, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../security/apparmor/include/label.h", i32 424, i32 3}
!81 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @__func__.aa_get_newest_label, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../security/apparmor/include/label.h", i32 425, i32 3}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../security/apparmor/include/label.h", i32 431, i32 3}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../security/apparmor/include/label.h", i32 401, i32 7}
!89 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!90 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!91 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!92 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!94 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!95 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!96 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../security/apparmor/domain.c", i32 804, i32 2}
!99 = !{ptr @__func__.handle_onexec, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../security/apparmor/domain.c", i32 805, i32 2}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../security/apparmor/domain.c", i32 806, i32 2}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../security/apparmor/domain.c", i32 807, i32 2}
!106 = !{ptr @handle_onexec._rs, !107, !"_rs", i1 false, i1 false}
!107 = !{!"../security/apparmor/domain.c", i32 815, i32 9}
!108 = !{ptr @handle_onexec.descriptor, !107, !"descriptor", i1 false, i1 false}
!109 = !{ptr @handle_onexec._rs.47, !110, !"_rs", i1 false, i1 false}
!110 = !{!"../security/apparmor/domain.c", i32 827, i32 9}
!111 = !{ptr @handle_onexec.descriptor.48, !110, !"descriptor", i1 false, i1 false}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../security/apparmor/domain.c", i32 729, i32 36}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../security/apparmor/domain.c", i32 732, i32 2}
!116 = !{ptr @__func__.profile_onexec, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @profile_onexec._rs, !118, !"_rs", i1 false, i1 false}
!118 = !{!"../security/apparmor/domain.c", i32 752, i32 4}
!119 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @profile_onexec.descriptor, !118, !"descriptor", i1 false, i1 false}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../security/apparmor/domain.c", i32 762, i32 10}
!123 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../security/apparmor/domain.c", i32 779, i32 4}
!125 = !{ptr @profile_onexec.__UNIQUE_ID_ddebug591, !124, !"__UNIQUE_ID_ddebug591", i1 false, i1 false}
!126 = !{ptr @profile_onexec.__UNIQUE_ID_ddebug592, !127, !"__UNIQUE_ID_ddebug592", i1 false, i1 false}
!127 = !{!"../security/apparmor/domain.c", i32 782, i32 4}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../security/apparmor/domain.c", i32 161, i32 50}
!130 = !{ptr @.str.55, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../security/apparmor/domain.c", i32 106, i32 50}
!132 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../security/apparmor/domain.c", i32 112, i32 53}
!134 = !{ptr @__func__.profile_transition, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../security/apparmor/domain.c", i32 636, i32 2}
!136 = !{ptr @profile_transition._rs, !137, !"_rs", i1 false, i1 false}
!137 = !{!"../security/apparmor/domain.c", i32 645, i32 4}
!138 = !{ptr @profile_transition.descriptor, !137, !"descriptor", i1 false, i1 false}
!139 = !{ptr @profile_transition._rs.57, !140, !"_rs", i1 false, i1 false}
!140 = !{!"../security/apparmor/domain.c", i32 657, i32 4}
!141 = !{ptr @.str.59, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @profile_transition.descriptor.58, !140, !"descriptor", i1 false, i1 false}
!143 = !{ptr @profile_transition._rs.60, !144, !"_rs", i1 false, i1 false}
!144 = !{!"../security/apparmor/domain.c", i32 660, i32 3}
!145 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @profile_transition.descriptor.61, !144, !"descriptor", i1 false, i1 false}
!147 = !{ptr @.str.63, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../security/apparmor/domain.c", i32 675, i32 11}
!149 = !{ptr @.str.64, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../security/apparmor/domain.c", i32 687, i32 11}
!151 = !{ptr @.str.65, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../security/apparmor/domain.c", i32 703, i32 4}
!153 = !{ptr @profile_transition.__UNIQUE_ID_ddebug589, !152, !"__UNIQUE_ID_ddebug589", i1 false, i1 false}
!154 = !{ptr @profile_transition.__UNIQUE_ID_ddebug590, !155, !"__UNIQUE_ID_ddebug590", i1 false, i1 false}
!155 = !{!"../security/apparmor/domain.c", i32 706, i32 4}
!156 = !{ptr @__func__.find_attach, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../security/apparmor/domain.c", i32 396, i32 2}
!158 = !{ptr @.str.66, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../security/apparmor/domain.c", i32 397, i32 2}
!160 = distinct !{null, !161, !"__warned", i1 false, i1 false}
!161 = !{!"../security/apparmor/domain.c", i32 401, i32 2}
!162 = !{ptr @.str.67, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.68, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../security/apparmor/domain.c", i32 486, i32 12}
!165 = !{ptr @.str.69, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../security/apparmor/domain.c", i32 601, i32 12}
!167 = !{ptr @.str.70, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../security/apparmor/domain.c", i32 606, i32 12}
!169 = !{ptr @.str.71, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../security/apparmor/domain.c", i32 85, i32 11}
!171 = distinct !{null, !172, !"__warned", i1 false, i1 false}
!172 = !{!"../include/linux/ptrace.h", i32 127, i32 10}
!173 = !{ptr @.str.72, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @__func__.set_cred_label, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../security/apparmor/include/cred.h", i32 35, i32 2}
!176 = !{ptr @.str.73, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../include/linux/cred.h", i32 253, i32 2}
!178 = !{ptr @__func__.aa_cred_raw_label, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../security/apparmor/include/cred.h", i32 51, i32 2}
!180 = !{ptr @.str.74, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../security/apparmor/domain.c", i32 1047, i32 2}
!182 = !{ptr @.str.75, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../security/apparmor/domain.c", i32 1048, i32 2}
!184 = !{ptr @.str.76, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../security/apparmor/domain.c", i32 1062, i32 12}
!186 = !{ptr @.str.77, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../security/apparmor/domain.c", i32 1073, i32 12}
!188 = !{ptr @.str.78, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../security/apparmor/domain.c", i32 1094, i32 11}
!190 = !{ptr @.str.79, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../security/apparmor/domain.c", i32 1099, i32 9}
!192 = !{ptr @change_hat._rs, !193, !"_rs", i1 false, i1 false}
!193 = !{!"../security/apparmor/domain.c", i32 1120, i32 8}
!194 = !{ptr @change_hat.descriptor, !193, !"descriptor", i1 false, i1 false}
!195 = !{ptr @.str.80, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../security/apparmor/domain.c", i32 1124, i32 10}
!197 = distinct !{null, !198, !"__warned", i1 false, i1 false}
!198 = !{!"../security/apparmor/include/policy.h", i32 279, i32 7}
!199 = !{ptr @.str.81, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.82, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../security/apparmor/domain.c", i32 1000, i32 10}
!202 = distinct !{null, !203, !"__warned", i1 false, i1 false}
!203 = !{!"../security/apparmor/include/cred.h", i32 89, i32 27}
!204 = !{!"sp"}
!205 = !{i32 1, !"wchar_size", i32 2}
!206 = !{i32 1, !"min_enum_size", i32 4}
!207 = !{i32 8, !"branch-target-enforcement", i32 0}
!208 = !{i32 8, !"sign-return-address", i32 0}
!209 = !{i32 8, !"sign-return-address-all", i32 0}
!210 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!211 = !{i32 7, !"uwtable", i32 1}
!212 = !{i32 7, !"frame-pointer", i32 2}
!213 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!214 = !{!"branch_weights", i32 1, i32 2000}
!215 = !{i64 2152446934}
!216 = !{!"auto-init"}
!217 = !{i64 2148521425, i64 2148521457, i64 2148521486, i64 2148521520, i64 2148521551, i64 2148521574}
!218 = !{!"branch_weights", i32 2000, i32 1}
!219 = !{i64 2148609450}
!220 = !{i64 2148523890, i64 2148523922, i64 2148523951, i64 2148523985, i64 2148524016, i64 2148524039}
!221 = !{i64 2150406118}
!222 = !{i8 0, i8 2}
!223 = !{i64 2148344493, i64 2148344498, i64 2148344511, i64 2148344555, i64 2148344589, i64 2148344610}
!224 = !{i64 2149265800}
!225 = !{i64 1005408, i64 1005432, i64 1005453, i64 1005470, i64 1005487}
!226 = !{i64 2149266066}
!227 = !{i64 2148519895, i64 2148519921, i64 2148519950, i64 2148519984, i64 2148520015, i64 2148520038}
!228 = !{i64 2148608371}
!229 = !{i64 2148523080, i64 2148523112, i64 2148523141, i64 2148523175, i64 2148523206, i64 2148523229}
!230 = !{i64 2148608600}
