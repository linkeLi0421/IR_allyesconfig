; ModuleID = '/llk/IR_all_yes/security/apparmor/policy.c_pt.bc'
source_filename = "../security/apparmor/policy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
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
%union.anon.164 = type { ptr }
%struct.aa_profile = type { %struct.aa_policy, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, %struct.aa_policydb, %struct.aa_file_rules, %struct.aa_caps, i32, ptr, %struct.aa_rlimit, i32, ptr, ptr, ptr, ptr, [9 x ptr], ptr, %struct.aa_label }
%struct.aa_policy = type { ptr, ptr, %struct.list_head, %struct.list_head }
%struct.aa_policydb = type { ptr, [17 x i32] }
%struct.aa_file_rules = type { i32, ptr, %struct.aa_domain }
%struct.aa_domain = type { i32, ptr }
%struct.aa_caps = type { %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.aa_rlimit = type { i32, [16 x %struct.rlimit] }
%struct.rlimit = type { i32, i32 }
%struct.aa_label = type { %struct.kref, %struct.rb_node, %struct.callback_head, ptr, ptr, i32, i32, i32, [0 x ptr] }
%struct.kref = type { %struct.refcount_struct }
%struct.rb_node = type { i32, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.aa_ns = type { %struct.aa_policy, ptr, %struct.mutex, %struct.aa_ns_acct, ptr, %struct.list_head, %struct.atomic_t, i32, i32, i32, %struct.wait_queue_head, %struct.aa_labelset, %struct.list_head, [13 x ptr] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.aa_ns_acct = type { i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.aa_labelset = type { %struct.rwlock_t, %struct.rb_root }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.aa_secmark = type { i8, i8, i32, ptr }
%struct.aa_data = type { ptr, i32, ptr, %struct.rhash_head }
%struct.rhash_head = type { ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%union.anon.30 = type { %struct.callback_head }
%struct.apparmor_audit_data = type { i32, i32, ptr, ptr, ptr, ptr, i32, i32, %union.anon.150 }
%union.anon.150 = type { %struct.anon.151 }
%struct.anon.151 = type { ptr, %union.anon.152 }
%union.anon.152 = type { %struct.anon.156 }
%struct.anon.156 = type { i32, i32, ptr, ptr, i32 }
%struct.common_audit_data = type { i8, %union.anon.159, %union.anon.164 }
%union.anon.159 = type { %struct.path }
%struct.path = type { ptr, ptr }
%struct.aa_load_ent = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.aa_loaddata = type { %struct.kref, %struct.list_head, %struct.work_struct, [6 x ptr], ptr, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.aa_proxy = type { %struct.kref, ptr }

@unprivileged_userns_apparmor_policy = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enforce\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"complain\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"kill\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unconfined\00", [21 x i8] zeroinitializer }, align 32
@aa_profile_mode_names = dso_local constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], [16 x i8] zeroinitializer }, align 32
@aa_g_debug = external dso_local local_unnamed_addr global i8, align 1
@aa_free_profile._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@aa_free_profile.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 0, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apparmor\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aa_free_profile\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"security/apparmor/policy.c\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AppArmor: %s(%p)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"AppArmor WARN %s: ((!parent)): \00", [32 x i8] zeroinitializer }, align 32
@__func__.aa_new_null_profile = private unnamed_addr constant [20 x i8] c"aa_new_null_profile\00", align 1
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s//null-%s\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s//null-%x\00", [20 x i8] zeroinitializer }, align 32
@nulldfa = external dso_local local_unnamed_addr global ptr, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@aa_policy_admin_capable._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@aa_policy_admin_capable.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.13, ptr @.str.7, ptr @.str.14, i8 0, i8 -86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"aa_policy_admin_capable\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AppArmor: cap_mac_admin? %d\0A\00", [35 x i8] zeroinitializer }, align 32
@aa_policy_admin_capable._rs.15 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@aa_policy_admin_capable.descriptor.16 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.13, ptr @.str.7, ptr @.str.17, i8 0, i8 -85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AppArmor: policy locked? %d\0A\00", [35 x i8] zeroinitializer }, align 32
@aa_g_lock_policy = external dso_local local_unnamed_addr global i8, align 1
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"profile_remove\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"profile_replace\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"profile_load\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"policy_locked\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"not policy admin\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"policy load has mixed namespaces\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to prepare namespace\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"parent does not exist\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to create raw_data dir and files\00", [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"failed to create\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"same as current profile, skipping\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"valid profile in failed atomic policy load\00", [53 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"unchecked profile in failed atomic policy load\00", [49 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no profile specified\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"namespace does not exist\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"profile does not exist\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AppArmor WARN %s: ((!profile)): \00", [63 x i8] zeroinitializer }, align 32
@__func__.__remove_profile = private unnamed_addr constant [17 x i8] c"__remove_profile\00", align 1
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"AppArmor WARN %s: ((!profile->ns)): \00", [59 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"AppArmor WARN %s: ((!mutex_is_locked(&profile->ns->lock))): \00", [35 x i8] zeroinitializer }, align 32
@__func__.__list_remove_profile = private unnamed_addr constant [22 x i8] c"__list_remove_profile\00", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__policy_strn_find.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"security/apparmor/include/lib.h\00", [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"//\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"security/apparmor/include/label.h\00", [62 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AppArmor WARN %s: ((!l->proxy)): \00", [62 x i8] zeroinitializer }, align 32
@__func__.aa_get_newest_label = private unnamed_addr constant [20 x i8] c"aa_get_newest_label\00", align 1
@.str.45 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"AppArmor WARN %s: ((!l->proxy->label)): \00", [55 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AppArmor WARN %s: ((!tmp)): \00", [35 x i8] zeroinitializer }, align 32
@aa_get_label_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.47 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AppArmor WARN %s: ((!list)): \00", [34 x i8] zeroinitializer }, align 32
@__func__.__add_profile = private unnamed_addr constant [14 x i8] c"__add_profile\00", align 1
@.str.49 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"AppArmor WARN %s: ((l != &profile->label)): \00", [51 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"security/apparmor/include/cred.h\00", [63 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"AppArmor WARN %s: ((!label)): \00", [33 x i8] zeroinitializer }, align 32
@__func__.aa_cred_raw_label = private unnamed_addr constant [18 x i8] c"aa_cred_raw_label\00", align 1
@apparmor_blob_sizes = external dso_local local_unnamed_addr global %struct.lsm_blob_sizes, align 4
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AppArmor WARN %s: ((!blob)): \00", [34 x i8] zeroinitializer }, align 32
@__func__.cred_label = private unnamed_addr constant [11 x i8] c"cred_label\00", align 1
@__const.audit_policy.sa = private unnamed_addr constant { i8, [3 x i8], { ptr, [4 x i8] }, %union.anon.164 } { i8 7, [3 x i8] zeroinitializer, { ptr, [4 x i8] } { ptr null, [4 x i8] c"\FF\FF\FF\FF" }, %union.anon.164 zeroinitializer }, align 4
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" ns=\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"security/apparmor/include/policy_unpack.h\00", [54 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"AppArmor WARN %s: ((data && !tmp)): \00", [59 x i8] zeroinitializer }, align 32
@__func__.aa_get_loaddata = private unnamed_addr constant [16 x i8] c"aa_get_loaddata\00", align 1
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"profile can not be replaced\00", [36 x i8] zeroinitializer }, align 32
@aa_deref_parent.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.59 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"security/apparmor/include/policy_ns.h\00", [58 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@update_to_newest_parent.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 58]
@___asan_gen_.61 = private unnamed_addr constant [36 x i8] c"unprivileged_userns_apparmor_policy\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 90, i32 5 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 93, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 94, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 95, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 96, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [22 x i8] c"aa_profile_mode_names\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 92, i32 19 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 210, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 509, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 515, i32 18 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 524, i32 16 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 683, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 684, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 726, i32 8 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 728, i32 8 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 730, i32 8 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 734, i32 46 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 738, i32 46 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 925, i32 12 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 944, i32 11 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1000, i32 12 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1015, i32 11 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1033, i32 11 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1048, i32 10 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1102, i32 9 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1105, i32 11 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1145, i32 10 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1158, i32 11 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1178, i32 11 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 156, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 157, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 158, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 695, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [35 x i8] c"../security/apparmor/include/lib.h\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 196, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 723, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 401, i32 30 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 424, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 425, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 431, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant [37 x i8] c"../security/apparmor/include/label.h\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 401, i32 7 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 113, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 122, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 51, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant [36 x i8] c"../security/apparmor/include/cred.h\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 26, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 601, i32 24 }
@___asan_gen_.233 = private unnamed_addr constant [45 x i8] c"../security/apparmor/include/policy_unpack.h\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 112, i32 2 }
@___asan_gen_.236 = private constant [30 x i8] c"../security/apparmor/policy.c\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 845, i32 12 }
@___asan_gen_.241 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [41 x i8] c"../security/apparmor/include/policy_ns.h\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 101, i32 9 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @unprivileged_userns_apparmor_policy, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @aa_profile_mode_names, ptr @aa_free_profile._rs, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @aa_policy_admin_capable._rs, ptr @.str.13, ptr @.str.14, ptr @aa_policy_admin_capable._rs.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unprivileged_userns_apparmor_policy to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_profile_mode_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_free_profile._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_policy_admin_capable._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_policy_admin_capable._rs.15 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__aa_profile_list_release(ptr noundef readonly %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 4
  %cmp.not19 = icmp eq ptr %1, %head
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in20 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %profile.0 = getelementptr i8, ptr %.pn.in20, i32 -8
  %2 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in20, align 4
  tail call fastcc void @__remove_profile(ptr noundef %profile.0)
  %cmp.not = icmp eq ptr %.pn, %head
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__remove_profile(ptr noundef %profile) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %profile, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !151

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 156, i32 noundef 9, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.__remove_profile) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %ns = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 2
  %0 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns, align 4
  %tobool26.not = icmp eq ptr %1, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !151

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 157, i32 noundef 9, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.__remove_profile) #10
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %2 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns, align 4
  %lock = getelementptr inbounds %struct.aa_ns, ptr %3, i32 0, i32 2
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock) #10
  br i1 %call, label %if.end50.if.end86_crit_edge, label %do.end80, !prof !152

if.end50.if.end86_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

do.end80:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 158, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.__remove_profile) #10
  br label %if.end86

if.end86:                                         ; preds = %do.end80, %if.end50.if.end86_crit_edge
  %profiles = getelementptr inbounds %struct.aa_policy, ptr %profile, i32 0, i32 3
  %4 = ptrtoint ptr %profiles to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %profiles, align 4
  %cmp.not.i106 = icmp eq ptr %5, %profiles
  br i1 %cmp.not.i106, label %if.end86.__aa_profile_list_release.exit_crit_edge, label %if.end86.for.body.i_crit_edge

if.end86.for.body.i_crit_edge:                    ; preds = %if.end86
  br label %for.body.i

if.end86.__aa_profile_list_release.exit_crit_edge: ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %__aa_profile_list_release.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end86.for.body.i_crit_edge
  %.pn.in.i107 = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %5, %if.end86.for.body.i_crit_edge ]
  %profile.0.i = getelementptr i8, ptr %.pn.in.i107, i32 -8
  %6 = ptrtoint ptr %.pn.in.i107 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn.in.i107, align 4
  tail call fastcc void @__remove_profile(ptr noundef %profile.0.i) #10
  %cmp.not.i = icmp eq ptr %.pn.i, %profiles
  br i1 %cmp.not.i, label %for.body.i.__aa_profile_list_release.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.__aa_profile_list_release.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__aa_profile_list_release.exit

__aa_profile_list_release.exit:                   ; preds = %for.body.i.__aa_profile_list_release.exit_crit_edge, %if.end86.__aa_profile_list_release.exit_crit_edge
  %label = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 25
  %call96 = tail call zeroext i1 @aa_label_remove(ptr noundef %label) #10
  tail call void @__aafs_profile_rmdir(ptr noundef %profile) #10
  tail call fastcc void @__list_remove_profile(ptr noundef %profile)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aa_free_profile(ptr noundef %profile) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_debug to i32))
  %0 = load i8, ptr @aa_g_debug, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aa_free_profile.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aa_free_profile, %land.lhs.true)) #10
          to label %do.end10 [label %land.lhs.true], !srcloc !154

land.lhs.true:                                    ; preds = %do.body1
  %call5 = tail call i32 @___ratelimit(ptr noundef nonnull @aa_free_profile._rs, ptr noundef nonnull @.str.6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %if.then7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aa_free_profile.descriptor, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, ptr noundef %profile) #10
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %land.lhs.true.do.end10_crit_edge, %do.body1, %entry.do.end10_crit_edge
  %tobool11.not = icmp eq ptr %profile, null
  br i1 %tobool11.not, label %do.end10.cleanup_crit_edge, label %if.end13

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %do.end10
  tail call void @aa_policy_destroy(ptr noundef nonnull %profile) #10
  %parent = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %parent, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end13.aa_put_profile.exit_crit_edge, label %if.then.i

if.end13.aa_put_profile.exit_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_profile.exit

if.then.i:                                        ; preds = %if.end13
  %label.i = getelementptr inbounds %struct.aa_profile, ptr %2, i32 0, i32 25
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !155
  tail call void @llvm.prefetch.p0(ptr %label.i, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i, ptr %label.i, i32 1, ptr elementtype(i32) %label.i) #10, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.aa_put_profile.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !152

if.end5.i.i.i.i.i.aa_put_profile.exit_crit_edge:  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_profile.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %label.i, i32 noundef 3) #10
  br label %aa_put_profile.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @aa_label_kref(ptr noundef %label.i) #10
  br label %aa_put_profile.exit

aa_put_profile.exit:                              ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_profile.exit_crit_edge, %if.end13.aa_put_profile.exit_crit_edge
  %ns = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 2
  %4 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns, align 4
  %tobool.not.i65 = icmp eq ptr %5, null
  br i1 %tobool.not.i65, label %aa_put_profile.exit.aa_put_ns.exit_crit_edge, label %if.then.i66

aa_put_profile.exit.aa_put_ns.exit_crit_edge:     ; preds = %aa_put_profile.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_ns.exit

if.then.i66:                                      ; preds = %aa_put_profile.exit
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unconfined.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.then.i66.aa_put_ns.exit_crit_edge, label %if.then.i.i67

if.then.i66.aa_put_ns.exit_crit_edge:             ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_ns.exit

if.then.i.i67:                                    ; preds = %if.then.i66
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %7, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !155
  tail call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #10, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !152

if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_ns.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef 3) #10
  br label %aa_put_ns.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i67
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @aa_label_kref(ptr noundef %label.i.i) #10
  br label %aa_put_ns.exit

aa_put_ns.exit:                                   ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.aa_put_ns.exit_crit_edge, %if.then.i66.aa_put_ns.exit_crit_edge, %aa_put_profile.exit.aa_put_ns.exit_crit_edge
  %rename = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 3
  %9 = ptrtoint ptr %rename to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rename, align 4
  tail call void @kfree_sensitive(ptr noundef %10) #10
  %dfa.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 13, i32 1
  %11 = ptrtoint ptr %dfa.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dfa.i, align 4
  %tobool.not.i.i68 = icmp eq ptr %12, null
  br i1 %tobool.not.i.i68, label %aa_put_ns.exit.aa_free_file_rules.exit_crit_edge, label %if.then.i.i72

aa_put_ns.exit.aa_free_file_rules.exit_crit_edge: ; preds = %aa_put_ns.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_free_file_rules.exit

if.then.i.i72:                                    ; preds = %aa_put_ns.exit
  %call.i.i.i.i.i.i.i.i69 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %12, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !155
  tail call void @llvm.prefetch.p0(ptr nonnull %12, i32 1, i32 3, i32 1) #10
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %12, ptr nonnull %12, i32 1, ptr nonnull elementtype(i32) %12) #10, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i.i70 = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i70)
  %cmp.i.i.i.i.i.i71 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i70, 1
  br i1 %cmp.i.i.i.i.i.i71, label %if.then.i.i.i76, label %if.end5.i.i.i.i.i.i74

if.end5.i.i.i.i.i.i74:                            ; preds = %if.then.i.i72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i70)
  %.not.i.i.i.i.i.i73 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i70, 0
  br i1 %.not.i.i.i.i.i.i73, label %if.end5.i.i.i.i.i.i74.aa_free_file_rules.exit_crit_edge, label %if.then10.i.i.i.i.i.i75, !prof !152

if.end5.i.i.i.i.i.i74.aa_free_file_rules.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i74
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_free_file_rules.exit

if.then10.i.i.i.i.i.i75:                          ; preds = %if.end5.i.i.i.i.i.i74
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %12, i32 noundef 3) #10
  br label %aa_free_file_rules.exit

if.then.i.i.i76:                                  ; preds = %if.then.i.i72
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @aa_dfa_free_kref(ptr noundef nonnull %12) #10
  br label %aa_free_file_rules.exit

aa_free_file_rules.exit:                          ; preds = %if.then.i.i.i76, %if.then10.i.i.i.i.i.i75, %if.end5.i.i.i.i.i.i74.aa_free_file_rules.exit_crit_edge, %aa_put_ns.exit.aa_free_file_rules.exit_crit_edge
  %trans.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 13, i32 2
  tail call void @aa_free_domain_entries(ptr noundef %trans.i) #10
  %xattr_count = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 15
  %14 = ptrtoint ptr %xattr_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %xattr_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp106 = icmp sgt i32 %15, 0
  br i1 %cmp106, label %for.body.lr.ph, label %aa_free_file_rules.exit.for.end_crit_edge

aa_free_file_rules.exit.for.end_crit_edge:        ; preds = %aa_free_file_rules.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %aa_free_file_rules.exit
  %xattrs = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0107 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %16 = ptrtoint ptr %xattrs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xattrs, align 4
  %arrayidx = getelementptr ptr, ptr %17, i32 %i.0107
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree_sensitive(ptr noundef %19) #10
  %inc = add nuw nsw i32 %i.0107, 1
  %20 = ptrtoint ptr %xattr_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %xattr_count, align 4
  %cmp = icmp slt i32 %inc, %21
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %aa_free_file_rules.exit.for.end_crit_edge
  %xattrs19 = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 16
  %22 = ptrtoint ptr %xattrs19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xattrs19, align 4
  tail call void @kfree_sensitive(ptr noundef %23) #10
  %secmark_count = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 18
  %24 = ptrtoint ptr %secmark_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %secmark_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp21108 = icmp sgt i32 %25, 0
  br i1 %cmp21108, label %for.body22.lr.ph, label %for.end.for.end26_crit_edge

for.end.for.end26_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end26

for.body22.lr.ph:                                 ; preds = %for.end
  %secmark = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 19
  br label %for.body22

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %for.body22.lr.ph
  %i.1109 = phi i32 [ 0, %for.body22.lr.ph ], [ %inc25, %for.body22.for.body22_crit_edge ]
  %26 = ptrtoint ptr %secmark to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %secmark, align 4
  %label = getelementptr %struct.aa_secmark, ptr %27, i32 %i.1109, i32 3
  %28 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %label, align 4
  tail call void @kfree_sensitive(ptr noundef %29) #10
  %inc25 = add nuw nsw i32 %i.1109, 1
  %30 = ptrtoint ptr %secmark_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %secmark_count, align 4
  %cmp21 = icmp slt i32 %inc25, %31
  br i1 %cmp21, label %for.body22.for.body22_crit_edge, label %for.body22.for.end26_crit_edge

for.body22.for.end26_crit_edge:                   ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end26

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body22

for.end26:                                        ; preds = %for.body22.for.end26_crit_edge, %for.end.for.end26_crit_edge
  %secmark27 = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 19
  %32 = ptrtoint ptr %secmark27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %secmark27, align 4
  tail call void @kfree_sensitive(ptr noundef %33) #10
  %dirname = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 22
  %34 = ptrtoint ptr %dirname to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dirname, align 4
  tail call void @kfree_sensitive(ptr noundef %35) #10
  %xmatch = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 5
  %36 = ptrtoint ptr %xmatch to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %xmatch, align 4
  %tobool.not.i77 = icmp eq ptr %37, null
  br i1 %tobool.not.i77, label %for.end26.aa_put_dfa.exit_crit_edge, label %if.then.i81

for.end26.aa_put_dfa.exit_crit_edge:              ; preds = %for.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_dfa.exit

if.then.i81:                                      ; preds = %for.end26
  %call.i.i.i.i.i.i.i78 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %37, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !155
  tail call void @llvm.prefetch.p0(ptr nonnull %37, i32 1, i32 3, i32 1) #10
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %37, ptr nonnull %37, i32 1, ptr nonnull elementtype(i32) %37) #10, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i79 = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i79)
  %cmp.i.i.i.i.i80 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i79, 1
  br i1 %cmp.i.i.i.i.i80, label %if.then.i.i85, label %if.end5.i.i.i.i.i83

if.end5.i.i.i.i.i83:                              ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i79)
  %.not.i.i.i.i.i82 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i79, 0
  br i1 %.not.i.i.i.i.i82, label %if.end5.i.i.i.i.i83.aa_put_dfa.exit_crit_edge, label %if.then10.i.i.i.i.i84, !prof !152

if.end5.i.i.i.i.i83.aa_put_dfa.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i83
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_dfa.exit

if.then10.i.i.i.i.i84:                            ; preds = %if.end5.i.i.i.i.i83
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %37, i32 noundef 3) #10
  br label %aa_put_dfa.exit

if.then.i.i85:                                    ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @aa_dfa_free_kref(ptr noundef nonnull %37) #10
  br label %aa_put_dfa.exit

aa_put_dfa.exit:                                  ; preds = %if.then.i.i85, %if.then10.i.i.i.i.i84, %if.end5.i.i.i.i.i83.aa_put_dfa.exit_crit_edge, %for.end26.aa_put_dfa.exit_crit_edge
  %policy = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 12
  %39 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %policy, align 4
  %tobool.not.i86 = icmp eq ptr %40, null
  br i1 %tobool.not.i86, label %aa_put_dfa.exit.aa_put_dfa.exit95_crit_edge, label %if.then.i90

aa_put_dfa.exit.aa_put_dfa.exit95_crit_edge:      ; preds = %aa_put_dfa.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_dfa.exit95

if.then.i90:                                      ; preds = %aa_put_dfa.exit
  %call.i.i.i.i.i.i.i87 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %40, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !155
  tail call void @llvm.prefetch.p0(ptr nonnull %40, i32 1, i32 3, i32 1) #10
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %40, ptr nonnull %40, i32 1, ptr nonnull elementtype(i32) %40) #10, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i88 = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i88)
  %cmp.i.i.i.i.i89 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i88, 1
  br i1 %cmp.i.i.i.i.i89, label %if.then.i.i94, label %if.end5.i.i.i.i.i92

if.end5.i.i.i.i.i92:                              ; preds = %if.then.i90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i88)
  %.not.i.i.i.i.i91 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i88, 0
  br i1 %.not.i.i.i.i.i91, label %if.end5.i.i.i.i.i92.aa_put_dfa.exit95_crit_edge, label %if.then10.i.i.i.i.i93, !prof !152

if.end5.i.i.i.i.i92.aa_put_dfa.exit95_crit_edge:  ; preds = %if.end5.i.i.i.i.i92
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_dfa.exit95

if.then10.i.i.i.i.i93:                            ; preds = %if.end5.i.i.i.i.i92
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %40, i32 noundef 3) #10
  br label %aa_put_dfa.exit95

if.then.i.i94:                                    ; preds = %if.then.i90
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @aa_dfa_free_kref(ptr noundef nonnull %40) #10
  br label %aa_put_dfa.exit95

aa_put_dfa.exit95:                                ; preds = %if.then.i.i94, %if.then10.i.i.i.i.i93, %if.end5.i.i.i.i.i92.aa_put_dfa.exit95_crit_edge, %aa_put_dfa.exit.aa_put_dfa.exit95_crit_edge
  %data = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 24
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data, align 4
  %tobool28.not = icmp eq ptr %43, null
  br i1 %tobool28.not, label %aa_put_dfa.exit95.if.end32_crit_edge, label %if.then29

aa_put_dfa.exit95.if.end32_crit_edge:             ; preds = %aa_put_dfa.exit95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then29:                                        ; preds = %aa_put_dfa.exit95
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %data, align 4
  tail call void @rhashtable_free_and_destroy(ptr noundef nonnull %43, ptr noundef nonnull @aa_free_data, ptr noundef null) #10
  tail call void @kfree_sensitive(ptr noundef nonnull %43) #10
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %aa_put_dfa.exit95.if.end32_crit_edge
  %hash = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 21
  %45 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hash, align 4
  tail call void @kfree_sensitive(ptr noundef %46) #10
  %rawdata = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 20
  %47 = ptrtoint ptr %rawdata to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rawdata, align 4
  %tobool.not.i96 = icmp eq ptr %48, null
  br i1 %tobool.not.i96, label %if.end32.aa_put_loaddata.exit_crit_edge, label %if.then.i100

if.end32.aa_put_loaddata.exit_crit_edge:          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_loaddata.exit

if.then.i100:                                     ; preds = %if.end32
  %call.i.i.i.i.i.i.i97 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %48, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !155
  tail call void @llvm.prefetch.p0(ptr nonnull %48, i32 1, i32 3, i32 1) #10
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %48, ptr nonnull %48, i32 1, ptr nonnull elementtype(i32) %48) #10, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i98 = extractvalue { i32, i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i98)
  %cmp.i.i.i.i.i99 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i98, 1
  br i1 %cmp.i.i.i.i.i99, label %if.then.i.i104, label %if.end5.i.i.i.i.i102

if.end5.i.i.i.i.i102:                             ; preds = %if.then.i100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i98)
  %.not.i.i.i.i.i101 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i98, 0
  br i1 %.not.i.i.i.i.i101, label %if.end5.i.i.i.i.i102.aa_put_loaddata.exit_crit_edge, label %if.then10.i.i.i.i.i103, !prof !152

if.end5.i.i.i.i.i102.aa_put_loaddata.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i102
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_loaddata.exit

if.then10.i.i.i.i.i103:                           ; preds = %if.end5.i.i.i.i.i102
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %48, i32 noundef 3) #10
  br label %aa_put_loaddata.exit

if.then.i.i104:                                   ; preds = %if.then.i100
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @aa_loaddata_kref(ptr noundef nonnull %48) #10
  br label %aa_put_loaddata.exit

aa_put_loaddata.exit:                             ; preds = %if.then.i.i104, %if.then10.i.i.i.i.i103, %if.end5.i.i.i.i.i102.aa_put_loaddata.exit_crit_edge, %if.end32.aa_put_loaddata.exit_crit_edge
  %label33 = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 25
  tail call void @aa_label_destroy(ptr noundef %label33) #10
  tail call void @kfree_sensitive(ptr noundef %profile) #10
  br label %cleanup

cleanup:                                          ; preds = %aa_put_loaddata.exit, %do.end10.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_policy_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_free_and_destroy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aa_free_data(ptr noundef %ptr, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.aa_data, ptr %ptr, i32 0, i32 2
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  tail call void @kfree_sensitive(ptr noundef %1) #10
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptr, align 4
  tail call void @kfree_sensitive(ptr noundef %3) #10
  tail call void @kfree_sensitive(ptr noundef %ptr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_label_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aa_alloc_profile(ptr noundef %hname, ptr noundef %proxy, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %gfp, 256
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i20.i.i, !prof !152

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end.i20.i.i:                                   ; preds = %entry
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i20.i.i.kzalloc.exit_crit_edge

if.end.i20.i.i.kzalloc.exit_crit_edge:            ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i20.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i21.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i20.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i, i32 9
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 456) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  %call2 = tail call zeroext i1 @aa_policy_init(ptr noundef nonnull %call7.i.i, ptr noundef null, ptr noundef %hname, i32 noundef %gfp) #10
  br i1 %call2, label %if.end4, label %if.end.fail_crit_edge

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end4:                                          ; preds = %if.end
  %label = getelementptr inbounds %struct.aa_profile, ptr %call7.i.i, i32 0, i32 25
  %call5 = tail call zeroext i1 @aa_label_init(ptr noundef %label, i32 noundef 1, i32 noundef %gfp) #10
  br i1 %call5, label %if.end7, label %if.end4.fail_crit_edge

if.end4.fail_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end7:                                          ; preds = %if.end4
  %tobool8.not = icmp eq ptr %proxy, null
  br i1 %tobool8.not, label %if.then9, label %if.then.i

if.then9:                                         ; preds = %if.end7
  %call11 = tail call ptr @aa_alloc_proxy(ptr noundef %label, i32 noundef %gfp) #10
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.then9.fail_crit_edge, label %if.then9.if.end16_crit_edge

if.then9.if.end16_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then9.fail_crit_edge:                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.then.i:                                        ; preds = %if.end7
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %proxy, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull %proxy, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %proxy, ptr nonnull %proxy, i32 1, ptr nonnull elementtype(i32) %proxy) #10, !srcloc !158
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !151

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end16_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !152

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end16_crit_edge:             ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %proxy, i32 noundef %.sink.i.i.i.i.i) #10
  br label %if.end16

if.end16:                                         ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end16_crit_edge, %if.then9.if.end16_crit_edge
  %proxy.addr.0 = phi ptr [ %call11, %if.then9.if.end16_crit_edge ], [ %proxy, %if.else.i.i.i.i.i.if.end16_crit_edge ], [ %proxy, %if.end15.sink.split.i.i.i.i.i ]
  %proxy18 = getelementptr inbounds %struct.aa_profile, ptr %call7.i.i, i32 0, i32 25, i32 3
  %4 = ptrtoint ptr %proxy18 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %proxy.addr.0, ptr %proxy18, align 4
  %hname20 = getelementptr inbounds %struct.aa_policy, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %hname20 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hname20, align 4
  %hname22 = getelementptr inbounds %struct.aa_profile, ptr %call7.i.i, i32 0, i32 25, i32 4
  %7 = ptrtoint ptr %hname22 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %hname22, align 8
  %flags = getelementptr inbounds %struct.aa_profile, ptr %call7.i.i, i32 0, i32 25, i32 5
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %or = or i32 %9, 512
  store i32 %or, ptr %flags, align 4
  %vec = getelementptr inbounds %struct.aa_profile, ptr %call7.i.i, i32 1
  %10 = ptrtoint ptr %vec to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %vec, align 8
  br label %cleanup

fail:                                             ; preds = %if.then9.fail_crit_edge, %if.end4.fail_crit_edge, %if.end.fail_crit_edge
  tail call void @aa_free_profile(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end16, %kzalloc.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end16 ], [ null, %fail ], [ null, %kzalloc.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @aa_policy_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @aa_label_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aa_alloc_proxy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aa_find_child(ptr noundef %parent, ptr nocapture noundef readonly %name) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !159
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 696, ptr noundef nonnull @.str.38) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %profiles = getelementptr inbounds %struct.aa_policy, ptr %parent, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %kref_get_unless_zero.exit.i.do.body_crit_edge, %rcu_read_lock.exit
  %call = call fastcc ptr @__find_child(ptr noundef %profiles, ptr noundef %name)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %land.lhs.true.i6

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true.i6:                                 ; preds = %do.body
  %label.i = getelementptr inbounds %struct.aa_profile, ptr %call, i32 0, i32 25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #10
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %label.i, i32 noundef 4) #10
  %4 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %label.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %land.lhs.true.i6
  %6 = phi i32 [ %5, %land.lhs.true.i6 ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %7 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %6, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %label.i, i32 noundef 4) #10
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #10
  %8 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %label.i, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %10 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %label.i, ptr %label.i, i32 %9, i32 %add.i.i.i.i.i, ptr elementtype(i32) %label.i) #10, !srcloc !160
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %9
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !152

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %11 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %12, 1
  %13 = or i32 %add5.i.i.i.i.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !152

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %label.i, i32 noundef 0) #10
  %14 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %15 = phi i32 [ %12, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  %tobool12.i.i.i.i.not.i = icmp eq i32 %15, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #10
  br i1 %tobool12.i.i.i.i.not.i, label %kref_get_unless_zero.exit.i.do.body_crit_edge, label %kref_get_unless_zero.exit.i.do.end_crit_edge

kref_get_unless_zero.exit.i.do.end_crit_edge:     ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

kref_get_unless_zero.exit.i.do.body_crit_edge:    ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %kref_get_unless_zero.exit.i.do.end_crit_edge, %do.body.do.end_crit_edge
  %call.i7 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i7, label %do.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i10

do.end.rcu_read_unlock.exit_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i10:                                ; preds = %do.end
  %call1.i8 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %tobool.not.i9 = icmp eq i32 %call1.i8, 0
  br i1 %tobool.not.i9, label %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i12

land.lhs.true.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i12:                               ; preds = %land.lhs.true.i10
  %.b4.i11 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i11, label %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, label %if.then.i13

land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i13:                                      ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.41) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i13, %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, %do.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !161
  %16 = call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i.i14 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i14 to ptr
  %preempt_count.i.i.i.i15 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i15, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i15, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__find_child(ptr noundef %head, ptr nocapture noundef readonly %name) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %name) #14
  %call.i.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %entry.do.end.i.i_crit_edge

entry.do.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b25.i.i = load i1, ptr @__policy_strn_find.__warned, align 1
  br i1 %.b25.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__policy_strn_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 196, ptr noundef nonnull @.str.40) #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %entry.do.end.i.i_crit_edge
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn26.i.i = load volatile ptr, ptr %head, align 4
  %cmp.not28.i.i = icmp eq ptr %.pn26.i.i, %head
  br i1 %cmp.not28.i.i, label %do.end.i.i.__strn_find_child.exit_crit_edge, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %for.body.i.i

do.end.i.i.__strn_find_child.exit_crit_edge:      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__strn_find_child.exit

for.body.i.i:                                     ; preds = %for.cond.backedge.i.i.for.body.i.i_crit_edge, %do.end.i.i.for.body.i.i_crit_edge
  %.pn29.i.i = phi ptr [ %.pn.i.i, %for.cond.backedge.i.i.for.body.i.i_crit_edge ], [ %.pn26.i.i, %do.end.i.i.for.body.i.i_crit_edge ]
  %policy.030.i.i = getelementptr i8, ptr %.pn29.i.i, i32 -8
  %1 = ptrtoint ptr %policy.030.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %policy.030.i.i, align 4
  %call.i.i.i = tail call i32 @strncmp(ptr noundef %2, ptr noundef %name, i32 noundef %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %for.body.i.i.for.cond.backedge.i.i_crit_edge

for.body.i.i.for.cond.backedge.i.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge.i.i

land.rhs.i.i.i:                                   ; preds = %for.body.i.i
  %arrayidx.i.i.i = getelementptr i8, ptr %2, i32 %call
  %3 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not.i.i.i = icmp eq i8 %4, 0
  br i1 %tobool1.not.i.i.i, label %__strn_find_child.exit.loopexit.split.loop.exit, label %land.rhs.i.i.i.for.cond.backedge.i.i_crit_edge

land.rhs.i.i.i.for.cond.backedge.i.i_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge.i.i

for.cond.backedge.i.i:                            ; preds = %land.rhs.i.i.i.for.cond.backedge.i.i_crit_edge, %for.body.i.i.for.cond.backedge.i.i_crit_edge
  %5 = ptrtoint ptr %.pn29.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i.i = load volatile ptr, ptr %.pn29.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %head
  br i1 %cmp.not.i.i, label %for.cond.backedge.i.i.__strn_find_child.exit_crit_edge, label %for.cond.backedge.i.i.for.body.i.i_crit_edge

for.cond.backedge.i.i.for.body.i.i_crit_edge:     ; preds = %for.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.cond.backedge.i.i.__strn_find_child.exit_crit_edge: ; preds = %for.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__strn_find_child.exit

__strn_find_child.exit.loopexit.split.loop.exit:  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %policy.030.i.i.le = getelementptr i8, ptr %.pn29.i.i, i32 -8
  br label %__strn_find_child.exit

__strn_find_child.exit:                           ; preds = %__strn_find_child.exit.loopexit.split.loop.exit, %for.cond.backedge.i.i.__strn_find_child.exit_crit_edge, %do.end.i.i.__strn_find_child.exit_crit_edge
  %retval.0.i.i = phi ptr [ null, %do.end.i.i.__strn_find_child.exit_crit_edge ], [ %policy.030.i.i.le, %__strn_find_child.exit.loopexit.split.loop.exit ], [ null, %for.cond.backedge.i.i.__strn_find_child.exit_crit_edge ]
  ret ptr %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aa_lookupn_profile(ptr noundef %ns, ptr noundef %hname, i32 noundef %n) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !159
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.do.body.preheader_crit_edge, label %land.lhs.true.i

entry.do.body.preheader_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.preheader

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.body.preheader_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.do.body.preheader_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.preheader

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.do.body.preheader_crit_edge, label %if.then.i

land.lhs.true2.i.do.body.preheader_crit_edge:     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.preheader

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 696, ptr noundef nonnull @.str.38) #10
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.then.i, %land.lhs.true2.i.do.body.preheader_crit_edge, %land.lhs.true.i.do.body.preheader_crit_edge, %entry.do.body.preheader_crit_edge
  br label %do.body

do.body:                                          ; preds = %kref_get_unless_zero.exit.i.do.body_crit_edge, %do.body.preheader
  %call = call fastcc ptr @__lookupn_profile(ptr noundef %ns, ptr noundef %hname, i32 noundef %n)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %land.lhs.true.critedge, label %land.lhs.true.i13

land.lhs.true.i13:                                ; preds = %do.body
  %label.i = getelementptr inbounds %struct.aa_profile, ptr %call, i32 0, i32 25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #10
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %label.i, i32 noundef 4) #10
  %4 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %label.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %land.lhs.true.i13
  %6 = phi i32 [ %5, %land.lhs.true.i13 ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %7 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %6, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %label.i, i32 noundef 4) #10
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #10
  %8 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %label.i, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %10 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %label.i, ptr %label.i, i32 %9, i32 %add.i.i.i.i.i, ptr elementtype(i32) %label.i) #10, !srcloc !160
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %9
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !152

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %11 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %12, 1
  %13 = or i32 %add5.i.i.i.i.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !152

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %label.i, i32 noundef 0) #10
  %14 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %15 = phi i32 [ %12, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  %tobool12.i.i.i.i.not.i = icmp eq i32 %15, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #10
  br i1 %tobool12.i.i.i.i.not.i, label %kref_get_unless_zero.exit.i.do.body_crit_edge, label %if.end.critedge

kref_get_unless_zero.exit.i.do.body_crit_edge:    ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true.critedge:                           ; preds = %do.body
  %call.i14 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i14, label %land.lhs.true.critedge.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i17

land.lhs.true.critedge.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i17:                                ; preds = %land.lhs.true.critedge
  %call1.i15 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15)
  %tobool.not.i16 = icmp eq i32 %call1.i15, 0
  br i1 %tobool.not.i16, label %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i19

land.lhs.true.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i19:                               ; preds = %land.lhs.true.i17
  %.b4.i18 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i18, label %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, label %if.then.i20

land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i20:                                      ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.41) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i20, %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, %land.lhs.true.critedge.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !161
  %16 = call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i.i21 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i21 to ptr
  %preempt_count.i.i.i.i22 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i22, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i22, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %call4 = call i32 @strncmp(ptr noundef %hname, ptr noundef nonnull @.str.3, i32 noundef %n)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %rcu_read_unlock.exit.if.end_crit_edge

rcu_read_unlock.exit.if.end_crit_edge:            ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %unconfined = getelementptr inbounds %struct.aa_ns, ptr %ns, i32 0, i32 4
  %20 = ptrtoint ptr %unconfined to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %unconfined, align 4
  %label.i23 = getelementptr inbounds %struct.aa_profile, ptr %21, i32 0, i32 25
  %call.i24 = call fastcc ptr @aa_get_newest_label(ptr noundef %label.i23) #10
  %call2.i = call fastcc ptr @aa_get_newest_label(ptr noundef %label.i23) #10
  %size.i = getelementptr inbounds %struct.aa_label, ptr %call2.i, i32 0, i32 7
  %22 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size.i, align 4
  %sub.i = add i32 %23, -1
  %arrayidx.i = getelementptr %struct.aa_label, ptr %call.i24, i32 0, i32 8, i32 %sub.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  br label %if.end

if.end.critedge:                                  ; preds = %kref_get_unless_zero.exit.i
  %call.i25 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i25, label %if.end.critedge.rcu_read_unlock.exit35_crit_edge, label %land.lhs.true.i28

if.end.critedge.rcu_read_unlock.exit35_crit_edge: ; preds = %if.end.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit35

land.lhs.true.i28:                                ; preds = %if.end.critedge
  %call1.i26 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26)
  %tobool.not.i27 = icmp eq i32 %call1.i26, 0
  br i1 %tobool.not.i27, label %land.lhs.true.i28.rcu_read_unlock.exit35_crit_edge, label %land.lhs.true2.i30

land.lhs.true.i28.rcu_read_unlock.exit35_crit_edge: ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit35

land.lhs.true2.i30:                               ; preds = %land.lhs.true.i28
  %.b4.i29 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i29, label %land.lhs.true2.i30.rcu_read_unlock.exit35_crit_edge, label %if.then.i31

land.lhs.true2.i30.rcu_read_unlock.exit35_crit_edge: ; preds = %land.lhs.true2.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit35

if.then.i31:                                      ; preds = %land.lhs.true2.i30
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.41) #10
  br label %rcu_read_unlock.exit35

rcu_read_unlock.exit35:                           ; preds = %if.then.i31, %land.lhs.true2.i30.rcu_read_unlock.exit35_crit_edge, %land.lhs.true.i28.rcu_read_unlock.exit35_crit_edge, %if.end.critedge.rcu_read_unlock.exit35_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !161
  %26 = call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i.i32 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i32 to ptr
  %preempt_count.i.i.i.i33 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i33, align 4
  %sub.i.i.i34 = add i32 %29, -1
  store volatile i32 %sub.i.i.i34, ptr %preempt_count.i.i.i.i33, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %if.end

if.end:                                           ; preds = %rcu_read_unlock.exit35, %if.then, %rcu_read_unlock.exit.if.end_crit_edge
  %profile.0 = phi ptr [ %25, %if.then ], [ null, %rcu_read_unlock.exit.if.end_crit_edge ], [ %call, %rcu_read_unlock.exit35 ]
  ret ptr %profile.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__lookupn_profile(ptr noundef %base, ptr noundef %hname, i32 noundef %n) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @strnstr(ptr noundef %hname, ptr noundef nonnull @.str.42, i32 noundef %n) #10
  %tobool.not66 = icmp eq ptr %call, null
  br i1 %tobool.not66, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %split.070 = phi ptr [ %call8, %if.end.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %n.addr.069 = phi i32 [ %sub, %if.end.for.body_crit_edge ], [ %n, %entry.for.body_crit_edge ]
  %hname.addr.068 = phi ptr [ %add.ptr, %if.end.for.body_crit_edge ], [ %hname, %entry.for.body_crit_edge ]
  %base.addr.067 = phi ptr [ %policy.030.i.i.le, %if.end.for.body_crit_edge ], [ %base, %entry.for.body_crit_edge ]
  %profiles = getelementptr inbounds %struct.aa_policy, ptr %base.addr.067, i32 0, i32 3
  %sub.ptr.lhs.cast = ptrtoint ptr %split.070 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %hname.addr.068 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call.i.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %for.body.do.end.i.i_crit_edge

for.body.do.end.i.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %for.body
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b25.i.i = load i1, ptr @__policy_strn_find.__warned, align 1
  br i1 %.b25.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__policy_strn_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 196, ptr noundef nonnull @.str.40) #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %for.body.do.end.i.i_crit_edge
  %0 = ptrtoint ptr %profiles to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn26.i.i = load volatile ptr, ptr %profiles, align 4
  %cmp.not28.i.i = icmp eq ptr %.pn26.i.i, %profiles
  br i1 %cmp.not28.i.i, label %do.end.i.i.cleanup_crit_edge, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %for.body.i.i

do.end.i.i.cleanup_crit_edge:                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i.i:                                     ; preds = %for.cond.backedge.i.i.for.body.i.i_crit_edge, %do.end.i.i.for.body.i.i_crit_edge
  %.pn29.i.i = phi ptr [ %.pn.i.i, %for.cond.backedge.i.i.for.body.i.i_crit_edge ], [ %.pn26.i.i, %do.end.i.i.for.body.i.i_crit_edge ]
  %policy.030.i.i = getelementptr i8, ptr %.pn29.i.i, i32 -8
  %1 = ptrtoint ptr %policy.030.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %policy.030.i.i, align 4
  %call.i.i.i = tail call i32 @strncmp(ptr noundef %2, ptr noundef %hname.addr.068, i32 noundef %sub.ptr.sub) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %for.body.i.i.for.cond.backedge.i.i_crit_edge

for.body.i.i.for.cond.backedge.i.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge.i.i

land.rhs.i.i.i:                                   ; preds = %for.body.i.i
  %arrayidx.i.i.i = getelementptr i8, ptr %2, i32 %sub.ptr.sub
  %3 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not.i.i.i = icmp eq i8 %4, 0
  br i1 %tobool1.not.i.i.i, label %__strn_find_child.exit, label %land.rhs.i.i.i.for.cond.backedge.i.i_crit_edge

land.rhs.i.i.i.for.cond.backedge.i.i_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge.i.i

for.cond.backedge.i.i:                            ; preds = %land.rhs.i.i.i.for.cond.backedge.i.i_crit_edge, %for.body.i.i.for.cond.backedge.i.i_crit_edge
  %5 = ptrtoint ptr %.pn29.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i.i = load volatile ptr, ptr %.pn29.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %profiles
  br i1 %cmp.not.i.i, label %for.cond.backedge.i.i.cleanup_crit_edge, label %for.cond.backedge.i.i.for.body.i.i_crit_edge

for.cond.backedge.i.i.for.body.i.i_crit_edge:     ; preds = %for.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.cond.backedge.i.i.cleanup_crit_edge:          ; preds = %for.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

__strn_find_child.exit:                           ; preds = %land.rhs.i.i.i
  %policy.030.i.i.le = getelementptr i8, ptr %.pn29.i.i, i32 -8
  %tobool2.not = icmp eq ptr %policy.030.i.i.le, null
  br i1 %tobool2.not, label %__strn_find_child.exit.cleanup_crit_edge, label %if.end

__strn_find_child.exit.cleanup_crit_edge:         ; preds = %__strn_find_child.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %__strn_find_child.exit
  %add.ptr = getelementptr i8, ptr %split.070, i32 2
  %sub.ptr.lhs.cast4 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub6.neg = sub i32 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast4
  %sub = add i32 %sub.ptr.sub6.neg, %n.addr.069
  %call8 = tail call ptr @strnstr(ptr noundef %add.ptr, ptr noundef nonnull @.str.42, i32 noundef %sub) #10
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %base.addr.0.lcssa = phi ptr [ %base, %entry.for.end_crit_edge ], [ %policy.030.i.i.le, %if.end.for.end_crit_edge ]
  %hname.addr.0.lcssa = phi ptr [ %hname, %entry.for.end_crit_edge ], [ %add.ptr, %if.end.for.end_crit_edge ]
  %n.addr.0.lcssa = phi i32 [ %n, %entry.for.end_crit_edge ], [ %sub, %if.end.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.lcssa)
  %tobool9.not = icmp eq i32 %n.addr.0.lcssa, 0
  br i1 %tobool9.not, label %for.end.cleanup_crit_edge, label %if.then10

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %for.end
  %profiles11 = getelementptr inbounds %struct.aa_policy, ptr %base.addr.0.lcssa, i32 0, i32 3
  %call.i.i29 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29)
  %tobool.not.i.i30 = icmp eq i32 %call.i.i29, 0
  br i1 %tobool.not.i.i30, label %land.lhs.true.i.i33, label %if.then10.do.end.i.i39_crit_edge

if.then10.do.end.i.i39_crit_edge:                 ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i39

land.lhs.true.i.i33:                              ; preds = %if.then10
  %call1.i.i31 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i31)
  %tobool2.not.i.i32 = icmp eq i32 %call1.i.i31, 0
  br i1 %tobool2.not.i.i32, label %land.lhs.true.i.i33.do.end.i.i39_crit_edge, label %land.lhs.true3.i.i35

land.lhs.true.i.i33.do.end.i.i39_crit_edge:       ; preds = %land.lhs.true.i.i33
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i39

land.lhs.true3.i.i35:                             ; preds = %land.lhs.true.i.i33
  %.b25.i.i34 = load i1, ptr @__policy_strn_find.__warned, align 1
  br i1 %.b25.i.i34, label %land.lhs.true3.i.i35.do.end.i.i39_crit_edge, label %if.then.i.i36

land.lhs.true3.i.i35.do.end.i.i39_crit_edge:      ; preds = %land.lhs.true3.i.i35
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i39

if.then.i.i36:                                    ; preds = %land.lhs.true3.i.i35
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__policy_strn_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 196, ptr noundef nonnull @.str.40) #10
  br label %do.end.i.i39

do.end.i.i39:                                     ; preds = %if.then.i.i36, %land.lhs.true3.i.i35.do.end.i.i39_crit_edge, %land.lhs.true.i.i33.do.end.i.i39_crit_edge, %if.then10.do.end.i.i39_crit_edge
  %6 = ptrtoint ptr %profiles11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn26.i.i37 = load volatile ptr, ptr %profiles11, align 4
  %cmp.not28.i.i38 = icmp eq ptr %.pn26.i.i37, %profiles11
  br i1 %cmp.not28.i.i38, label %do.end.i.i39.cleanup_crit_edge, label %do.end.i.i39.for.body.i.i44_crit_edge

do.end.i.i39.for.body.i.i44_crit_edge:            ; preds = %do.end.i.i39
  br label %for.body.i.i44

do.end.i.i39.cleanup_crit_edge:                   ; preds = %do.end.i.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i.i44:                                   ; preds = %for.cond.backedge.i.i50.for.body.i.i44_crit_edge, %do.end.i.i39.for.body.i.i44_crit_edge
  %.pn29.i.i40 = phi ptr [ %.pn.i.i48, %for.cond.backedge.i.i50.for.body.i.i44_crit_edge ], [ %.pn26.i.i37, %do.end.i.i39.for.body.i.i44_crit_edge ]
  %policy.030.i.i41 = getelementptr i8, ptr %.pn29.i.i40, i32 -8
  %7 = ptrtoint ptr %policy.030.i.i41 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %policy.030.i.i41, align 4
  %call.i.i.i42 = tail call i32 @strncmp(ptr noundef %8, ptr noundef %hname.addr.0.lcssa, i32 noundef %n.addr.0.lcssa) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i42)
  %tobool.not.i.i.i43 = icmp eq i32 %call.i.i.i42, 0
  br i1 %tobool.not.i.i.i43, label %land.rhs.i.i.i47, label %for.body.i.i44.for.cond.backedge.i.i50_crit_edge

for.body.i.i44.for.cond.backedge.i.i50_crit_edge: ; preds = %for.body.i.i44
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge.i.i50

land.rhs.i.i.i47:                                 ; preds = %for.body.i.i44
  %arrayidx.i.i.i45 = getelementptr i8, ptr %8, i32 %n.addr.0.lcssa
  %9 = ptrtoint ptr %arrayidx.i.i.i45 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.i.i45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool1.not.i.i.i46 = icmp eq i8 %10, 0
  br i1 %tobool1.not.i.i.i46, label %cleanup.loopexit.split.loop.exit, label %land.rhs.i.i.i47.for.cond.backedge.i.i50_crit_edge

land.rhs.i.i.i47.for.cond.backedge.i.i50_crit_edge: ; preds = %land.rhs.i.i.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge.i.i50

for.cond.backedge.i.i50:                          ; preds = %land.rhs.i.i.i47.for.cond.backedge.i.i50_crit_edge, %for.body.i.i44.for.cond.backedge.i.i50_crit_edge
  %11 = ptrtoint ptr %.pn29.i.i40 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i.i48 = load volatile ptr, ptr %.pn29.i.i40, align 4
  %cmp.not.i.i49 = icmp eq ptr %.pn.i.i48, %profiles11
  br i1 %cmp.not.i.i49, label %for.cond.backedge.i.i50.cleanup_crit_edge, label %for.cond.backedge.i.i50.for.body.i.i44_crit_edge

for.cond.backedge.i.i50.for.body.i.i44_crit_edge: ; preds = %for.cond.backedge.i.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i44

for.cond.backedge.i.i50.cleanup_crit_edge:        ; preds = %for.cond.backedge.i.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.loopexit.split.loop.exit:                 ; preds = %land.rhs.i.i.i47
  call void @__sanitizer_cov_trace_pc() #12
  %policy.030.i.i41.le = getelementptr i8, ptr %.pn29.i.i40, i32 -8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit, %for.cond.backedge.i.i50.cleanup_crit_edge, %do.end.i.i39.cleanup_crit_edge, %for.end.cleanup_crit_edge, %__strn_find_child.exit.cleanup_crit_edge, %for.cond.backedge.i.i.cleanup_crit_edge, %do.end.i.i.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %for.end.cleanup_crit_edge ], [ null, %do.end.i.i39.cleanup_crit_edge ], [ %policy.030.i.i41.le, %cleanup.loopexit.split.loop.exit ], [ null, %for.cond.backedge.i.i50.cleanup_crit_edge ], [ null, %for.cond.backedge.i.i.cleanup_crit_edge ], [ null, %__strn_find_child.exit.cleanup_crit_edge ], [ null, %do.end.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aa_lookup_profile(ptr noundef %ns, ptr noundef %hname) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %hname) #14
  %call1 = tail call ptr @aa_lookupn_profile(ptr noundef %ns, ptr noundef %hname, i32 noundef %call)
  ret ptr %call1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aa_fqlookupn_profile(ptr nocapture noundef readonly %base, ptr noundef %fqname, i32 noundef %n) local_unnamed_addr #0 align 64 {
entry:
  %ns_name = alloca ptr, align 4
  %ns_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ns_name) #10
  %0 = ptrtoint ptr %ns_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ns_name, align 4, !annotation !162
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ns_len) #10
  %1 = ptrtoint ptr %ns_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ns_len, align 4, !annotation !162
  %call = call ptr @aa_splitn_fqname(ptr noundef %fqname, i32 noundef %n, ptr noundef nonnull %ns_name, ptr noundef nonnull %ns_len) #10
  %2 = ptrtoint ptr %ns_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns_name, align 4
  %tobool.not = icmp eq ptr %3, null
  %vec6 = getelementptr inbounds %struct.aa_label, ptr %base, i32 0, i32 8
  %size8 = getelementptr inbounds %struct.aa_label, ptr %base, i32 0, i32 7
  %4 = ptrtoint ptr %size8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size8, align 4
  %sub9 = add i32 %5, -1
  %arrayidx10 = getelementptr ptr, ptr %vec6, i32 %sub9
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx10, align 4
  %ns11 = getelementptr inbounds %struct.aa_profile, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ns11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ns11, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %ns_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ns_len, align 4
  %call3 = call ptr @aa_lookupn_ns(ptr noundef %9, ptr noundef nonnull %3, i32 noundef %11) #10
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %if.then.if.end13_crit_edge

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %entry
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end13.thread, label %if.then.i

if.then.i:                                        ; preds = %if.else
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %unconfined.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.then.i.if.end13_crit_edge, label %if.then.i.i

if.then.i.if.end13_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then.i.i:                                      ; preds = %if.then.i
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %13, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #10
  %14 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #10, !srcloc !158
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !151

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.end13_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !152

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end13_crit_edge:           ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef %.sink.i.i.i.i.i.i) #10
  br label %if.end13

if.end13:                                         ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end13_crit_edge, %if.then.i.if.end13_crit_edge, %if.then.if.end13_crit_edge
  %ns.0 = phi ptr [ %call3, %if.then.if.end13_crit_edge ], [ %9, %if.then.i.if.end13_crit_edge ], [ %9, %if.else.i.i.i.i.i.i.if.end13_crit_edge ], [ %9, %if.end15.sink.split.i.i.i.i.i.i ]
  %tobool14.not = icmp eq ptr %call, null
  br i1 %tobool14.not, label %if.else18, label %if.end13.if.end24_crit_edge

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end13.thread:                                  ; preds = %if.else
  %tobool14.not56 = icmp eq ptr %call, null
  br i1 %tobool14.not56, label %if.end13.thread.cleanup_crit_edge, label %if.end13.thread.if.end24_crit_edge

if.end13.thread.if.end24_crit_edge:               ; preds = %if.end13.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end13.thread.cleanup_crit_edge:                ; preds = %if.end13.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else18:                                        ; preds = %if.end13
  %tobool19.not = icmp eq ptr %ns.0, null
  br i1 %tobool19.not, label %if.else18.cleanup_crit_edge, label %if.end24.thread51

if.else18.cleanup_crit_edge:                      ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24.thread51:                                ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #12
  %unconfined = getelementptr inbounds %struct.aa_ns, ptr %ns.0, i32 0, i32 4
  %16 = ptrtoint ptr %unconfined to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %unconfined, align 4
  %label.i = getelementptr inbounds %struct.aa_profile, ptr %17, i32 0, i32 25
  %call.i = call fastcc ptr @aa_get_newest_label(ptr noundef %label.i) #10
  %call2.i = call fastcc ptr @aa_get_newest_label(ptr noundef %label.i) #10
  %size.i = getelementptr inbounds %struct.aa_label, ptr %call2.i, i32 0, i32 7
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i, align 4
  %sub.i = add i32 %19, -1
  %arrayidx.i = getelementptr %struct.aa_label, ptr %call.i, i32 0, i32 8, i32 %sub.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  br label %if.then.i43

if.end24:                                         ; preds = %if.end13.thread.if.end24_crit_edge, %if.end13.if.end24_crit_edge
  %ns.057 = phi ptr [ null, %if.end13.thread.if.end24_crit_edge ], [ %ns.0, %if.end13.if.end24_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %fqname to i32
  %sub.ptr.sub.neg = add i32 %sub.ptr.rhs.cast, %n
  %sub16 = sub i32 %sub.ptr.sub.neg, %sub.ptr.lhs.cast
  %call17 = call ptr @aa_lookupn_profile(ptr noundef %ns.057, ptr noundef nonnull %call, i32 noundef %sub16)
  %tobool.not.i40 = icmp eq ptr %ns.057, null
  br i1 %tobool.not.i40, label %if.end24.cleanup_crit_edge, label %if.end24.if.then.i43_crit_edge

if.end24.if.then.i43_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i43

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i43:                                      ; preds = %if.end24.if.then.i43_crit_edge, %if.end24.thread51
  %ns.059 = phi ptr [ %ns.0, %if.end24.thread51 ], [ %ns.057, %if.end24.if.then.i43_crit_edge ]
  %profile.054 = phi ptr [ %21, %if.end24.thread51 ], [ %call17, %if.end24.if.then.i43_crit_edge ]
  %unconfined.i41 = getelementptr inbounds %struct.aa_ns, ptr %ns.059, i32 0, i32 4
  %22 = ptrtoint ptr %unconfined.i41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %unconfined.i41, align 4
  %tobool.not.i.i42 = icmp eq ptr %23, null
  br i1 %tobool.not.i.i42, label %if.then.i43.cleanup_crit_edge, label %if.then.i.i46

if.then.i43.cleanup_crit_edge:                    ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.i46:                                    ; preds = %if.then.i43
  %label.i.i44 = getelementptr inbounds %struct.aa_profile, ptr %23, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i45 = call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i44, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !155
  call void @llvm.prefetch.p0(ptr %label.i.i44, i32 1, i32 3, i32 1) #10
  %24 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i44, ptr %label.i.i44, i32 1, ptr elementtype(i32) %label.i.i44) #10, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i47 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i47, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !152

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %label.i.i44, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i.i46
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !157
  call void @aa_label_kref(ptr noundef %label.i.i44) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.then.i43.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.else18.cleanup_crit_edge, %if.end13.thread.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then.cleanup_crit_edge ], [ %call17, %if.end24.cleanup_crit_edge ], [ %profile.054, %if.then.i43.cleanup_crit_edge ], [ %profile.054, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %profile.054, %if.then10.i.i.i.i.i.i ], [ %profile.054, %if.then.i.i.i ], [ null, %if.else18.cleanup_crit_edge ], [ null, %if.end13.thread.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ns_len) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ns_name) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aa_splitn_fqname(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aa_lookupn_ns(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aa_new_null_profile(ptr noundef %parent, i1 noundef zeroext %hat, ptr noundef %base, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %parent, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !151

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 509, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.aa_new_null_profile) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool24.not = icmp eq ptr %base, null
  br i1 %tobool24.not, label %if.end.if.end36_crit_edge, label %if.then25

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then25:                                        ; preds = %if.end
  %hname = getelementptr inbounds %struct.aa_policy, ptr %parent, i32 0, i32 1
  %0 = ptrtoint ptr %hname to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hname, align 4
  %call = tail call i32 @strlen(ptr noundef %1) #14
  %add = add i32 %call, 8
  %call27 = tail call i32 @strlen(ptr noundef nonnull %base) #14
  %add28 = add i32 %add, %call27
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add28, i32 noundef %gfp) #15
  %tobool30.not = icmp eq ptr %call9.i, null
  br i1 %tobool30.not, label %if.then25.if.end36_crit_edge, label %if.then31

if.then25.if.end36_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then31:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %hname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hname, align 4
  %call34 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %call9.i, ptr noundef nonnull @.str.10, ptr noundef %3, ptr noundef nonnull %base)
  br label %name51

if.end36:                                         ; preds = %if.then25.if.end36_crit_edge, %if.end.if.end36_crit_edge
  %hname38 = getelementptr inbounds %struct.aa_policy, ptr %parent, i32 0, i32 1
  %4 = ptrtoint ptr %hname38 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hname38, align 4
  %call39 = tail call i32 @strlen(ptr noundef %5) #14
  %add42 = add i32 %call39, 17
  %call9.i192 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add42, i32 noundef %gfp) #15
  %tobool44.not = icmp eq ptr %call9.i192, null
  br i1 %tobool44.not, label %if.end36.cleanup_crit_edge, label %if.end46

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end46:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %hname38 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hname38, align 4
  %ns = getelementptr inbounds %struct.aa_profile, ptr %parent, i32 0, i32 2
  %8 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ns, align 4
  %uniq_null = getelementptr inbounds %struct.aa_ns, ptr %9, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %uniq_null, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !163
  tail call void @llvm.prefetch.p0(ptr %uniq_null, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uniq_null, ptr %uniq_null, i32 1, ptr elementtype(i32) %uniq_null) #10, !srcloc !164
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !165
  %call50 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %call9.i192, ptr noundef nonnull @.str.11, ptr noundef %7, i32 noundef %asmresult.i.i.i.i)
  br label %name51

name51:                                           ; preds = %if.end46, %if.then31
  %name.0 = phi ptr [ %call9.i, %if.then31 ], [ %call9.i192, %if.end46 ]
  %call.i = tail call ptr @strim(ptr noundef nonnull %name.0) #10
  %call1.i = tail call ptr @strstr(ptr noundef %call.i, ptr noundef nonnull @.str.42) #10
  %tobool.not7.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not7.i, label %name51.basename.exit_crit_edge, label %name51.for.body.i_crit_edge

name51.for.body.i_crit_edge:                      ; preds = %name51
  br label %for.body.i

name51.basename.exit_crit_edge:                   ; preds = %name51
  call void @__sanitizer_cov_trace_pc() #12
  br label %basename.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %name51.for.body.i_crit_edge
  %split.08.i = phi ptr [ %call2.i, %for.body.i.for.body.i_crit_edge ], [ %call1.i, %name51.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %split.08.i, i32 2
  %call2.i = tail call ptr @strstr(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.42) #10
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %for.body.i.basename.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.basename.exit_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %basename.exit

basename.exit:                                    ; preds = %for.body.i.basename.exit_crit_edge, %name51.basename.exit_crit_edge
  %hname.addr.0.lcssa.i = phi ptr [ %call.i, %name51.basename.exit_crit_edge ], [ %add.ptr.i, %for.body.i.basename.exit_crit_edge ]
  %call53 = tail call ptr @aa_find_child(ptr noundef %parent, ptr noundef %hname.addr.0.lcssa.i)
  %tobool54.not = icmp eq ptr %call53, null
  br i1 %tobool54.not, label %if.end56, label %basename.exit.out_crit_edge

basename.exit.out_crit_edge:                      ; preds = %basename.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end56:                                         ; preds = %basename.exit
  %call57 = tail call ptr @aa_alloc_profile(ptr noundef nonnull %name.0, ptr noundef null, i32 noundef %gfp)
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %fail, label %if.end60

if.end60:                                         ; preds = %if.end56
  %mode = getelementptr inbounds %struct.aa_profile, ptr %call57, i32 0, i32 8
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %mode, align 4
  %flags = getelementptr inbounds %struct.aa_profile, ptr %call57, i32 0, i32 25, i32 5
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %spec.select.v = select i1 %hat, i32 5, i32 4
  %spec.select = or i32 %13, %spec.select.v
  store i32 %spec.select, ptr %flags, align 4
  %path_flags = getelementptr inbounds %struct.aa_profile, ptr %parent, i32 0, i32 9
  %14 = ptrtoint ptr %path_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %path_flags, align 4
  %path_flags67 = getelementptr inbounds %struct.aa_profile, ptr %call57, i32 0, i32 9
  %16 = ptrtoint ptr %path_flags67 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %path_flags67, align 4
  br i1 %tobool.not, label %if.end60.aa_get_profile.exit_crit_edge, label %if.then.i197

if.end60.aa_get_profile.exit_crit_edge:           ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_get_profile.exit

if.then.i197:                                     ; preds = %if.end60
  %label.i = getelementptr inbounds %struct.aa_profile, ptr %parent, i32 0, i32 25
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %label.i, i32 1, i32 3, i32 1) #10
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i, ptr %label.i, i32 1, ptr elementtype(i32) %label.i) #10, !srcloc !158
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i197.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !151

if.then.i197.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i197
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i197
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %18 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.aa_get_profile.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !152

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.aa_get_profile.exit_crit_edge:  ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_get_profile.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i197.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i197.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %label.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %aa_get_profile.exit

aa_get_profile.exit:                              ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.aa_get_profile.exit_crit_edge, %if.end60.aa_get_profile.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !166
  %parent83 = getelementptr inbounds %struct.aa_profile, ptr %call57, i32 0, i32 1
  %19 = ptrtoint ptr %parent83 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %parent, ptr %parent83, align 4
  %ns94 = getelementptr inbounds %struct.aa_profile, ptr %parent, i32 0, i32 2
  %20 = ptrtoint ptr %ns94 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ns94, align 4
  %tobool.not.i199 = icmp eq ptr %21, null
  br i1 %tobool.not.i199, label %aa_get_profile.exit.aa_get_ns.exit_crit_edge, label %if.then.i201

aa_get_profile.exit.aa_get_ns.exit_crit_edge:     ; preds = %aa_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_get_ns.exit

if.then.i201:                                     ; preds = %aa_get_profile.exit
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %unconfined.i, align 4
  %tobool.not.i.i200 = icmp eq ptr %23, null
  br i1 %tobool.not.i.i200, label %if.then.i201.aa_get_ns.exit_crit_edge, label %if.then.i.i

if.then.i201.aa_get_ns.exit_crit_edge:            ; preds = %if.then.i201
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_get_ns.exit

if.then.i.i:                                      ; preds = %if.then.i201
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %23, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #10
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #10, !srcloc !158
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !151

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %25 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i.i.i.i = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.aa_get_ns.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !152

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.aa_get_ns.exit_crit_edge:     ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_get_ns.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef %.sink.i.i.i.i.i.i) #10
  br label %aa_get_ns.exit

aa_get_ns.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.aa_get_ns.exit_crit_edge, %if.then.i201.aa_get_ns.exit_crit_edge, %aa_get_profile.exit.aa_get_ns.exit_crit_edge
  %ns96 = getelementptr inbounds %struct.aa_profile, ptr %call57, i32 0, i32 2
  %26 = ptrtoint ptr %ns96 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %21, ptr %ns96, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nulldfa to i32))
  %27 = load ptr, ptr @nulldfa, align 4
  %tobool.not.i203 = icmp eq ptr %27, null
  br i1 %tobool.not.i203, label %aa_get_dfa.exit.thread, label %if.then.i207

aa_get_dfa.exit.thread:                           ; preds = %aa_get_ns.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dfa246 = getelementptr inbounds %struct.aa_profile, ptr %call57, i32 0, i32 13, i32 1
  %28 = ptrtoint ptr %dfa246 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %dfa246, align 4
  br label %aa_get_dfa.exit225

if.then.i207:                                     ; preds = %aa_get_ns.exit
  %call.i.i.i.i.i.i.i204 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %27, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull %27, i32 1, i32 3, i32 1) #10
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %27, ptr nonnull %27, i32 1, ptr nonnull elementtype(i32) %27) #10, !srcloc !158
  %asmresult.i.i.i.i.i.i.i205 = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i205)
  %tobool1.not.i.i.i.i.i206 = icmp eq i32 %asmresult.i.i.i.i.i.i.i205, 0
  br i1 %tobool1.not.i.i.i.i.i206, label %if.then.i207.if.end15.sink.split.i.i.i.i.i212_crit_edge, label %if.else.i.i.i.i.i210, !prof !151

if.then.i207.if.end15.sink.split.i.i.i.i.i212_crit_edge: ; preds = %if.then.i207
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i212

if.else.i.i.i.i.i210:                             ; preds = %if.then.i207
  %add.i.i.i.i.i208 = add i32 %asmresult.i.i.i.i.i.i.i205, 1
  %30 = or i32 %add.i.i.i.i.i208, %asmresult.i.i.i.i.i.i.i205
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %.not.i.i.i.i.i209 = icmp sgt i32 %30, -1
  br i1 %.not.i.i.i.i.i209, label %if.else.i.i.i.i.i210.aa_get_dfa.exit_crit_edge, label %if.else.i.i.i.i.i210.if.end15.sink.split.i.i.i.i.i212_crit_edge, !prof !152

if.else.i.i.i.i.i210.if.end15.sink.split.i.i.i.i.i212_crit_edge: ; preds = %if.else.i.i.i.i.i210
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i212

if.else.i.i.i.i.i210.aa_get_dfa.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i210
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_get_dfa.exit

if.end15.sink.split.i.i.i.i.i212:                 ; preds = %if.else.i.i.i.i.i210.if.end15.sink.split.i.i.i.i.i212_crit_edge, %if.then.i207.if.end15.sink.split.i.i.i.i.i212_crit_edge
  %.sink.i.i.i.i.i211 = phi i32 [ 2, %if.then.i207.if.end15.sink.split.i.i.i.i.i212_crit_edge ], [ 1, %if.else.i.i.i.i.i210.if.end15.sink.split.i.i.i.i.i212_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %27, i32 noundef %.sink.i.i.i.i.i211) #10
  br label %aa_get_dfa.exit

aa_get_dfa.exit:                                  ; preds = %if.end15.sink.split.i.i.i.i.i212, %if.else.i.i.i.i.i210.aa_get_dfa.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nulldfa to i32))
  %.pr = load ptr, ptr @nulldfa, align 4
  %dfa = getelementptr inbounds %struct.aa_profile, ptr %call57, i32 0, i32 13, i32 1
  %31 = ptrtoint ptr %dfa to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %27, ptr %dfa, align 4
  %tobool.not.i214 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i214, label %aa_get_dfa.exit.aa_get_dfa.exit225_crit_edge, label %if.then.i218

aa_get_dfa.exit.aa_get_dfa.exit225_crit_edge:     ; preds = %aa_get_dfa.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_get_dfa.exit225

if.then.i218:                                     ; preds = %aa_get_dfa.exit
  %call.i.i.i.i.i.i.i215 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %.pr, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull %.pr, i32 1, i32 3, i32 1) #10
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %.pr, ptr nonnull %.pr, i32 1, ptr nonnull elementtype(i32) %.pr) #10, !srcloc !158
  %asmresult.i.i.i.i.i.i.i216 = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i216)
  %tobool1.not.i.i.i.i.i217 = icmp eq i32 %asmresult.i.i.i.i.i.i.i216, 0
  br i1 %tobool1.not.i.i.i.i.i217, label %if.then.i218.if.end15.sink.split.i.i.i.i.i223_crit_edge, label %if.else.i.i.i.i.i221, !prof !151

if.then.i218.if.end15.sink.split.i.i.i.i.i223_crit_edge: ; preds = %if.then.i218
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i223

if.else.i.i.i.i.i221:                             ; preds = %if.then.i218
  %add.i.i.i.i.i219 = add i32 %asmresult.i.i.i.i.i.i.i216, 1
  %33 = or i32 %add.i.i.i.i.i219, %asmresult.i.i.i.i.i.i.i216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %.not.i.i.i.i.i220 = icmp sgt i32 %33, -1
  br i1 %.not.i.i.i.i.i220, label %if.else.i.i.i.i.i221.aa_get_dfa.exit225_crit_edge, label %if.else.i.i.i.i.i221.if.end15.sink.split.i.i.i.i.i223_crit_edge, !prof !152

if.else.i.i.i.i.i221.if.end15.sink.split.i.i.i.i.i223_crit_edge: ; preds = %if.else.i.i.i.i.i221
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i223

if.else.i.i.i.i.i221.aa_get_dfa.exit225_crit_edge: ; preds = %if.else.i.i.i.i.i221
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_get_dfa.exit225

if.end15.sink.split.i.i.i.i.i223:                 ; preds = %if.else.i.i.i.i.i221.if.end15.sink.split.i.i.i.i.i223_crit_edge, %if.then.i218.if.end15.sink.split.i.i.i.i.i223_crit_edge
  %.sink.i.i.i.i.i222 = phi i32 [ 2, %if.then.i218.if.end15.sink.split.i.i.i.i.i223_crit_edge ], [ 1, %if.else.i.i.i.i.i221.if.end15.sink.split.i.i.i.i.i223_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %.pr, i32 noundef %.sink.i.i.i.i.i222) #10
  br label %aa_get_dfa.exit225

aa_get_dfa.exit225:                               ; preds = %if.end15.sink.split.i.i.i.i.i223, %if.else.i.i.i.i.i221.aa_get_dfa.exit225_crit_edge, %aa_get_dfa.exit.aa_get_dfa.exit225_crit_edge, %aa_get_dfa.exit.thread
  %34 = phi ptr [ null, %aa_get_dfa.exit.thread ], [ null, %aa_get_dfa.exit.aa_get_dfa.exit225_crit_edge ], [ %.pr, %if.else.i.i.i.i.i221.aa_get_dfa.exit225_crit_edge ], [ %.pr, %if.end15.sink.split.i.i.i.i.i223 ]
  %policy = getelementptr inbounds %struct.aa_profile, ptr %call57, i32 0, i32 12
  %35 = ptrtoint ptr %policy to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %policy, align 4
  %36 = ptrtoint ptr %ns96 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ns96, align 4
  %lock = getelementptr inbounds %struct.aa_ns, ptr %37, i32 0, i32 2
  %level = getelementptr inbounds %struct.aa_ns, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %level, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef %39) #10
  %profiles = getelementptr inbounds %struct.aa_policy, ptr %parent, i32 0, i32 3
  %call103 = tail call fastcc ptr @__find_child(ptr noundef %profiles, ptr noundef %hname.addr.0.lcssa.i)
  %tobool104.not = icmp eq ptr %call103, null
  br i1 %tobool104.not, label %if.else, label %if.then.i231

if.then.i231:                                     ; preds = %aa_get_dfa.exit225
  tail call void @aa_free_profile(ptr noundef nonnull %call57)
  %label.i227 = getelementptr inbounds %struct.aa_profile, ptr %call103, i32 0, i32 25
  %call.i.i.i.i.i.i.i228 = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i227, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %label.i227, i32 1, i32 3, i32 1) #10
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i227, ptr %label.i227, i32 1, ptr elementtype(i32) %label.i227) #10, !srcloc !158
  %asmresult.i.i.i.i.i.i.i229 = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i229)
  %tobool1.not.i.i.i.i.i230 = icmp eq i32 %asmresult.i.i.i.i.i.i.i229, 0
  br i1 %tobool1.not.i.i.i.i.i230, label %if.then.i231.if.end15.sink.split.i.i.i.i.i236_crit_edge, label %if.else.i.i.i.i.i234, !prof !151

if.then.i231.if.end15.sink.split.i.i.i.i.i236_crit_edge: ; preds = %if.then.i231
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i236

if.else.i.i.i.i.i234:                             ; preds = %if.then.i231
  %add.i.i.i.i.i232 = add i32 %asmresult.i.i.i.i.i.i.i229, 1
  %41 = or i32 %add.i.i.i.i.i232, %asmresult.i.i.i.i.i.i.i229
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %.not.i.i.i.i.i233 = icmp sgt i32 %41, -1
  br i1 %.not.i.i.i.i.i233, label %if.else.i.i.i.i.i234.if.end109_crit_edge, label %if.else.i.i.i.i.i234.if.end15.sink.split.i.i.i.i.i236_crit_edge, !prof !152

if.else.i.i.i.i.i234.if.end15.sink.split.i.i.i.i.i236_crit_edge: ; preds = %if.else.i.i.i.i.i234
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i236

if.else.i.i.i.i.i234.if.end109_crit_edge:         ; preds = %if.else.i.i.i.i.i234
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

if.end15.sink.split.i.i.i.i.i236:                 ; preds = %if.else.i.i.i.i.i234.if.end15.sink.split.i.i.i.i.i236_crit_edge, %if.then.i231.if.end15.sink.split.i.i.i.i.i236_crit_edge
  %.sink.i.i.i.i.i235 = phi i32 [ 2, %if.then.i231.if.end15.sink.split.i.i.i.i.i236_crit_edge ], [ 1, %if.else.i.i.i.i.i234.if.end15.sink.split.i.i.i.i.i236_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %label.i227, i32 noundef %.sink.i.i.i.i.i235) #10
  br label %if.end109

if.else:                                          ; preds = %aa_get_dfa.exit225
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @__add_profile(ptr noundef %profiles, ptr noundef nonnull %call57)
  br label %if.end109

if.end109:                                        ; preds = %if.else, %if.end15.sink.split.i.i.i.i.i236, %if.else.i.i.i.i.i234.if.end109_crit_edge
  %profile.0 = phi ptr [ %call57, %if.else ], [ %call103, %if.else.i.i.i.i.i234.if.end109_crit_edge ], [ %call103, %if.end15.sink.split.i.i.i.i.i236 ]
  %ns110 = getelementptr inbounds %struct.aa_profile, ptr %profile.0, i32 0, i32 2
  %42 = ptrtoint ptr %ns110 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ns110, align 4
  %lock111 = getelementptr inbounds %struct.aa_ns, ptr %43, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %lock111) #10
  br label %out

out:                                              ; preds = %if.end109, %basename.exit.out_crit_edge
  %profile.1 = phi ptr [ %call53, %basename.exit.out_crit_edge ], [ %profile.0, %if.end109 ]
  tail call void @kfree(ptr noundef nonnull %name.0) #10
  br label %cleanup

fail:                                             ; preds = %if.end56
  tail call void @kfree(ptr noundef nonnull %name.0) #10
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_debug to i32))
  %44 = load i8, ptr @aa_g_debug, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i239 = icmp eq i8 %44, 0
  br i1 %tobool.not.i239, label %fail.cleanup_crit_edge, label %do.body1.i

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body1.i:                                       ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aa_free_profile.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aa_new_null_profile, %land.lhs.true.i)) #10
          to label %cleanup [label %land.lhs.true.i], !srcloc !154

land.lhs.true.i:                                  ; preds = %do.body1.i
  %call5.i = tail call i32 @___ratelimit(ptr noundef nonnull @aa_free_profile._rs, ptr noundef nonnull @.str.6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then7.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aa_free_profile.descriptor, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then7.i, %land.lhs.true.i.cleanup_crit_edge, %do.body1.i, %fail.cleanup_crit_edge, %out, %if.end36.cleanup_crit_edge
  %retval.0 = phi ptr [ %profile.1, %out ], [ null, %if.end36.cleanup_crit_edge ], [ null, %fail.cleanup_crit_edge ], [ null, %do.body1.i ], [ null, %land.lhs.true.i.cleanup_crit_edge ], [ null, %if.then7.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @aa_get_profile(ptr noundef returned %p) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %label = getelementptr inbounds %struct.aa_profile, ptr %p, i32 0, i32 25
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %label, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label, ptr %label, i32 1, ptr elementtype(i32) %label) #10, !srcloc !158
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !151

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !152

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %label, i32 noundef %.sink.i.i.i.i) #10
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %p
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__add_profile(ptr noundef %list, ptr noundef %profile) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %list, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !151

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 113, i32 noundef 9, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.__add_profile) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %profile, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !151

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 114, i32 noundef 9, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.__add_profile) #10
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %ns = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 2
  %0 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns, align 4
  %tobool62.not = icmp eq ptr %1, null
  br i1 %tobool62.not, label %do.end80, label %if.end50.if.end86_crit_edge, !prof !151

if.end50.if.end86_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

do.end80:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 115, i32 noundef 9, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.__add_profile) #10
  br label %if.end86

if.end86:                                         ; preds = %do.end80, %if.end50.if.end86_crit_edge
  %2 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns, align 4
  %lock = getelementptr inbounds %struct.aa_ns, ptr %3, i32 0, i32 2
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock) #10
  br i1 %call, label %if.end86.if.end122_crit_edge, label %do.end116, !prof !152

if.end86.if.end122_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

do.end116:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 116, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.__add_profile) #10
  br label %if.end122

if.end122:                                        ; preds = %do.end116, %if.end86.if.end122_crit_edge
  %list132 = getelementptr inbounds %struct.aa_policy, ptr %profile, i32 0, i32 2
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list132, ptr noundef %list, ptr noundef %5) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end122.list_add_rcu.exit_crit_edge

if.end122.list_add_rcu.exit_crit_edge:            ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_rcu.exit

if.end.i.i:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %list132 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %list132, align 4
  %prev2.i.i = getelementptr inbounds %struct.aa_policy, ptr %profile, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !167
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list132, ptr %list, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list132, ptr %prev37.i.i, align 4
  br label %list_add_rcu.exit

list_add_rcu.exit:                                ; preds = %if.end.i.i, %if.end122.list_add_rcu.exit_crit_edge
  br i1 %tobool26.not, label %list_add_rcu.exit.aa_get_profile.exit_crit_edge, label %if.then.i

list_add_rcu.exit.aa_get_profile.exit_crit_edge:  ; preds = %list_add_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_get_profile.exit

if.then.i:                                        ; preds = %list_add_rcu.exit
  %label.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 25
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %label.i, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i, ptr %label.i, i32 1, ptr elementtype(i32) %label.i) #10, !srcloc !158
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !151

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.aa_get_profile.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !152

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.aa_get_profile.exit_crit_edge:  ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_get_profile.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %label.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %aa_get_profile.exit

aa_get_profile.exit:                              ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.aa_get_profile.exit_crit_edge, %list_add_rcu.exit.aa_get_profile.exit_crit_edge
  %12 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ns, align 4
  %labels = getelementptr inbounds %struct.aa_ns, ptr %13, i32 0, i32 11
  %label = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 25
  %call135 = tail call ptr @aa_label_insert(ptr noundef %labels, ptr noundef %label) #10
  %cmp.not = icmp eq ptr %call135, %label
  br i1 %cmp.not, label %aa_get_profile.exit.if.end160_crit_edge, label %do.end154, !prof !152

aa_get_profile.exit.if.end160_crit_edge:          ; preds = %aa_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end160

do.end154:                                        ; preds = %aa_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 122, i32 noundef 9, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.__add_profile) #10
  br label %if.end160

if.end160:                                        ; preds = %do.end154, %aa_get_profile.exit.if.end160_crit_edge
  %tobool.not.i184 = icmp eq ptr %call135, null
  br i1 %tobool.not.i184, label %if.end160.aa_put_label.exit_crit_edge, label %if.then.i186

if.end160.aa_put_label.exit_crit_edge:            ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_label.exit

if.then.i186:                                     ; preds = %if.end160
  %call.i.i.i.i.i.i.i185 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call135, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !155
  tail call void @llvm.prefetch.p0(ptr nonnull %call135, i32 1, i32 3, i32 1) #10
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call135, ptr nonnull %call135, i32 1, ptr nonnull elementtype(i32) %call135) #10, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i187 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i187, label %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !152

if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_label.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call135, i32 noundef 3) #10
  br label %aa_put_label.exit

if.then.i.i:                                      ; preds = %if.then.i186
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @aa_label_kref(ptr noundef nonnull %call135) #10
  br label %aa_put_label.exit

aa_put_label.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, %if.end160.aa_put_label.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @aa_policy_view_capable(ptr nocapture noundef readonly %label, ptr noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %user_ns2 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns2, align 4
  %vec = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 8
  %size = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 7
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %sub = add i32 %9, -1
  %arrayidx3 = getelementptr ptr, ptr %vec, i32 %sub
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3, align 4
  %ns4 = getelementptr inbounds %struct.aa_profile, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ns4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ns4, align 4
  %euid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 8
  %14 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %14)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %euid, align 4
  %call13 = tail call i32 @make_kuid(ptr noundef %7, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %agg.tmp.sroa.0.0.copyload, i32 %call13)
  %cmp.i = icmp eq i32 %agg.tmp.sroa.0.0.copyload, %call13
  br i1 %cmp.i, label %lor.end.thread, label %lor.end

lor.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tobool22.not42 = icmp eq ptr %ns, null
  %spec.select43 = select i1 %tobool22.not42, ptr %13, ptr %ns
  br label %land.lhs.true

lor.end:                                          ; preds = %entry
  %call18 = tail call i32 @make_kgid(ptr noundef %7, i32 noundef 0) #10
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %call18, 0
  %call21 = tail call i32 @in_egroup_p([1 x i32] %.fca.0.insert) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool.not = icmp eq i32 %call21, 0
  %tobool22.not = icmp eq ptr %ns, null
  %spec.select = select i1 %tobool22.not, ptr %13, ptr %ns
  br i1 %tobool.not, label %lor.end.if.end31_crit_edge, label %lor.end.land.lhs.true_crit_edge

lor.end.land.lhs.true_crit_edge:                  ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

lor.end.if.end31_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true:                                    ; preds = %lor.end.land.lhs.true_crit_edge, %lor.end.thread
  %spec.select44 = phi ptr [ %spec.select43, %lor.end.thread ], [ %spec.select, %lor.end.land.lhs.true_crit_edge ]
  %call24 = tail call zeroext i1 @aa_ns_visible(ptr noundef %13, ptr noundef %spec.select44, i1 noundef zeroext true) #10
  br i1 %call24, label %land.lhs.true25, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true25:                                  ; preds = %land.lhs.true
  %cmp = icmp eq ptr %7, @init_user_ns
  br i1 %cmp, label %land.lhs.true25.if.then30_crit_edge, label %lor.lhs.false

land.lhs.true25.if.then30_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

lor.lhs.false:                                    ; preds = %land.lhs.true25
  %15 = load i32, ptr @unprivileged_userns_apparmor_policy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp26.not = icmp eq i32 %15, 0
  br i1 %cmp26.not, label %lor.lhs.false.if.end31_crit_edge, label %land.lhs.true27

lor.lhs.false.if.end31_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true27:                                  ; preds = %lor.lhs.false
  %level = getelementptr inbounds %struct.user_namespace, ptr %7, i32 0, i32 4
  %16 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %level, align 4
  %level28 = getelementptr inbounds %struct.aa_ns, ptr %13, i32 0, i32 8
  %18 = ptrtoint ptr %level28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %level28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp29 = icmp eq i32 %17, %19
  br i1 %cmp29, label %land.lhs.true27.if.then30_crit_edge, label %land.lhs.true27.if.end31_crit_edge

land.lhs.true27.if.end31_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true27.if.then30_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

if.then30:                                        ; preds = %land.lhs.true27.if.then30_crit_edge, %land.lhs.true25.if.then30_crit_edge
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %land.lhs.true27.if.end31_crit_edge, %lor.lhs.false.if.end31_crit_edge, %land.lhs.true.if.end31_crit_edge, %lor.end.if.end31_crit_edge
  %response.0.off0 = phi i1 [ true, %if.then30 ], [ false, %land.lhs.true27.if.end31_crit_edge ], [ false, %lor.lhs.false.if.end31_crit_edge ], [ false, %land.lhs.true.if.end31_crit_edge ], [ false, %lor.end.if.end31_crit_edge ]
  ret i1 %response.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_egroup_p([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @aa_ns_visible(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @aa_policy_admin_capable(ptr noundef %label, ptr noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %user_ns2 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns2, align 4
  %call1.i = tail call i32 @cap_capable(ptr noundef %5, ptr noundef %7, i32 noundef 33, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.policy_ns_capable.exit_crit_edge

entry.policy_ns_capable.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %policy_ns_capable.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i = tail call i32 @aa_capable(ptr noundef %label, i32 noundef 33, i32 noundef 0) #10
  br label %policy_ns_capable.exit

policy_ns_capable.exit:                           ; preds = %if.then.i, %entry.policy_ns_capable.exit_crit_edge
  %err.0.i = phi i32 [ %call1.i, %entry.policy_ns_capable.exit_crit_edge ], [ %call2.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp = icmp eq i32 %err.0.i, 0
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_debug to i32))
  %8 = load i8, ptr @aa_g_debug, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %policy_ns_capable.exit.do.body21_crit_edge, label %do.body5

policy_ns_capable.exit.do.body21_crit_edge:       ; preds = %policy_ns_capable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body21

do.body5:                                         ; preds = %policy_ns_capable.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aa_policy_admin_capable.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aa_policy_admin_capable, %land.lhs.true)) #10
          to label %do.body21 [label %land.lhs.true], !srcloc !154

land.lhs.true:                                    ; preds = %do.body5
  %call12 = tail call i32 @___ratelimit(ptr noundef nonnull @aa_policy_admin_capable._rs, ptr noundef nonnull @.str.13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.do.body21_crit_edge, label %if.then14

land.lhs.true.do.body21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body21

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i1 %cmp to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aa_policy_admin_capable.descriptor, ptr noundef nonnull @.str.14, i32 noundef %conv) #10
  br label %do.body21

do.body21:                                        ; preds = %if.then14, %land.lhs.true.do.body21_crit_edge, %do.body5, %policy_ns_capable.exit.do.body21_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_debug to i32))
  %9 = load i8, ptr @aa_g_debug, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool22.not = icmp eq i8 %9, 0
  br i1 %tobool22.not, label %do.body21.do.end47_crit_edge, label %do.body24

do.body21.do.end47_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47

do.body24:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aa_policy_admin_capable.descriptor.16, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aa_policy_admin_capable, %land.lhs.true36)) #10
          to label %do.end47 [label %land.lhs.true36], !srcloc !154

land.lhs.true36:                                  ; preds = %do.body24
  %call37 = tail call i32 @___ratelimit(ptr noundef nonnull @aa_policy_admin_capable._rs.15, ptr noundef nonnull @.str.13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %land.lhs.true36.do.end47_crit_edge, label %if.then39

land.lhs.true36.do.end47_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47

if.then39:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_lock_policy to i32))
  %10 = load i8, ptr @aa_g_lock_policy, align 1, !range !153
  %11 = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aa_policy_admin_capable.descriptor.16, ptr noundef nonnull @.str.17, i32 noundef %11) #10
  br label %do.end47

do.end47:                                         ; preds = %if.then39, %land.lhs.true36.do.end47_crit_edge, %do.body24, %do.body21.do.end47_crit_edge
  %call48 = tail call zeroext i1 @aa_policy_view_capable(ptr noundef %label, ptr noundef %ns)
  %12 = select i1 %call48, i1 %cmp, i1 false
  br i1 %12, label %land.rhs, label %do.end47.land.end_crit_edge

do.end47.land.end_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.rhs:                                         ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_lock_policy to i32))
  %13 = load i8, ptr @aa_g_lock_policy, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool53.not = icmp eq i8 %13, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end47.land.end_crit_edge
  %14 = phi i1 [ false, %do.end47.land.end_crit_edge ], [ %tobool53.not, %land.rhs ]
  ret i1 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @aa_current_policy_view_capable(ptr noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %tobool.not.i.i.i.i, label %do.end.i.i.i.i, label %entry.cred_label.exit.i.i.i_crit_edge, !prof !151

entry.cred_label.exit.i.i.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cred_label.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.cred_label) #10
  br label %cred_label.exit.i.i.i

cred_label.exit.i.i.i:                            ; preds = %do.end.i.i.i.i, %entry.cred_label.exit.i.i.i_crit_edge
  %9 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge, !prof !151

cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge: ; preds = %cred_label.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_current_raw_label.exit.i

do.end.i.i.i:                                     ; preds = %cred_label.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.aa_cred_raw_label) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %__begin_current_label_crit_section.exit

if.then.i:                                        ; preds = %aa_current_raw_label.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call fastcc ptr @aa_get_newest_label(ptr noundef %10) #10
  br label %__begin_current_label_crit_section.exit

__begin_current_label_crit_section.exit:          ; preds = %if.then.i, %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge
  %label.0.i = phi ptr [ %call1.i, %if.then.i ], [ %10, %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge ]
  %call1 = tail call zeroext i1 @aa_policy_view_capable(ptr noundef %label.0.i, ptr noundef %ns)
  tail call fastcc void @end_current_label_crit_section(ptr noundef %label.0.i)
  ret i1 %call1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @end_current_label_crit_section(ptr noundef %label) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %entry.cred_label.exit.i.i_crit_edge, !prof !151

entry.cred_label.exit.i.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cred_label.exit.i.i

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.cred_label) #10
  br label %cred_label.exit.i.i

cred_label.exit.i.i:                              ; preds = %do.end.i.i.i, %entry.cred_label.exit.i.i_crit_edge
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %cred_label.exit.i.i.aa_current_raw_label.exit_crit_edge, !prof !151

cred_label.exit.i.i.aa_current_raw_label.exit_crit_edge: ; preds = %cred_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_current_raw_label.exit

do.end.i.i:                                       ; preds = %cred_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.aa_cred_raw_label) #10
  br label %aa_current_raw_label.exit

aa_current_raw_label.exit:                        ; preds = %do.end.i.i, %cred_label.exit.i.i.aa_current_raw_label.exit_crit_edge
  %cmp.not = icmp eq ptr %10, %label
  %tobool.not.i = icmp eq ptr %label, null
  %or.cond = or i1 %tobool.not.i, %cmp.not
  br i1 %or.cond, label %aa_current_raw_label.exit.if.end_crit_edge, label %if.then.i

aa_current_raw_label.exit.if.end_crit_edge:       ; preds = %aa_current_raw_label.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %aa_current_raw_label.exit
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %label, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !155
  tail call void @llvm.prefetch.p0(ptr nonnull %label, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %label, ptr nonnull %label, i32 1, ptr nonnull elementtype(i32) %label) #10, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !152

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %label, i32 noundef 3) #10
  br label %if.end

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @aa_label_kref(ptr noundef nonnull %label) #10
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %aa_current_raw_label.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @aa_current_policy_admin_capable(ptr noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %tobool.not.i.i.i.i, label %do.end.i.i.i.i, label %entry.cred_label.exit.i.i.i_crit_edge, !prof !151

entry.cred_label.exit.i.i.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cred_label.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.cred_label) #10
  br label %cred_label.exit.i.i.i

cred_label.exit.i.i.i:                            ; preds = %do.end.i.i.i.i, %entry.cred_label.exit.i.i.i_crit_edge
  %9 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge, !prof !151

cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge: ; preds = %cred_label.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_current_raw_label.exit.i

do.end.i.i.i:                                     ; preds = %cred_label.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.aa_cred_raw_label) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %__begin_current_label_crit_section.exit

if.then.i:                                        ; preds = %aa_current_raw_label.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call fastcc ptr @aa_get_newest_label(ptr noundef %10) #10
  br label %__begin_current_label_crit_section.exit

__begin_current_label_crit_section.exit:          ; preds = %if.then.i, %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge
  %label.0.i = phi ptr [ %call1.i, %if.then.i ], [ %10, %aa_current_raw_label.exit.i.__begin_current_label_crit_section.exit_crit_edge ]
  %call1 = tail call zeroext i1 @aa_policy_admin_capable(ptr noundef %label.0.i, ptr noundef %ns)
  tail call fastcc void @end_current_label_crit_section(ptr noundef %label.0.i)
  ret i1 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_may_manage_policy(ptr noundef %label, ptr noundef %ns, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  %sa_aad.i17 = alloca %struct.apparmor_audit_data, align 4
  %sa.i18 = alloca %struct.common_audit_data, align 4
  %sa_aad.i = alloca %struct.apparmor_audit_data, align 4
  %sa.i = alloca %struct.common_audit_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mask, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and1 = and i32 %mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %.str.20..str.19 = select i1 %tobool2.not, ptr @.str.20, ptr @.str.19
  %op.0 = select i1 %tobool.not, ptr %.str.20..str.19, ptr @.str.18
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_lock_policy to i32))
  %0 = load i8, ptr @aa_g_lock_policy, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool6.not = icmp eq i8 %0, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sa_aad.i) #10
  %1 = getelementptr inbounds i8, ptr %sa_aad.i, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 52)
  %op2.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 2
  %3 = ptrtoint ptr %op2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %op.0, ptr %op2.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sa.i) #10
  %4 = call ptr @memcpy(ptr %sa.i, ptr @__const.audit_policy.sa, i32 12)
  %5 = getelementptr inbounds %struct.common_audit_data, ptr %sa.i, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %sa_aad.i, ptr %5, align 4
  %ns.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 8, i32 0, i32 1
  %7 = ptrtoint ptr %ns.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %ns.i, align 4
  %name6.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 4
  %8 = ptrtoint ptr %name6.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %name6.i, align 4
  %info7.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 5
  %9 = ptrtoint ptr %info7.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.21, ptr %info7.i, align 4
  %10 = ptrtoint ptr %sa_aad.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -13, ptr %sa_aad.i, align 4
  %label9.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 3
  %11 = ptrtoint ptr %label9.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %label, ptr %label9.i, align 4
  call void @aa_audit_msg(i32 noundef 4, ptr noundef nonnull %sa.i, ptr noundef nonnull @audit_cb) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sa_aad.i) #10
  br label %cleanup

if.end8:                                          ; preds = %entry
  %call9 = tail call zeroext i1 @aa_policy_admin_capable(ptr noundef %label, ptr noundef %ns)
  br i1 %call9, label %if.end8.cleanup_crit_edge, label %if.then10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sa_aad.i17) #10
  %12 = getelementptr inbounds i8, ptr %sa_aad.i17, i32 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 52)
  %op2.i19 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i17, i32 0, i32 2
  %14 = ptrtoint ptr %op2.i19 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %op.0, ptr %op2.i19, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sa.i18) #10
  %15 = call ptr @memcpy(ptr %sa.i18, ptr @__const.audit_policy.sa, i32 12)
  %16 = getelementptr inbounds %struct.common_audit_data, ptr %sa.i18, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %sa_aad.i17, ptr %16, align 4
  %ns.i20 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i17, i32 0, i32 8, i32 0, i32 1
  %18 = ptrtoint ptr %ns.i20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %ns.i20, align 4
  %name6.i21 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i17, i32 0, i32 4
  %19 = ptrtoint ptr %name6.i21 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %name6.i21, align 4
  %info7.i22 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i17, i32 0, i32 5
  %20 = ptrtoint ptr %info7.i22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.22, ptr %info7.i22, align 4
  %21 = ptrtoint ptr %sa_aad.i17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -13, ptr %sa_aad.i17, align 4
  %label9.i23 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i17, i32 0, i32 3
  %22 = ptrtoint ptr %label9.i23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %label, ptr %label9.i23, align 4
  call void @aa_audit_msg(i32 noundef 4, ptr noundef nonnull %sa.i18, ptr noundef nonnull @audit_cb) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa.i18) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sa_aad.i17) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end8.cleanup_crit_edge, %if.then7
  %retval.0 = phi i32 [ -13, %if.then7 ], [ -13, %if.then10 ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_replace_profiles(ptr noundef %policy_ns, ptr noundef %label, i32 noundef %mask, ptr noundef %udata) local_unnamed_addr #0 align 64 {
entry:
  %sa_aad.i719 = alloca %struct.apparmor_audit_data, align 4
  %sa.i720 = alloca %struct.common_audit_data, align 4
  %sa_aad.i712 = alloca %struct.apparmor_audit_data, align 4
  %sa.i713 = alloca %struct.common_audit_data, align 4
  %sa_aad.i647 = alloca %struct.apparmor_audit_data, align 4
  %sa.i648 = alloca %struct.common_audit_data, align 4
  %sa_aad.i = alloca %struct.apparmor_audit_data, align 4
  %sa.i = alloca %struct.common_audit_data, align 4
  %old.i.i.i.i.i = alloca i32, align 4
  %ns_name = alloca ptr, align 4
  %lh = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ns_name) #10
  %0 = ptrtoint ptr %ns_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %ns_name, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lh) #10
  %1 = getelementptr inbounds %struct.list_head, ptr %lh, i32 0, i32 1
  %2 = ptrtoint ptr %lh to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %lh, ptr %lh, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %lh, ptr %1, align 4
  %and = and i32 %mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.20, ptr @.str.19
  %call = call fastcc ptr @aa_get_loaddata(ptr noundef %udata)
  %call1 = call i32 @aa_unpack(ptr noundef %udata, ptr noundef nonnull %lh, ptr noundef nonnull %ns_name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.cond.preheader, label %entry.aa_put_ns.exit_crit_edge

entry.aa_put_ns.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_ns.exit

for.cond.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %lh to i32
  call void @__asan_load4_noabort(i32 %4)
  %ent.0818 = load ptr, ptr %lh, align 4
  %cmp.not819 = icmp eq ptr %ent.0818, %lh
  br i1 %cmp.not819, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %ent.0821 = phi ptr [ %ent.0, %for.inc.for.body_crit_edge ], [ %ent.0818, %for.cond.preheader.for.body_crit_edge ]
  %count.0820 = phi i32 [ %count.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %5 = ptrtoint ptr %ns_name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ns_name, align 4
  %tobool5.not = icmp eq ptr %6, null
  %ns_name14 = getelementptr inbounds %struct.aa_load_ent, ptr %ent.0821, i32 0, i32 4
  %7 = ptrtoint ptr %ns_name14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ns_name14, align 4
  %tobool15.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %for.body
  br i1 %tobool15.not, label %if.then6.for.inc_crit_edge, label %land.lhs.true

if.then6.for.inc_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %if.then6
  %call10 = call i32 @strcmp(ptr noundef nonnull %8, ptr noundef nonnull %6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.fail_crit_edge

land.lhs.true.fail_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else:                                          ; preds = %for.body
  br i1 %tobool15.not, label %if.else21, label %if.then16

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0820)
  %tobool17.not = icmp eq i32 %count.0820, 0
  br i1 %tobool17.not, label %if.end19, label %if.then16.fail_crit_edge

if.then16.fail_crit_edge:                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end19:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %ns_name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %ns_name, align 4
  br label %for.inc

if.else21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add i32 %count.0820, 1
  br label %for.inc

for.inc:                                          ; preds = %if.else21, %if.end19, %land.lhs.true.for.inc_crit_edge, %if.then6.for.inc_crit_edge
  %count.1 = phi i32 [ %count.0820, %land.lhs.true.for.inc_crit_edge ], [ %count.0820, %if.then6.for.inc_crit_edge ], [ 0, %if.end19 ], [ %inc, %if.else21 ]
  %10 = ptrtoint ptr %ent.0821 to i32
  call void @__asan_load4_noabort(i32 %10)
  %ent.0 = load ptr, ptr %ent.0821, align 4
  %cmp.not = icmp eq ptr %ent.0, %lh
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %11 = ptrtoint ptr %ns_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ns_name, align 4
  %tobool29.not = icmp eq ptr %12, null
  %tobool41.not = icmp eq ptr %policy_ns, null
  br i1 %tobool29.not, label %if.else40, label %if.then30

if.then30:                                        ; preds = %for.end
  br i1 %tobool41.not, label %cond.false, label %if.then30.cond.end_crit_edge

if.then30.cond.end_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  %vec = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 8
  %size = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 7
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 4
  %sub = add i32 %14, -1
  %arrayidx32 = getelementptr ptr, ptr %vec, i32 %sub
  %15 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx32, align 4
  %ns33 = getelementptr inbounds %struct.aa_profile, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %ns33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ns33, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then30.cond.end_crit_edge
  %cond34 = phi ptr [ %18, %cond.false ], [ %policy_ns, %if.then30.cond.end_crit_edge ]
  %call35 = call ptr @aa_prepare_ns(ptr noundef %cond34, ptr noundef nonnull %12) #10
  %cmp.i = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then37, label %cond.end.if.end53_crit_edge

cond.end.if.end53_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then37:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %call35 to i32
  br label %fail.thread

if.else40:                                        ; preds = %for.end
  br i1 %tobool41.not, label %cond.end50, label %if.else40.if.then.i_crit_edge

if.else40.if.then.i_crit_edge:                    ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

cond.end50:                                       ; preds = %if.else40
  %vec44 = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 8
  %size46 = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 7
  %20 = ptrtoint ptr %size46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size46, align 4
  %sub47 = add i32 %21, -1
  %arrayidx48 = getelementptr ptr, ptr %vec44, i32 %sub47
  %22 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx48, align 4
  %ns49 = getelementptr inbounds %struct.aa_profile, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %ns49 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ns49, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %cond.end50.if.end53_crit_edge, label %cond.end50.if.then.i_crit_edge

cond.end50.if.then.i_crit_edge:                   ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

cond.end50.if.end53_crit_edge:                    ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then.i:                                        ; preds = %cond.end50.if.then.i_crit_edge, %if.else40.if.then.i_crit_edge
  %cond51735 = phi ptr [ %25, %cond.end50.if.then.i_crit_edge ], [ %policy_ns, %if.else40.if.then.i_crit_edge ]
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %cond51735, i32 0, i32 4
  %26 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %unconfined.i, align 4
  %tobool.not.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i, label %if.then.i.if.end53_crit_edge, label %if.then.i.i

if.then.i.if.end53_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then.i.i:                                      ; preds = %if.then.i
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %27, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #10
  %28 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #10, !srcloc !158
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !151

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %29 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %.not.i.i.i.i.i.i = icmp sgt i32 %29, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.end53_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !152

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end53_crit_edge:           ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef %.sink.i.i.i.i.i.i) #10
  br label %if.end53

if.end53:                                         ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end53_crit_edge, %if.then.i.if.end53_crit_edge, %cond.end50.if.end53_crit_edge, %cond.end.if.end53_crit_edge
  %ns.0 = phi ptr [ %call35, %cond.end.if.end53_crit_edge ], [ null, %cond.end50.if.end53_crit_edge ], [ %cond51735, %if.then.i.if.end53_crit_edge ], [ %cond51735, %if.else.i.i.i.i.i.i.if.end53_crit_edge ], [ %cond51735, %if.end15.sink.split.i.i.i.i.i.i ]
  %lock = getelementptr inbounds %struct.aa_ns, ptr %ns.0, i32 0, i32 2
  %level = getelementptr inbounds %struct.aa_ns, ptr %ns.0, i32 0, i32 8
  %30 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %level, align 4
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef %31) #10
  %rawdata_list = getelementptr inbounds %struct.aa_ns, ptr %ns.0, i32 0, i32 12
  %32 = ptrtoint ptr %rawdata_list to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn823 = load ptr, ptr %rawdata_list, align 4
  %cmp61.not825 = icmp eq ptr %.pn823, %rawdata_list
  br i1 %cmp61.not825, label %if.end53.for.end78_crit_edge, label %if.end53.for.body63_crit_edge

if.end53.for.body63_crit_edge:                    ; preds = %if.end53
  br label %for.body63

if.end53.for.end78_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end78

for.body63:                                       ; preds = %for.inc72.for.body63_crit_edge, %if.end53.for.body63_crit_edge
  %.pn826 = phi ptr [ %.pn, %for.inc72.for.body63_crit_edge ], [ %.pn823, %if.end53.for.body63_crit_edge ]
  %rawdata_ent.0827 = getelementptr i8, ptr %.pn826, i32 -4
  %call64 = call zeroext i1 @aa_rawdata_eq(ptr noundef %rawdata_ent.0827, ptr noundef %udata) #10
  %tobool.not.i549 = icmp ne ptr %rawdata_ent.0827, null
  %33 = and i1 %call64, %tobool.not.i549
  br i1 %33, label %land.lhs.true.i, label %for.body63.for.inc72_crit_edge

for.body63.for.inc72_crit_edge:                   ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc72

land.lhs.true.i:                                  ; preds = %for.body63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #10
  %call.i.i.i.i.i.i.i.i550 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %rawdata_ent.0827, i32 noundef 4) #10
  %34 = ptrtoint ptr %rawdata_ent.0827 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %rawdata_ent.0827, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %land.lhs.true.i
  %36 = phi i32 [ %35, %land.lhs.true.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %37 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i.i.i.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %36, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %rawdata_ent.0827, i32 noundef 4) #10
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #10
  %38 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %rawdata_ent.0827, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %40 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %rawdata_ent.0827, ptr nonnull %rawdata_ent.0827, i32 %39, i32 %add.i.i.i.i.i, ptr nonnull elementtype(i32) %rawdata_ent.0827) #10, !srcloc !160
  %asmresult.i.i.i.i.i.i.i.i551 = extractvalue { i32, i32 } %40, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i551, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %40, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %39
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !152

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %41 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %42, 1
  %43 = or i32 %add5.i.i.i.i.i, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %.not.i.i.i.i.i = icmp sgt i32 %43, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !152

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %rawdata_ent.0827, i32 noundef 0) #10
  %44 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %45 = phi i32 [ %42, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %45, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #10
  br i1 %tobool12.i.i.i.i.not.i, label %kref_get_unless_zero.exit.i.for.inc72_crit_edge, label %if.then69

kref_get_unless_zero.exit.i.for.inc72_crit_edge:  ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc72

if.then69:                                        ; preds = %kref_get_unless_zero.exit.i
  %tobool.not.i552 = icmp eq ptr %udata, null
  br i1 %tobool.not.i552, label %if.then69.for.end78_crit_edge, label %if.then.i555

if.then69.for.end78_crit_edge:                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end78

if.then.i555:                                     ; preds = %if.then69
  %call.i.i.i.i.i.i.i553 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %udata, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !155
  call void @llvm.prefetch.p0(ptr nonnull %udata, i32 1, i32 3, i32 1) #10
  %46 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %udata, ptr nonnull %udata, i32 1, ptr nonnull elementtype(i32) %udata) #10, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i554 = extractvalue { i32, i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i554)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i554, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i558, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i555
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i554)
  %.not.i.i.i.i.i556 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i554, 0
  br i1 %.not.i.i.i.i.i556, label %if.end5.i.i.i.i.i.for.end78_crit_edge, label %if.then10.i.i.i.i.i557, !prof !152

if.end5.i.i.i.i.i.for.end78_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end78

if.then10.i.i.i.i.i557:                           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %udata, i32 noundef 3) #10
  br label %for.end78

if.then.i.i558:                                   ; preds = %if.then.i555
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !157
  call void @aa_loaddata_kref(ptr noundef nonnull %udata) #10
  br label %for.end78

for.inc72:                                        ; preds = %kref_get_unless_zero.exit.i.for.inc72_crit_edge, %for.body63.for.inc72_crit_edge
  %47 = ptrtoint ptr %.pn826 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn = load ptr, ptr %.pn826, align 4
  %cmp61.not = icmp eq ptr %.pn, %rawdata_list
  br i1 %cmp61.not, label %for.inc72.for.end78_crit_edge, label %for.inc72.for.body63_crit_edge

for.inc72.for.body63_crit_edge:                   ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body63

for.inc72.for.end78_crit_edge:                    ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end78

for.end78:                                        ; preds = %for.inc72.for.end78_crit_edge, %if.then.i.i558, %if.then10.i.i.i.i.i557, %if.end5.i.i.i.i.i.for.end78_crit_edge, %if.then69.for.end78_crit_edge, %if.end53.for.end78_crit_edge
  %udata.addr.3 = phi ptr [ %rawdata_ent.0827, %if.then69.for.end78_crit_edge ], [ %rawdata_ent.0827, %if.end5.i.i.i.i.i.for.end78_crit_edge ], [ %rawdata_ent.0827, %if.then10.i.i.i.i.i557 ], [ %rawdata_ent.0827, %if.then.i.i558 ], [ %udata, %if.end53.for.end78_crit_edge ], [ %udata, %for.inc72.for.end78_crit_edge ]
  %48 = ptrtoint ptr %lh to i32
  call void @__asan_load4_noabort(i32 %48)
  %ent.1828 = load ptr, ptr %lh, align 4
  %cmp85.not829 = icmp eq ptr %ent.1828, %lh
  br i1 %cmp85.not829, label %for.end78.for.end201_crit_edge, label %for.body87.lr.ph

for.end78.for.end201_crit_edge:                   ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end201

for.body87.lr.ph:                                 ; preds = %for.end78
  %tobool.not.i593 = icmp eq ptr %ns.0, null
  %unconfined.i594 = getelementptr inbounds %struct.aa_ns, ptr %ns.0, i32 0, i32 4
  br label %for.body87

for.body87:                                       ; preds = %for.inc195.for.body87_crit_edge, %for.body87.lr.ph
  %ent.1830 = phi ptr [ %ent.1828, %for.body87.lr.ph ], [ %ent.1, %for.inc195.for.body87_crit_edge ]
  %call88 = call fastcc ptr @aa_get_loaddata(ptr noundef %udata.addr.3)
  %new = getelementptr inbounds %struct.aa_load_ent, ptr %ent.1830, i32 0, i32 1
  %49 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %new, align 4
  %rawdata = getelementptr inbounds %struct.aa_profile, ptr %50, i32 0, i32 20
  %51 = ptrtoint ptr %rawdata to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call88, ptr %rawdata, align 4
  %52 = load ptr, ptr %new, align 4
  %hname = getelementptr inbounds %struct.aa_policy, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %hname to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hname, align 4
  %old = getelementptr inbounds %struct.aa_load_ent, ptr %ent.1830, i32 0, i32 2
  %call.i.i = call i32 @strlen(ptr noundef %54) #16
  %call1.i.i = call fastcc ptr @__lookupn_profile(ptr noundef %ns.0, ptr noundef %54, i32 noundef %call.i.i) #10
  %tobool.not.i.i560 = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i.i560, label %aa_get_profile.exit.i, label %if.then.i.i565

if.then.i.i565:                                   ; preds = %for.body87
  %label.i.i561 = getelementptr inbounds %struct.aa_profile, ptr %call1.i.i, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i562 = call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i561, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %label.i.i561, i32 1, i32 3, i32 1) #10
  %55 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i561, ptr %label.i.i561, i32 1, ptr elementtype(i32) %label.i.i561) #10, !srcloc !158
  %asmresult.i.i.i.i.i.i.i.i563 = extractvalue { i32, i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i563)
  %tobool1.not.i.i.i.i.i.i564 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i563, 0
  br i1 %tobool1.not.i.i.i.i.i.i564, label %if.then.i.i565.if.end15.sink.split.i.i.i.i.i.i570_crit_edge, label %if.else.i.i.i.i.i.i568, !prof !151

if.then.i.i565.if.end15.sink.split.i.i.i.i.i.i570_crit_edge: ; preds = %if.then.i.i565
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i570

if.else.i.i.i.i.i.i568:                           ; preds = %if.then.i.i565
  %add.i.i.i.i.i.i566 = add i32 %asmresult.i.i.i.i.i.i.i.i563, 1
  %56 = or i32 %add.i.i.i.i.i.i566, %asmresult.i.i.i.i.i.i.i.i563
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %.not.i.i.i.i.i.i567 = icmp sgt i32 %56, -1
  br i1 %.not.i.i.i.i.i.i567, label %if.else.i.i.i.i.i.i568.if.then.i12.i_crit_edge, label %if.else.i.i.i.i.i.i568.if.end15.sink.split.i.i.i.i.i.i570_crit_edge, !prof !152

if.else.i.i.i.i.i.i568.if.end15.sink.split.i.i.i.i.i.i570_crit_edge: ; preds = %if.else.i.i.i.i.i.i568
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i570

if.else.i.i.i.i.i.i568.if.then.i12.i_crit_edge:   ; preds = %if.else.i.i.i.i.i.i568
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i12.i

if.end15.sink.split.i.i.i.i.i.i570:               ; preds = %if.else.i.i.i.i.i.i568.if.end15.sink.split.i.i.i.i.i.i570_crit_edge, %if.then.i.i565.if.end15.sink.split.i.i.i.i.i.i570_crit_edge
  %.sink.i.i.i.i.i.i569 = phi i32 [ 2, %if.then.i.i565.if.end15.sink.split.i.i.i.i.i.i570_crit_edge ], [ 1, %if.else.i.i.i.i.i.i568.if.end15.sink.split.i.i.i.i.i.i570_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %label.i.i561, i32 noundef %.sink.i.i.i.i.i.i569) #10
  br label %if.then.i12.i

aa_get_profile.exit.i:                            ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %old to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %old, align 4
  br label %if.end96

if.then.i12.i:                                    ; preds = %if.end15.sink.split.i.i.i.i.i.i570, %if.else.i.i.i.i.i.i568.if.then.i12.i_crit_edge
  %58 = ptrtoint ptr %old to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call1.i.i, ptr %old, align 4
  %flags.i.i = getelementptr inbounds %struct.aa_profile, ptr %call1.i.i, i32 0, i32 25, i32 5
  %59 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %60, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp ne i32 %and.i.i, 0
  %brmerge.i = or i1 %tobool.not, %tobool1.not.i.i
  br i1 %brmerge.i, label %__lookup_replace.exit, label %if.then.i12.i.if.end96_crit_edge

if.then.i12.i.if.end96_crit_edge:                 ; preds = %if.then.i12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

__lookup_replace.exit:                            ; preds = %if.then.i12.i
  call void @__sanitizer_cov_trace_pc() #12
  %61 = or i32 %60, -17
  br label %fail_lock

if.end96:                                         ; preds = %if.then.i12.i.if.end96_crit_edge, %aa_get_profile.exit.i
  %62 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %new, align 4
  %rename = getelementptr inbounds %struct.aa_profile, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %rename to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rename, align 4
  %tobool98.not = icmp eq ptr %65, null
  br i1 %tobool98.not, label %if.end96.if.end110_crit_edge, label %if.then99

if.end96.if.end110_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

if.then99:                                        ; preds = %if.end96
  %rename105 = getelementptr inbounds %struct.aa_load_ent, ptr %ent.1830, i32 0, i32 3
  %call.i.i571 = call i32 @strlen(ptr noundef nonnull %65) #16
  %call1.i.i572 = call fastcc ptr @__lookupn_profile(ptr noundef %ns.0, ptr noundef nonnull %65, i32 noundef %call.i.i571) #10
  %tobool.not.i.i573 = icmp eq ptr %call1.i.i572, null
  br i1 %tobool.not.i.i573, label %aa_get_profile.exit.i584, label %if.then.i.i578

if.then.i.i578:                                   ; preds = %if.then99
  %label.i.i574 = getelementptr inbounds %struct.aa_profile, ptr %call1.i.i572, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i575 = call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i574, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %label.i.i574, i32 1, i32 3, i32 1) #10
  %66 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i574, ptr %label.i.i574, i32 1, ptr elementtype(i32) %label.i.i574) #10, !srcloc !158
  %asmresult.i.i.i.i.i.i.i.i576 = extractvalue { i32, i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i576)
  %tobool1.not.i.i.i.i.i.i577 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i576, 0
  br i1 %tobool1.not.i.i.i.i.i.i577, label %if.then.i.i578.if.end15.sink.split.i.i.i.i.i.i583_crit_edge, label %if.else.i.i.i.i.i.i581, !prof !151

if.then.i.i578.if.end15.sink.split.i.i.i.i.i.i583_crit_edge: ; preds = %if.then.i.i578
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i583

if.else.i.i.i.i.i.i581:                           ; preds = %if.then.i.i578
  %add.i.i.i.i.i.i579 = add i32 %asmresult.i.i.i.i.i.i.i.i576, 1
  %67 = or i32 %add.i.i.i.i.i.i579, %asmresult.i.i.i.i.i.i.i.i576
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %.not.i.i.i.i.i.i580 = icmp sgt i32 %67, -1
  br i1 %.not.i.i.i.i.i.i580, label %if.else.i.i.i.i.i.i581.if.then.i12.i589_crit_edge, label %if.else.i.i.i.i.i.i581.if.end15.sink.split.i.i.i.i.i.i583_crit_edge, !prof !152

if.else.i.i.i.i.i.i581.if.end15.sink.split.i.i.i.i.i.i583_crit_edge: ; preds = %if.else.i.i.i.i.i.i581
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i583

if.else.i.i.i.i.i.i581.if.then.i12.i589_crit_edge: ; preds = %if.else.i.i.i.i.i.i581
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i12.i589

if.end15.sink.split.i.i.i.i.i.i583:               ; preds = %if.else.i.i.i.i.i.i581.if.end15.sink.split.i.i.i.i.i.i583_crit_edge, %if.then.i.i578.if.end15.sink.split.i.i.i.i.i.i583_crit_edge
  %.sink.i.i.i.i.i.i582 = phi i32 [ 2, %if.then.i.i578.if.end15.sink.split.i.i.i.i.i.i583_crit_edge ], [ 1, %if.else.i.i.i.i.i.i581.if.end15.sink.split.i.i.i.i.i.i583_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %label.i.i574, i32 noundef %.sink.i.i.i.i.i.i582) #10
  br label %if.then.i12.i589

aa_get_profile.exit.i584:                         ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %rename105 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %rename105, align 4
  br label %if.end110

if.then.i12.i589:                                 ; preds = %if.end15.sink.split.i.i.i.i.i.i583, %if.else.i.i.i.i.i.i581.if.then.i12.i589_crit_edge
  %69 = ptrtoint ptr %rename105 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call1.i.i572, ptr %rename105, align 4
  %flags.i.i585 = getelementptr inbounds %struct.aa_profile, ptr %call1.i.i572, i32 0, i32 25, i32 5
  %70 = ptrtoint ptr %flags.i.i585 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags.i.i585, align 4
  %and.i.i586 = and i32 %71, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i586)
  %tobool1.not.i.i587 = icmp ne i32 %and.i.i586, 0
  %brmerge.i588 = or i1 %tobool.not, %tobool1.not.i.i587
  br i1 %brmerge.i588, label %__lookup_replace.exit592, label %if.then.i12.i589.if.end110_crit_edge

if.then.i12.i589.if.end110_crit_edge:             ; preds = %if.then.i12.i589
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

__lookup_replace.exit592:                         ; preds = %if.then.i12.i589
  call void @__sanitizer_cov_trace_pc() #12
  %72 = or i32 %71, -17
  br label %fail_lock

if.end110:                                        ; preds = %if.then.i12.i589.if.end110_crit_edge, %aa_get_profile.exit.i584, %if.end96.if.end110_crit_edge
  br i1 %tobool.not.i593, label %if.end110.aa_get_ns.exit608_crit_edge, label %if.then.i596

if.end110.aa_get_ns.exit608_crit_edge:            ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_get_ns.exit608

if.then.i596:                                     ; preds = %if.end110
  %73 = ptrtoint ptr %unconfined.i594 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %unconfined.i594, align 4
  %tobool.not.i.i595 = icmp eq ptr %74, null
  br i1 %tobool.not.i.i595, label %if.then.i596.aa_get_ns.exit608_crit_edge, label %if.then.i.i601

if.then.i596.aa_get_ns.exit608_crit_edge:         ; preds = %if.then.i596
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_get_ns.exit608

if.then.i.i601:                                   ; preds = %if.then.i596
  %label.i.i597 = getelementptr inbounds %struct.aa_profile, ptr %74, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i598 = call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i597, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %label.i.i597, i32 1, i32 3, i32 1) #10
  %75 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i597, ptr %label.i.i597, i32 1, ptr elementtype(i32) %label.i.i597) #10, !srcloc !158
  %asmresult.i.i.i.i.i.i.i.i599 = extractvalue { i32, i32, i32 } %75, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i599)
  %tobool1.not.i.i.i.i.i.i600 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i599, 0
  br i1 %tobool1.not.i.i.i.i.i.i600, label %if.then.i.i601.if.end15.sink.split.i.i.i.i.i.i606_crit_edge, label %if.else.i.i.i.i.i.i604, !prof !151

if.then.i.i601.if.end15.sink.split.i.i.i.i.i.i606_crit_edge: ; preds = %if.then.i.i601
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i606

if.else.i.i.i.i.i.i604:                           ; preds = %if.then.i.i601
  %add.i.i.i.i.i.i602 = add i32 %asmresult.i.i.i.i.i.i.i.i599, 1
  %76 = or i32 %add.i.i.i.i.i.i602, %asmresult.i.i.i.i.i.i.i.i599
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %76)
  %.not.i.i.i.i.i.i603 = icmp sgt i32 %76, -1
  br i1 %.not.i.i.i.i.i.i603, label %if.else.i.i.i.i.i.i604.aa_get_ns.exit608_crit_edge, label %if.else.i.i.i.i.i.i604.if.end15.sink.split.i.i.i.i.i.i606_crit_edge, !prof !152

if.else.i.i.i.i.i.i604.if.end15.sink.split.i.i.i.i.i.i606_crit_edge: ; preds = %if.else.i.i.i.i.i.i604
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i606

if.else.i.i.i.i.i.i604.aa_get_ns.exit608_crit_edge: ; preds = %if.else.i.i.i.i.i.i604
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_get_ns.exit608

if.end15.sink.split.i.i.i.i.i.i606:               ; preds = %if.else.i.i.i.i.i.i604.if.end15.sink.split.i.i.i.i.i.i606_crit_edge, %if.then.i.i601.if.end15.sink.split.i.i.i.i.i.i606_crit_edge
  %.sink.i.i.i.i.i.i605 = phi i32 [ 2, %if.then.i.i601.if.end15.sink.split.i.i.i.i.i.i606_crit_edge ], [ 1, %if.else.i.i.i.i.i.i604.if.end15.sink.split.i.i.i.i.i.i606_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %label.i.i597, i32 noundef %.sink.i.i.i.i.i.i605) #10
  br label %aa_get_ns.exit608

aa_get_ns.exit608:                                ; preds = %if.end15.sink.split.i.i.i.i.i.i606, %if.else.i.i.i.i.i.i604.aa_get_ns.exit608_crit_edge, %if.then.i596.aa_get_ns.exit608_crit_edge, %if.end110.aa_get_ns.exit608_crit_edge
  %77 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %new, align 4
  %ns113 = getelementptr inbounds %struct.aa_profile, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %ns113 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %ns.0, ptr %ns113, align 4
  %80 = ptrtoint ptr %old to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %old, align 4
  %tobool115.not = icmp eq ptr %81, null
  br i1 %tobool115.not, label %lor.lhs.false, label %aa_get_ns.exit608.for.inc195_crit_edge

aa_get_ns.exit608.for.inc195_crit_edge:           ; preds = %aa_get_ns.exit608
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc195

lor.lhs.false:                                    ; preds = %aa_get_ns.exit608
  %rename116 = getelementptr inbounds %struct.aa_load_ent, ptr %ent.1830, i32 0, i32 3
  %82 = ptrtoint ptr %rename116 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rename116, align 4
  %tobool117.not = icmp eq ptr %83, null
  br i1 %tobool117.not, label %if.end119, label %lor.lhs.false.for.inc195_crit_edge

lor.lhs.false.for.inc195_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc195

if.end119:                                        ; preds = %lor.lhs.false
  %84 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %new, align 4
  %hname122 = getelementptr inbounds %struct.aa_policy, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %hname122 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hname122, align 4
  %call.i = call ptr @strstr(ptr noundef %87, ptr noundef nonnull @.str.42) #10
  %tobool.not27.i = icmp eq ptr %call.i, null
  br i1 %tobool.not27.i, label %if.end119.__lookup_parent.exit_crit_edge, label %if.end119.for.body.i_crit_edge

if.end119.for.body.i_crit_edge:                   ; preds = %if.end119
  br label %for.body.i

if.end119.__lookup_parent.exit_crit_edge:         ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %__lookup_parent.exit

for.body.i:                                       ; preds = %if.end.i610.for.body.i_crit_edge, %if.end119.for.body.i_crit_edge
  %split.030.i = phi ptr [ %call4.i, %if.end.i610.for.body.i_crit_edge ], [ %call.i, %if.end119.for.body.i_crit_edge ]
  %policy.029.i = phi ptr [ %policy.030.i.i.i.le, %if.end.i610.for.body.i_crit_edge ], [ %ns.0, %if.end119.for.body.i_crit_edge ]
  %hname.addr.028.i = phi ptr [ %add.ptr.i, %if.end.i610.for.body.i_crit_edge ], [ %87, %if.end119.for.body.i_crit_edge ]
  %profiles.i = getelementptr inbounds %struct.aa_policy, ptr %policy.029.i, i32 0, i32 3
  %sub.ptr.lhs.cast.i = ptrtoint ptr %split.030.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %hname.addr.028.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %call.i.i.i = call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.do.end.i.i.i_crit_edge

for.body.i.do.end.i.i.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.do.end.i.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.do.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b25.i.i.i = load i1, ptr @__policy_strn_find.__warned, align 1
  br i1 %.b25.i.i.i, label %land.lhs.true3.i.i.i.do.end.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.do.end.i.i.i_crit_edge:      ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__policy_strn_find.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 196, ptr noundef nonnull @.str.40) #10
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.do.end.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end.i.i.i_crit_edge, %for.body.i.do.end.i.i.i_crit_edge
  %88 = ptrtoint ptr %profiles.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pn26.i.i.i = load volatile ptr, ptr %profiles.i, align 4
  %cmp.not28.i.i.i = icmp eq ptr %.pn26.i.i.i, %profiles.i
  br i1 %cmp.not28.i.i.i, label %do.end.i.i.i.if.then125_crit_edge, label %do.end.i.i.i.for.body.i.i.i_crit_edge

do.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %do.end.i.i.i
  br label %for.body.i.i.i

do.end.i.i.i.if.then125_crit_edge:                ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then125

for.body.i.i.i:                                   ; preds = %for.cond.backedge.i.i.i.for.body.i.i.i_crit_edge, %do.end.i.i.i.for.body.i.i.i_crit_edge
  %.pn29.i.i.i = phi ptr [ %.pn.i.i.i, %for.cond.backedge.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn26.i.i.i, %do.end.i.i.i.for.body.i.i.i_crit_edge ]
  %policy.030.i.i.i = getelementptr i8, ptr %.pn29.i.i.i, i32 -8
  %89 = ptrtoint ptr %policy.030.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %policy.030.i.i.i, align 4
  %call.i.i.i.i = call i32 @strncmp(ptr noundef %90, ptr noundef %hname.addr.028.i, i32 noundef %sub.ptr.sub.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.rhs.i.i.i.i, label %for.body.i.i.i.for.cond.backedge.i.i.i_crit_edge

for.body.i.i.i.for.cond.backedge.i.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %for.body.i.i.i
  %arrayidx.i.i.i.i = getelementptr i8, ptr %90, i32 %sub.ptr.sub.i
  %91 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool1.not.i.i.i.i = icmp eq i8 %92, 0
  br i1 %tobool1.not.i.i.i.i, label %__strn_find_child.exit.i, label %land.rhs.i.i.i.i.for.cond.backedge.i.i.i_crit_edge

land.rhs.i.i.i.i.for.cond.backedge.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge.i.i.i

for.cond.backedge.i.i.i:                          ; preds = %land.rhs.i.i.i.i.for.cond.backedge.i.i.i_crit_edge, %for.body.i.i.i.for.cond.backedge.i.i.i_crit_edge
  %93 = ptrtoint ptr %.pn29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pn.i.i.i = load volatile ptr, ptr %.pn29.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %profiles.i
  br i1 %cmp.not.i.i.i, label %for.cond.backedge.i.i.i.if.then125_crit_edge, label %for.cond.backedge.i.i.i.for.body.i.i.i_crit_edge

for.cond.backedge.i.i.i.for.body.i.i.i_crit_edge: ; preds = %for.cond.backedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.cond.backedge.i.i.i.if.then125_crit_edge:     ; preds = %for.cond.backedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then125

__strn_find_child.exit.i:                         ; preds = %land.rhs.i.i.i.i
  %policy.030.i.i.i.le = getelementptr i8, ptr %.pn29.i.i.i, i32 -8
  %tobool2.not.i = icmp eq ptr %policy.030.i.i.i.le, null
  br i1 %tobool2.not.i, label %__strn_find_child.exit.i.if.then125_crit_edge, label %if.end.i610

__strn_find_child.exit.i.if.then125_crit_edge:    ; preds = %__strn_find_child.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then125

if.end.i610:                                      ; preds = %__strn_find_child.exit.i
  %add.ptr.i = getelementptr i8, ptr %split.030.i, i32 2
  %call4.i = call ptr @strstr(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.42) #10
  %tobool.not.i609 = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i609, label %if.end.i610.__lookup_parent.exit_crit_edge, label %if.end.i610.for.body.i_crit_edge

if.end.i610.for.body.i_crit_edge:                 ; preds = %if.end.i610
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end.i610.__lookup_parent.exit_crit_edge:       ; preds = %if.end.i610
  call void @__sanitizer_cov_trace_pc() #12
  br label %__lookup_parent.exit

__lookup_parent.exit:                             ; preds = %if.end.i610.__lookup_parent.exit_crit_edge, %if.end119.__lookup_parent.exit_crit_edge
  %profile.0.lcssa.i = phi ptr [ null, %if.end119.__lookup_parent.exit_crit_edge ], [ %policy.030.i.i.i.le, %if.end.i610.__lookup_parent.exit_crit_edge ]
  %tobool5.not.i = icmp eq ptr %profile.0.lcssa.i, null
  %ns.profile.0.i = select i1 %tobool5.not.i, ptr %ns.0, ptr %profile.0.lcssa.i
  %tobool124.not = icmp eq ptr %ns.profile.0.i, null
  br i1 %tobool124.not, label %__lookup_parent.exit.if.then125_crit_edge, label %if.else157

__lookup_parent.exit.if.then125_crit_edge:        ; preds = %__lookup_parent.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then125

if.then125:                                       ; preds = %__lookup_parent.exit.if.then125_crit_edge, %__strn_find_child.exit.i.if.then125_crit_edge, %for.cond.backedge.i.i.i.if.then125_crit_edge, %do.end.i.i.i.if.then125_crit_edge
  %94 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %new, align 4
  %hname.i = getelementptr inbounds %struct.aa_policy, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %hname.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hname.i, align 4
  %call.i.i613 = call ptr @strim(ptr noundef %97) #10
  %call1.i.i614 = call ptr @strstr(ptr noundef %call.i.i613, ptr noundef nonnull @.str.42) #10
  %tobool.not7.i.i = icmp eq ptr %call1.i.i614, null
  br i1 %tobool.not7.i.i, label %if.then125.basename.exit.i_crit_edge, label %if.then125.for.body.i.i_crit_edge

if.then125.for.body.i.i_crit_edge:                ; preds = %if.then125
  br label %for.body.i.i

if.then125.basename.exit.i_crit_edge:             ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #12
  br label %basename.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then125.for.body.i.i_crit_edge
  %split.08.i.i = phi ptr [ %call2.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call1.i.i614, %if.then125.for.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %split.08.i.i, i32 2
  %call2.i.i = call ptr @strstr(ptr noundef %add.ptr.i.i, ptr noundef nonnull @.str.42) #10
  %tobool.not.i.i615 = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i615, label %for.body.i.i.basename.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.basename.exit.i_crit_edge:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %basename.exit.i

basename.exit.i:                                  ; preds = %for.body.i.i.basename.exit.i_crit_edge, %if.then125.basename.exit.i_crit_edge
  %hname.addr.0.lcssa.i.i = phi ptr [ %call.i.i613, %if.then125.basename.exit.i_crit_edge ], [ %add.ptr.i.i, %for.body.i.i.basename.exit.i_crit_edge ]
  %98 = ptrtoint ptr %hname.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hname.i, align 4
  %sub.ptr.lhs.cast.i616 = ptrtoint ptr %hname.addr.0.lcssa.i.i to i32
  %sub.ptr.rhs.cast.i617 = ptrtoint ptr %99 to i32
  %sub.ptr.sub.i618 = sub i32 %sub.ptr.lhs.cast.i616, %sub.ptr.rhs.cast.i617
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i618)
  %cmp.i619 = icmp slt i32 %sub.ptr.sub.i618, 3
  br i1 %cmp.i619, label %basename.exit.i.fail_lock_crit_edge, label %if.end.i620

basename.exit.i.fail_lock_crit_edge:              ; preds = %basename.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_lock

if.end.i620:                                      ; preds = %basename.exit.i
  %sub.i = add nsw i32 %sub.ptr.sub.i618, -2
  %100 = ptrtoint ptr %lh to i32
  call void @__asan_load4_noabort(i32 %100)
  %ent.042.i = load ptr, ptr %lh, align 4
  %cmp4.not43.i = icmp eq ptr %ent.042.i, %lh
  br i1 %cmp4.not43.i, label %if.end.i620.fail_lock_crit_edge, label %if.end.i620.for.body.i621_crit_edge

if.end.i620.for.body.i621_crit_edge:              ; preds = %if.end.i620
  br label %for.body.i621

if.end.i620.fail_lock_crit_edge:                  ; preds = %if.end.i620
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_lock

for.body.i621:                                    ; preds = %for.inc.i.for.body.i621_crit_edge, %if.end.i620.for.body.i621_crit_edge
  %ent.044.i = phi ptr [ %ent.0.i, %for.inc.i.for.body.i621_crit_edge ], [ %ent.042.i, %if.end.i620.for.body.i621_crit_edge ]
  %new.i = getelementptr inbounds %struct.aa_load_ent, ptr %ent.044.i, i32 0, i32 1
  %101 = ptrtoint ptr %new.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %new.i, align 4
  %cmp5.i = icmp eq ptr %102, %95
  br i1 %cmp5.i, label %for.body.i621.for.inc.i_crit_edge, label %if.end7.i

for.body.i621.for.inc.i_crit_edge:                ; preds = %for.body.i621
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end7.i:                                        ; preds = %for.body.i621
  %hname10.i = getelementptr inbounds %struct.aa_policy, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %hname10.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hname10.i, align 4
  %call13.i = call i32 @strncmp(ptr noundef %104, ptr noundef %99, i32 noundef %sub.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp eq i32 %call13.i, 0
  br i1 %cmp14.i, label %land.lhs.true.i622, label %if.end7.i.for.inc.i_crit_edge

if.end7.i.for.inc.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i622:                               ; preds = %if.end7.i
  %arrayidx.i = getelementptr i8, ptr %104, i32 %sub.i
  %105 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %cmp18.i = icmp eq i8 %106, 0
  br i1 %cmp18.i, label %__list_lookup_parent.exit, label %land.lhs.true.i622.for.inc.i_crit_edge

land.lhs.true.i622.for.inc.i_crit_edge:           ; preds = %land.lhs.true.i622
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i622.for.inc.i_crit_edge, %if.end7.i.for.inc.i_crit_edge, %for.body.i621.for.inc.i_crit_edge
  %107 = ptrtoint ptr %ent.044.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %ent.0.i = load ptr, ptr %ent.044.i, align 4
  %cmp4.not.i = icmp eq ptr %ent.0.i, %lh
  br i1 %cmp4.not.i, label %for.inc.i.fail_lock_crit_edge, label %for.inc.i.for.body.i621_crit_edge

for.inc.i.for.body.i621_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i621

for.inc.i.fail_lock_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_lock

__list_lookup_parent.exit:                        ; preds = %land.lhs.true.i622
  %tobool128.not = icmp eq ptr %102, null
  br i1 %tobool128.not, label %__list_lookup_parent.exit.fail_lock_crit_edge, label %cleanup154

__list_lookup_parent.exit.fail_lock_crit_edge:    ; preds = %__list_lookup_parent.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_lock

cleanup154:                                       ; preds = %__list_lookup_parent.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call131 = call fastcc ptr @aa_get_profile(ptr noundef nonnull %102)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !168
  br label %for.inc195.sink.split

if.else157:                                       ; preds = %__lookup_parent.exit
  %cmp159.not = icmp eq ptr %ns.profile.0.i, %ns.0
  br i1 %cmp159.not, label %if.else157.for.inc195_crit_edge, label %if.then.i627

if.else157.for.inc195_crit_edge:                  ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc195

if.then.i627:                                     ; preds = %if.else157
  %label.i = getelementptr inbounds %struct.aa_profile, ptr %ns.profile.0.i, i32 0, i32 25
  %call.i.i.i.i.i.i.i626 = call zeroext i1 @__kasan_check_write(ptr noundef %label.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %label.i, i32 1, i32 3, i32 1) #10
  %108 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i, ptr %label.i, i32 1, ptr elementtype(i32) %label.i) #10, !srcloc !158
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %108, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i627.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !151

if.then.i627.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i627
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i627
  %add.i.i.i.i.i628 = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %109 = or i32 %add.i.i.i.i.i628, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %109)
  %.not.i.i.i.i.i629 = icmp sgt i32 %109, -1
  br i1 %.not.i.i.i.i.i629, label %if.else.i.i.i.i.i.aa_get_profile.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !152

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.aa_get_profile.exit_crit_edge:  ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_get_profile.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i627.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i627.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %label.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %aa_get_profile.exit

aa_get_profile.exit:                              ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.aa_get_profile.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !169
  br label %for.inc195.sink.split

for.inc195.sink.split:                            ; preds = %aa_get_profile.exit, %cleanup154
  %.lcssa.sink = phi ptr [ %102, %cleanup154 ], [ %ns.profile.0.i, %aa_get_profile.exit ]
  %110 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %new, align 4
  %parent = getelementptr inbounds %struct.aa_profile, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %.lcssa.sink, ptr %parent, align 4
  br label %for.inc195

for.inc195:                                       ; preds = %for.inc195.sink.split, %if.else157.for.inc195_crit_edge, %lor.lhs.false.for.inc195_crit_edge, %aa_get_ns.exit608.for.inc195_crit_edge
  %113 = ptrtoint ptr %ent.1830 to i32
  call void @__asan_load4_noabort(i32 %113)
  %ent.1 = load ptr, ptr %ent.1830, align 4
  %cmp85.not = icmp eq ptr %ent.1, %lh
  br i1 %cmp85.not, label %for.inc195.for.end201_crit_edge, label %for.inc195.for.body87_crit_edge

for.inc195.for.body87_crit_edge:                  ; preds = %for.inc195
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body87

for.inc195.for.end201_crit_edge:                  ; preds = %for.inc195
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end201

for.end201:                                       ; preds = %for.inc195.for.end201_crit_edge, %for.end78.for.end201_crit_edge
  %arrayidx202 = getelementptr %struct.aa_loaddata, ptr %udata.addr.3, i32 0, i32 3, i32 5
  %114 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx202, align 4
  %tobool203.not = icmp eq ptr %115, null
  br i1 %tobool203.not, label %if.then204, label %for.end201.for.cond214.preheader_crit_edge

for.end201.for.cond214.preheader_crit_edge:       ; preds = %for.end201
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond214.preheader

for.cond214.preheader:                            ; preds = %if.then204.for.cond214.preheader_crit_edge, %for.end201.for.cond214.preheader_crit_edge
  br label %for.cond214

if.then204:                                       ; preds = %for.end201
  %call205 = call i32 @__aa_fs_create_rawdata(ptr noundef %ns.0, ptr noundef %udata.addr.3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205)
  %tobool206.not = icmp eq i32 %call205, 0
  br i1 %tobool206.not, label %if.then204.for.cond214.preheader_crit_edge, label %fail_lock.thread

if.then204.for.cond214.preheader_crit_edge:       ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond214.preheader

fail_lock.thread:                                 ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %lock) #10
  br label %fail.thread

for.cond214:                                      ; preds = %if.end245.for.cond214_crit_edge, %for.cond214.preheader
  %ent.2.in = phi ptr [ %ent.2, %if.end245.for.cond214_crit_edge ], [ %lh, %for.cond214.preheader ]
  %116 = ptrtoint ptr %ent.2.in to i32
  call void @__asan_load4_noabort(i32 %116)
  %ent.2 = load ptr, ptr %ent.2.in, align 4
  %cmp216.not = icmp eq ptr %ent.2, %lh
  br i1 %cmp216.not, label %for.end255, label %for.body218

for.body218:                                      ; preds = %for.cond214
  %old219 = getelementptr inbounds %struct.aa_load_ent, ptr %ent.2, i32 0, i32 2
  %117 = ptrtoint ptr %old219 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %old219, align 4
  %tobool220.not = icmp eq ptr %118, null
  br i1 %tobool220.not, label %if.then221, label %for.body218.if.end245_crit_edge

for.body218.if.end245_crit_edge:                  ; preds = %for.body218
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end245

if.then221:                                       ; preds = %for.body218
  %new227 = getelementptr inbounds %struct.aa_load_ent, ptr %ent.2, i32 0, i32 1
  %119 = ptrtoint ptr %new227 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %new227, align 4
  %parent228 = getelementptr inbounds %struct.aa_profile, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %parent228 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile ptr, ptr %parent228, align 4
  %tobool230.not = icmp eq ptr %122, null
  %ns239 = getelementptr inbounds %struct.aa_profile, ptr %120, i32 0, i32 2
  %123 = ptrtoint ptr %ns239 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ns239, align 4
  br i1 %tobool230.not, label %if.else237, label %if.then231

if.then231:                                       ; preds = %if.then221
  %lock.i = getelementptr inbounds %struct.aa_ns, ptr %124, i32 0, i32 2
  %call.i631 = call zeroext i1 @mutex_is_locked(ptr noundef %lock.i) #10
  br i1 %call.i631, label %if.then231.aa_deref_parent.exit_crit_edge, label %land.lhs.true.i633

if.then231.aa_deref_parent.exit_crit_edge:        ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_deref_parent.exit

land.lhs.true.i633:                               ; preds = %if.then231
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i632 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i632, label %land.lhs.true.i633.aa_deref_parent.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i633.aa_deref_parent.exit_crit_edge: ; preds = %land.lhs.true.i633
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_deref_parent.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i633
  %.b5.i = load i1, ptr @aa_deref_parent.__warned, align 1
  br i1 %.b5.i, label %land.lhs.true2.i.aa_deref_parent.exit_crit_edge, label %if.then.i634

land.lhs.true2.i.aa_deref_parent.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_deref_parent.exit

if.then.i634:                                     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @aa_deref_parent.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 102, ptr noundef nonnull @.str.60) #10
  br label %aa_deref_parent.exit

aa_deref_parent.exit:                             ; preds = %if.then.i634, %land.lhs.true2.i.aa_deref_parent.exit_crit_edge, %land.lhs.true.i633.aa_deref_parent.exit_crit_edge, %if.then231.aa_deref_parent.exit_crit_edge
  %125 = ptrtoint ptr %parent228 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %parent228, align 4
  %arrayidx236 = getelementptr %struct.aa_profile, ptr %126, i32 0, i32 23, i32 1
  br label %if.end242

if.else237:                                       ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx241 = getelementptr %struct.aa_ns, ptr %124, i32 0, i32 13, i32 1
  br label %if.end242

if.end242:                                        ; preds = %if.else237, %aa_deref_parent.exit
  %parent222.0.in = phi ptr [ %arrayidx236, %aa_deref_parent.exit ], [ %arrayidx241, %if.else237 ]
  %127 = ptrtoint ptr %parent222.0.in to i32
  call void @__asan_load4_noabort(i32 %127)
  %parent222.0 = load ptr, ptr %parent222.0.in, align 4
  %128 = ptrtoint ptr %new227 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %new227, align 4
  %call244 = call i32 @__aafs_profile_mkdir(ptr noundef %129, ptr noundef %parent222.0) #10
  br label %if.end245

if.end245:                                        ; preds = %if.end242, %for.body218.if.end245_crit_edge
  %error.7 = phi i32 [ 0, %for.body218.if.end245_crit_edge ], [ %call244, %if.end242 ]
  %tobool246.not = icmp eq i32 %error.7, 0
  br i1 %tobool246.not, label %if.end245.for.cond214_crit_edge, label %if.end245.fail_lock_crit_edge

if.end245.fail_lock_crit_edge:                    ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_lock

if.end245.for.cond214_crit_edge:                  ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond214

for.end255:                                       ; preds = %for.cond214
  call void @__aa_bump_ns_revision(ptr noundef %ns.0) #10
  %revision = getelementptr inbounds %struct.aa_ns, ptr %ns.0, i32 0, i32 9
  %130 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %revision, align 4
  call void @__aa_loaddata_update(ptr noundef %udata.addr.3, i32 noundef %131) #10
  %132 = ptrtoint ptr %lh to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %lh, align 4
  %cmp267.not839 = icmp eq ptr %133, %lh
  br i1 %cmp267.not839, label %for.end255.for.end334_crit_edge, label %for.body269.lr.ph

for.end255.for.end334_crit_edge:                  ; preds = %for.end255
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end334

for.body269.lr.ph:                                ; preds = %for.end255
  %134 = getelementptr inbounds i8, ptr %sa_aad.i, i32 4
  %op2.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 2
  %135 = getelementptr inbounds %struct.common_audit_data, ptr %sa.i, i32 0, i32 2
  %ns.i636 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 8, i32 0, i32 1
  %name6.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 4
  %info7.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 5
  %label9.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 3
  %136 = getelementptr inbounds i8, ptr %sa_aad.i647, i32 4
  %op2.i649 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i647, i32 0, i32 2
  %137 = getelementptr inbounds %struct.common_audit_data, ptr %sa.i648, i32 0, i32 2
  %ns.i650 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i647, i32 0, i32 8, i32 0, i32 1
  %name6.i651 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i647, i32 0, i32 4
  %info7.i652 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i647, i32 0, i32 5
  %label9.i653 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i647, i32 0, i32 3
  br label %for.body269

for.body269:                                      ; preds = %skip.for.body269_crit_edge, %for.body269.lr.ph
  %ent.3840 = phi ptr [ %133, %for.body269.lr.ph ], [ %tmp.0844, %skip.for.body269_crit_edge ]
  %138 = ptrtoint ptr %ent.3840 to i32
  call void @__asan_load4_noabort(i32 %138)
  %tmp.0844 = load ptr, ptr %ent.3840, align 4
  %call.i.i635 = call zeroext i1 @__list_del_entry_valid(ptr noundef %ent.3840) #10
  br i1 %call.i.i635, label %if.end.i.i, label %for.body269.list_del_init.exit_crit_edge

for.body269.list_del_init.exit_crit_edge:         ; preds = %for.body269
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body269
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ent.3840, i32 0, i32 1
  %139 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %prev.i.i, align 4
  %141 = ptrtoint ptr %ent.3840 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ent.3840, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %140, ptr %prev1.i.i.i, align 4
  %144 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile ptr %142, ptr %140, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body269.list_del_init.exit_crit_edge
  %145 = ptrtoint ptr %ent.3840 to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile ptr %ent.3840, ptr %ent.3840, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %ent.3840, i32 0, i32 1
  %146 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %ent.3840, ptr %prev.i3.i, align 4
  %old271 = getelementptr inbounds %struct.aa_load_ent, ptr %ent.3840, i32 0, i32 2
  %147 = ptrtoint ptr %old271 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %old271, align 4
  %tobool272.not = icmp eq ptr %148, null
  br i1 %tobool272.not, label %land.end, label %land.lhs.true279

land.end:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %rename273 = getelementptr inbounds %struct.aa_load_ent, ptr %ent.3840, i32 0, i32 3
  %149 = ptrtoint ptr %rename273 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %rename273, align 4
  %tobool274.not = icmp eq ptr %150, null
  %spec.select = select i1 %tobool274.not, ptr @.str.20, ptr @.str.19
  br label %if.end295

land.lhs.true279:                                 ; preds = %list_del_init.exit
  %rawdata281 = getelementptr inbounds %struct.aa_profile, ptr %148, i32 0, i32 20
  %151 = ptrtoint ptr %rawdata281 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %rawdata281, align 4
  %new282 = getelementptr inbounds %struct.aa_load_ent, ptr %ent.3840, i32 0, i32 1
  %153 = ptrtoint ptr %new282 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %new282, align 4
  %rawdata283 = getelementptr inbounds %struct.aa_profile, ptr %154, i32 0, i32 20
  %155 = ptrtoint ptr %rawdata283 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %rawdata283, align 4
  %cmp284 = icmp eq ptr %152, %156
  br i1 %cmp284, label %if.then285, label %land.lhs.true279.if.end295_crit_edge

land.lhs.true279.if.end295_crit_edge:             ; preds = %land.lhs.true279
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end295

if.then285:                                       ; preds = %land.lhs.true279
  %157 = ptrtoint ptr %ns_name to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ns_name, align 4
  %hname288 = getelementptr inbounds %struct.aa_policy, ptr %154, i32 0, i32 1
  %159 = ptrtoint ptr %hname288 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %hname288, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sa_aad.i) #10
  %161 = call ptr @memset(ptr %134, i32 0, i32 52)
  %162 = ptrtoint ptr %op2.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr @.str.19, ptr %op2.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sa.i) #10
  %163 = call ptr @memcpy(ptr %sa.i, ptr @__const.audit_policy.sa, i32 12)
  %164 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %sa_aad.i, ptr %135, align 4
  %165 = ptrtoint ptr %ns.i636 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %158, ptr %ns.i636, align 4
  %166 = ptrtoint ptr %name6.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %160, ptr %name6.i, align 4
  %167 = ptrtoint ptr %info7.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr @.str.28, ptr %info7.i, align 4
  %168 = ptrtoint ptr %sa_aad.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %sa_aad.i, align 4
  %169 = ptrtoint ptr %label9.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %label, ptr %label9.i, align 4
  call void @aa_audit_msg(i32 noundef 4, ptr noundef nonnull %sa.i, ptr noundef nonnull @audit_cb) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sa_aad.i) #10
  %170 = ptrtoint ptr %new282 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %new282, align 4
  %proxy = getelementptr inbounds %struct.aa_profile, ptr %171, i32 0, i32 25, i32 3
  %172 = ptrtoint ptr %proxy to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %proxy, align 4
  %tobool.not.i637 = icmp eq ptr %173, null
  br i1 %tobool.not.i637, label %if.then285.aa_put_proxy.exit_crit_edge, label %if.then.i641

if.then285.aa_put_proxy.exit_crit_edge:           ; preds = %if.then285
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_proxy.exit

if.then.i641:                                     ; preds = %if.then285
  %call.i.i.i.i.i.i.i638 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %173, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !155
  call void @llvm.prefetch.p0(ptr nonnull %173, i32 1, i32 3, i32 1) #10
  %174 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %173, ptr nonnull %173, i32 1, ptr nonnull elementtype(i32) %173) #10, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i639 = extractvalue { i32, i32, i32 } %174, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i639)
  %cmp.i.i.i.i.i640 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i639, 1
  br i1 %cmp.i.i.i.i.i640, label %if.then.i.i645, label %if.end5.i.i.i.i.i643

if.end5.i.i.i.i.i643:                             ; preds = %if.then.i641
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i639)
  %.not.i.i.i.i.i642 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i639, 0
  br i1 %.not.i.i.i.i.i642, label %if.end5.i.i.i.i.i643.aa_put_proxy.exit_crit_edge, label %if.then10.i.i.i.i.i644, !prof !152

if.end5.i.i.i.i.i643.aa_put_proxy.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i643
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_proxy.exit

if.then10.i.i.i.i.i644:                           ; preds = %if.end5.i.i.i.i.i643
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %173, i32 noundef 3) #10
  br label %aa_put_proxy.exit

if.then.i.i645:                                   ; preds = %if.then.i641
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !157
  call void @aa_proxy_kref(ptr noundef nonnull %173) #10
  br label %aa_put_proxy.exit

aa_put_proxy.exit:                                ; preds = %if.then.i.i645, %if.then10.i.i.i.i.i644, %if.end5.i.i.i.i.i643.aa_put_proxy.exit_crit_edge, %if.then285.aa_put_proxy.exit_crit_edge
  %175 = ptrtoint ptr %new282 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %new282, align 4
  %proxy294 = getelementptr inbounds %struct.aa_profile, ptr %176, i32 0, i32 25, i32 3
  %177 = ptrtoint ptr %proxy294 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr null, ptr %proxy294, align 4
  br label %skip

if.end295:                                        ; preds = %land.lhs.true279.if.end295_crit_edge, %land.end
  %178 = phi ptr [ @.str.19, %land.lhs.true279.if.end295_crit_edge ], [ %spec.select, %land.end ]
  %179 = ptrtoint ptr %ns_name to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %ns_name, align 4
  %new296 = getelementptr inbounds %struct.aa_load_ent, ptr %ent.3840, i32 0, i32 1
  %181 = ptrtoint ptr %new296 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %new296, align 4
  %hname298 = getelementptr inbounds %struct.aa_policy, ptr %182, i32 0, i32 1
  %183 = ptrtoint ptr %hname298 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %hname298, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sa_aad.i647) #10
  %185 = call ptr @memset(ptr %136, i32 0, i32 52)
  %186 = ptrtoint ptr %op2.i649 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %178, ptr %op2.i649, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sa.i648) #10
  %187 = call ptr @memcpy(ptr %sa.i648, ptr @__const.audit_policy.sa, i32 12)
  %188 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %sa_aad.i647, ptr %137, align 4
  %189 = ptrtoint ptr %ns.i650 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %180, ptr %ns.i650, align 4
  %190 = ptrtoint ptr %name6.i651 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %184, ptr %name6.i651, align 4
  %191 = ptrtoint ptr %info7.i652 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr null, ptr %info7.i652, align 4
  %192 = ptrtoint ptr %sa_aad.i647 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 0, ptr %sa_aad.i647, align 4
  %193 = ptrtoint ptr %label9.i653 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %label, ptr %label9.i653, align 4
  call void @aa_audit_msg(i32 noundef 4, ptr noundef nonnull %sa.i648, ptr noundef nonnull @audit_cb) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa.i648) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sa_aad.i647) #10
  %194 = ptrtoint ptr %old271 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %old271, align 4
  %tobool301.not = icmp eq ptr %195, null
  %196 = ptrtoint ptr %new296 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %new296, align 4
  br i1 %tobool301.not, label %if.else307, label %if.then302

if.then302:                                       ; preds = %if.end295
  %hname.i654 = getelementptr inbounds %struct.aa_policy, ptr %197, i32 0, i32 1
  %198 = ptrtoint ptr %hname.i654 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %hname.i654, align 4
  %tobool.not.i.i655 = icmp eq ptr %199, null
  br i1 %tobool.not.i.i655, label %if.then302.aa_put_str.exit.i_crit_edge, label %if.then.i.i658

if.then302.aa_put_str.exit.i_crit_edge:           ; preds = %if.then302
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_str.exit.i

if.then.i.i658:                                   ; preds = %if.then302
  %add.ptr.i.i656 = getelementptr i8, ptr %199, i32 -4
  %call.i.i.i.i.i.i.i.i657 = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i.i656, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !155
  call void @llvm.prefetch.p0(ptr %add.ptr.i.i656, i32 1, i32 3, i32 1) #10
  %200 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i.i656, ptr %add.ptr.i.i656, i32 1, ptr elementtype(i32) %add.ptr.i.i656) #10, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %200, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i660, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i658
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i659 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i659, label %if.end5.i.i.i.i.i.i.aa_put_str.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !152

if.end5.i.i.i.i.i.i.aa_put_str.exit.i_crit_edge:  ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_str.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %add.ptr.i.i656, i32 noundef 3) #10
  br label %aa_put_str.exit.i

if.then.i.i.i660:                                 ; preds = %if.then.i.i658
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !157
  call void @aa_str_kref(ptr noundef %add.ptr.i.i656) #10
  br label %aa_put_str.exit.i

aa_put_str.exit.i:                                ; preds = %if.then.i.i.i660, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.aa_put_str.exit.i_crit_edge, %if.then302.aa_put_str.exit.i_crit_edge
  %hname2.i = getelementptr inbounds %struct.aa_policy, ptr %195, i32 0, i32 1
  %201 = ptrtoint ptr %hname2.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %hname2.i, align 4
  %tobool.not.i19.i = icmp eq ptr %202, null
  br i1 %tobool.not.i19.i, label %aa_put_str.exit.i.share_name.exit_crit_edge, label %if.then.i22.i

aa_put_str.exit.i.share_name.exit_crit_edge:      ; preds = %aa_put_str.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %share_name.exit

if.then.i22.i:                                    ; preds = %aa_put_str.exit.i
  %add.ptr.i20.i = getelementptr i8, ptr %202, i32 -4
  %call.i.i.i.i.i.i.i21.i = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i20.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %add.ptr.i20.i, i32 1, i32 3, i32 1) #10
  %203 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i20.i, ptr %add.ptr.i20.i, i32 1, ptr elementtype(i32) %add.ptr.i20.i) #10, !srcloc !158
  %asmresult.i.i.i.i.i.i.i.i661 = extractvalue { i32, i32, i32 } %203, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i661)
  %tobool1.not.i.i.i.i.i.i662 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i661, 0
  br i1 %tobool1.not.i.i.i.i.i.i662, label %if.then.i22.i.if.end15.sink.split.i.i.i.i.i.i666_crit_edge, label %if.else.i.i.i.i.i.i664, !prof !151

if.then.i22.i.if.end15.sink.split.i.i.i.i.i.i666_crit_edge: ; preds = %if.then.i22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i666

if.else.i.i.i.i.i.i664:                           ; preds = %if.then.i22.i
  %add.i.i.i.i.i.i663 = add i32 %asmresult.i.i.i.i.i.i.i.i661, 1
  %204 = or i32 %add.i.i.i.i.i.i663, %asmresult.i.i.i.i.i.i.i.i661
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %204)
  %.not.i.i.i.i.i23.i = icmp sgt i32 %204, -1
  br i1 %.not.i.i.i.i.i23.i, label %if.else.i.i.i.i.i.i664.share_name.exit_crit_edge, label %if.else.i.i.i.i.i.i664.if.end15.sink.split.i.i.i.i.i.i666_crit_edge, !prof !152

if.else.i.i.i.i.i.i664.if.end15.sink.split.i.i.i.i.i.i666_crit_edge: ; preds = %if.else.i.i.i.i.i.i664
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i666

if.else.i.i.i.i.i.i664.share_name.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i664
  call void @__sanitizer_cov_trace_pc() #12
  br label %share_name.exit

if.end15.sink.split.i.i.i.i.i.i666:               ; preds = %if.else.i.i.i.i.i.i664.if.end15.sink.split.i.i.i.i.i.i666_crit_edge, %if.then.i22.i.if.end15.sink.split.i.i.i.i.i.i666_crit_edge
  %.sink.i.i.i.i.i.i665 = phi i32 [ 2, %if.then.i22.i.if.end15.sink.split.i.i.i.i.i.i666_crit_edge ], [ 1, %if.else.i.i.i.i.i.i664.if.end15.sink.split.i.i.i.i.i.i666_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %add.ptr.i20.i, i32 noundef %.sink.i.i.i.i.i.i665) #10
  br label %share_name.exit

share_name.exit:                                  ; preds = %if.end15.sink.split.i.i.i.i.i.i666, %if.else.i.i.i.i.i.i664.share_name.exit_crit_edge, %aa_put_str.exit.i.share_name.exit_crit_edge
  %205 = ptrtoint ptr %hname2.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %hname2.i, align 4
  %207 = ptrtoint ptr %hname.i654 to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %206, ptr %hname.i654, align 4
  %208 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %195, align 4
  %210 = ptrtoint ptr %197 to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %209, ptr %197, align 4
  %hname10.i667 = getelementptr inbounds %struct.aa_profile, ptr %195, i32 0, i32 25, i32 4
  %211 = ptrtoint ptr %hname10.i667 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %hname10.i667, align 4
  %hname12.i = getelementptr inbounds %struct.aa_profile, ptr %197, i32 0, i32 25, i32 4
  %213 = ptrtoint ptr %hname12.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %212, ptr %hname12.i, align 4
  %214 = ptrtoint ptr %old271 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %old271, align 4
  %216 = ptrtoint ptr %new296 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %new296, align 4
  call fastcc void @__replace_profile(ptr noundef %215, ptr noundef %217)
  br label %skip

if.else307:                                       ; preds = %if.end295
  %parent314 = getelementptr inbounds %struct.aa_profile, ptr %197, i32 0, i32 1
  %218 = ptrtoint ptr %parent314 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load volatile ptr, ptr %parent314, align 4
  %tobool316.not = icmp eq ptr %219, null
  br i1 %tobool316.not, label %if.else307.if.end325_crit_edge, label %if.then317

if.else307.if.end325_crit_edge:                   ; preds = %if.else307
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end325

if.then317:                                       ; preds = %if.else307
  %ns.i668 = getelementptr inbounds %struct.aa_profile, ptr %197, i32 0, i32 2
  %220 = ptrtoint ptr %ns.i668 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %ns.i668, align 4
  %lock.i669 = getelementptr inbounds %struct.aa_ns, ptr %221, i32 0, i32 2
  %call.i670 = call zeroext i1 @mutex_is_locked(ptr noundef %lock.i669) #10
  br i1 %call.i670, label %if.then317.do.end.i_crit_edge, label %land.lhs.true.i673

if.then317.do.end.i_crit_edge:                    ; preds = %if.then317
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i673:                               ; preds = %if.then317
  %call1.i671 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i671)
  %tobool.not.i672 = icmp eq i32 %call1.i671, 0
  br i1 %tobool.not.i672, label %land.lhs.true.i673.do.end.i_crit_edge, label %land.lhs.true2.i674

land.lhs.true.i673.do.end.i_crit_edge:            ; preds = %land.lhs.true.i673
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true2.i674:                              ; preds = %land.lhs.true.i673
  %.b55.i = load i1, ptr @update_to_newest_parent.__warned, align 1
  br i1 %.b55.i, label %land.lhs.true2.i674.do.end.i_crit_edge, label %if.then.i675

land.lhs.true2.i674.do.end.i_crit_edge:           ; preds = %land.lhs.true2.i674
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i675:                                     ; preds = %land.lhs.true2.i674
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @update_to_newest_parent.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 870, ptr noundef nonnull @.str.60) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i675, %land.lhs.true2.i674.do.end.i_crit_edge, %land.lhs.true.i673.do.end.i_crit_edge, %if.then317.do.end.i_crit_edge
  %222 = ptrtoint ptr %parent314 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %parent314, align 4
  %label.i.i676 = getelementptr inbounds %struct.aa_profile, ptr %223, i32 0, i32 25
  %call.i.i677 = call fastcc ptr @aa_get_newest_label(ptr noundef %label.i.i676) #10
  %call2.i.i678 = call fastcc ptr @aa_get_newest_label(ptr noundef %label.i.i676) #10
  %size.i.i = getelementptr inbounds %struct.aa_label, ptr %call2.i.i678, i32 0, i32 7
  %224 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %size.i.i, align 4
  %sub.i.i = add i32 %225, -1
  %arrayidx.i.i = getelementptr %struct.aa_label, ptr %call.i.i677, i32 0, i32 8, i32 %sub.i.i
  %226 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp.not.i = icmp eq ptr %227, %223
  %tobool.not.i57.i = icmp eq ptr %223, null
  br i1 %cmp.not.i, label %if.else46.i, label %if.then6.i

if.then6.i:                                       ; preds = %do.end.i
  br i1 %tobool.not.i57.i, label %if.then6.i.aa_put_profile.exit.i_crit_edge, label %if.then.i.i682

if.then6.i.aa_put_profile.exit.i_crit_edge:       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_profile.exit.i

if.then.i.i682:                                   ; preds = %if.then6.i
  %call.i.i.i.i.i.i.i.i679 = call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i676, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !155
  call void @llvm.prefetch.p0(ptr %label.i.i676, i32 1, i32 3, i32 1) #10
  %228 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i676, ptr %label.i.i676, i32 1, ptr elementtype(i32) %label.i.i676) #10, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i.i680 = extractvalue { i32, i32, i32 } %228, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i680)
  %cmp.i.i.i.i.i.i681 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i680, 1
  br i1 %cmp.i.i.i.i.i.i681, label %if.then.i.i.i686, label %if.end5.i.i.i.i.i.i684

if.end5.i.i.i.i.i.i684:                           ; preds = %if.then.i.i682
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i680)
  %.not.i.i.i.i.i.i683 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i680, 0
  br i1 %.not.i.i.i.i.i.i683, label %if.end5.i.i.i.i.i.i684.aa_put_profile.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i685, !prof !152

if.end5.i.i.i.i.i.i684.aa_put_profile.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i684
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_profile.exit.i

if.then10.i.i.i.i.i.i685:                         ; preds = %if.end5.i.i.i.i.i.i684
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %label.i.i676, i32 noundef 3) #10
  br label %aa_put_profile.exit.i

if.then.i.i.i686:                                 ; preds = %if.then.i.i682
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !157
  call void @aa_label_kref(ptr noundef %label.i.i676) #10
  br label %aa_put_profile.exit.i

aa_put_profile.exit.i:                            ; preds = %if.then.i.i.i686, %if.then10.i.i.i.i.i.i685, %if.end5.i.i.i.i.i.i684.aa_put_profile.exit.i_crit_edge, %if.then6.i.aa_put_profile.exit.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !170
  %229 = ptrtoint ptr %parent314 to i32
  call void @__asan_store4_noabort(i32 %229)
  store volatile ptr %227, ptr %parent314, align 4
  br label %if.end325

if.else46.i:                                      ; preds = %do.end.i
  br i1 %tobool.not.i57.i, label %if.else46.i.if.end325_crit_edge, label %if.then.i62.i

if.else46.i.if.end325_crit_edge:                  ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end325

if.then.i62.i:                                    ; preds = %if.else46.i
  %call.i.i.i.i.i.i.i59.i = call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i676, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !155
  call void @llvm.prefetch.p0(ptr %label.i.i676, i32 1, i32 3, i32 1) #10
  %230 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i676, ptr %label.i.i676, i32 1, ptr elementtype(i32) %label.i.i676) #10, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i60.i = extractvalue { i32, i32, i32 } %230, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i60.i)
  %cmp.i.i.i.i.i61.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i60.i, 1
  br i1 %cmp.i.i.i.i.i61.i, label %if.then.i.i66.i, label %if.end5.i.i.i.i.i64.i

if.end5.i.i.i.i.i64.i:                            ; preds = %if.then.i62.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i60.i)
  %.not.i.i.i.i.i63.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i60.i, 0
  br i1 %.not.i.i.i.i.i63.i, label %if.end5.i.i.i.i.i64.i.if.end325_crit_edge, label %if.then10.i.i.i.i.i65.i, !prof !152

if.end5.i.i.i.i.i64.i.if.end325_crit_edge:        ; preds = %if.end5.i.i.i.i.i64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end325

if.then10.i.i.i.i.i65.i:                          ; preds = %if.end5.i.i.i.i.i64.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %label.i.i676, i32 noundef 3) #10
  br label %if.end325

if.then.i.i66.i:                                  ; preds = %if.then.i62.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !157
  call void @aa_label_kref(ptr noundef %label.i.i676) #10
  br label %if.end325

if.end325:                                        ; preds = %if.then.i.i66.i, %if.then10.i.i.i.i.i65.i, %if.end5.i.i.i.i.i64.i.if.end325_crit_edge, %if.else46.i.if.end325_crit_edge, %aa_put_profile.exit.i, %if.else307.if.end325_crit_edge
  %call320.pn = phi ptr [ %ns.0, %if.else307.if.end325_crit_edge ], [ %227, %aa_put_profile.exit.i ], [ null, %if.else46.i.if.end325_crit_edge ], [ %223, %if.end5.i.i.i.i.i64.i.if.end325_crit_edge ], [ %223, %if.then10.i.i.i.i.i65.i ], [ %223, %if.then.i.i66.i ]
  %lh308.0 = getelementptr inbounds %struct.aa_policy, ptr %call320.pn, i32 0, i32 3
  %231 = ptrtoint ptr %new296 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %new296, align 4
  call fastcc void @__add_profile(ptr noundef %lh308.0, ptr noundef %232)
  br label %skip

skip:                                             ; preds = %if.end325, %share_name.exit, %aa_put_proxy.exit
  call void @aa_load_ent_free(ptr noundef %ent.3840) #10
  %cmp267.not = icmp eq ptr %tmp.0844, %lh
  br i1 %cmp267.not, label %skip.for.end334_crit_edge, label %skip.for.body269_crit_edge

skip.for.body269_crit_edge:                       ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body269

skip.for.end334_crit_edge:                        ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end334

for.end334:                                       ; preds = %skip.for.end334_crit_edge, %for.end255.for.end334_crit_edge
  call void @__aa_labelset_update_subtree(ptr noundef %ns.0) #10
  call void @mutex_unlock(ptr noundef %lock) #10
  br label %out

out:                                              ; preds = %list_del_init.exit731.out_crit_edge, %for.end383.out_crit_edge, %for.end334
  %error.8 = phi i32 [ 0, %for.end334 ], [ %error.10783, %for.end383.out_crit_edge ], [ %error.10783, %list_del_init.exit731.out_crit_edge ]
  %ns.1 = phi ptr [ %ns.0, %for.end334 ], [ %ns.2786, %for.end383.out_crit_edge ], [ %ns.2786, %list_del_init.exit731.out_crit_edge ]
  %udata.addr.4 = phi ptr [ %udata.addr.3, %for.end334 ], [ %udata.addr.5787, %for.end383.out_crit_edge ], [ %udata.addr.5787, %list_del_init.exit731.out_crit_edge ]
  %tobool.not.i687 = icmp eq ptr %ns.1, null
  br i1 %tobool.not.i687, label %out.aa_put_ns.exit_crit_edge, label %if.then.i690

out.aa_put_ns.exit_crit_edge:                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_ns.exit

if.then.i690:                                     ; preds = %out
  %unconfined.i688 = getelementptr inbounds %struct.aa_ns, ptr %ns.1, i32 0, i32 4
  %233 = ptrtoint ptr %unconfined.i688 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %unconfined.i688, align 4
  %tobool.not.i.i689 = icmp eq ptr %234, null
  br i1 %tobool.not.i.i689, label %if.then.i690.aa_put_ns.exit_crit_edge, label %if.then.i.i695

if.then.i690.aa_put_ns.exit_crit_edge:            ; preds = %if.then.i690
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_ns.exit

if.then.i.i695:                                   ; preds = %if.then.i690
  %label.i.i691 = getelementptr inbounds %struct.aa_profile, ptr %234, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i692 = call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i691, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !155
  call void @llvm.prefetch.p0(ptr %label.i.i691, i32 1, i32 3, i32 1) #10
  %235 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i691, ptr %label.i.i691, i32 1, ptr elementtype(i32) %label.i.i691) #10, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i.i693 = extractvalue { i32, i32, i32 } %235, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i693)
  %cmp.i.i.i.i.i.i694 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i693, 1
  br i1 %cmp.i.i.i.i.i.i694, label %if.then.i.i.i699, label %if.end5.i.i.i.i.i.i697

if.end5.i.i.i.i.i.i697:                           ; preds = %if.then.i.i695
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i693)
  %.not.i.i.i.i.i.i696 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i693, 0
  br i1 %.not.i.i.i.i.i.i696, label %if.end5.i.i.i.i.i.i697.aa_put_ns.exit_crit_edge, label %if.then10.i.i.i.i.i.i698, !prof !152

if.end5.i.i.i.i.i.i697.aa_put_ns.exit_crit_edge:  ; preds = %if.end5.i.i.i.i.i.i697
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_ns.exit

if.then10.i.i.i.i.i.i698:                         ; preds = %if.end5.i.i.i.i.i.i697
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %label.i.i691, i32 noundef 3) #10
  br label %aa_put_ns.exit

if.then.i.i.i699:                                 ; preds = %if.then.i.i695
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !157
  call void @aa_label_kref(ptr noundef %label.i.i691) #10
  br label %aa_put_ns.exit

aa_put_ns.exit:                                   ; preds = %if.then.i.i.i699, %if.then10.i.i.i.i.i.i698, %if.end5.i.i.i.i.i.i697.aa_put_ns.exit_crit_edge, %if.then.i690.aa_put_ns.exit_crit_edge, %out.aa_put_ns.exit_crit_edge, %entry.aa_put_ns.exit_crit_edge
  %udata.addr.4770 = phi ptr [ %udata.addr.4, %out.aa_put_ns.exit_crit_edge ], [ %udata.addr.4, %if.then.i690.aa_put_ns.exit_crit_edge ], [ %udata.addr.4, %if.end5.i.i.i.i.i.i697.aa_put_ns.exit_crit_edge ], [ %udata.addr.4, %if.then10.i.i.i.i.i.i698 ], [ %udata.addr.4, %if.then.i.i.i699 ], [ %udata, %entry.aa_put_ns.exit_crit_edge ]
  %error.8769 = phi i32 [ %error.8, %out.aa_put_ns.exit_crit_edge ], [ %error.8, %if.then.i690.aa_put_ns.exit_crit_edge ], [ %error.8, %if.end5.i.i.i.i.i.i697.aa_put_ns.exit_crit_edge ], [ %error.8, %if.then10.i.i.i.i.i.i698 ], [ %error.8, %if.then.i.i.i699 ], [ %call1, %entry.aa_put_ns.exit_crit_edge ]
  %tobool.not.i701 = icmp eq ptr %udata.addr.4770, null
  br i1 %tobool.not.i701, label %aa_put_ns.exit.aa_put_loaddata.exit711_crit_edge, label %if.then.i705

aa_put_ns.exit.aa_put_loaddata.exit711_crit_edge: ; preds = %aa_put_ns.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_loaddata.exit711

if.then.i705:                                     ; preds = %aa_put_ns.exit
  %call.i.i.i.i.i.i.i702 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %udata.addr.4770, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !155
  call void @llvm.prefetch.p0(ptr nonnull %udata.addr.4770, i32 1, i32 3, i32 1) #10
  %236 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %udata.addr.4770, ptr nonnull %udata.addr.4770, i32 1, ptr nonnull elementtype(i32) %udata.addr.4770) #10, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i703 = extractvalue { i32, i32, i32 } %236, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i703)
  %cmp.i.i.i.i.i704 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i703, 1
  br i1 %cmp.i.i.i.i.i704, label %if.then.i.i709, label %if.end5.i.i.i.i.i707

if.end5.i.i.i.i.i707:                             ; preds = %if.then.i705
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i703)
  %.not.i.i.i.i.i706 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i703, 0
  br i1 %.not.i.i.i.i.i706, label %if.end5.i.i.i.i.i707.aa_put_loaddata.exit711_crit_edge, label %if.then10.i.i.i.i.i708, !prof !152

if.end5.i.i.i.i.i707.aa_put_loaddata.exit711_crit_edge: ; preds = %if.end5.i.i.i.i.i707
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_loaddata.exit711

if.then10.i.i.i.i.i708:                           ; preds = %if.end5.i.i.i.i.i707
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %udata.addr.4770, i32 noundef 3) #10
  br label %aa_put_loaddata.exit711

if.then.i.i709:                                   ; preds = %if.then.i705
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !157
  call void @aa_loaddata_kref(ptr noundef nonnull %udata.addr.4770) #10
  br label %aa_put_loaddata.exit711

aa_put_loaddata.exit711:                          ; preds = %if.then.i.i709, %if.then10.i.i.i.i.i708, %if.end5.i.i.i.i.i707.aa_put_loaddata.exit711_crit_edge, %aa_put_ns.exit.aa_put_loaddata.exit711_crit_edge
  %237 = ptrtoint ptr %ns_name to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %ns_name, align 4
  call void @kfree(ptr noundef %238) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.8769)
  %tobool336.not = icmp eq i32 %error.8769, 0
  br i1 %tobool336.not, label %if.end338, label %aa_put_loaddata.exit711.cleanup406_crit_edge

aa_put_loaddata.exit711.cleanup406_crit_edge:     ; preds = %aa_put_loaddata.exit711
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup406

if.end338:                                        ; preds = %aa_put_loaddata.exit711
  call void @__sanitizer_cov_trace_pc() #12
  %size339 = getelementptr inbounds %struct.aa_loaddata, ptr %udata.addr.4770, i32 0, i32 6
  %239 = ptrtoint ptr %size339 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %size339, align 4
  br label %cleanup406

fail_lock:                                        ; preds = %if.end245.fail_lock_crit_edge, %__list_lookup_parent.exit.fail_lock_crit_edge, %for.inc.i.fail_lock_crit_edge, %if.end.i620.fail_lock_crit_edge, %basename.exit.i.fail_lock_crit_edge, %__lookup_replace.exit592, %__lookup_replace.exit
  %info.7 = phi ptr [ @.str.56, %__lookup_replace.exit592 ], [ @.str.56, %__lookup_replace.exit ], [ @.str.27, %if.end245.fail_lock_crit_edge ], [ @.str.25, %for.inc.i.fail_lock_crit_edge ], [ @.str.25, %__list_lookup_parent.exit.fail_lock_crit_edge ], [ @.str.25, %basename.exit.i.fail_lock_crit_edge ], [ @.str.25, %if.end.i620.fail_lock_crit_edge ]
  %error.9 = phi i32 [ %72, %__lookup_replace.exit592 ], [ %61, %__lookup_replace.exit ], [ %error.7, %if.end245.fail_lock_crit_edge ], [ -2, %for.inc.i.fail_lock_crit_edge ], [ -2, %__list_lookup_parent.exit.fail_lock_crit_edge ], [ -2, %basename.exit.i.fail_lock_crit_edge ], [ -2, %if.end.i620.fail_lock_crit_edge ]
  %ent.4 = phi ptr [ %ent.1830, %__lookup_replace.exit592 ], [ %ent.1830, %__lookup_replace.exit ], [ %ent.2, %if.end245.fail_lock_crit_edge ], [ %ent.1830, %for.inc.i.fail_lock_crit_edge ], [ %ent.1830, %__list_lookup_parent.exit.fail_lock_crit_edge ], [ %ent.1830, %basename.exit.i.fail_lock_crit_edge ], [ %ent.1830, %if.end.i620.fail_lock_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #10
  %tobool341.not = icmp eq ptr %ent.4, null
  br i1 %tobool341.not, label %fail_lock.fail.thread_crit_edge, label %fail.thread788

fail_lock.fail.thread_crit_edge:                  ; preds = %fail_lock
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail.thread

fail.thread788:                                   ; preds = %fail_lock
  call void @__sanitizer_cov_trace_pc() #12
  %old343 = getelementptr inbounds %struct.aa_load_ent, ptr %ent.4, i32 0, i32 2
  %241 = ptrtoint ptr %old343 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %old343, align 4
  %tobool344.not = icmp eq ptr %242, null
  %phi.sel = select i1 %tobool344.not, ptr @.str.20, ptr @.str.19
  %243 = ptrtoint ptr %ns_name to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %ns_name, align 4
  br label %cond.true349

fail.thread:                                      ; preds = %fail_lock.fail.thread_crit_edge, %fail_lock.thread, %if.then37
  %info.8.ph = phi ptr [ @.str.26, %fail_lock.thread ], [ @.str.24, %if.then37 ], [ %info.7, %fail_lock.fail.thread_crit_edge ]
  %error.10.ph = phi i32 [ %call205, %fail_lock.thread ], [ %19, %if.then37 ], [ %error.9, %fail_lock.fail.thread_crit_edge ]
  %op.0.ph = phi ptr [ @.str.19, %fail_lock.thread ], [ @.str.20, %if.then37 ], [ @.str.19, %fail_lock.fail.thread_crit_edge ]
  %ns.2.ph = phi ptr [ %ns.0, %fail_lock.thread ], [ null, %if.then37 ], [ %ns.0, %fail_lock.fail.thread_crit_edge ]
  %udata.addr.5.ph = phi ptr [ %udata.addr.3, %fail_lock.thread ], [ %udata, %if.then37 ], [ %udata.addr.3, %fail_lock.fail.thread_crit_edge ]
  %245 = ptrtoint ptr %ns_name to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %ns_name, align 4
  br label %cond.end354

fail:                                             ; preds = %if.then16.fail_crit_edge, %land.lhs.true.fail_crit_edge
  %247 = ptrtoint ptr %ns_name to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %ns_name, align 4
  %tobool348.not = icmp eq ptr %ent.0821, null
  br i1 %tobool348.not, label %fail.cond.end354_crit_edge, label %fail.cond.true349_crit_edge

fail.cond.true349_crit_edge:                      ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.true349

fail.cond.end354_crit_edge:                       ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end354

cond.true349:                                     ; preds = %fail.cond.true349_crit_edge, %fail.thread788
  %249 = phi ptr [ %244, %fail.thread788 ], [ %248, %fail.cond.true349_crit_edge ]
  %udata.addr.5801 = phi ptr [ %udata.addr.3, %fail.thread788 ], [ %udata, %fail.cond.true349_crit_edge ]
  %ns.2800 = phi ptr [ %ns.0, %fail.thread788 ], [ null, %fail.cond.true349_crit_edge ]
  %ent.5799 = phi ptr [ %ent.4, %fail.thread788 ], [ %ent.0821, %fail.cond.true349_crit_edge ]
  %op.0798 = phi ptr [ %phi.sel, %fail.thread788 ], [ %cond, %fail.cond.true349_crit_edge ]
  %error.10797 = phi i32 [ %error.9, %fail.thread788 ], [ -13, %fail.cond.true349_crit_edge ]
  %info.8796 = phi ptr [ %info.7, %fail.thread788 ], [ @.str.23, %fail.cond.true349_crit_edge ]
  %new350 = getelementptr inbounds %struct.aa_load_ent, ptr %ent.5799, i32 0, i32 1
  %250 = ptrtoint ptr %new350 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %new350, align 4
  %hname352 = getelementptr inbounds %struct.aa_policy, ptr %251, i32 0, i32 1
  %252 = ptrtoint ptr %hname352 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %hname352, align 4
  br label %cond.end354

cond.end354:                                      ; preds = %cond.true349, %fail.cond.end354_crit_edge, %fail.thread
  %254 = phi ptr [ %249, %cond.true349 ], [ %248, %fail.cond.end354_crit_edge ], [ %246, %fail.thread ]
  %udata.addr.5787 = phi ptr [ %udata.addr.5801, %cond.true349 ], [ %udata, %fail.cond.end354_crit_edge ], [ %udata.addr.5.ph, %fail.thread ]
  %ns.2786 = phi ptr [ %ns.2800, %cond.true349 ], [ null, %fail.cond.end354_crit_edge ], [ %ns.2.ph, %fail.thread ]
  %ent.5785 = phi ptr [ %ent.5799, %cond.true349 ], [ null, %fail.cond.end354_crit_edge ], [ null, %fail.thread ]
  %op.0784 = phi ptr [ %op.0798, %cond.true349 ], [ %cond, %fail.cond.end354_crit_edge ], [ %op.0.ph, %fail.thread ]
  %error.10783 = phi i32 [ %error.10797, %cond.true349 ], [ -13, %fail.cond.end354_crit_edge ], [ %error.10.ph, %fail.thread ]
  %info.8782 = phi ptr [ %info.8796, %cond.true349 ], [ @.str.23, %fail.cond.end354_crit_edge ], [ %info.8.ph, %fail.thread ]
  %cond355 = phi ptr [ %253, %cond.true349 ], [ null, %fail.cond.end354_crit_edge ], [ null, %fail.thread ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sa_aad.i712) #10
  %255 = getelementptr inbounds i8, ptr %sa_aad.i712, i32 4
  %256 = call ptr @memset(ptr %255, i32 0, i32 52)
  %op2.i714 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i712, i32 0, i32 2
  %257 = ptrtoint ptr %op2.i714 to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %op.0784, ptr %op2.i714, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sa.i713) #10
  %258 = call ptr @memcpy(ptr %sa.i713, ptr @__const.audit_policy.sa, i32 12)
  %259 = getelementptr inbounds %struct.common_audit_data, ptr %sa.i713, i32 0, i32 2
  %260 = ptrtoint ptr %259 to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr %sa_aad.i712, ptr %259, align 4
  %ns.i715 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i712, i32 0, i32 8, i32 0, i32 1
  %261 = ptrtoint ptr %ns.i715 to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %254, ptr %ns.i715, align 4
  %name6.i716 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i712, i32 0, i32 4
  %262 = ptrtoint ptr %name6.i716 to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %cond355, ptr %name6.i716, align 4
  %info7.i717 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i712, i32 0, i32 5
  %263 = ptrtoint ptr %info7.i717 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %info.8782, ptr %info7.i717, align 4
  %264 = ptrtoint ptr %sa_aad.i712 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %error.10783, ptr %sa_aad.i712, align 4
  %label9.i718 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i712, i32 0, i32 3
  %265 = ptrtoint ptr %label9.i718 to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %label, ptr %label9.i718, align 4
  call void @aa_audit_msg(i32 noundef 4, ptr noundef nonnull %sa.i713, ptr noundef nonnull @audit_cb) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa.i713) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sa_aad.i712) #10
  %266 = ptrtoint ptr %lh to i32
  call void @__asan_load4_noabort(i32 %266)
  %tmp.1831 = load ptr, ptr %lh, align 4
  %cmp363.not832 = icmp eq ptr %tmp.1831, %lh
  br i1 %cmp363.not832, label %cond.end354.for.end383_crit_edge, label %for.body365.lr.ph

cond.end354.for.end383_crit_edge:                 ; preds = %cond.end354
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end383

for.body365.lr.ph:                                ; preds = %cond.end354
  %267 = getelementptr inbounds i8, ptr %sa_aad.i719, i32 4
  %op2.i721 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i719, i32 0, i32 2
  %268 = getelementptr inbounds %struct.common_audit_data, ptr %sa.i720, i32 0, i32 2
  %ns.i722 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i719, i32 0, i32 8, i32 0, i32 1
  %name6.i723 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i719, i32 0, i32 4
  %info7.i724 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i719, i32 0, i32 5
  %label9.i725 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i719, i32 0, i32 3
  br label %for.body365

for.body365:                                      ; preds = %for.inc377.for.body365_crit_edge, %for.body365.lr.ph
  %tmp.1834 = phi ptr [ %tmp.1831, %for.body365.lr.ph ], [ %tmp.1, %for.inc377.for.body365_crit_edge ]
  %info.9833 = phi ptr [ @.str.29, %for.body365.lr.ph ], [ %info.10, %for.inc377.for.body365_crit_edge ]
  %cmp366 = icmp eq ptr %tmp.1834, %ent.5785
  br i1 %cmp366, label %for.body365.for.inc377_crit_edge, label %if.end368

for.body365.for.inc377_crit_edge:                 ; preds = %for.body365
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc377

if.end368:                                        ; preds = %for.body365
  call void @__sanitizer_cov_trace_pc() #12
  %old369 = getelementptr inbounds %struct.aa_load_ent, ptr %tmp.1834, i32 0, i32 2
  %269 = ptrtoint ptr %old369 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %old369, align 4
  %tobool370.not = icmp eq ptr %270, null
  %cond372 = select i1 %tobool370.not, ptr @.str.20, ptr @.str.19
  %271 = ptrtoint ptr %ns_name to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %ns_name, align 4
  %new373 = getelementptr inbounds %struct.aa_load_ent, ptr %tmp.1834, i32 0, i32 1
  %273 = ptrtoint ptr %new373 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %new373, align 4
  %hname375 = getelementptr inbounds %struct.aa_policy, ptr %274, i32 0, i32 1
  %275 = ptrtoint ptr %hname375 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %hname375, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sa_aad.i719) #10
  %277 = call ptr @memset(ptr %267, i32 0, i32 52)
  %278 = ptrtoint ptr %op2.i721 to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr %cond372, ptr %op2.i721, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sa.i720) #10
  %279 = call ptr @memcpy(ptr %sa.i720, ptr @__const.audit_policy.sa, i32 12)
  %280 = ptrtoint ptr %268 to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr %sa_aad.i719, ptr %268, align 4
  %281 = ptrtoint ptr %ns.i722 to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr %272, ptr %ns.i722, align 4
  %282 = ptrtoint ptr %name6.i723 to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr %276, ptr %name6.i723, align 4
  %283 = ptrtoint ptr %info7.i724 to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr %info.9833, ptr %info7.i724, align 4
  %284 = ptrtoint ptr %sa_aad.i719 to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %error.10783, ptr %sa_aad.i719, align 4
  %285 = ptrtoint ptr %label9.i725 to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr %label, ptr %label9.i725, align 4
  call void @aa_audit_msg(i32 noundef 4, ptr noundef nonnull %sa.i720, ptr noundef nonnull @audit_cb) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa.i720) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sa_aad.i719) #10
  br label %for.inc377

for.inc377:                                       ; preds = %if.end368, %for.body365.for.inc377_crit_edge
  %info.10 = phi ptr [ %info.9833, %if.end368 ], [ @.str.30, %for.body365.for.inc377_crit_edge ]
  %286 = ptrtoint ptr %tmp.1834 to i32
  call void @__asan_load4_noabort(i32 %286)
  %tmp.1 = load ptr, ptr %tmp.1834, align 4
  %cmp363.not = icmp eq ptr %tmp.1, %lh
  br i1 %cmp363.not, label %for.inc377.for.end383_crit_edge, label %for.inc377.for.body365_crit_edge

for.inc377.for.body365_crit_edge:                 ; preds = %for.inc377
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body365

for.inc377.for.end383_crit_edge:                  ; preds = %for.inc377
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end383

for.end383:                                       ; preds = %for.inc377.for.end383_crit_edge, %cond.end354.for.end383_crit_edge
  %287 = ptrtoint ptr %lh to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %lh, align 4
  %cmp395.not835 = icmp eq ptr %288, %lh
  br i1 %cmp395.not835, label %for.end383.out_crit_edge, label %for.end383.for.body397_crit_edge

for.end383.for.body397_crit_edge:                 ; preds = %for.end383
  br label %for.body397

for.end383.out_crit_edge:                         ; preds = %for.end383
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.body397:                                      ; preds = %list_del_init.exit731.for.body397_crit_edge, %for.end383.for.body397_crit_edge
  %ent.6836 = phi ptr [ %tmp.2, %list_del_init.exit731.for.body397_crit_edge ], [ %288, %for.end383.for.body397_crit_edge ]
  %289 = ptrtoint ptr %ent.6836 to i32
  call void @__asan_load4_noabort(i32 %289)
  %tmp.2 = load ptr, ptr %ent.6836, align 4
  %call.i.i726 = call zeroext i1 @__list_del_entry_valid(ptr noundef %ent.6836) #10
  br i1 %call.i.i726, label %if.end.i.i729, label %for.body397.list_del_init.exit731_crit_edge

for.body397.list_del_init.exit731_crit_edge:      ; preds = %for.body397
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit731

if.end.i.i729:                                    ; preds = %for.body397
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i727 = getelementptr inbounds %struct.list_head, ptr %ent.6836, i32 0, i32 1
  %290 = ptrtoint ptr %prev.i.i727 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %prev.i.i727, align 4
  %292 = ptrtoint ptr %ent.6836 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %ent.6836, align 4
  %prev1.i.i.i728 = getelementptr inbounds %struct.list_head, ptr %293, i32 0, i32 1
  %294 = ptrtoint ptr %prev1.i.i.i728 to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr %291, ptr %prev1.i.i.i728, align 4
  %295 = ptrtoint ptr %291 to i32
  call void @__asan_store4_noabort(i32 %295)
  store volatile ptr %293, ptr %291, align 4
  br label %list_del_init.exit731

list_del_init.exit731:                            ; preds = %if.end.i.i729, %for.body397.list_del_init.exit731_crit_edge
  %296 = ptrtoint ptr %ent.6836 to i32
  call void @__asan_store4_noabort(i32 %296)
  store volatile ptr %ent.6836, ptr %ent.6836, align 4
  %prev.i3.i730 = getelementptr inbounds %struct.list_head, ptr %ent.6836, i32 0, i32 1
  %297 = ptrtoint ptr %prev.i3.i730 to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr %ent.6836, ptr %prev.i3.i730, align 4
  call void @aa_load_ent_free(ptr noundef %ent.6836) #10
  %cmp395.not = icmp eq ptr %tmp.2, %lh
  br i1 %cmp395.not, label %list_del_init.exit731.out_crit_edge, label %list_del_init.exit731.for.body397_crit_edge

list_del_init.exit731.for.body397_crit_edge:      ; preds = %list_del_init.exit731
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body397

list_del_init.exit731.out_crit_edge:              ; preds = %list_del_init.exit731
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

cleanup406:                                       ; preds = %if.end338, %aa_put_loaddata.exit711.cleanup406_crit_edge
  %retval.0 = phi i32 [ %240, %if.end338 ], [ %error.8769, %aa_put_loaddata.exit711.cleanup406_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lh) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ns_name) #10
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @aa_get_loaddata(ptr noundef %data) unnamed_addr #5 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not.i = icmp eq ptr %data, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #10
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %data, i32 noundef 4) #10
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %data, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %land.lhs.true.i
  %2 = phi i32 [ %1, %land.lhs.true.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %data, i32 noundef 4) #10
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #10
  %4 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %data, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %data, ptr nonnull %data, i32 %5, i32 %add.i.i.i.i.i, ptr nonnull elementtype(i32) %data) #10, !srcloc !160
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !152

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !152

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %data, i32 noundef 0) #10
  %10 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %11 = phi i32 [ %8, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #10
  br i1 %tobool12.i.i.i.i.not.i, label %kref_get_unless_zero.exit.i.if.end.i_crit_edge, label %kref_get_unless_zero.exit.i.__aa_get_loaddata.exit_crit_edge

kref_get_unless_zero.exit.i.__aa_get_loaddata.exit_crit_edge: ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__aa_get_loaddata.exit

kref_get_unless_zero.exit.i.if.end.i_crit_edge:   ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %kref_get_unless_zero.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  br label %__aa_get_loaddata.exit

__aa_get_loaddata.exit:                           ; preds = %if.end.i, %kref_get_unless_zero.exit.i.__aa_get_loaddata.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.end.i ], [ %data, %kref_get_unless_zero.exit.i.__aa_get_loaddata.exit_crit_edge ]
  %tobool1.not = icmp ne ptr %retval.0.i, null
  %12 = or i1 %tobool.not.i, %tobool1.not
  br i1 %12, label %__aa_get_loaddata.exit.if.end_crit_edge, label %do.end, !prof !152

__aa_get_loaddata.exit.if.end_crit_edge:          ; preds = %__aa_get_loaddata.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %__aa_get_loaddata.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.aa_get_loaddata) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %__aa_get_loaddata.exit.if.end_crit_edge
  ret ptr %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_unpack(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aa_prepare_ns(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @aa_rawdata_eq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__aa_fs_create_rawdata(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__aafs_profile_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__aa_bump_ns_revision(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__aa_loaddata_update(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__replace_profile(ptr noundef %old, ptr noundef %new) unnamed_addr #0 align 64 {
entry:
  %lh = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %profiles = getelementptr inbounds %struct.aa_policy, ptr %old, i32 0, i32 3
  %0 = ptrtoint ptr %profiles to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %profiles, align 4
  %cmp.i.not = icmp eq ptr %1, %profiles
  br i1 %cmp.i.not, label %entry.if.end53_crit_edge, label %if.then

entry.if.end53_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lh) #10
  %2 = getelementptr inbounds %struct.list_head, ptr %lh, i32 0, i32 1
  %3 = ptrtoint ptr %lh to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %lh, ptr %lh, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %lh, ptr %2, align 4
  %5 = ptrtoint ptr %profiles to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %profiles, align 4
  %cmp.i.not.i = icmp eq ptr %6, %profiles
  br i1 %cmp.i.not.i, label %if.then.list_splice_init_rcu.exit_crit_edge, label %if.then.i

if.then.list_splice_init_rcu.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init_rcu.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %prev2.i.i = getelementptr inbounds %struct.aa_policy, ptr %old, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i, align 4
  %9 = ptrtoint ptr %profiles to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %profiles, ptr %profiles, align 4
  store volatile ptr %profiles, ptr %prev2.i.i, align 4
  call void @synchronize_rcu() #10
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %lh, ptr %8, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !171
  %11 = ptrtoint ptr %lh to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %6, ptr %lh, align 4
  %prev36.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %12 = ptrtoint ptr %prev36.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %lh, ptr %prev36.i.i, align 4
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %8, ptr %2, align 4
  br label %list_splice_init_rcu.exit

list_splice_init_rcu.exit:                        ; preds = %if.then.i, %if.then.list_splice_init_rcu.exit_crit_edge
  %14 = ptrtoint ptr %lh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lh, align 4
  %cmp.not194 = icmp eq ptr %15, %lh
  br i1 %cmp.not194, label %list_splice_init_rcu.exit.for.end_crit_edge, label %for.body.lr.ph

list_splice_init_rcu.exit.for.end_crit_edge:      ; preds = %list_splice_init_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_splice_init_rcu.exit
  %profiles15 = getelementptr inbounds %struct.aa_policy, ptr %new, i32 0, i32 3
  %tobool.not.i133 = icmp eq ptr %new, null
  %label.i = getelementptr inbounds %struct.aa_profile, ptr %new, i32 0, i32 25
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %.pn.in195 = phi ptr [ %15, %for.body.lr.ph ], [ %.pn197, %cleanup.for.body_crit_edge ]
  %child.0196 = getelementptr i8, ptr %.pn.in195, i32 -8
  %16 = ptrtoint ptr %.pn.in195 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn197 = load ptr, ptr %.pn.in195, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in195) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in195, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %.pn.in195 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.pn.in195, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %23 = ptrtoint ptr %.pn.in195 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %.pn.in195, ptr %.pn.in195, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in195, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %.pn.in195, ptr %prev.i3.i, align 4
  %25 = ptrtoint ptr %child.0196 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %child.0196, align 4
  %call17 = call fastcc ptr @__find_child(ptr noundef %profiles15, ptr noundef %26)
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end, label %if.then19

if.then19:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @__replace_profile(ptr noundef %child.0196, ptr noundef nonnull %call17)
  br label %cleanup

if.end:                                           ; preds = %list_del_init.exit
  %ns.i = getelementptr i8, ptr %.pn.in195, i32 20
  %27 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ns.i, align 4
  %lock.i = getelementptr inbounds %struct.aa_ns, ptr %28, i32 0, i32 2
  %call.i = call zeroext i1 @mutex_is_locked(ptr noundef %lock.i) #10
  br i1 %call.i, label %if.end.aa_deref_parent.exit_crit_edge, label %land.lhs.true.i

if.end.aa_deref_parent.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_deref_parent.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.aa_deref_parent.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.aa_deref_parent.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_deref_parent.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b5.i = load i1, ptr @aa_deref_parent.__warned, align 1
  br i1 %.b5.i, label %land.lhs.true2.i.aa_deref_parent.exit_crit_edge, label %if.then.i132

land.lhs.true2.i.aa_deref_parent.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_deref_parent.exit

if.then.i132:                                     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @aa_deref_parent.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 102, ptr noundef nonnull @.str.60) #10
  br label %aa_deref_parent.exit

aa_deref_parent.exit:                             ; preds = %if.then.i132, %land.lhs.true2.i.aa_deref_parent.exit_crit_edge, %land.lhs.true.i.aa_deref_parent.exit_crit_edge, %if.end.aa_deref_parent.exit_crit_edge
  %parent.i = getelementptr i8, ptr %.pn.in195, i32 16
  %29 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent.i, align 4
  br i1 %tobool.not.i133, label %aa_deref_parent.exit.aa_get_profile.exit_crit_edge, label %if.then.i134

aa_deref_parent.exit.aa_get_profile.exit_crit_edge: ; preds = %aa_deref_parent.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_get_profile.exit

if.then.i134:                                     ; preds = %aa_deref_parent.exit
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %label.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %label.i, i32 1, i32 3, i32 1) #10
  %31 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i, ptr %label.i, i32 1, ptr elementtype(i32) %label.i) #10, !srcloc !158
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i134.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !151

if.then.i134.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i134
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i134
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %32 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %.not.i.i.i.i.i = icmp sgt i32 %32, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.aa_get_profile.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !152

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.aa_get_profile.exit_crit_edge:  ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_get_profile.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i134.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i134.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %label.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %aa_get_profile.exit

aa_get_profile.exit:                              ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.aa_get_profile.exit_crit_edge, %aa_deref_parent.exit.aa_get_profile.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !172
  %33 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %new, ptr %parent.i, align 4
  %34 = ptrtoint ptr %profiles15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %profiles15, align 4
  %call.i.i135 = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in195, ptr noundef %profiles15, ptr noundef %35) #10
  br i1 %call.i.i135, label %if.end.i.i138, label %aa_get_profile.exit.list_add_rcu.exit_crit_edge

aa_get_profile.exit.list_add_rcu.exit_crit_edge:  ; preds = %aa_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_rcu.exit

if.end.i.i138:                                    ; preds = %aa_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %.pn.in195 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %.pn.in195, align 4
  %37 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %profiles15, ptr %prev.i3.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !167
  %38 = ptrtoint ptr %profiles15 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %.pn.in195, ptr %profiles15, align 4
  %prev37.i.i137 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %39 = ptrtoint ptr %prev37.i.i137 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %.pn.in195, ptr %prev37.i.i137, align 4
  br label %list_add_rcu.exit

list_add_rcu.exit:                                ; preds = %if.end.i.i138, %aa_get_profile.exit.list_add_rcu.exit_crit_edge
  %tobool.not.i139 = icmp eq ptr %30, null
  br i1 %tobool.not.i139, label %list_add_rcu.exit.cleanup_crit_edge, label %if.then.i142

list_add_rcu.exit.cleanup_crit_edge:              ; preds = %list_add_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i142:                                     ; preds = %list_add_rcu.exit
  %label.i140 = getelementptr inbounds %struct.aa_profile, ptr %30, i32 0, i32 25
  %call.i.i.i.i.i.i.i141 = call zeroext i1 @__kasan_check_write(ptr noundef %label.i140, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !155
  call void @llvm.prefetch.p0(ptr %label.i140, i32 1, i32 3, i32 1) #10
  %40 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i140, ptr %label.i140, i32 1, ptr elementtype(i32) %label.i140) #10, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i143 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i143, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !152

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %label.i140, i32 noundef 3) #10
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i142
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !157
  call void @aa_label_kref(ptr noundef %label.i140) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %list_add_rcu.exit.cleanup_crit_edge, %if.then19
  %cmp.not = icmp eq ptr %.pn197, %lh
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %list_splice_init_rcu.exit.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lh) #10
  br label %if.end53

if.end53:                                         ; preds = %for.end, %entry.if.end53_crit_edge
  %parent58 = getelementptr inbounds %struct.aa_profile, ptr %new, i32 0, i32 1
  %41 = ptrtoint ptr %parent58 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %parent58, align 4
  %tobool60.not = icmp eq ptr %42, null
  br i1 %tobool60.not, label %if.then61, label %if.end53.if.end91_crit_edge

if.end53.if.end91_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.then61:                                        ; preds = %if.end53
  %ns.i144 = getelementptr inbounds %struct.aa_profile, ptr %old, i32 0, i32 2
  %43 = ptrtoint ptr %ns.i144 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ns.i144, align 4
  %lock.i145 = getelementptr inbounds %struct.aa_ns, ptr %44, i32 0, i32 2
  %call.i146 = call zeroext i1 @mutex_is_locked(ptr noundef %lock.i145) #10
  br i1 %call.i146, label %if.then61.aa_deref_parent.exit154_crit_edge, label %land.lhs.true.i149

if.then61.aa_deref_parent.exit154_crit_edge:      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_deref_parent.exit154

land.lhs.true.i149:                               ; preds = %if.then61
  %call1.i147 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i147)
  %tobool.not.i148 = icmp eq i32 %call1.i147, 0
  br i1 %tobool.not.i148, label %land.lhs.true.i149.aa_deref_parent.exit154_crit_edge, label %land.lhs.true2.i151

land.lhs.true.i149.aa_deref_parent.exit154_crit_edge: ; preds = %land.lhs.true.i149
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_deref_parent.exit154

land.lhs.true2.i151:                              ; preds = %land.lhs.true.i149
  %.b5.i150 = load i1, ptr @aa_deref_parent.__warned, align 1
  br i1 %.b5.i150, label %land.lhs.true2.i151.aa_deref_parent.exit154_crit_edge, label %if.then.i152

land.lhs.true2.i151.aa_deref_parent.exit154_crit_edge: ; preds = %land.lhs.true2.i151
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_deref_parent.exit154

if.then.i152:                                     ; preds = %land.lhs.true2.i151
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @aa_deref_parent.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 102, ptr noundef nonnull @.str.60) #10
  br label %aa_deref_parent.exit154

aa_deref_parent.exit154:                          ; preds = %if.then.i152, %land.lhs.true2.i151.aa_deref_parent.exit154_crit_edge, %land.lhs.true.i149.aa_deref_parent.exit154_crit_edge, %if.then61.aa_deref_parent.exit154_crit_edge
  %parent.i153 = getelementptr inbounds %struct.aa_profile, ptr %old, i32 0, i32 1
  %45 = ptrtoint ptr %parent.i153 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %parent.i153, align 4
  %tobool.not.i155 = icmp eq ptr %46, null
  br i1 %tobool.not.i155, label %aa_deref_parent.exit154.aa_get_profile.exit166_crit_edge, label %if.then.i160

aa_deref_parent.exit154.aa_get_profile.exit166_crit_edge: ; preds = %aa_deref_parent.exit154
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_get_profile.exit166

if.then.i160:                                     ; preds = %aa_deref_parent.exit154
  %label.i156 = getelementptr inbounds %struct.aa_profile, ptr %46, i32 0, i32 25
  %call.i.i.i.i.i.i.i157 = call zeroext i1 @__kasan_check_write(ptr noundef %label.i156, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %label.i156, i32 1, i32 3, i32 1) #10
  %47 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i156, ptr %label.i156, i32 1, ptr elementtype(i32) %label.i156) #10, !srcloc !158
  %asmresult.i.i.i.i.i.i.i158 = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i158)
  %tobool1.not.i.i.i.i.i159 = icmp eq i32 %asmresult.i.i.i.i.i.i.i158, 0
  br i1 %tobool1.not.i.i.i.i.i159, label %if.then.i160.if.end15.sink.split.i.i.i.i.i165_crit_edge, label %if.else.i.i.i.i.i163, !prof !151

if.then.i160.if.end15.sink.split.i.i.i.i.i165_crit_edge: ; preds = %if.then.i160
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i165

if.else.i.i.i.i.i163:                             ; preds = %if.then.i160
  %add.i.i.i.i.i161 = add i32 %asmresult.i.i.i.i.i.i.i158, 1
  %48 = or i32 %add.i.i.i.i.i161, %asmresult.i.i.i.i.i.i.i158
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %.not.i.i.i.i.i162 = icmp sgt i32 %48, -1
  br i1 %.not.i.i.i.i.i162, label %if.else.i.i.i.i.i163.aa_get_profile.exit166_crit_edge, label %if.else.i.i.i.i.i163.if.end15.sink.split.i.i.i.i.i165_crit_edge, !prof !152

if.else.i.i.i.i.i163.if.end15.sink.split.i.i.i.i.i165_crit_edge: ; preds = %if.else.i.i.i.i.i163
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i165

if.else.i.i.i.i.i163.aa_get_profile.exit166_crit_edge: ; preds = %if.else.i.i.i.i.i163
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_get_profile.exit166

if.end15.sink.split.i.i.i.i.i165:                 ; preds = %if.else.i.i.i.i.i163.if.end15.sink.split.i.i.i.i.i165_crit_edge, %if.then.i160.if.end15.sink.split.i.i.i.i.i165_crit_edge
  %.sink.i.i.i.i.i164 = phi i32 [ 2, %if.then.i160.if.end15.sink.split.i.i.i.i.i165_crit_edge ], [ 1, %if.else.i.i.i.i.i163.if.end15.sink.split.i.i.i.i.i165_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %label.i156, i32 noundef %.sink.i.i.i.i.i164) #10
  br label %aa_get_profile.exit166

aa_get_profile.exit166:                           ; preds = %if.end15.sink.split.i.i.i.i.i165, %if.else.i.i.i.i.i163.aa_get_profile.exit166_crit_edge, %aa_deref_parent.exit154.aa_get_profile.exit166_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !173
  %49 = ptrtoint ptr %parent58 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %46, ptr %parent58, align 4
  br label %if.end91

if.end91:                                         ; preds = %aa_get_profile.exit166, %if.end53.if.end91_crit_edge
  %label = getelementptr inbounds %struct.aa_profile, ptr %old, i32 0, i32 25
  %label92 = getelementptr inbounds %struct.aa_profile, ptr %new, i32 0, i32 25
  %call93 = call zeroext i1 @aa_label_replace(ptr noundef %label, ptr noundef %label92) #10
  call void @__aafs_profile_migrate_dents(ptr noundef %old, ptr noundef %new) #10
  %list95 = getelementptr inbounds %struct.aa_policy, ptr %new, i32 0, i32 2
  %50 = ptrtoint ptr %list95 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %list95, align 4
  %cmp.i167.not = icmp eq ptr %51, %list95
  br i1 %cmp.i167.not, label %if.then98, label %if.else

if.then98:                                        ; preds = %if.end91
  %list100 = getelementptr inbounds %struct.aa_policy, ptr %old, i32 0, i32 2
  %52 = ptrtoint ptr %list100 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %list100, align 4
  %54 = ptrtoint ptr %list95 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %list95, align 4
  %prev.i = getelementptr inbounds %struct.aa_policy, ptr %old, i32 0, i32 2, i32 1
  %55 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i, align 4
  %prev2.i = getelementptr inbounds %struct.aa_policy, ptr %new, i32 0, i32 2, i32 1
  %57 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %prev2.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !174
  %58 = ptrtoint ptr %prev2.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev2.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %list95, ptr %59, align 4
  %61 = ptrtoint ptr %list95 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %list95, align 4
  %prev38.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev38.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %list95, ptr %prev38.i, align 4
  %64 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %tobool.not.i169 = icmp eq ptr %new, null
  br i1 %tobool.not.i169, label %if.then98.aa_get_profile.exit180_crit_edge, label %if.then.i174

if.then98.aa_get_profile.exit180_crit_edge:       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_get_profile.exit180

if.then.i174:                                     ; preds = %if.then98
  %call.i.i.i.i.i.i.i171 = call zeroext i1 @__kasan_check_write(ptr noundef %label92, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %label92, i32 1, i32 3, i32 1) #10
  %65 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label92, ptr %label92, i32 1, ptr elementtype(i32) %label92) #10, !srcloc !158
  %asmresult.i.i.i.i.i.i.i172 = extractvalue { i32, i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i172)
  %tobool1.not.i.i.i.i.i173 = icmp eq i32 %asmresult.i.i.i.i.i.i.i172, 0
  br i1 %tobool1.not.i.i.i.i.i173, label %if.then.i174.if.end15.sink.split.i.i.i.i.i179_crit_edge, label %if.else.i.i.i.i.i177, !prof !151

if.then.i174.if.end15.sink.split.i.i.i.i.i179_crit_edge: ; preds = %if.then.i174
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i179

if.else.i.i.i.i.i177:                             ; preds = %if.then.i174
  %add.i.i.i.i.i175 = add i32 %asmresult.i.i.i.i.i.i.i172, 1
  %66 = or i32 %add.i.i.i.i.i175, %asmresult.i.i.i.i.i.i.i172
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %.not.i.i.i.i.i176 = icmp sgt i32 %66, -1
  br i1 %.not.i.i.i.i.i176, label %if.else.i.i.i.i.i177.aa_get_profile.exit180_crit_edge, label %if.else.i.i.i.i.i177.if.end15.sink.split.i.i.i.i.i179_crit_edge, !prof !152

if.else.i.i.i.i.i177.if.end15.sink.split.i.i.i.i.i179_crit_edge: ; preds = %if.else.i.i.i.i.i177
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i179

if.else.i.i.i.i.i177.aa_get_profile.exit180_crit_edge: ; preds = %if.else.i.i.i.i.i177
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_get_profile.exit180

if.end15.sink.split.i.i.i.i.i179:                 ; preds = %if.else.i.i.i.i.i177.if.end15.sink.split.i.i.i.i.i179_crit_edge, %if.then.i174.if.end15.sink.split.i.i.i.i.i179_crit_edge
  %.sink.i.i.i.i.i178 = phi i32 [ 2, %if.then.i174.if.end15.sink.split.i.i.i.i.i179_crit_edge ], [ 1, %if.else.i.i.i.i.i177.if.end15.sink.split.i.i.i.i.i179_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %label92, i32 noundef %.sink.i.i.i.i.i178) #10
  br label %aa_get_profile.exit180

aa_get_profile.exit180:                           ; preds = %if.end15.sink.split.i.i.i.i.i179, %if.else.i.i.i.i.i177.aa_get_profile.exit180_crit_edge, %if.then98.aa_get_profile.exit180_crit_edge
  %tobool.not.i181 = icmp eq ptr %old, null
  br i1 %tobool.not.i181, label %aa_get_profile.exit180.if.end104_crit_edge, label %if.then.i186

aa_get_profile.exit180.if.end104_crit_edge:       ; preds = %aa_get_profile.exit180
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

if.then.i186:                                     ; preds = %aa_get_profile.exit180
  %call.i.i.i.i.i.i.i183 = call zeroext i1 @__kasan_check_write(ptr noundef %label, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !155
  call void @llvm.prefetch.p0(ptr %label, i32 1, i32 3, i32 1) #10
  %67 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label, ptr %label, i32 1, ptr elementtype(i32) %label) #10, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i184 = extractvalue { i32, i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i184)
  %cmp.i.i.i.i.i185 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i184, 1
  br i1 %cmp.i.i.i.i.i185, label %if.then.i.i190, label %if.end5.i.i.i.i.i188

if.end5.i.i.i.i.i188:                             ; preds = %if.then.i186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i184)
  %.not.i.i.i.i.i187 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i184, 0
  br i1 %.not.i.i.i.i.i187, label %if.end5.i.i.i.i.i188.if.end104_crit_edge, label %if.then10.i.i.i.i.i189, !prof !152

if.end5.i.i.i.i.i188.if.end104_crit_edge:         ; preds = %if.end5.i.i.i.i.i188
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

if.then10.i.i.i.i.i189:                           ; preds = %if.end5.i.i.i.i.i188
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %label, i32 noundef 3) #10
  br label %if.end104

if.then.i.i190:                                   ; preds = %if.then.i186
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !157
  call void @aa_label_kref(ptr noundef %label) #10
  br label %if.end104

if.else:                                          ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @__list_remove_profile(ptr noundef %old)
  br label %if.end104

if.end104:                                        ; preds = %if.else, %if.then.i.i190, %if.then10.i.i.i.i.i189, %if.end5.i.i.i.i.i188.if.end104_crit_edge, %aa_get_profile.exit180.if.end104_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_load_ent_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__aa_labelset_update_subtree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_remove_profiles(ptr noundef %policy_ns, ptr noundef %subj, ptr noundef %fqname, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %sa_aad.i118 = alloca %struct.apparmor_audit_data, align 4
  %sa.i119 = alloca %struct.common_audit_data, align 4
  %sa_aad.i = alloca %struct.apparmor_audit_data, align 4
  %sa.i = alloca %struct.common_audit_data, align 4
  %ns_name = alloca ptr, align 4
  %ns_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ns_name) #10
  %0 = ptrtoint ptr %ns_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %ns_name, align 4
  %1 = ptrtoint ptr %fqname to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %fqname, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i8 %2, label %if.else [
    i8 0, label %entry.fail_crit_edge
    i8 58, label %if.then5
  ]

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.then5:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ns_len) #10
  %4 = ptrtoint ptr %ns_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %ns_len, align 4, !annotation !162
  %call = call ptr @aa_splitn_fqname(ptr noundef %fqname, i32 noundef %size, ptr noundef nonnull %ns_name, ptr noundef nonnull %ns_len) #10
  %tobool.not = icmp eq ptr %policy_ns, null
  br i1 %tobool.not, label %cond.false, label %if.then5.cond.end_crit_edge

if.then5.cond.end_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %vec = getelementptr inbounds %struct.aa_label, ptr %subj, i32 0, i32 8
  %size7 = getelementptr inbounds %struct.aa_label, ptr %subj, i32 0, i32 7
  %5 = ptrtoint ptr %size7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size7, align 4
  %sub = add i32 %6, -1
  %arrayidx8 = getelementptr ptr, ptr %vec, i32 %sub
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx8, align 4
  %ns9 = getelementptr inbounds %struct.aa_profile, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %ns9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ns9, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then5.cond.end_crit_edge
  %cond = phi ptr [ %10, %cond.false ], [ %policy_ns, %if.then5.cond.end_crit_edge ]
  %11 = ptrtoint ptr %ns_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ns_name, align 4
  %13 = ptrtoint ptr %ns_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ns_len, align 4
  %call10 = call ptr @aa_lookupn_ns(ptr noundef %cond, ptr noundef %12, i32 noundef %14) #10
  %tobool11.not = icmp eq ptr %call10, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ns_len) #10
  br i1 %tobool11.not, label %cond.end.fail_crit_edge, label %cond.end.if.end26_crit_edge

cond.end.if.end26_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

cond.end.fail_crit_edge:                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.else:                                          ; preds = %entry
  %tobool14.not = icmp eq ptr %policy_ns, null
  br i1 %tobool14.not, label %cond.end23, label %if.else.if.then.i_crit_edge

if.else.if.then.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

cond.end23:                                       ; preds = %if.else
  %vec17 = getelementptr inbounds %struct.aa_label, ptr %subj, i32 0, i32 8
  %size19 = getelementptr inbounds %struct.aa_label, ptr %subj, i32 0, i32 7
  %15 = ptrtoint ptr %size19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size19, align 4
  %sub20 = add i32 %16, -1
  %arrayidx21 = getelementptr ptr, ptr %vec17, i32 %sub20
  %17 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx21, align 4
  %ns22 = getelementptr inbounds %struct.aa_profile, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %ns22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ns22, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %cond.end23.if.end26_crit_edge, label %cond.end23.if.then.i_crit_edge

cond.end23.if.then.i_crit_edge:                   ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

cond.end23.if.end26_crit_edge:                    ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then.i:                                        ; preds = %cond.end23.if.then.i_crit_edge, %if.else.if.then.i_crit_edge
  %cond24127 = phi ptr [ %20, %cond.end23.if.then.i_crit_edge ], [ %policy_ns, %if.else.if.then.i_crit_edge ]
  %unconfined.i = getelementptr inbounds %struct.aa_ns, ptr %cond24127, i32 0, i32 4
  %21 = ptrtoint ptr %unconfined.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %unconfined.i, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.then.i.if.end26_crit_edge, label %if.then.i.i

if.then.i.if.end26_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then.i.i:                                      ; preds = %if.then.i
  %label.i.i = getelementptr inbounds %struct.aa_profile, ptr %22, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %label.i.i, i32 1, i32 3, i32 1) #10
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i, ptr %label.i.i, i32 1, ptr elementtype(i32) %label.i.i) #10, !srcloc !158
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !151

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %24 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %.not.i.i.i.i.i.i = icmp sgt i32 %24, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.end26_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !152

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end26_crit_edge:           ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %label.i.i, i32 noundef %.sink.i.i.i.i.i.i) #10
  br label %if.end26

if.end26:                                         ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end26_crit_edge, %if.then.i.if.end26_crit_edge, %cond.end23.if.end26_crit_edge, %cond.end.if.end26_crit_edge
  %ns.0 = phi ptr [ %call10, %cond.end.if.end26_crit_edge ], [ null, %cond.end23.if.end26_crit_edge ], [ %cond24127, %if.then.i.if.end26_crit_edge ], [ %cond24127, %if.else.i.i.i.i.i.i.if.end26_crit_edge ], [ %cond24127, %if.end15.sink.split.i.i.i.i.i.i ]
  %name.0 = phi ptr [ %call, %cond.end.if.end26_crit_edge ], [ %fqname, %cond.end23.if.end26_crit_edge ], [ %fqname, %if.then.i.if.end26_crit_edge ], [ %fqname, %if.else.i.i.i.i.i.i.if.end26_crit_edge ], [ %fqname, %if.end15.sink.split.i.i.i.i.i.i ]
  %tobool27.not = icmp eq ptr %name.0, null
  br i1 %tobool27.not, label %if.then28, label %if.else31

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %parent = getelementptr inbounds %struct.aa_ns, ptr %ns.0, i32 0, i32 1
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent, align 4
  %lock = getelementptr inbounds %struct.aa_ns, ptr %26, i32 0, i32 2
  %level = getelementptr inbounds %struct.aa_ns, ptr %ns.0, i32 0, i32 8
  %27 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %level, align 4
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef %28) #10
  call void @__aa_bump_ns_revision(ptr noundef %ns.0) #10
  call void @__aa_remove_ns(ptr noundef %ns.0) #10
  %29 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent, align 4
  %lock30 = getelementptr inbounds %struct.aa_ns, ptr %30, i32 0, i32 2
  br label %if.end41

if.else31:                                        ; preds = %if.end26
  %lock32 = getelementptr inbounds %struct.aa_ns, ptr %ns.0, i32 0, i32 2
  %level33 = getelementptr inbounds %struct.aa_ns, ptr %ns.0, i32 0, i32 8
  %31 = ptrtoint ptr %level33 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %level33, align 4
  call void @mutex_lock_nested(ptr noundef %lock32, i32 noundef %32) #10
  %call.i = call i32 @strlen(ptr noundef nonnull %name.0) #16
  %call1.i = call fastcc ptr @__lookupn_profile(ptr noundef %ns.0, ptr noundef nonnull %name.0, i32 noundef %call.i) #10
  %tobool.not.i87 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i87, label %if.then37, label %if.then.i88

if.then.i88:                                      ; preds = %if.else31
  %label.i = getelementptr inbounds %struct.aa_profile, ptr %call1.i, i32 0, i32 25
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %label.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %label.i, i32 1, i32 3, i32 1) #10
  %33 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i, ptr %label.i, i32 1, ptr elementtype(i32) %label.i) #10, !srcloc !158
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i88.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !151

if.then.i88.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i88
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %34 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %.not.i.i.i.i.i = icmp sgt i32 %34, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end38_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !152

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end38_crit_edge:             ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i88.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i88.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %label.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %if.end38

if.then37:                                        ; preds = %if.else31
  call void @mutex_unlock(ptr noundef %lock32) #10
  %tobool.not.i89 = icmp eq ptr %ns.0, null
  br i1 %tobool.not.i89, label %if.then37.fail_crit_edge, label %if.then.i92

if.then37.fail_crit_edge:                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.then.i92:                                      ; preds = %if.then37
  %unconfined.i90 = getelementptr inbounds %struct.aa_ns, ptr %ns.0, i32 0, i32 4
  %35 = ptrtoint ptr %unconfined.i90 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %unconfined.i90, align 4
  %tobool.not.i.i91 = icmp eq ptr %36, null
  br i1 %tobool.not.i.i91, label %if.then.i92.fail_crit_edge, label %if.then.i.i95

if.then.i92.fail_crit_edge:                       ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.then.i.i95:                                    ; preds = %if.then.i92
  %label.i.i93 = getelementptr inbounds %struct.aa_profile, ptr %36, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i94 = call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i93, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !155
  call void @llvm.prefetch.p0(ptr %label.i.i93, i32 1, i32 3, i32 1) #10
  %37 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i93, ptr %label.i.i93, i32 1, ptr elementtype(i32) %label.i.i93) #10, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i96 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i96, label %if.end5.i.i.i.i.i.i.fail_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !152

if.end5.i.i.i.i.i.i.fail_crit_edge:               ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %label.i.i93, i32 noundef 3) #10
  br label %fail

if.then.i.i.i:                                    ; preds = %if.then.i.i95
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !157
  call void @aa_label_kref(ptr noundef %label.i.i93) #10
  br label %fail

if.end38:                                         ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end38_crit_edge
  %hname = getelementptr inbounds %struct.aa_policy, ptr %call1.i, i32 0, i32 1
  %38 = ptrtoint ptr %hname to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hname, align 4
  call void @__aa_bump_ns_revision(ptr noundef %ns.0) #10
  call fastcc void @__remove_profile(ptr noundef nonnull %call1.i)
  call void @__aa_labelset_update_subtree(ptr noundef %ns.0) #10
  br label %if.end41

if.end41:                                         ; preds = %if.end38, %if.then28
  %lock32.sink = phi ptr [ %lock32, %if.end38 ], [ %lock30, %if.then28 ]
  %profile.0 = phi ptr [ %call1.i, %if.end38 ], [ null, %if.then28 ]
  %name.1 = phi ptr [ %39, %if.end38 ], [ null, %if.then28 ]
  call void @mutex_unlock(ptr noundef %lock32.sink) #10
  %40 = ptrtoint ptr %ns_name to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ns_name, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sa_aad.i) #10
  %42 = getelementptr inbounds i8, ptr %sa_aad.i, i32 4
  %43 = call ptr @memset(ptr %42, i32 0, i32 52)
  %op2.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 2
  %44 = ptrtoint ptr %op2.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.18, ptr %op2.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sa.i) #10
  %45 = call ptr @memcpy(ptr %sa.i, ptr @__const.audit_policy.sa, i32 12)
  %46 = getelementptr inbounds %struct.common_audit_data, ptr %sa.i, i32 0, i32 2
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %sa_aad.i, ptr %46, align 4
  %ns.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 8, i32 0, i32 1
  %48 = ptrtoint ptr %ns.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %41, ptr %ns.i, align 4
  %name6.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 4
  %49 = ptrtoint ptr %name6.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %name.1, ptr %name6.i, align 4
  %info7.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 5
  %50 = ptrtoint ptr %info7.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %info7.i, align 4
  %51 = ptrtoint ptr %sa_aad.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %sa_aad.i, align 4
  %label9.i = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i, i32 0, i32 3
  %52 = ptrtoint ptr %label9.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %subj, ptr %label9.i, align 4
  call void @aa_audit_msg(i32 noundef 4, ptr noundef nonnull %sa.i, ptr noundef nonnull @audit_cb) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sa_aad.i) #10
  %tobool.not.i97 = icmp eq ptr %ns.0, null
  br i1 %tobool.not.i97, label %if.end41.aa_put_ns.exit110_crit_edge, label %if.then.i100

if.end41.aa_put_ns.exit110_crit_edge:             ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_ns.exit110

if.then.i100:                                     ; preds = %if.end41
  %unconfined.i98 = getelementptr inbounds %struct.aa_ns, ptr %ns.0, i32 0, i32 4
  %53 = ptrtoint ptr %unconfined.i98 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %unconfined.i98, align 4
  %tobool.not.i.i99 = icmp eq ptr %54, null
  br i1 %tobool.not.i.i99, label %if.then.i100.aa_put_ns.exit110_crit_edge, label %if.then.i.i105

if.then.i100.aa_put_ns.exit110_crit_edge:         ; preds = %if.then.i100
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_ns.exit110

if.then.i.i105:                                   ; preds = %if.then.i100
  %label.i.i101 = getelementptr inbounds %struct.aa_profile, ptr %54, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i102 = call zeroext i1 @__kasan_check_write(ptr noundef %label.i.i101, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !155
  call void @llvm.prefetch.p0(ptr %label.i.i101, i32 1, i32 3, i32 1) #10
  %55 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i.i101, ptr %label.i.i101, i32 1, ptr elementtype(i32) %label.i.i101) #10, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i.i103 = extractvalue { i32, i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i103)
  %cmp.i.i.i.i.i.i104 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i103, 1
  br i1 %cmp.i.i.i.i.i.i104, label %if.then.i.i.i109, label %if.end5.i.i.i.i.i.i107

if.end5.i.i.i.i.i.i107:                           ; preds = %if.then.i.i105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i103)
  %.not.i.i.i.i.i.i106 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i103, 0
  br i1 %.not.i.i.i.i.i.i106, label %if.end5.i.i.i.i.i.i107.aa_put_ns.exit110_crit_edge, label %if.then10.i.i.i.i.i.i108, !prof !152

if.end5.i.i.i.i.i.i107.aa_put_ns.exit110_crit_edge: ; preds = %if.end5.i.i.i.i.i.i107
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_ns.exit110

if.then10.i.i.i.i.i.i108:                         ; preds = %if.end5.i.i.i.i.i.i107
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %label.i.i101, i32 noundef 3) #10
  br label %aa_put_ns.exit110

if.then.i.i.i109:                                 ; preds = %if.then.i.i105
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !157
  call void @aa_label_kref(ptr noundef %label.i.i101) #10
  br label %aa_put_ns.exit110

aa_put_ns.exit110:                                ; preds = %if.then.i.i.i109, %if.then10.i.i.i.i.i.i108, %if.end5.i.i.i.i.i.i107.aa_put_ns.exit110_crit_edge, %if.then.i100.aa_put_ns.exit110_crit_edge, %if.end41.aa_put_ns.exit110_crit_edge
  %tobool.not.i111 = icmp eq ptr %profile.0, null
  br i1 %tobool.not.i111, label %aa_put_ns.exit110.cleanup45_crit_edge, label %if.then.i115

aa_put_ns.exit110.cleanup45_crit_edge:            ; preds = %aa_put_ns.exit110
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup45

if.then.i115:                                     ; preds = %aa_put_ns.exit110
  %label.i112 = getelementptr inbounds %struct.aa_profile, ptr %profile.0, i32 0, i32 25
  %call.i.i.i.i.i.i.i113 = call zeroext i1 @__kasan_check_write(ptr noundef %label.i112, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !155
  call void @llvm.prefetch.p0(ptr %label.i112, i32 1, i32 3, i32 1) #10
  %56 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i112, ptr %label.i112, i32 1, ptr elementtype(i32) %label.i112) #10, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i114 = extractvalue { i32, i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i114)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i114, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i117, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i114)
  %.not.i.i.i.i.i116 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i114, 0
  br i1 %.not.i.i.i.i.i116, label %if.end5.i.i.i.i.i.cleanup45_crit_edge, label %if.then10.i.i.i.i.i, !prof !152

if.end5.i.i.i.i.i.cleanup45_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup45

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %label.i112, i32 noundef 3) #10
  br label %cleanup45

if.then.i.i117:                                   ; preds = %if.then.i115
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !157
  call void @aa_label_kref(ptr noundef %label.i112) #10
  br label %cleanup45

fail:                                             ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.fail_crit_edge, %if.then.i92.fail_crit_edge, %if.then37.fail_crit_edge, %cond.end.fail_crit_edge, %entry.fail_crit_edge
  %name.2 = phi ptr [ %call, %cond.end.fail_crit_edge ], [ %fqname, %entry.fail_crit_edge ], [ %name.0, %if.then37.fail_crit_edge ], [ %name.0, %if.then.i92.fail_crit_edge ], [ %name.0, %if.end5.i.i.i.i.i.i.fail_crit_edge ], [ %name.0, %if.then10.i.i.i.i.i.i ], [ %name.0, %if.then.i.i.i ]
  %info.2 = phi ptr [ @.str.32, %cond.end.fail_crit_edge ], [ @.str.31, %entry.fail_crit_edge ], [ @.str.33, %if.then37.fail_crit_edge ], [ @.str.33, %if.then.i92.fail_crit_edge ], [ @.str.33, %if.end5.i.i.i.i.i.i.fail_crit_edge ], [ @.str.33, %if.then10.i.i.i.i.i.i ], [ @.str.33, %if.then.i.i.i ]
  %57 = ptrtoint ptr %ns_name to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ns_name, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sa_aad.i118) #10
  %59 = getelementptr inbounds i8, ptr %sa_aad.i118, i32 4
  %60 = call ptr @memset(ptr %59, i32 0, i32 52)
  %op2.i120 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i118, i32 0, i32 2
  %61 = ptrtoint ptr %op2.i120 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @.str.18, ptr %op2.i120, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sa.i119) #10
  %62 = call ptr @memcpy(ptr %sa.i119, ptr @__const.audit_policy.sa, i32 12)
  %63 = getelementptr inbounds %struct.common_audit_data, ptr %sa.i119, i32 0, i32 2
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %sa_aad.i118, ptr %63, align 4
  %ns.i121 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i118, i32 0, i32 8, i32 0, i32 1
  %65 = ptrtoint ptr %ns.i121 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %58, ptr %ns.i121, align 4
  %name6.i122 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i118, i32 0, i32 4
  %66 = ptrtoint ptr %name6.i122 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %name.2, ptr %name6.i122, align 4
  %info7.i123 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i118, i32 0, i32 5
  %67 = ptrtoint ptr %info7.i123 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %info.2, ptr %info7.i123, align 4
  %68 = ptrtoint ptr %sa_aad.i118 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -2, ptr %sa_aad.i118, align 4
  %label9.i124 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad.i118, i32 0, i32 3
  %69 = ptrtoint ptr %label9.i124 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %subj, ptr %label9.i124, align 4
  call void @aa_audit_msg(i32 noundef 4, ptr noundef nonnull %sa.i119, ptr noundef nonnull @audit_cb) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa.i119) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sa_aad.i118) #10
  br label %cleanup45

cleanup45:                                        ; preds = %fail, %if.then.i.i117, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup45_crit_edge, %aa_put_ns.exit110.cleanup45_crit_edge
  %retval.0 = phi i32 [ -2, %fail ], [ %size, %aa_put_ns.exit110.cleanup45_crit_edge ], [ %size, %if.end5.i.i.i.i.i.cleanup45_crit_edge ], [ %size, %if.then10.i.i.i.i.i ], [ %size, %if.then.i.i117 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ns_name) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__aa_remove_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @aa_label_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__aafs_profile_rmdir(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__list_remove_profile(ptr noundef %profile) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %profile, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !151

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 140, i32 noundef 9, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.__list_remove_profile) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %ns = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 2
  %0 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns, align 4
  %tobool26.not = icmp eq ptr %1, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !151

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 141, i32 noundef 9, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.__list_remove_profile) #10
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %2 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns, align 4
  %lock = getelementptr inbounds %struct.aa_ns, ptr %3, i32 0, i32 2
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock) #10
  br i1 %call, label %if.end50.if.end86_crit_edge, label %do.end80, !prof !152

if.end50.if.end86_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

do.end80:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 142, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.__list_remove_profile) #10
  br label %if.end86

if.end86:                                         ; preds = %do.end80, %if.end50.if.end86_crit_edge
  %list = getelementptr inbounds %struct.aa_policy, ptr %profile, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end86.list_del_rcu.exit_crit_edge

if.end86.list_del_rcu.exit_crit_edge:             ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.aa_policy, ptr %profile, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end86.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.aa_policy, ptr %profile, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br i1 %tobool.not, label %list_del_rcu.exit.aa_put_profile.exit_crit_edge, label %if.then.i

list_del_rcu.exit.aa_put_profile.exit_crit_edge:  ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_profile.exit

if.then.i:                                        ; preds = %list_del_rcu.exit
  %label.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 25
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %label.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !155
  tail call void @llvm.prefetch.p0(ptr %label.i, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %label.i, ptr %label.i, i32 1, ptr elementtype(i32) %label.i) #10, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.aa_put_profile.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !152

if.end5.i.i.i.i.i.aa_put_profile.exit_crit_edge:  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_put_profile.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %label.i, i32 noundef 3) #10
  br label %aa_put_profile.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @aa_label_kref(ptr noundef %label.i) #10
  br label %aa_put_profile.exit

aa_put_profile.exit:                              ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_profile.exit_crit_edge, %list_del_rcu.exit.aa_put_profile.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_label_kref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_free_domain_entries(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_dfa_free_kref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_loaddata_kref(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnstr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @aa_get_newest_label(ptr noundef %l) unnamed_addr #5 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not = icmp eq ptr %l, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  br i1 %tobool3.not, label %do.end, label %if.then2.if.end20_crit_edge, !prof !151

if.then2.if.end20_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 424, i32 noundef 9, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.aa_get_newest_label) #10
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
  br i1 %tobool33.not, label %do.end51, label %if.end20.if.end57_crit_edge, !prof !151

if.end20.if.end57_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

do.end51:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 425, i32 noundef 9, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.aa_get_newest_label) #10
  br label %if.end57

if.end57:                                         ; preds = %do.end51, %if.end20.if.end57_crit_edge
  %8 = ptrtoint ptr %proxy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %proxy, align 4
  %label68 = getelementptr inbounds %struct.aa_proxy, ptr %9, i32 0, i32 1
  %10 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !159
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %if.end57.do.body.i.preheader_crit_edge, label %land.lhs.true.i.i

if.end57.do.body.i.preheader_crit_edge:           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.preheader

land.lhs.true.i.i:                                ; preds = %if.end57
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.do.body.i.preheader_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.do.body.i.preheader_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.preheader

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.do.body.i.preheader_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.do.body.i.preheader_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.preheader

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 696, ptr noundef nonnull @.str.38) #10
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.then.i.i, %land.lhs.true2.i.i.do.body.i.preheader_crit_edge, %land.lhs.true.i.i.do.body.i.preheader_crit_edge, %if.end57.do.body.i.preheader_crit_edge
  br label %do.body.i

do.body.i:                                        ; preds = %kref_get_unless_zero.exit.i.do.body.i_crit_edge, %do.body.i.preheader
  %14 = ptrtoint ptr %label68 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %label68, align 4
  %call.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.body.i.do.end8.i_crit_edge

do.body.i.do.end8.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %call3.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b17.i = load i1, ptr @aa_get_label_rcu.__warned, align 1
  br i1 %.b17.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @aa_get_label_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 401, ptr noundef nonnull @.str.47) #10
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %do.body.i.do.end8.i_crit_edge
  %tobool11.not.i = icmp eq ptr %15, null
  br i1 %tobool11.not.i, label %do.end8.i.do.end14.i_crit_edge, label %land.rhs.i

do.end8.i.do.end14.i_crit_edge:                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14.i

land.rhs.i:                                       ; preds = %do.end8.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #10
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %15, i32 noundef 4) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %18, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %15, i32 noundef 4) #10
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #10
  %20 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %15, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %22 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %15, ptr nonnull %15, i32 %21, i32 %add.i.i.i.i.i, ptr nonnull elementtype(i32) %15) #10, !srcloc !160
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %21
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !152

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %23 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %24, 1
  %25 = or i32 %add5.i.i.i.i.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i.i.i = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !152

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %15, i32 noundef 0) #10
  %26 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %27 = phi i32 [ %24, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  %tobool12.i.i.i.i.not.i = icmp eq i32 %27, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #10
  br i1 %tobool12.i.i.i.i.not.i, label %kref_get_unless_zero.exit.i.do.body.i_crit_edge, label %kref_get_unless_zero.exit.i.do.end14.i_crit_edge

kref_get_unless_zero.exit.i.do.end14.i_crit_edge: ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14.i

kref_get_unless_zero.exit.i.do.body.i_crit_edge:  ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.end14.i:                                       ; preds = %kref_get_unless_zero.exit.i.do.end14.i_crit_edge, %do.end8.i.do.end14.i_crit_edge
  %call.i18.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i18.i, label %do.end14.i.aa_get_label_rcu.exit_crit_edge, label %land.lhs.true.i21.i

do.end14.i.aa_get_label_rcu.exit_crit_edge:       ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_get_label_rcu.exit

land.lhs.true.i21.i:                              ; preds = %do.end14.i
  %call1.i19.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19.i)
  %tobool.not.i20.i = icmp eq i32 %call1.i19.i, 0
  br i1 %tobool.not.i20.i, label %land.lhs.true.i21.i.aa_get_label_rcu.exit_crit_edge, label %land.lhs.true2.i23.i

land.lhs.true.i21.i.aa_get_label_rcu.exit_crit_edge: ; preds = %land.lhs.true.i21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_get_label_rcu.exit

land.lhs.true2.i23.i:                             ; preds = %land.lhs.true.i21.i
  %.b4.i22.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22.i, label %land.lhs.true2.i23.i.aa_get_label_rcu.exit_crit_edge, label %if.then.i24.i

land.lhs.true2.i23.i.aa_get_label_rcu.exit_crit_edge: ; preds = %land.lhs.true2.i23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aa_get_label_rcu.exit

if.then.i24.i:                                    ; preds = %land.lhs.true2.i23.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.41) #10
  br label %aa_get_label_rcu.exit

aa_get_label_rcu.exit:                            ; preds = %if.then.i24.i, %land.lhs.true2.i23.i.aa_get_label_rcu.exit_crit_edge, %land.lhs.true.i21.i.aa_get_label_rcu.exit_crit_edge, %do.end14.i.aa_get_label_rcu.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !161
  %28 = call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i.i25.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i25.i to ptr
  %preempt_count.i.i.i.i26.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i26.i, align 4
  %sub.i.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i26.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br i1 %tobool11.not.i, label %do.end89, label %aa_get_label_rcu.exit.return_crit_edge, !prof !151

aa_get_label_rcu.exit.return_crit_edge:           ; preds = %aa_get_label_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.end89:                                         ; preds = %aa_get_label_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 431, i32 noundef 9, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.aa_get_newest_label) #10
  br label %return

if.then.i118:                                     ; preds = %if.end
  %call.i.i.i.i.i.i.i117 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %l, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull %l, i32 1, i32 3, i32 1) #10
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %l, ptr nonnull %l, i32 1, ptr nonnull elementtype(i32) %l) #10, !srcloc !158
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i118.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !151

if.then.i118.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i118
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i118
  %add.i.i.i.i.i119 = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %33 = or i32 %add.i.i.i.i.i119, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %.not.i.i.i.i.i120 = icmp sgt i32 %33, -1
  br i1 %.not.i.i.i.i.i120, label %if.else.i.i.i.i.i.return_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !152

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.return_crit_edge:               ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i118.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i118.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %l, i32 noundef %.sink.i.i.i.i.i) #10
  br label %return

return:                                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.return_crit_edge, %do.end89, %aa_get_label_rcu.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ null, %do.end89 ], [ %15, %aa_get_label_rcu.exit.return_crit_edge ], [ %l, %if.else.i.i.i.i.i.return_crit_edge ], [ %l, %if.end15.sink.split.i.i.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aa_label_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_capable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_capable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_audit_msg(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @audit_cb(ptr noundef %ab, ptr nocapture noundef readonly %va) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.common_audit_data, ptr %va, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %ns = getelementptr inbounds %struct.apparmor_audit_data, ptr %2, i32 0, i32 8, i32 0, i32 1
  %3 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ns, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.53) #10
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %ns1 = getelementptr inbounds %struct.apparmor_audit_data, ptr %6, i32 0, i32 8, i32 0, i32 1
  %7 = ptrtoint ptr %ns1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ns1, align 4
  tail call void @audit_log_untrustedstring(ptr noundef %ab, ptr noundef %8) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_untrustedstring(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_proxy_kref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_str_kref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @aa_label_replace(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__aafs_profile_migrate_dents(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !25, !27, !29, !31, !33, !35, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !79, !81, !83, !85, !86, !87, !89, !90, !91, !93, !94, !96, !98, !99, !100, !102, !104, !106, !107, !109, !110, !112, !114, !116, !118, !119, !120, !122, !123, !125, !127, !128, !129, !131, !133, !135, !137, !138, !139}
!llvm.named.register.sp = !{!141}
!llvm.module.flags = !{!142, !143, !144, !145, !146, !147, !148, !149}
!llvm.ident = !{!150}

!0 = !{ptr @unprivileged_userns_apparmor_policy, !1, !"unprivileged_userns_apparmor_policy", i1 false, i1 false}
!1 = !{!"../security/apparmor/policy.c", i32 90, i32 5}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/apparmor/policy.c", i32 93, i32 2}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/apparmor/policy.c", i32 94, i32 2}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/apparmor/policy.c", i32 95, i32 2}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../security/apparmor/policy.c", i32 96, i32 2}
!10 = !{ptr @aa_profile_mode_names, !11, !"aa_profile_mode_names", i1 false, i1 false}
!11 = !{!"../security/apparmor/policy.c", i32 92, i32 19}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/apparmor/policy.c", i32 210, i32 2}
!14 = !{ptr @aa_free_profile._rs, !13, !"_rs", i1 false, i1 false}
!15 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @aa_free_profile.descriptor, !13, !"descriptor", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../security/apparmor/policy.c", i32 509, i32 2}
!22 = !{ptr @__func__.aa_new_null_profile, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../security/apparmor/policy.c", i32 515, i32 18}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../security/apparmor/policy.c", i32 524, i32 16}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../security/apparmor/policy.c", i32 661, i32 35}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../security/apparmor/policy.c", i32 663, i32 32}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../security/apparmor/policy.c", i32 680, i32 35}
!33 = !{ptr @aa_policy_admin_capable._rs, !34, !"_rs", i1 false, i1 false}
!34 = !{!"../security/apparmor/policy.c", i32 683, i32 2}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @aa_policy_admin_capable.descriptor, !34, !"descriptor", i1 false, i1 false}
!38 = !{ptr @aa_policy_admin_capable._rs.15, !39, !"_rs", i1 false, i1 false}
!39 = !{!"../security/apparmor/policy.c", i32 684, i32 2}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @aa_policy_admin_capable.descriptor.16, !39, !"descriptor", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../security/apparmor/policy.c", i32 726, i32 8}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../security/apparmor/policy.c", i32 728, i32 8}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../security/apparmor/policy.c", i32 730, i32 8}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../security/apparmor/policy.c", i32 734, i32 46}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../security/apparmor/policy.c", i32 738, i32 46}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../security/apparmor/policy.c", i32 925, i32 12}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../security/apparmor/policy.c", i32 944, i32 11}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../security/apparmor/policy.c", i32 1000, i32 12}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../security/apparmor/policy.c", i32 1015, i32 11}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../security/apparmor/policy.c", i32 1033, i32 11}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../security/apparmor/policy.c", i32 1048, i32 10}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../security/apparmor/policy.c", i32 1102, i32 9}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../security/apparmor/policy.c", i32 1105, i32 11}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../security/apparmor/policy.c", i32 1145, i32 10}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../security/apparmor/policy.c", i32 1158, i32 11}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../security/apparmor/policy.c", i32 1178, i32 11}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../security/apparmor/policy.c", i32 156, i32 2}
!76 = !{ptr @__func__.__remove_profile, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../security/apparmor/policy.c", i32 157, i32 2}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../security/apparmor/policy.c", i32 158, i32 2}
!81 = !{ptr @__func__.__list_remove_profile, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../security/apparmor/policy.c", i32 140, i32 2}
!83 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!84 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!85 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../security/apparmor/include/lib.h", i32 196, i32 2}
!89 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!91 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!92 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!93 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../security/apparmor/policy.c", i32 401, i32 30}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../security/apparmor/include/label.h", i32 424, i32 3}
!98 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @__func__.aa_get_newest_label, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../security/apparmor/include/label.h", i32 425, i32 3}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../security/apparmor/include/label.h", i32 431, i32 3}
!104 = distinct !{null, !105, !"__warned", i1 false, i1 false}
!105 = !{!"../security/apparmor/include/label.h", i32 401, i32 7}
!106 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../security/apparmor/policy.c", i32 113, i32 2}
!109 = !{ptr @__func__.__add_profile, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../security/apparmor/policy.c", i32 122, i32 2}
!112 = distinct !{null, !113, !"__warned", i1 false, i1 false}
!113 = !{!"../security/apparmor/policy.c", i32 643, i32 20}
!114 = distinct !{null, !115, !"__warned", i1 false, i1 false}
!115 = !{!"../security/apparmor/include/cred.h", i32 89, i32 27}
!116 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../security/apparmor/include/cred.h", i32 51, i32 2}
!118 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @__func__.aa_cred_raw_label, !117, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.52, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../security/apparmor/include/cred.h", i32 26, i32 2}
!122 = !{ptr @__func__.cred_label, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../security/apparmor/policy.c", i32 601, i32 24}
!125 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../security/apparmor/include/policy_unpack.h", i32 112, i32 2}
!127 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @__func__.aa_get_loaddata, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../security/apparmor/policy.c", i32 845, i32 12}
!131 = distinct !{null, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../security/apparmor/policy.c", i32 585, i32 12}
!133 = distinct !{null, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../security/apparmor/policy.c", i32 588, i32 12}
!135 = distinct !{null, !136, !"__warned", i1 false, i1 false}
!136 = !{!"../security/apparmor/include/policy_ns.h", i32 101, i32 9}
!137 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.60, !136, !"<string literal>", i1 false, i1 false}
!139 = distinct !{null, !140, !"__warned", i1 false, i1 false}
!140 = !{!"../security/apparmor/policy.c", i32 869, i32 11}
!141 = !{!"sp"}
!142 = !{i32 1, !"wchar_size", i32 2}
!143 = !{i32 1, !"min_enum_size", i32 4}
!144 = !{i32 8, !"branch-target-enforcement", i32 0}
!145 = !{i32 8, !"sign-return-address", i32 0}
!146 = !{i32 8, !"sign-return-address-all", i32 0}
!147 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!148 = !{i32 7, !"uwtable", i32 1}
!149 = !{i32 7, !"frame-pointer", i32 2}
!150 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!151 = !{!"branch_weights", i32 1, i32 2000}
!152 = !{!"branch_weights", i32 2000, i32 1}
!153 = !{i8 0, i8 2}
!154 = !{i64 2148232719, i64 2148232724, i64 2148232737, i64 2148232781, i64 2148232815, i64 2148232836}
!155 = !{i64 2148701548}
!156 = !{i64 2148615988, i64 2148616020, i64 2148616049, i64 2148616083, i64 2148616114, i64 2148616137}
!157 = !{i64 2149899321}
!158 = !{i64 2148613523, i64 2148613555, i64 2148613584, i64 2148613618, i64 2148613649, i64 2148613672}
!159 = !{i64 2149948864}
!160 = !{i64 1097506, i64 1097530, i64 1097551, i64 1097568, i64 1097585}
!161 = !{i64 2149949130}
!162 = !{!"auto-init"}
!163 = !{i64 2148697428}
!164 = !{i64 2148612713, i64 2148612745, i64 2148612774, i64 2148612808, i64 2148612839, i64 2148612862}
!165 = !{i64 2148697657}
!166 = !{i64 2158448956}
!167 = !{i64 2151451376}
!168 = !{i64 2158515792}
!169 = !{i64 2158523646}
!170 = !{i64 2158497740}
!171 = !{i64 2151480693}
!172 = !{i64 2158478668}
!173 = !{i64 2158489590}
!174 = !{i64 2151469365}
