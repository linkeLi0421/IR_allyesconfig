; ModuleID = '/llk/IR_all_yes/security/apparmor/file.c_pt.bc'
source_filename = "../security/apparmor/file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%union.anon.166 = type { ptr }
%struct.path = type { ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.4 }
%union.anon.4 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.14, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.aa_perms = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.lsm_blob_sizes = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.apparmor_audit_data = type { i32, i32, ptr, ptr, ptr, ptr, i32, i32, %union.anon.152 }
%union.anon.152 = type { %struct.anon.153 }
%struct.anon.153 = type { ptr, %union.anon.154 }
%union.anon.154 = type { %struct.anon.158 }
%struct.anon.158 = type { i32, i32, ptr, ptr, i32 }
%struct.common_audit_data = type { i8, %union.anon.161, %union.anon.166 }
%union.anon.161 = type { %struct.path }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.114, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.114 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.30 }
%union.anon.30 = type { %struct.callback_head }
%struct.aa_dfa = type { %struct.kref, i16, i32, [8 x ptr] }
%struct.table_header = type { i16, i16, i32, i32, [0 x i8] }
%struct.path_cond = type { %struct.kuid_t, i16 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.132, %struct.list_head, %struct.list_head, %union.anon.133 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.130 }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type { %struct.spinlock, i32 }
%union.anon.132 = type { %struct.list_head }
%union.anon.133 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.126, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.127, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.128, ptr, %struct.address_space, %struct.list_head, %union.anon.129, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.126 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.127 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.128 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.129 = type { ptr }
%struct.label_it = type { i32, i32 }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.aa_file_ctx = type { %struct.spinlock, ptr, i32 }
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
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.aa_proxy = type { %struct.kref, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.106, %struct.anon.107, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.106 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.107 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.anon = type { [16 x i8], %struct.lockdep_map }

@__const.aa_audit_file.sa = private unnamed_addr constant { i8, [3 x i8], { ptr, [4 x i8] }, %union.anon.166 } { i8 5, [3 x i8] zeroinitializer, { ptr, [4 x i8] } { ptr null, [4 x i8] c"\FF\FF\FF\FF" }, %union.anon.166 zeroinitializer }, align 4
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"security/apparmor/file.c\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"AppArmor WARN %s: ((!((&sa)->apparmor_audit_data)->request)): \00", [33 x i8] zeroinitializer }, align 32
@__func__.aa_audit_file = private unnamed_addr constant [14 x i8] c"aa_audit_file\00", align 1
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"AppArmor WARN %s: ((!label)): \00", [33 x i8] zeroinitializer }, align 32
@__func__.aa_file_perm = private unnamed_addr constant [13 x i8] c"aa_file_perm\00", align 1
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AppArmor WARN %s: ((!file)): \00", [34 x i8] zeroinitializer }, align 32
@aa_file_perm.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"AppArmor WARN %s: ((!flabel)): \00", [32 x i8] zeroinitializer }, align 32
@aa_null = external dso_local global %struct.path, align 4
@aa_g_audit = external dso_local local_unnamed_addr global i32, align 4
@aa_file_perm_chrs = external dso_local constant [0 x i8], align 1
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" requested_mask=\22%s\22\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" denied_mask=\22%s\22\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" fsuid=%d\00", [22 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" ouid=%d\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" target=\00", [23 x i8] zeroinitializer }, align 32
@nullperms = external dso_local global %struct.aa_perms, align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"link\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"target restricted\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"link not subset of target\00", [38 x i8] zeroinitializer }, align 32
@apparmor_blob_sizes = external dso_local local_unnamed_addr global %struct.lsm_blob_sizes, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"security/apparmor/include/label.h\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AppArmor WARN %s: ((!l->proxy)): \00", [62 x i8] zeroinitializer }, align 32
@__func__.aa_get_newest_label = private unnamed_addr constant [20 x i8] c"aa_get_newest_label\00", align 1
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"AppArmor WARN %s: ((!l->proxy->label)): \00", [55 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AppArmor WARN %s: ((!tmp)): \00", [35 x i8] zeroinitializer }, align 32
@aa_get_label_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@update_file_ctx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AppArmor WARN %s: ((!sock)): \00", [34 x i8] zeroinitializer }, align 32
@__func__.__file_sock_perm = private unnamed_addr constant [17 x i8] c"__file_sock_perm\00", align 1
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"security/apparmor/include/cred.h\00", [63 x i8] zeroinitializer }, align 32
@__func__.aa_cred_raw_label = private unnamed_addr constant [18 x i8] c"aa_cred_raw_label\00", align 1
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AppArmor WARN %s: ((!blob)): \00", [34 x i8] zeroinitializer }, align 32
@__func__.cred_label = private unnamed_addr constant [11 x i8] c"cred_label\00", align 1
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"file_inherit\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 4, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 4, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 125, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 606, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 607, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 612, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 613, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 53, i32 24 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 58, i32 24 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 61, i32 24 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 63, i32 24 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 68, i32 24 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 370, i32 20 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 401, i32 10 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 427, i32 10 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 695, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 723, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 424, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 425, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [37 x i8] c"../security/apparmor/include/label.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 431, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 493, i32 8 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 569, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 51, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [36 x i8] c"../security/apparmor/include/cred.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 26, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private constant [28 x i8] c"../security/apparmor/file.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 664, i32 20 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_audit_file(ptr noundef %profile, ptr nocapture noundef readonly %perms, ptr noundef %op, i32 noundef %request, ptr noundef %name, ptr noundef %target, ptr noundef %tlabel, [1 x i32] %ouid.coerce, ptr noundef %info, i32 noundef %error) local_unnamed_addr #0 align 64 {
entry:
  %sa_aad = alloca %struct.apparmor_audit_data, align 4
  %sa = alloca %struct.common_audit_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ouid.coerce.fca.0.extract = extractvalue [1 x i32] %ouid.coerce, 0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sa_aad) #8
  %0 = getelementptr inbounds i8, ptr %sa_aad, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 52)
  %op3 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad, i32 0, i32 2
  %2 = ptrtoint ptr %op3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %op, ptr %op3, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sa) #8
  %3 = call ptr @memcpy(ptr %sa, ptr @__const.aa_audit_file.sa, i32 12)
  %4 = getelementptr inbounds %struct.common_audit_data, ptr %sa, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sa_aad, ptr %4, align 4
  %u = getelementptr inbounds %struct.common_audit_data, ptr %sa, i32 0, i32 1
  %request7 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad, i32 0, i32 6
  %name8 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad, i32 0, i32 4
  %6 = ptrtoint ptr %name8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %name, ptr %name8, align 4
  %7 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad, i32 0, i32 8, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %target, ptr %7, align 4
  %9 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad, i32 0, i32 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %tlabel, ptr %9, align 4
  %ouid10 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad, i32 0, i32 8, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %ouid10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %ouid.coerce.fca.0.extract, ptr %ouid10, align 4
  %info11 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad, i32 0, i32 5
  %12 = ptrtoint ptr %info11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %info, ptr %info11, align 4
  %13 = ptrtoint ptr %sa_aad to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %error, ptr %sa_aad, align 4
  %14 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error)
  %tobool.not = icmp eq i32 %error, 0
  br i1 %tobool.not, label %if.then, label %if.else, !prof !75

if.then:                                          ; preds = %entry
  %audit = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 1
  %15 = ptrtoint ptr %audit to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %audit, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_g_audit to i32))
  %17 = load i32, ptr @aa_g_audit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.AUDIT_MODE.exit_crit_edge

if.then.AUDIT_MODE.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %AUDIT_MODE.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %audit.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 7
  %18 = ptrtoint ptr %audit.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %audit.i, align 4
  br label %AUDIT_MODE.exit

AUDIT_MODE.exit:                                  ; preds = %if.end.i, %if.then.AUDIT_MODE.exit_crit_edge
  %retval.0.i = phi i32 [ %19, %if.end.i ], [ %17, %if.then.AUDIT_MODE.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, 4
  br i1 %cmp, label %if.then24, label %AUDIT_MODE.exit.if.end_crit_edge, !prof !76

AUDIT_MODE.exit.if.end_crit_edge:                 ; preds = %AUDIT_MODE.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then24:                                        ; preds = %AUDIT_MODE.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %if.then24, %AUDIT_MODE.exit.if.end_crit_edge
  %mask.0 = phi i32 [ 65535, %if.then24 ], [ %16, %AUDIT_MODE.exit.if.end_crit_edge ]
  %and = and i32 %mask.0, %request
  %20 = ptrtoint ptr %request7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and, ptr %request7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %if.end.cleanup103_crit_edge, label %if.end.if.end97_crit_edge

if.end.if.end97_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.end.cleanup103_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup103

if.else:                                          ; preds = %entry
  %21 = ptrtoint ptr %perms to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %perms, align 4
  %neg = xor i32 %22, -1
  %and39 = and i32 %neg, %request
  %23 = ptrtoint ptr %request7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and39, ptr %request7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool42.not = icmp eq i32 %and39, 0
  br i1 %tobool42.not, label %do.end, label %if.else.if.end64_crit_edge, !prof !76

if.else.if.end64_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 125, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.aa_audit_file) #8
  br label %if.end64

if.end64:                                         ; preds = %do.end, %if.else.if.end64_crit_edge
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %4, align 4
  %request73 = getelementptr inbounds %struct.apparmor_audit_data, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %request73 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %request73, align 4
  %kill = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 4
  %28 = ptrtoint ptr %kill to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %kill, align 4
  %and74 = and i32 %29, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  %spec.select = select i1 %tobool75.not, i32 7, i32 6
  %quiet = getelementptr inbounds %struct.aa_perms, ptr %perms, i32 0, i32 3
  %30 = ptrtoint ptr %quiet to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %quiet, align 4
  %and79 = and i32 %31, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end64.if.end91thread-pre-split_crit_edge, label %land.lhs.true

if.end64.if.end91thread-pre-split_crit_edge:      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91thread-pre-split

land.lhs.true:                                    ; preds = %if.end64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_g_audit to i32))
  %32 = load i32, ptr @aa_g_audit, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i32 %32, label %land.lhs.true.AUDIT_MODE.exit124_crit_edge [
    i32 0, label %AUDIT_MODE.exit119
    i32 3, label %land.lhs.true.if.end91thread-pre-split_crit_edge
  ]

land.lhs.true.if.end91thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91thread-pre-split

land.lhs.true.AUDIT_MODE.exit124_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %AUDIT_MODE.exit124

AUDIT_MODE.exit119:                               ; preds = %land.lhs.true
  %audit.i116 = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 7
  %34 = ptrtoint ptr %audit.i116 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %audit.i116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp82.not = icmp eq i32 %35, 3
  br i1 %cmp82.not, label %AUDIT_MODE.exit119.if.end91thread-pre-split_crit_edge, label %if.end.i122

AUDIT_MODE.exit119.if.end91thread-pre-split_crit_edge: ; preds = %AUDIT_MODE.exit119
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91thread-pre-split

if.end.i122:                                      ; preds = %AUDIT_MODE.exit119
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %audit.i116 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %audit.i116, align 4
  br label %AUDIT_MODE.exit124

AUDIT_MODE.exit124:                               ; preds = %if.end.i122, %land.lhs.true.AUDIT_MODE.exit124_crit_edge
  %retval.0.i123 = phi i32 [ %37, %if.end.i122 ], [ %32, %land.lhs.true.AUDIT_MODE.exit124_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retval.0.i123)
  %cmp85.not = icmp eq i32 %retval.0.i123, 4
  br i1 %cmp85.not, label %AUDIT_MODE.exit124.if.end91thread-pre-split_crit_edge, label %if.then86

AUDIT_MODE.exit124.if.end91thread-pre-split_crit_edge: ; preds = %AUDIT_MODE.exit124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91thread-pre-split

if.then86:                                        ; preds = %AUDIT_MODE.exit124
  call void @__sanitizer_cov_trace_pc() #10
  %neg88 = xor i32 %31, -1
  %and90 = and i32 %27, %neg88
  %38 = ptrtoint ptr %request73 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and90, ptr %request73, align 4
  br label %if.end91

if.end91thread-pre-split:                         ; preds = %AUDIT_MODE.exit124.if.end91thread-pre-split_crit_edge, %AUDIT_MODE.exit119.if.end91thread-pre-split_crit_edge, %land.lhs.true.if.end91thread-pre-split_crit_edge, %if.end64.if.end91thread-pre-split_crit_edge
  %39 = ptrtoint ptr %request73 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr = load i32, ptr %request73, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.end91thread-pre-split, %if.then86
  %40 = phi i32 [ %.pr, %if.end91thread-pre-split ], [ %and90, %if.then86 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool93.not = icmp eq i32 %40, 0
  br i1 %tobool93.not, label %if.then94, label %if.end91.if.end97_crit_edge

if.end91.if.end97_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.then94:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %25, align 4
  br label %cleanup103

if.end97:                                         ; preds = %if.end91.if.end97_crit_edge, %if.end.if.end97_crit_edge
  %type.2 = phi i32 [ 0, %if.end.if.end97_crit_edge ], [ %spec.select, %if.end91.if.end97_crit_edge ]
  %43 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %4, align 4
  %request98 = getelementptr inbounds %struct.apparmor_audit_data, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %request98 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %request98, align 4
  %47 = ptrtoint ptr %perms to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %perms, align 4
  %neg100 = xor i32 %48, -1
  %and101 = and i32 %46, %neg100
  %denied = getelementptr inbounds %struct.apparmor_audit_data, ptr %44, i32 0, i32 7
  %49 = ptrtoint ptr %denied to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and101, ptr %denied, align 4
  %call102 = call i32 @aa_audit(i32 noundef %type.2, ptr noundef %profile, ptr noundef nonnull %sa, ptr noundef nonnull @file_audit_cb) #8
  br label %cleanup103

cleanup103:                                       ; preds = %if.end97, %if.then94, %if.end.cleanup103_crit_edge
  %retval.1 = phi i32 [ %call102, %if.end97 ], [ 0, %if.end.cleanup103_crit_edge ], [ %42, %if.then94 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sa_aad) #8
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_audit(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @file_audit_cb(ptr noundef %ab, ptr nocapture noundef readonly %va) #0 align 64 {
entry:
  %str = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !65) #8
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
  %fsuid1 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %fsuid1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %fsuid.sroa.0.0.copyload = load i32, ptr %fsuid1, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %str) #8
  %7 = getelementptr inbounds %struct.common_audit_data, ptr %va, i32 0, i32 2
  %8 = call ptr @memset(ptr %str, i32 255, i32 10)
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %7, align 4
  %request = getelementptr inbounds %struct.apparmor_audit_data, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %request, align 4
  %and = and i32 %12, 373567
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and.i49 = and i32 %12, 360511
  %and1.i = lshr i32 %12, 7
  %13 = and i32 %and1.i, 4
  %14 = or i32 %13, %and.i49
  %and2.i = and i32 %12, 12544
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %or5.i = or i32 %14, 2
  %m.1.i = select i1 %tobool3.not.i, i32 %14, i32 %or5.i
  call void @aa_perm_mask_to_str(ptr noundef nonnull %str, i32 noundef 10, ptr noundef nonnull @aa_file_perm_chrs, i32 noundef %m.1.i) #8
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.6, ptr noundef nonnull %str) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %7, align 4
  %denied = getelementptr inbounds %struct.apparmor_audit_data, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %denied to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %denied, align 4
  %and5 = and i32 %18, 373567
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end12_crit_edge, label %if.then7

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and.i50 = and i32 %18, 360511
  %and1.i51 = lshr i32 %18, 7
  %19 = and i32 %and1.i51, 4
  %20 = or i32 %19, %and.i50
  %and2.i52 = and i32 %18, 12544
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i52)
  %tobool3.not.i53 = icmp eq i32 %and2.i52, 0
  %or5.i54 = or i32 %20, 2
  %m.1.i55 = select i1 %tobool3.not.i53, i32 %20, i32 %or5.i54
  call void @aa_perm_mask_to_str(ptr noundef nonnull %str, i32 noundef 10, ptr noundef nonnull @aa_file_perm_chrs, i32 noundef %m.1.i55) #8
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.7, ptr noundef nonnull %str) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end.if.end12_crit_edge
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %7, align 4
  %request13 = getelementptr inbounds %struct.apparmor_audit_data, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %request13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %request13, align 4
  %and14 = and i32 %24, 373567
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end12.if.end20_crit_edge, label %if.then16

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %fsuid.sroa.0.0.copyload, 0
  %call17 = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #8
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.8, i32 noundef %call17) #8
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %7, align 4
  %ouid = getelementptr inbounds %struct.apparmor_audit_data, ptr %26, i32 0, i32 8, i32 0, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %ouid to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack = load i32, ptr %ouid, align 4
  %28 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call19 = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %28) #8
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.9, i32 noundef %call19) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end12.if.end20_crit_edge
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %7, align 4
  %31 = getelementptr inbounds %struct.apparmor_audit_data, ptr %30, i32 0, i32 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool21.not = icmp eq ptr %33, null
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.10) #8
  %34 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %7, align 4
  %label = getelementptr inbounds %struct.apparmor_audit_data, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %label, align 4
  %vec = getelementptr inbounds %struct.aa_label, ptr %37, i32 0, i32 8
  %size = getelementptr inbounds %struct.aa_label, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size, align 4
  %sub = add i32 %39, -1
  %arrayidx24 = getelementptr ptr, ptr %vec, i32 %sub
  %40 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx24, align 4
  %ns = getelementptr inbounds %struct.aa_profile, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ns, align 4
  %44 = getelementptr inbounds %struct.apparmor_audit_data, ptr %35, i32 0, i32 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  call void @aa_label_xaudit(ptr noundef %ab, ptr noundef %43, ptr noundef %46, i32 noundef 2, i32 noundef 3264) #8
  br label %if.end30

if.else:                                          ; preds = %if.end20
  %47 = getelementptr inbounds %struct.apparmor_audit_data, ptr %30, i32 0, i32 8, i32 0, i32 1
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %tobool26.not = icmp eq ptr %49, null
  br i1 %tobool26.not, label %if.else.if.end30_crit_edge, label %if.then27

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.10) #8
  %50 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %7, align 4
  %52 = getelementptr inbounds %struct.apparmor_audit_data, ptr %51, i32 0, i32 8, i32 0, i32 1
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  call void @audit_log_untrustedstring(ptr noundef %ab, ptr noundef %54) #8
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.else.if.end30_crit_edge, %if.then22
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %str) #8
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @aa_compute_fperms(ptr noalias nocapture sret(%struct.aa_perms) align 4 %agg.result, ptr nocapture noundef readonly %dfa, i32 noundef %state, ptr nocapture noundef readonly %cond) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %agg.result, i32 0, i32 44)
  %1 = tail call i32 @llvm.read_register.i32(metadata !65) #8
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 99
  %5 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %7)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %8 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack = load i32, ptr %cond, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %agg.tmp.sroa.0.0.copyload, i32 %.unpack)
  %cmp.i = icmp eq i32 %agg.tmp.sroa.0.0.copyload, %.unpack
  %tables = getelementptr inbounds %struct.aa_dfa, ptr %dfa, i32 0, i32 3
  %9 = ptrtoint ptr %tables to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tables, align 4
  %td_data = getelementptr inbounds %struct.table_header, ptr %10, i32 0, i32 4
  %arrayidx3 = getelementptr i32, ptr %td_data, i32 %state
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx3, align 4
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %and.i122 = and i32 %12, 15
  %and1.i = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  %or.i = or i32 %and.i122, 576
  %spec.select.i = select i1 %tobool.not.i, i32 %and.i122, i32 %or.i
  %and2.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %or5.i = or i32 %spec.select.i, 12656
  %new.1.i = select i1 %tobool3.not.i, i32 %spec.select.i, i32 %or5.i
  %and7.i = shl i32 %12, 14
  %13 = and i32 %and7.i, 262144
  %or = shl i32 %12, 10
  %14 = and i32 %or, 32768
  %15 = and i32 %or, 65536
  %16 = or i32 %14, %13
  %17 = or i32 %16, %15
  %18 = or i32 %17, %new.1.i
  %19 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %agg.result, align 4
  %arrayidx12 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 6
  %20 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx12, align 4
  %td_data13 = getelementptr inbounds %struct.table_header, ptr %21, i32 0, i32 4
  %arrayidx15 = getelementptr i32, ptr %td_data13, i32 %state
  %22 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx15, align 4
  %and16 = and i32 %23, 127
  %and.i123 = and i32 %23, 15
  %and1.i124 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i124)
  %tobool.not.i125 = icmp eq i32 %and1.i124, 0
  %or.i126 = or i32 %and.i123, 576
  %spec.select.i127 = select i1 %tobool.not.i125, i32 %and.i123, i32 %or.i126
  %and2.i128 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i128)
  %tobool3.not.i129 = icmp eq i32 %and2.i128, 0
  %or5.i130 = or i32 %spec.select.i127, 12656
  %new.1.i131 = select i1 %tobool3.not.i129, i32 %spec.select.i127, i32 %or5.i130
  %and7.i132 = shl nuw nsw i32 %and16, 14
  %24 = and i32 %and7.i132, 262144
  %and12.i133 = shl nuw nsw i32 %and16, 10
  %25 = and i32 %and12.i133, 32768
  %26 = and i32 %and12.i133, 65536
  %27 = or i32 %25, %24
  %28 = or i32 %27, %26
  %29 = or i32 %28, %new.1.i131
  %audit = getelementptr inbounds %struct.aa_perms, ptr %agg.result, i32 0, i32 1
  %30 = ptrtoint ptr %audit to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %audit, align 4
  %shr = lshr i32 %23, 7
  %and23 = and i32 %shr, 127
  %and.i134 = and i32 %shr, 15
  %31 = and i32 %23, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i136 = icmp eq i32 %31, 0
  %or.i137 = or i32 %and.i134, 576
  %spec.select.i138 = select i1 %tobool.not.i136, i32 %and.i134, i32 %or.i137
  %32 = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool3.not.i140 = icmp eq i32 %32, 0
  %or5.i141 = or i32 %spec.select.i138, 12656
  %new.1.i142 = select i1 %tobool3.not.i140, i32 %spec.select.i138, i32 %or5.i141
  %and7.i143 = shl nuw nsw i32 %and23, 14
  %33 = and i32 %and7.i143, 262144
  %and12.i144 = shl nuw nsw i32 %and23, 10
  %34 = and i32 %and12.i144, 32768
  %35 = and i32 %and12.i144, 65536
  %36 = or i32 %34, %33
  %37 = or i32 %36, %35
  %38 = or i32 %37, %new.1.i142
  %quiet = getelementptr inbounds %struct.aa_perms, ptr %agg.result, i32 0, i32 3
  %39 = ptrtoint ptr %quiet to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %quiet, align 4
  %40 = trunc i32 %12 to i16
  %conv = lshr i16 %40, 10
  %and3.i = shl i16 %40, 4
  %41 = and i16 %and3.i, 4096
  %and7.i145 = shl i16 %40, 5
  %42 = and i16 %and7.i145, 16384
  %43 = or i16 %42, %41
  %44 = shl i16 %40, 8
  %45 = and i16 %44, -32768
  %46 = or i16 %43, %45
  %trunc.i = trunc i16 %conv to i4
  %47 = zext i4 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.26)
  switch i4 %trunc.i, label %if.then45.i [
    i4 1, label %if.then24.i
    i4 2, label %if.then31.i
    i4 3, label %if.then39.i
    i4 0, label %if.then.if.end_crit_edge
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then24.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %48 = or i16 %43, -32768
  br label %if.end

if.then31.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %49 = or i16 %46, 1024
  br label %if.end

if.then39.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %50 = or i16 %46, 9216
  br label %if.end

if.then45.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %51 = and i16 %conv, 15
  %sub.i = add nsw i16 %51, -4
  %52 = or i16 %sub.i, %46
  %or51.i = or i16 %52, 2048
  br label %if.end

if.else:                                          ; preds = %entry
  %shr37 = lshr i32 %12, 14
  %and38 = and i32 %shr37, 127
  %and.i147 = and i32 %shr37, 15
  %53 = and i32 %12, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i149 = icmp eq i32 %53, 0
  %or.i150 = or i32 %and.i147, 576
  %spec.select.i151 = select i1 %tobool.not.i149, i32 %and.i147, i32 %or.i150
  %54 = and i32 %12, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool3.not.i153 = icmp eq i32 %54, 0
  %or5.i154 = or i32 %spec.select.i151, 12656
  %new.1.i155 = select i1 %tobool3.not.i153, i32 %spec.select.i151, i32 %or5.i154
  %and7.i156 = shl nuw nsw i32 %and38, 14
  %55 = and i32 %and7.i156, 262144
  %and12.i157 = shl nuw nsw i32 %and38, 10
  %56 = and i32 %and12.i157, 32768
  %57 = and i32 %and12.i157, 65536
  %58 = or i32 %56, %55
  %59 = or i32 %58, %57
  %60 = or i32 %59, %new.1.i155
  %61 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %agg.result, align 4
  %arrayidx49 = getelementptr %struct.aa_dfa, ptr %dfa, i32 0, i32 3, i32 6
  %62 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx49, align 4
  %td_data50 = getelementptr inbounds %struct.table_header, ptr %63, i32 0, i32 4
  %arrayidx52 = getelementptr i32, ptr %td_data50, i32 %state
  %64 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx52, align 4
  %shr53 = lshr i32 %65, 14
  %and54 = and i32 %shr53, 127
  %and.i158 = and i32 %shr53, 15
  %66 = and i32 %65, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i160 = icmp eq i32 %66, 0
  %or.i161 = or i32 %and.i158, 576
  %spec.select.i162 = select i1 %tobool.not.i160, i32 %and.i158, i32 %or.i161
  %67 = and i32 %65, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool3.not.i164 = icmp eq i32 %67, 0
  %or5.i165 = or i32 %spec.select.i162, 12656
  %new.1.i166 = select i1 %tobool3.not.i164, i32 %spec.select.i162, i32 %or5.i165
  %and7.i167 = shl nuw nsw i32 %and54, 14
  %68 = and i32 %and7.i167, 262144
  %and12.i168 = shl nuw nsw i32 %and54, 10
  %69 = and i32 %and12.i168, 32768
  %70 = and i32 %and12.i168, 65536
  %71 = or i32 %69, %68
  %72 = or i32 %71, %70
  %73 = or i32 %72, %new.1.i166
  %audit56 = getelementptr inbounds %struct.aa_perms, ptr %agg.result, i32 0, i32 1
  %74 = ptrtoint ptr %audit56 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %audit56, align 4
  %shr62 = lshr i32 %65, 21
  %and.i169 = and i32 %shr62, 15
  %75 = and i32 %65, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i171 = icmp eq i32 %75, 0
  %or.i172 = or i32 %and.i169, 576
  %spec.select.i173 = select i1 %tobool.not.i171, i32 %and.i169, i32 %or.i172
  %76 = and i32 %65, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool3.not.i175 = icmp eq i32 %76, 0
  %or5.i176 = or i32 %spec.select.i173, 12656
  %new.1.i177 = select i1 %tobool3.not.i175, i32 %spec.select.i173, i32 %or5.i176
  %and7.i178 = shl nuw nsw i32 %shr62, 14
  %77 = and i32 %and7.i178, 262144
  %and64 = shl nuw nsw i32 %shr62, 10
  %78 = and i32 %and64, 32768
  %79 = and i32 %and64, 65536
  %80 = or i32 %78, %77
  %81 = or i32 %80, %79
  %82 = or i32 %81, %new.1.i177
  %quiet66 = getelementptr inbounds %struct.aa_perms, ptr %agg.result, i32 0, i32 3
  %83 = ptrtoint ptr %quiet66 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %quiet66, align 4
  %84 = trunc i32 %shr37 to i16
  %conv74 = lshr i16 %84, 10
  %and3.i180 = shl i16 %84, 4
  %85 = and i16 %and3.i180, 4096
  %and7.i181 = shl i16 %84, 5
  %86 = and i16 %and7.i181, 16384
  %87 = or i16 %86, %85
  %88 = shl i16 %84, 8
  %89 = and i16 %88, -32768
  %90 = or i16 %87, %89
  %trunc.i182 = trunc i16 %conv74 to i4
  %91 = zext i4 %trunc.i182 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.27)
  switch i4 %trunc.i182, label %if.then45.i189 [
    i4 1, label %if.then24.i183
    i4 2, label %if.then31.i184
    i4 3, label %if.then39.i185
    i4 0, label %if.else.if.end_crit_edge
  ]

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then24.i183:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %92 = or i16 %87, -32768
  br label %if.end

if.then31.i184:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %93 = or i16 %90, 1024
  br label %if.end

if.then39.i185:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %94 = or i16 %90, 9216
  br label %if.end

if.then45.i189:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %95 = and i16 %conv74, 15
  %sub.i187 = add nsw i16 %95, -4
  %96 = or i16 %sub.i187, %90
  %or51.i188 = or i16 %96, 2048
  br label %if.end

if.end:                                           ; preds = %if.then45.i189, %if.then39.i185, %if.then31.i184, %if.then24.i183, %if.else.if.end_crit_edge, %if.then45.i, %if.then39.i, %if.then31.i, %if.then24.i, %if.then.if.end_crit_edge
  %index.3.i190.sink = phi i16 [ %48, %if.then24.i ], [ %49, %if.then31.i ], [ %50, %if.then39.i ], [ %or51.i, %if.then45.i ], [ %46, %if.then.if.end_crit_edge ], [ %92, %if.then24.i183 ], [ %93, %if.then31.i184 ], [ %94, %if.then39.i185 ], [ %or51.i188, %if.then45.i189 ], [ %90, %if.else.if.end_crit_edge ]
  %xindex76 = getelementptr inbounds %struct.aa_perms, ptr %agg.result, i32 0, i32 10
  %97 = ptrtoint ptr %xindex76 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %index.3.i190.sink, ptr %xindex76, align 4
  %98 = ptrtoint ptr %agg.result to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %agg.result, align 4
  %or78 = or i32 %99, 512
  store i32 %or78, ptr %agg.result, align 4
  %tables79 = getelementptr inbounds %struct.aa_dfa, ptr %dfa, i32 0, i32 3
  %100 = ptrtoint ptr %tables79 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %tables79, align 4
  %td_data81 = getelementptr inbounds %struct.table_header, ptr %101, i32 0, i32 4
  %arrayidx83 = getelementptr i32, ptr %td_data81, i32 %state
  %102 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %103)
  %tobool.not = icmp sgt i32 %103, -1
  br i1 %tobool.not, label %if.end.if.end88_crit_edge, label %if.then85

if.end.if.end88_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then85:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %or87 = or i32 %99, 1073742336
  %104 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %or87, ptr %agg.result, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %if.end.if.end88_crit_edge
  %and94 = and i32 %103, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end88.if.end99_crit_edge, label %if.then96

if.end88.if.end99_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

if.then96:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  %105 = ptrtoint ptr %agg.result to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %agg.result, align 4
  %or98 = or i32 %106, 536870912
  store i32 %or98, ptr %agg.result, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then96, %if.end88.if.end99_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_str_perms(ptr noundef %dfa, i32 noundef %start, ptr noundef %name, ptr nocapture noundef readonly %cond, ptr nocapture noundef writeonly %perms) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.aa_perms, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aa_dfa_match(ptr noundef %dfa, i32 noundef %start, ptr noundef %name) #8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp) #8
  call void @aa_compute_fperms(ptr nonnull sret(%struct.aa_perms) align 4 %tmp, ptr noundef %dfa, i32 noundef %call, ptr noundef %cond)
  %0 = call ptr @memcpy(ptr %perms, ptr %tmp, i32 44)
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_dfa_match(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__aa_path_perm(ptr noundef %op, ptr noundef %profile, ptr noundef %name, i32 noundef %request, ptr nocapture noundef readonly %cond, i32 %flags, ptr nocapture noundef %perms) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca %struct.aa_perms, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 8
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %file = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 13
  %dfa = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %dfa to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dfa, align 4
  %4 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %file, align 4
  %call.i = tail call i32 @aa_dfa_match(ptr noundef %3, i32 noundef %5, ptr noundef %name) #8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i) #8
  call void @aa_compute_fperms(ptr nonnull sret(%struct.aa_perms) align 4 %tmp.i, ptr noundef %3, i32 noundef %call.i, ptr noundef %cond) #8
  %6 = call ptr @memcpy(ptr %perms, ptr %tmp.i, i32 44)
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i) #8
  %7 = ptrtoint ptr %perms to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %perms, align 4
  %neg = xor i32 %8, -1
  %and = and i32 %neg, %request
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -13
  %9 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack = load i32, ptr %cond, align 4
  %10 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call4 = tail call i32 @aa_audit_file(ptr noundef %profile, ptr noundef %perms, ptr noundef %op, i32 noundef %request, ptr noundef %name, ptr noundef null, ptr noundef null, [1 x i32] %10, ptr noundef null, i32 noundef %spec.select)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_path_perm(ptr noundef %op, ptr noundef %label, ptr noundef %path, i32 noundef %flags, i32 noundef %request, ptr nocapture noundef readonly %cond) local_unnamed_addr #0 align 64 {
entry:
  %perms = alloca %struct.aa_perms, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %perms) #8
  %0 = call ptr @memset(ptr %perms, i32 0, i32 44)
  %mode = getelementptr inbounds %struct.path_cond, ptr %cond, i32 0, i32 1
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %mode, align 4
  %3 = and i16 %2, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %3)
  %cmp = icmp eq i16 %3, 16384
  %cond2 = zext i1 %cmp to i32
  %or = or i32 %cond2, %flags
  %or3 = or i32 %or, 32768
  %call = tail call ptr @aa_get_buffer(i1 noundef zeroext false) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @aa_label_next_confined(ptr noundef %label, i32 noundef 0) #8
  %arrayidx26 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %call4
  %4 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx26, align 4
  %tobool7.not27 = icmp eq ptr %5, null
  br i1 %tobool7.not27, label %if.end.for.end_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  br label %do.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end.do.body_crit_edge
  %6 = phi ptr [ %8, %do.body.do.body_crit_edge ], [ %5, %if.end.do.body_crit_edge ]
  %__E.029 = phi i32 [ %spec.select, %do.body.do.body_crit_edge ], [ 0, %if.end.do.body_crit_edge ]
  %i.sroa.0.028 = phi i32 [ %call13, %do.body.do.body_crit_edge ], [ %call4, %if.end.do.body_crit_edge ]
  %call8 = call fastcc i32 @profile_path_perm(ptr noundef %op, ptr noundef nonnull %6, ptr noundef %path, ptr noundef nonnull %call, i32 noundef %request, ptr noundef %cond, i32 noundef %or3, ptr noundef nonnull %perms)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  %spec.select = select i1 %tobool9.not, i32 %__E.029, i32 %call8
  %add = add i32 %i.sroa.0.028, 1
  %call13 = tail call i32 @aa_label_next_confined(ptr noundef %label, i32 noundef %add) #8
  %arrayidx = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %call13
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %do.body.for.end_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %do.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %__E.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %spec.select, %do.body.for.end_crit_edge ]
  tail call void @aa_put_buffer(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %__E.0.lcssa, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %perms) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aa_get_buffer(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_label_next_confined(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @profile_path_perm(ptr noundef %op, ptr noundef %profile, ptr noundef %path, ptr noundef %buffer, i32 noundef %request, ptr nocapture noundef readonly %cond, i32 noundef %flags, ptr nocapture noundef %perms) unnamed_addr #0 align 64 {
entry:
  %tmp.i.i = alloca %struct.aa_perms, align 4
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #8
  %0 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %name, align 4, !annotation !77
  %mode = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 8
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %label = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 25
  %path_flags = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 9
  %3 = ptrtoint ptr %path_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %path_flags, align 4
  %or = or i32 %4, %flags
  %call = call fastcc i32 @path_name(ptr noundef %op, ptr noundef %label, ptr noundef %path, i32 noundef %or, ptr noundef %buffer, ptr noundef nonnull %name, ptr noundef %cond, i32 noundef %request)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp.i = icmp eq i32 %6, 3
  br i1 %cmp.i, label %if.end2.cleanup_crit_edge, label %if.end.i

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %file.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 13
  %dfa.i = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 13, i32 1
  %9 = ptrtoint ptr %dfa.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dfa.i, align 4
  %11 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %file.i, align 4
  %call.i.i = call i32 @aa_dfa_match(ptr noundef %10, i32 noundef %12, ptr noundef %8) #8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i.i) #8
  call void @aa_compute_fperms(ptr nonnull sret(%struct.aa_perms) align 4 %tmp.i.i, ptr noundef %10, i32 noundef %call.i.i, ptr noundef %cond) #8
  %13 = call ptr @memcpy(ptr %perms, ptr %tmp.i.i, i32 44)
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i.i) #8
  %14 = ptrtoint ptr %perms to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %perms, align 4
  %neg.i = xor i32 %15, -1
  %and.i = and i32 %neg.i, %request
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 -13
  %16 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack.i = load i32, ptr %cond, align 4
  %17 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call4.i = call i32 @aa_audit_file(ptr noundef %profile, ptr noundef %perms, ptr noundef %op, i32 noundef %request, ptr noundef %8, ptr noundef null, ptr noundef null, [1 x i32] %17, ptr noundef null, i32 noundef %spec.select.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call4.i, %if.end.i ], [ 0, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_put_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_path_link(ptr noundef %label, ptr noundef %old_dentry, ptr nocapture noundef readonly %new_dir, ptr noundef %new_dentry) local_unnamed_addr #0 align 64 {
entry:
  %lname.i = alloca ptr, align 4
  %tname.i = alloca ptr, align 4
  %lperms.i = alloca %struct.aa_perms, align 4
  %perms.i = alloca %struct.aa_perms, align 4
  %link = alloca %struct.path, align 4
  %target = alloca %struct.path, align 4
  %cond = alloca %struct.path_cond, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %link) #8
  %0 = getelementptr inbounds %struct.path, ptr %link, i32 0, i32 1
  %1 = ptrtoint ptr %new_dir to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %new_dir, align 4
  %3 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %link, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %new_dentry, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %target) #8
  %5 = getelementptr inbounds %struct.path, ptr %target, i32 0, i32 1
  %6 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %2, ptr %target, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %old_dentry, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cond) #8
  %8 = ptrtoint ptr %cond to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %cond, align 8, !annotation !77
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %9 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode.i, align 8
  %i_uid = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_uid, align 4
  store i32 %12, ptr %cond, align 8
  %mode = getelementptr inbounds %struct.path_cond, ptr %cond, i32 0, i32 1
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %10, align 8
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %mode, align 4
  %call6 = tail call ptr @aa_get_buffer(i1 noundef zeroext false) #8
  %call7 = tail call ptr @aa_get_buffer(i1 noundef zeroext false) #8
  %tobool.not = icmp eq ptr %call6, null
  %tobool8.not = icmp eq ptr %call7, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %call9 = tail call i32 @aa_label_next_confined(ptr noundef %label, i32 noundef 0) #8
  %arrayidx33 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %call9
  %16 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx33, align 4
  %tobool12.not34 = icmp eq ptr %17, null
  br i1 %tobool12.not34, label %if.end.out_crit_edge, label %do.body.lr.ph

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body.lr.ph:                                    ; preds = %if.end
  %audit.i = getelementptr inbounds %struct.aa_perms, ptr %perms.i, i32 0, i32 1
  %audit18.i = getelementptr inbounds %struct.aa_perms, ptr %lperms.i, i32 0, i32 1
  %quiet.i = getelementptr inbounds %struct.aa_perms, ptr %perms.i, i32 0, i32 3
  %quiet19.i = getelementptr inbounds %struct.aa_perms, ptr %lperms.i, i32 0, i32 3
  %kill.i = getelementptr inbounds %struct.aa_perms, ptr %perms.i, i32 0, i32 4
  %kill20.i = getelementptr inbounds %struct.aa_perms, ptr %lperms.i, i32 0, i32 4
  %xindex.i = getelementptr inbounds %struct.aa_perms, ptr %lperms.i, i32 0, i32 10
  %xindex54.i = getelementptr inbounds %struct.aa_perms, ptr %perms.i, i32 0, i32 10
  br label %do.body

do.body:                                          ; preds = %profile_path_link.exit.do.body_crit_edge, %do.body.lr.ph
  %18 = phi ptr [ %17, %do.body.lr.ph ], [ %78, %profile_path_link.exit.do.body_crit_edge ]
  %__E.036 = phi i32 [ 0, %do.body.lr.ph ], [ %spec.select, %profile_path_link.exit.do.body_crit_edge ]
  %i.sroa.0.035 = phi i32 [ %call9, %do.body.lr.ph ], [ %call18, %profile_path_link.exit.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lname.i) #8
  %19 = ptrtoint ptr %lname.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 -1 to ptr), ptr %lname.i, align 4, !annotation !77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tname.i) #8
  %20 = ptrtoint ptr %tname.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %tname.i, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %lperms.i) #8
  %21 = call ptr @memset(ptr %lperms.i, i32 0, i32 44)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %perms.i) #8
  %22 = call ptr @memset(ptr %perms.i, i32 255, i32 44)
  %label.i = getelementptr inbounds %struct.aa_profile, ptr %18, i32 0, i32 25
  %path_flags.i = getelementptr inbounds %struct.aa_profile, ptr %18, i32 0, i32 9
  %23 = ptrtoint ptr %path_flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %path_flags.i, align 4
  %call.i = call fastcc i32 @path_name(ptr noundef nonnull @.str.11, ptr noundef %label.i, ptr noundef nonnull %link, i32 noundef %24, ptr noundef %call6, ptr noundef nonnull %lname.i, ptr noundef nonnull %cond, i32 noundef 262144) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.profile_path_link.exit_crit_edge

do.body.profile_path_link.exit_crit_edge:         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %profile_path_link.exit

if.end.i:                                         ; preds = %do.body
  %25 = ptrtoint ptr %path_flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %path_flags.i, align 4
  %call3.i = call fastcc i32 @path_name(ptr noundef nonnull @.str.11, ptr noundef %label.i, ptr noundef nonnull %target, i32 noundef %26, ptr noundef %call7, ptr noundef nonnull %tname.i, ptr noundef nonnull %cond, i32 noundef 262144) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.profile_path_link.exit_crit_edge

if.end.i.profile_path_link.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %profile_path_link.exit

if.end6.i:                                        ; preds = %if.end.i
  %file.i = getelementptr inbounds %struct.aa_profile, ptr %18, i32 0, i32 13
  %dfa.i = getelementptr inbounds %struct.aa_profile, ptr %18, i32 0, i32 13, i32 1
  %27 = ptrtoint ptr %dfa.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dfa.i, align 4
  %29 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %file.i, align 4
  %31 = ptrtoint ptr %lname.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lname.i, align 4
  %call.i.i = call i32 @aa_dfa_match(ptr noundef %28, i32 noundef %30, ptr noundef %32) #8
  call void @aa_compute_fperms(ptr nonnull sret(%struct.aa_perms) align 4 %lperms.i, ptr noundef %28, i32 noundef %call.i.i, ptr noundef nonnull %cond) #8
  %33 = ptrtoint ptr %lperms.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %lperms.i, align 4
  %and.i = and i32 %34, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %if.end6.i.profile_path_link.exit_crit_edge, label %if.end11.i

if.end6.i.profile_path_link.exit_crit_edge:       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %profile_path_link.exit

if.end11.i:                                       ; preds = %if.end6.i
  %35 = ptrtoint ptr %dfa.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dfa.i, align 4
  %call.i86.i = call i32 @aa_dfa_next(ptr noundef %36, i32 noundef %call.i.i, i8 noundef zeroext 0) #8
  %37 = ptrtoint ptr %dfa.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dfa.i, align 4
  %39 = ptrtoint ptr %tname.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tname.i, align 4
  %call.i88.i = call i32 @aa_dfa_match(ptr noundef %38, i32 noundef %call.i86.i, ptr noundef %40) #8
  call void @aa_compute_fperms(ptr nonnull sret(%struct.aa_perms) align 4 %perms.i, ptr noundef %38, i32 noundef %call.i88.i, ptr noundef nonnull %cond) #8
  %41 = ptrtoint ptr %audit.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %audit.i, align 4
  %43 = ptrtoint ptr %audit18.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %audit18.i, align 4
  %44 = ptrtoint ptr %quiet.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %quiet.i, align 4
  %46 = ptrtoint ptr %quiet19.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %quiet19.i, align 4
  %47 = ptrtoint ptr %kill.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %kill.i, align 4
  %49 = ptrtoint ptr %kill20.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %kill20.i, align 4
  %50 = ptrtoint ptr %perms.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %perms.i, align 4
  %and22.i = and i32 %51, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %if.end25.i

if.then24.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %52 = call ptr @memcpy(ptr %lperms.i, ptr %perms.i, i32 44)
  br label %profile_path_link.exit

if.end25.i:                                       ; preds = %if.end11.i
  %and27.i = and i32 %51, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end25.i.profile_path_link.exit_crit_edge, label %if.end30.i

if.end25.i.profile_path_link.exit_crit_edge:      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %profile_path_link.exit

if.end30.i:                                       ; preds = %if.end25.i
  %53 = ptrtoint ptr %dfa.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dfa.i, align 4
  %55 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %file.i, align 4
  %57 = ptrtoint ptr %tname.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tname.i, align 4
  %call.i32 = call i32 @aa_dfa_match(ptr noundef %54, i32 noundef %56, ptr noundef %58) #8
  call void @aa_compute_fperms(ptr nonnull sret(%struct.aa_perms) align 4 %perms.i, ptr noundef %54, i32 noundef %call.i32, ptr noundef nonnull %cond) #8
  %and37.i = and i32 %34, -262145
  %59 = ptrtoint ptr %perms.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %perms.i, align 4
  %or.i = or i32 %60, 262144
  %and40.i = and i32 %or.i, %34
  %61 = ptrtoint ptr %lperms.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %and40.i, ptr %lperms.i, align 4
  %neg.i = and i32 %60, 373567
  %and43.i = xor i32 %neg.i, 373567
  %and44.i = and i32 %and43.i, %and40.i
  %or45.i = or i32 %and44.i, %and37.i
  %neg47.i = xor i32 %and40.i, -1
  %and48.i = and i32 %and37.i, %neg47.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %if.else.i, label %if.end30.i.profile_path_link.exit_crit_edge

if.end30.i.profile_path_link.exit_crit_edge:      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %profile_path_link.exit

if.else.i:                                        ; preds = %if.end30.i
  %and52.i = and i32 %and40.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %if.else.i.profile_path_link.exit_crit_edge, label %land.lhs.true.i

if.else.i.profile_path_link.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %profile_path_link.exit

land.lhs.true.i:                                  ; preds = %if.else.i
  %62 = ptrtoint ptr %xindex.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %xindex.i, align 4
  %64 = ptrtoint ptr %xindex54.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %xindex54.i, align 4
  %66 = xor i16 %65, %63
  %67 = and i16 %66, -4097
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %cmp.not.i.i = icmp eq i16 %67, 0
  br i1 %cmp.not.i.i, label %xindex_is_subset.exit.i, label %land.lhs.true.i.if.then57.i_crit_edge

land.lhs.true.i.if.then57.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57.i

xindex_is_subset.exit.i:                          ; preds = %land.lhs.true.i
  %68 = and i16 %63, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool.not.i.i = icmp eq i16 %68, 0
  %69 = and i16 %65, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool4.not.i.i = icmp ne i16 %69, 0
  %not.or.cond.i.i = or i1 %tobool.not.i.i, %tobool4.not.i.i
  br i1 %not.or.cond.i.i, label %xindex_is_subset.exit.i.profile_path_link.exit_crit_edge, label %xindex_is_subset.exit.i.if.then57.i_crit_edge

xindex_is_subset.exit.i.if.then57.i_crit_edge:    ; preds = %xindex_is_subset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57.i

xindex_is_subset.exit.i.profile_path_link.exit_crit_edge: ; preds = %xindex_is_subset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %profile_path_link.exit

if.then57.i:                                      ; preds = %xindex_is_subset.exit.i.if.then57.i_crit_edge, %land.lhs.true.i.if.then57.i_crit_edge
  %and59.i = and i32 %and40.i, -2
  %70 = ptrtoint ptr %lperms.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %and59.i, ptr %lperms.i, align 4
  %or60.i = or i32 %or45.i, 1
  br label %profile_path_link.exit

profile_path_link.exit:                           ; preds = %if.then57.i, %xindex_is_subset.exit.i.profile_path_link.exit_crit_edge, %if.else.i.profile_path_link.exit_crit_edge, %if.end30.i.profile_path_link.exit_crit_edge, %if.end25.i.profile_path_link.exit_crit_edge, %if.then24.i, %if.end6.i.profile_path_link.exit_crit_edge, %if.end.i.profile_path_link.exit_crit_edge, %do.body.profile_path_link.exit_crit_edge
  %info.0.i = phi ptr [ null, %do.body.profile_path_link.exit_crit_edge ], [ null, %if.end.i.profile_path_link.exit_crit_edge ], [ null, %if.end30.i.profile_path_link.exit_crit_edge ], [ @.str.13, %if.then57.i ], [ @.str.12, %if.then24.i ], [ null, %if.end6.i.profile_path_link.exit_crit_edge ], [ null, %xindex_is_subset.exit.i.profile_path_link.exit_crit_edge ], [ null, %if.else.i.profile_path_link.exit_crit_edge ], [ null, %if.end25.i.profile_path_link.exit_crit_edge ]
  %request.1.i = phi i32 [ 262144, %do.body.profile_path_link.exit_crit_edge ], [ 262144, %if.end.i.profile_path_link.exit_crit_edge ], [ %or45.i, %if.end30.i.profile_path_link.exit_crit_edge ], [ %or60.i, %if.then57.i ], [ 262144, %if.then24.i ], [ 262144, %if.end6.i.profile_path_link.exit_crit_edge ], [ %or45.i, %xindex_is_subset.exit.i.profile_path_link.exit_crit_edge ], [ %or45.i, %if.else.i.profile_path_link.exit_crit_edge ], [ 262144, %if.end25.i.profile_path_link.exit_crit_edge ]
  %error.0.i = phi i32 [ %call.i, %do.body.profile_path_link.exit_crit_edge ], [ %call3.i, %if.end.i.profile_path_link.exit_crit_edge ], [ -13, %if.end30.i.profile_path_link.exit_crit_edge ], [ -13, %if.then57.i ], [ -13, %if.then24.i ], [ -13, %if.end6.i.profile_path_link.exit_crit_edge ], [ 0, %xindex_is_subset.exit.i.profile_path_link.exit_crit_edge ], [ 0, %if.else.i.profile_path_link.exit_crit_edge ], [ 0, %if.end25.i.profile_path_link.exit_crit_edge ]
  %71 = ptrtoint ptr %lname.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %lname.i, align 4
  %73 = ptrtoint ptr %tname.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tname.i, align 4
  %75 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %75)
  %.unpack.i = load i32, ptr %cond, align 8
  %76 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call64.i = call i32 @aa_audit_file(ptr noundef nonnull %18, ptr noundef nonnull %lperms.i, ptr noundef nonnull @.str.11, i32 noundef %request.1.i, ptr noundef %72, ptr noundef %74, ptr noundef null, [1 x i32] %76, ptr noundef %info.0.i, i32 noundef %error.0.i) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %perms.i) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %lperms.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tname.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lname.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %tobool14.not = icmp eq i32 %call64.i, 0
  %spec.select = select i1 %tobool14.not, i32 %__E.036, i32 %call64.i
  %add = add i32 %i.sroa.0.035, 1
  %call18 = call i32 @aa_label_next_confined(ptr noundef %label, i32 noundef %add) #8
  %arrayidx = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %call18
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %78, null
  br i1 %tobool12.not, label %profile_path_link.exit.out_crit_edge, label %profile_path_link.exit.do.body_crit_edge

profile_path_link.exit.do.body_crit_edge:         ; preds = %profile_path_link.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

profile_path_link.exit.out_crit_edge:             ; preds = %profile_path_link.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %profile_path_link.exit.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %error.0 = phi i32 [ -12, %entry.out_crit_edge ], [ 0, %if.end.out_crit_edge ], [ %spec.select, %profile_path_link.exit.out_crit_edge ]
  call void @aa_put_buffer(ptr noundef %call6) #8
  call void @aa_put_buffer(ptr noundef %call7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cond) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %target) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %link) #8
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_file_perm(ptr noundef %op, ptr noundef %label, ptr noundef %file, i32 noundef %request, i1 noundef zeroext %in_atomic) local_unnamed_addr #0 align 64 {
entry:
  %perms.i = alloca %struct.aa_perms, align 4
  %cond.i = alloca %struct.path_cond, align 8
  %i.i = alloca %struct.label_it, align 4
  %i46.i = alloca %struct.label_it, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %label, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !76

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 606, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.aa_file_perm) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %file, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !76

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 607, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.aa_file_perm) #8
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %f_security.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 15
  %0 = ptrtoint ptr %f_security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_security.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @apparmor_blob_sizes, i32 0, i32 1) to i32))
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @apparmor_blob_sizes, i32 0, i32 1), align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %3 = tail call i32 @llvm.read_register.i32(metadata !65) #8
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !78
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end50.rcu_read_lock.exit_crit_edge
  %label64 = getelementptr inbounds %struct.aa_file_ctx, ptr %add.ptr.i, i32 0, i32 1
  %7 = ptrtoint ptr %label64 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %label64, align 4
  %call66 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end75_crit_edge

rcu_read_lock.exit.do.end75_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end75

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call68 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %land.lhs.true.do.end75_crit_edge, label %land.lhs.true70

land.lhs.true.do.end75_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end75

land.lhs.true70:                                  ; preds = %land.lhs.true
  %.b164 = load i1, ptr @aa_file_perm.__warned, align 1
  br i1 %.b164, label %land.lhs.true70.do.end75_crit_edge, label %if.then72

land.lhs.true70.do.end75_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end75

if.then72:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @aa_file_perm.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 612, ptr noundef nonnull @.str.4) #8
  br label %do.end75

do.end75:                                         ; preds = %if.then72, %land.lhs.true70.do.end75_crit_edge, %land.lhs.true.do.end75_crit_edge, %rcu_read_lock.exit.do.end75_crit_edge
  %tobool79.not = icmp eq ptr %8, null
  br i1 %tobool79.not, label %do.end97, label %do.end75.if.end103_crit_edge, !prof !76

do.end75.if.end103_crit_edge:                     ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

do.end97:                                         ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 613, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.aa_file_perm) #8
  br label %if.end103

if.end103:                                        ; preds = %do.end97, %do.end75.if.end103_crit_edge
  %allow = getelementptr inbounds %struct.aa_file_ctx, ptr %add.ptr.i, i32 0, i32 2
  %9 = ptrtoint ptr %allow to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %allow, align 4
  %neg = xor i32 %10, -1
  %and = and i32 %neg, %request
  %flags = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 5
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and113 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %lor.lhs.false, label %if.end103.if.then122_crit_edge

if.end103.if.then122_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then122

lor.lhs.false:                                    ; preds = %if.end103
  %flags115 = getelementptr inbounds %struct.aa_label, ptr %8, i32 0, i32 5
  %13 = ptrtoint ptr %flags115 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags115, align 4
  %and116 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %lor.lhs.false118, label %lor.lhs.false.if.then122_crit_edge

lor.lhs.false.if.then122_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then122

lor.lhs.false118:                                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool119.not = icmp eq i32 %and, 0
  br i1 %tobool119.not, label %land.lhs.true120, label %lor.lhs.false118.if.end123_crit_edge

lor.lhs.false118.if.end123_crit_edge:             ; preds = %lor.lhs.false118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123

land.lhs.true120:                                 ; preds = %lor.lhs.false118
  %call121 = tail call zeroext i1 @aa_label_is_subset(ptr noundef %8, ptr noundef %label) #8
  br i1 %call121, label %land.lhs.true120.if.then122_crit_edge, label %land.lhs.true120.if.end123_crit_edge

land.lhs.true120.if.end123_crit_edge:             ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123

land.lhs.true120.if.then122_crit_edge:            ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then122

if.then122:                                       ; preds = %land.lhs.true120.if.then122_crit_edge, %lor.lhs.false.if.then122_crit_edge, %if.end103.if.then122_crit_edge
  %call.i165 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i165, label %if.then122.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i168

if.then122.rcu_read_unlock.exit_crit_edge:        ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i168:                               ; preds = %if.then122
  %call1.i166 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i166)
  %tobool.not.i167 = icmp eq i32 %call1.i166, 0
  br i1 %tobool.not.i167, label %land.lhs.true.i168.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i170

land.lhs.true.i168.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i168
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i170:                              ; preds = %land.lhs.true.i168
  %.b4.i169 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i169, label %land.lhs.true2.i170.rcu_read_unlock.exit_crit_edge, label %if.then.i171

land.lhs.true2.i170.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i170
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i171:                                     ; preds = %land.lhs.true2.i170
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i171, %land.lhs.true2.i170.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i168.rcu_read_unlock.exit_crit_edge, %if.then122.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !79
  %15 = tail call i32 @llvm.read_register.i32(metadata !65) #8
  %and.i.i.i.i.i172 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i172 to ptr
  %preempt_count.i.i.i.i173 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i173 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i173, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i173, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %done

if.end123:                                        ; preds = %land.lhs.true120.if.end123_crit_edge, %lor.lhs.false118.if.end123_crit_edge
  %call124 = tail call fastcc ptr @aa_get_newest_label(ptr noundef %8)
  %call.i174 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i174, label %if.end123.rcu_read_unlock.exit184_crit_edge, label %land.lhs.true.i177

if.end123.rcu_read_unlock.exit184_crit_edge:      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit184

land.lhs.true.i177:                               ; preds = %if.end123
  %call1.i175 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i175)
  %tobool.not.i176 = icmp eq i32 %call1.i175, 0
  br i1 %tobool.not.i176, label %land.lhs.true.i177.rcu_read_unlock.exit184_crit_edge, label %land.lhs.true2.i179

land.lhs.true.i177.rcu_read_unlock.exit184_crit_edge: ; preds = %land.lhs.true.i177
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit184

land.lhs.true2.i179:                              ; preds = %land.lhs.true.i177
  %.b4.i178 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i178, label %land.lhs.true2.i179.rcu_read_unlock.exit184_crit_edge, label %if.then.i180

land.lhs.true2.i179.rcu_read_unlock.exit184_crit_edge: ; preds = %land.lhs.true2.i179
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit184

if.then.i180:                                     ; preds = %land.lhs.true2.i179
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #8
  br label %rcu_read_unlock.exit184

rcu_read_unlock.exit184:                          ; preds = %if.then.i180, %land.lhs.true2.i179.rcu_read_unlock.exit184_crit_edge, %land.lhs.true.i177.rcu_read_unlock.exit184_crit_edge, %if.end123.rcu_read_unlock.exit184_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !79
  %19 = tail call i32 @llvm.read_register.i32(metadata !65) #8
  %and.i.i.i.i.i181 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i181 to ptr
  %preempt_count.i.i.i.i182 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i182 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i182, align 4
  %sub.i.i.i183 = add i32 %22, -1
  store volatile i32 %sub.i.i.i183, ptr %preempt_count.i.i.i.i182, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %f_path = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %23 = ptrtoint ptr %f_path to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %f_path, align 8
  %tobool125.not = icmp eq ptr %24, null
  br i1 %tobool125.not, label %rcu_read_unlock.exit184.if.else_crit_edge, label %land.lhs.true126

rcu_read_unlock.exit184.if.else_crit_edge:        ; preds = %rcu_read_unlock.exit184
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true126:                                 ; preds = %rcu_read_unlock.exit184
  %dentry = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dentry, align 4
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %d_sb.i, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %tobool.not.i185 = icmp sgt i32 %30, -1
  br i1 %tobool.not.i185, label %if.then129, label %land.lhs.true126.if.else_crit_edge

land.lhs.true126.if.else_crit_edge:               ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then129:                                       ; preds = %land.lhs.true126
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %perms.i) #8
  %31 = call ptr @memset(ptr %perms.i, i32 0, i32 44)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cond.i) #8
  %32 = ptrtoint ptr %cond.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 -1, ptr %cond.i, align 8, !annotation !77
  %mnt_userns.i.i.i = getelementptr inbounds %struct.vfsmount, ptr %24, i32 0, i32 3
  %33 = ptrtoint ptr %mnt_userns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %mnt_userns.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !80
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %35 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_user_ns.i.i.i = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 53
  %39 = ptrtoint ptr %s_user_ns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_user_ns.i.i.i, align 8
  %i_uid.i.i = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 2
  %41 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.unpack.i.i = load i32, ptr %i_uid.i.i, align 4
  %42 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  %cmp.i.i.i.i.i = icmp eq ptr %34, @init_user_ns
  %cmp.i.i.i.i = icmp eq ptr %40, %34
  %spec.select.i.i.i.i = or i1 %cmp.i.i.i.i.i, %cmp.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %if.then129.i_uid_into_mnt.exit.i_crit_edge, label %if.end.i.i.i

if.then129.i_uid_into_mnt.exit.i_crit_edge:       ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #10
  br label %i_uid_into_mnt.exit.i

if.end.i.i.i:                                     ; preds = %if.then129
  %cmp.i21.i.i.i = icmp eq ptr %40, @init_user_ns
  br i1 %cmp.i21.i.i.i, label %if.end.i.i.i.if.end7.i.i.i_crit_edge, label %if.else.i.i.i

if.end.i.i.i.if.end7.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i.i = tail call i32 @from_kuid(ptr noundef %40, [1 x i32] %42) #8
  br label %if.end7.i.i.i

if.end7.i.i.i:                                    ; preds = %if.else.i.i.i, %if.end.i.i.i.if.end7.i.i.i_crit_edge
  %uid.0.i.i.i = phi i32 [ %call6.i.i.i, %if.else.i.i.i ], [ %.unpack.i.i, %if.end.i.i.i.if.end7.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uid.0.i.i.i)
  %cmp.i.i.i = icmp eq i32 %uid.0.i.i.i, -1
  br i1 %cmp.i.i.i, label %if.end7.i.i.i.i_uid_into_mnt.exit.i_crit_edge, label %if.end9.i.i.i

if.end7.i.i.i.i_uid_into_mnt.exit.i_crit_edge:    ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i_uid_into_mnt.exit.i

if.end9.i.i.i:                                    ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call10.i.i.i = tail call i32 @make_kuid(ptr noundef %34, i32 noundef %uid.0.i.i.i) #8
  br label %i_uid_into_mnt.exit.i

i_uid_into_mnt.exit.i:                            ; preds = %if.end9.i.i.i, %if.end7.i.i.i.i_uid_into_mnt.exit.i_crit_edge, %if.then129.i_uid_into_mnt.exit.i_crit_edge
  %retval.sroa.0.0.i.i.i = phi i32 [ %call10.i.i.i, %if.end9.i.i.i ], [ -1, %if.end7.i.i.i.i_uid_into_mnt.exit.i_crit_edge ], [ %.unpack.i.i, %if.then129.i_uid_into_mnt.exit.i_crit_edge ]
  %43 = ptrtoint ptr %cond.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %retval.sroa.0.0.i.i.i, ptr %cond.i, align 8
  %mode.i = getelementptr inbounds %struct.path_cond, ptr %cond.i, i32 0, i32 1
  %44 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %f_inode.i.i, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %45, align 8
  %48 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %mode.i, align 4
  br i1 %tobool119.not, label %land.lhs.true.i187, label %i_uid_into_mnt.exit.i.if.end.i_crit_edge

i_uid_into_mnt.exit.i.if.end.i_crit_edge:         ; preds = %i_uid_into_mnt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i187:                               ; preds = %i_uid_into_mnt.exit.i
  %call4.i = tail call zeroext i1 @aa_label_is_subset(ptr noundef %call124, ptr noundef %label) #8
  br i1 %call4.i, label %land.lhs.true.i187.__file_path_perm.exit_crit_edge, label %land.lhs.true.i187.if.end.i_crit_edge

land.lhs.true.i187.if.end.i_crit_edge:            ; preds = %land.lhs.true.i187
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i187.__file_path_perm.exit_crit_edge: ; preds = %land.lhs.true.i187
  call void @__sanitizer_cov_trace_pc() #10
  br label %__file_path_perm.exit

if.end.i:                                         ; preds = %land.lhs.true.i187.if.end.i_crit_edge, %i_uid_into_mnt.exit.i.if.end.i_crit_edge
  %49 = and i16 %47, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %49)
  %cmp.i = icmp eq i16 %49, 16384
  %cond7.i = zext i1 %cmp.i to i32
  %or.i = or i32 %cond7.i, 32768
  %call9.i = tail call ptr @aa_get_buffer(i1 noundef zeroext %in_atomic) #8
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.end.i.__file_path_perm.exit_crit_edge, label %if.end12.i

if.end.i.__file_path_perm.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__file_path_perm.exit

if.end12.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i.i) #8
  %50 = getelementptr inbounds %struct.label_it, ptr %i.i, i32 0, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %50, align 4
  %52 = ptrtoint ptr %i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %i.i, align 4
  %call14113.i = call ptr @__aa_label_next_not_in_set(ptr noundef nonnull %i.i, ptr noundef %call124, ptr noundef %label) #8
  %tobool15.not114.i = icmp eq ptr %call14113.i, null
  br i1 %tobool15.not114.i, label %if.end12.i.for.end.i_crit_edge, label %if.end12.i.do.body.i_crit_edge

if.end12.i.do.body.i_crit_edge:                   ; preds = %if.end12.i
  br label %do.body.i

if.end12.i.for.end.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end12.i.do.body.i_crit_edge
  %call14116.i = phi ptr [ %call14.i, %do.body.i.do.body.i_crit_edge ], [ %call14113.i, %if.end12.i.do.body.i_crit_edge ]
  %__E.0115.i = phi i32 [ %spec.select.i, %do.body.i.do.body.i_crit_edge ], [ 0, %if.end12.i.do.body.i_crit_edge ]
  %call16.i = call fastcc i32 @profile_path_perm(ptr noundef %op, ptr noundef nonnull %call14116.i, ptr noundef %f_path, ptr noundef nonnull %call9.i, i32 noundef %request, ptr noundef nonnull %cond.i, i32 noundef %or.i, ptr noundef nonnull %perms.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  %spec.select.i = select i1 %tobool17.not.i, i32 %__E.0115.i, i32 %call16.i
  %call14.i = call ptr @__aa_label_next_not_in_set(ptr noundef nonnull %i.i, ptr noundef %call124, ptr noundef %label) #8
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %do.body.i.for.end.i_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.body.i.for.end.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %do.body.i.for.end.i_crit_edge, %if.end12.i.for.end.i_crit_edge
  %__E.0.lcssa.i = phi i32 [ 0, %if.end12.i.for.end.i_crit_edge ], [ %spec.select.i, %do.body.i.for.end.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i.i) #8
  %tobool.not.not.i = xor i1 %tobool119.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__E.0.lcssa.i)
  %tobool22.not.i = icmp eq i32 %__E.0.lcssa.i, 0
  %or.cond.i = select i1 %tobool.not.not.i, i1 %tobool22.not.i, i1 false
  br i1 %or.cond.i, label %if.then23.i, label %for.end.i.if.end66.i_crit_edge

for.end.i.if.end66.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66.i

if.then23.i:                                      ; preds = %for.end.i
  %cmp24.i = icmp eq ptr %call124, %label
  br i1 %cmp24.i, label %for.cond30.preheader.i, label %if.else.i

for.cond30.preheader.i:                           ; preds = %if.then23.i
  %arrayidx122.i = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 0
  %53 = ptrtoint ptr %arrayidx122.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx122.i, align 4
  %tobool32.not123.i = icmp eq ptr %54, null
  br i1 %tobool32.not123.i, label %for.cond30.preheader.i.if.then68.i_crit_edge, label %for.cond30.preheader.i.do.body34.i_crit_edge

for.cond30.preheader.i.do.body34.i_crit_edge:     ; preds = %for.cond30.preheader.i
  br label %do.body34.i

for.cond30.preheader.i.if.then68.i_crit_edge:     ; preds = %for.cond30.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then68.i

do.body34.i:                                      ; preds = %do.body34.i.do.body34.i_crit_edge, %for.cond30.preheader.i.do.body34.i_crit_edge
  %55 = phi ptr [ %57, %do.body34.i.do.body34.i_crit_edge ], [ %54, %for.cond30.preheader.i.do.body34.i_crit_edge ]
  %__E28.0125.i = phi i32 [ %spec.select110.i, %do.body34.i.do.body34.i_crit_edge ], [ 0, %for.cond30.preheader.i.do.body34.i_crit_edge ]
  %i27.sroa.0.0124.i = phi i32 [ %inc.i, %do.body34.i.do.body34.i_crit_edge ], [ 0, %for.cond30.preheader.i.do.body34.i_crit_edge ]
  %call37.i = call fastcc i32 @profile_path_perm(ptr noundef %op, ptr noundef nonnull %55, ptr noundef %f_path, ptr noundef nonnull %call9.i, i32 noundef %request, ptr noundef nonnull %cond.i, i32 noundef %or.i, ptr noundef nonnull %perms.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  %spec.select110.i = select i1 %tobool38.not.i, i32 %__E28.0125.i, i32 %call37.i
  %inc.i = add i32 %i27.sroa.0.0124.i, 1
  %arrayidx.i = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %inc.i
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i, align 4
  %tobool32.not.i = icmp eq ptr %57, null
  br i1 %tobool32.not.i, label %do.body34.i.if.end66.i_crit_edge, label %do.body34.i.do.body34.i_crit_edge

do.body34.i.do.body34.i_crit_edge:                ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body34.i

do.body34.i.if.end66.i_crit_edge:                 ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66.i

if.else.i:                                        ; preds = %if.then23.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i46.i) #8
  %58 = getelementptr inbounds %struct.label_it, ptr %i46.i, i32 0, i32 1
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %58, align 4
  %60 = ptrtoint ptr %i46.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %i46.i, align 4
  %call51117.i = call ptr @__aa_label_next_not_in_set(ptr noundef nonnull %i46.i, ptr noundef %label, ptr noundef %call124) #8
  %tobool52.not118.i = icmp eq ptr %call51117.i, null
  br i1 %tobool52.not118.i, label %if.else.i.for.end63.i_crit_edge, label %if.else.i.do.body54.i_crit_edge

if.else.i.do.body54.i_crit_edge:                  ; preds = %if.else.i
  br label %do.body54.i

if.else.i.for.end63.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end63.i

do.body54.i:                                      ; preds = %do.body54.i.do.body54.i_crit_edge, %if.else.i.do.body54.i_crit_edge
  %call51120.i = phi ptr [ %call51.i, %do.body54.i.do.body54.i_crit_edge ], [ %call51117.i, %if.else.i.do.body54.i_crit_edge ]
  %__E47.0119.i = phi i32 [ %spec.select111.i, %do.body54.i.do.body54.i_crit_edge ], [ 0, %if.else.i.do.body54.i_crit_edge ]
  %call57.i = call fastcc i32 @profile_path_perm(ptr noundef %op, ptr noundef nonnull %call51120.i, ptr noundef %f_path, ptr noundef nonnull %call9.i, i32 noundef %request, ptr noundef nonnull %cond.i, i32 noundef %or.i, ptr noundef nonnull %perms.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  %spec.select111.i = select i1 %tobool58.not.i, i32 %__E47.0119.i, i32 %call57.i
  %call51.i = call ptr @__aa_label_next_not_in_set(ptr noundef nonnull %i46.i, ptr noundef %label, ptr noundef %call124) #8
  %tobool52.not.i = icmp eq ptr %call51.i, null
  br i1 %tobool52.not.i, label %do.body54.i.for.end63.i_crit_edge, label %do.body54.i.do.body54.i_crit_edge

do.body54.i.do.body54.i_crit_edge:                ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54.i

do.body54.i.for.end63.i_crit_edge:                ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end63.i

for.end63.i:                                      ; preds = %do.body54.i.for.end63.i_crit_edge, %if.else.i.for.end63.i_crit_edge
  %__E47.0.lcssa.i = phi i32 [ 0, %if.else.i.for.end63.i_crit_edge ], [ %spec.select111.i, %do.body54.i.for.end63.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i46.i) #8
  br label %if.end66.i

if.end66.i:                                       ; preds = %for.end63.i, %do.body34.i.if.end66.i_crit_edge, %for.end.i.if.end66.i_crit_edge
  %error.0.i = phi i32 [ %__E47.0.lcssa.i, %for.end63.i ], [ %__E.0.lcssa.i, %for.end.i.if.end66.i_crit_edge ], [ %spec.select110.i, %do.body34.i.if.end66.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0.i)
  %tobool67.not.i = icmp eq i32 %error.0.i, 0
  br i1 %tobool67.not.i, label %if.end66.i.if.then68.i_crit_edge, label %if.end66.i.if.end70.i_crit_edge

if.end66.i.if.end70.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70.i

if.end66.i.if.then68.i_crit_edge:                 ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then68.i

if.then68.i:                                      ; preds = %if.end66.i.if.then68.i_crit_edge, %for.cond30.preheader.i.if.then68.i_crit_edge
  %61 = ptrtoint ptr %f_security.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %f_security.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @apparmor_blob_sizes, i32 0, i32 1) to i32))
  %63 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @apparmor_blob_sizes, i32 0, i32 1), align 4
  %add.ptr.i.i = getelementptr i8, ptr %62, i32 %63
  call fastcc void @update_file_ctx(ptr noundef %add.ptr.i.i, ptr noundef %label, i32 noundef %request) #8
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then68.i, %if.end66.i.if.end70.i_crit_edge
  %error.0129.i = phi i32 [ 0, %if.then68.i ], [ %error.0.i, %if.end66.i.if.end70.i_crit_edge ]
  call void @aa_put_buffer(ptr noundef nonnull %call9.i) #8
  br label %__file_path_perm.exit

__file_path_perm.exit:                            ; preds = %if.end70.i, %if.end.i.__file_path_perm.exit_crit_edge, %land.lhs.true.i187.__file_path_perm.exit_crit_edge
  %retval.0.i = phi i32 [ %error.0129.i, %if.end70.i ], [ 0, %land.lhs.true.i187.__file_path_perm.exit_crit_edge ], [ -12, %if.end.i.__file_path_perm.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cond.i) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %perms.i) #8
  br label %if.end138

if.else:                                          ; preds = %land.lhs.true126.if.else_crit_edge, %rcu_read_unlock.exit184.if.else_crit_edge
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %64 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %f_inode.i, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %65, align 8
  %68 = and i16 %67, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16384, i16 %68)
  %cmp = icmp eq i16 %68, -16384
  br i1 %cmp, label %if.then135, label %if.else.if.end138_crit_edge

if.else.if.end138_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end138

if.then135:                                       ; preds = %if.else
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %69 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %private_data.i, align 4
  %tobool.not.i188 = icmp eq ptr %70, null
  br i1 %tobool.not.i188, label %do.end.i, label %if.then135.if.end.i189_crit_edge, !prof !76

if.then135.if.end.i189_crit_edge:                 ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i189

do.end.i:                                         ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 569, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.__file_sock_perm) #8
  br label %if.end.i189

if.end.i189:                                      ; preds = %do.end.i, %if.then135.if.end.i189_crit_edge
  br i1 %tobool119.not, label %land.lhs.true.i191, label %do.body30.i

land.lhs.true.i191:                               ; preds = %if.end.i189
  %call.i190 = tail call zeroext i1 @aa_label_is_subset(ptr noundef %call124, ptr noundef %label) #8
  br i1 %call.i190, label %land.lhs.true.i191.if.end138_crit_edge, label %if.end26.thread.i

land.lhs.true.i191.if.end138_crit_edge:           ; preds = %land.lhs.true.i191
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end138

if.end26.thread.i:                                ; preds = %land.lhs.true.i191
  call void @__sanitizer_cov_trace_pc() #10
  %call2756.i = tail call i32 @aa_sock_file_perm(ptr noundef %label, ptr noundef %op, i32 noundef %request, ptr noundef %70) #8
  br label %if.end37.i

do.body30.i:                                      ; preds = %if.end.i189
  call void @__sanitizer_cov_trace_pc() #10
  %call27.i = tail call i32 @aa_sock_file_perm(ptr noundef %label, ptr noundef %op, i32 noundef %request, ptr noundef %70) #8
  %call31.i = tail call i32 @aa_sock_file_perm(ptr noundef %call124, ptr noundef %op, i32 noundef %request, ptr noundef %70) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i192 = icmp eq i32 %call31.i, 0
  %spec.select.i193 = select i1 %tobool32.not.i192, i32 %call27.i, i32 %call31.i
  br label %if.end37.i

if.end37.i:                                       ; preds = %do.body30.i, %if.end26.thread.i
  %error.1.i = phi i32 [ %spec.select.i193, %do.body30.i ], [ %call2756.i, %if.end26.thread.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1.i)
  %tobool38.not.i194 = icmp eq i32 %error.1.i, 0
  br i1 %tobool38.not.i194, label %if.then39.i, label %if.end37.i.if.end138_crit_edge

if.end37.i.if.end138_crit_edge:                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end138

if.then39.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %f_security.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %f_security.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @apparmor_blob_sizes, i32 0, i32 1) to i32))
  %73 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @apparmor_blob_sizes, i32 0, i32 1), align 4
  %add.ptr.i.i196 = getelementptr i8, ptr %72, i32 %73
  tail call fastcc void @update_file_ctx(ptr noundef %add.ptr.i.i196, ptr noundef %label, i32 noundef %request) #8
  br label %if.end138

if.end138:                                        ; preds = %if.then39.i, %if.end37.i.if.end138_crit_edge, %land.lhs.true.i191.if.end138_crit_edge, %if.else.if.end138_crit_edge, %__file_path_perm.exit
  %error.0 = phi i32 [ %retval.0.i, %__file_path_perm.exit ], [ 0, %if.else.if.end138_crit_edge ], [ 0, %land.lhs.true.i191.if.end138_crit_edge ], [ 0, %if.then39.i ], [ %error.1.i, %if.end37.i.if.end138_crit_edge ]
  %tobool.not.i198 = icmp eq ptr %call124, null
  br i1 %tobool.not.i198, label %if.end138.done_crit_edge, label %if.then.i200

if.end138.done_crit_edge:                         ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.then.i200:                                     ; preds = %if.end138
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call124, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !81
  call void @llvm.prefetch.p0(ptr nonnull %call124, i32 1, i32 3, i32 1) #8
  %74 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call124, ptr nonnull %call124, i32 1, ptr nonnull elementtype(i32) %call124) #8, !srcloc !82
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %74, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i199 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i199, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.done_crit_edge, label %if.then10.i.i.i.i.i, !prof !75

if.end5.i.i.i.i.i.done_crit_edge:                 ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %call124, i32 noundef 3) #8
  br label %done

if.then.i.i:                                      ; preds = %if.then.i200
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !83
  call void @aa_label_kref(ptr noundef nonnull %call124) #8
  br label %done

done:                                             ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.done_crit_edge, %if.end138.done_crit_edge, %rcu_read_unlock.exit
  %error.1 = phi i32 [ 0, %rcu_read_unlock.exit ], [ %error.0, %if.end138.done_crit_edge ], [ %error.0, %if.end5.i.i.i.i.i.done_crit_edge ], [ %error.0, %if.then10.i.i.i.i.i ], [ %error.0, %if.then.i.i ]
  ret i32 %error.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @aa_label_is_subset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @aa_get_newest_label(ptr noundef %l) unnamed_addr #4 align 64 {
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
  br i1 %tobool3.not, label %do.end, label %if.then2.if.end20_crit_edge, !prof !76

if.then2.if.end20_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 424, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.aa_get_newest_label) #8
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
  br i1 %tobool33.not, label %do.end51, label %if.end20.if.end57_crit_edge, !prof !76

if.end20.if.end57_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

do.end51:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 425, i32 noundef 9, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.aa_get_newest_label) #8
  br label %if.end57

if.end57:                                         ; preds = %do.end51, %if.end20.if.end57_crit_edge
  %8 = ptrtoint ptr %proxy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %proxy, align 4
  %label68 = getelementptr inbounds %struct.aa_proxy, ptr %9, i32 0, i32 1
  %10 = tail call i32 @llvm.read_register.i32(metadata !65) #8
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !78
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #8
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 401, ptr noundef nonnull @.str.4) #8
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
  %22 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %15, ptr nonnull %15, i32 %21, i32 %add.i.i.i.i.i, ptr nonnull elementtype(i32) %15) #8, !srcloc !84
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %21
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !75

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
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !75

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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #8
  br label %aa_get_label_rcu.exit

aa_get_label_rcu.exit:                            ; preds = %if.then.i24.i, %land.lhs.true2.i23.i.aa_get_label_rcu.exit_crit_edge, %land.lhs.true.i21.i.aa_get_label_rcu.exit_crit_edge, %do.end14.i.aa_get_label_rcu.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !79
  %28 = call i32 @llvm.read_register.i32(metadata !65) #8
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
  br i1 %tobool11.not.i, label %do.end89, label %aa_get_label_rcu.exit.return_crit_edge, !prof !76

aa_get_label_rcu.exit.return_crit_edge:           ; preds = %aa_get_label_rcu.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end89:                                         ; preds = %aa_get_label_rcu.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 431, i32 noundef 9, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.aa_get_newest_label) #8
  br label %return

if.then.i118:                                     ; preds = %if.end
  %call.i.i.i.i.i.i.i117 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %l, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull %l, i32 1, i32 3, i32 1) #8
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %l, ptr nonnull %l, i32 1, ptr nonnull elementtype(i32) %l) #8, !srcloc !85
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i118.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !76

if.then.i118.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i118
  %add.i.i.i.i.i119 = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %33 = or i32 %add.i.i.i.i.i119, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %.not.i.i.i.i.i120 = icmp sgt i32 %33, -1
  br i1 %.not.i.i.i.i.i120, label %if.else.i.i.i.i.i.return_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !75

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aa_inherit_files(ptr noundef %cred, ptr noundef %files) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %security.i.i.i = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 23
  %0 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @apparmor_blob_sizes to i32))
  %2 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %2
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %entry.cred_label.exit.i.i_crit_edge, !prof !76

entry.cred_label.exit.i.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cred_label.exit.i.i

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.cred_label) #8
  br label %cred_label.exit.i.i

cred_label.exit.i.i:                              ; preds = %do.end.i.i.i, %entry.cred_label.exit.i.i_crit_edge
  %3 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %cred_label.exit.i.i.aa_get_newest_cred_label.exit_crit_edge, !prof !76

cred_label.exit.i.i.aa_get_newest_cred_label.exit_crit_edge: ; preds = %cred_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_get_newest_cred_label.exit

do.end.i.i:                                       ; preds = %cred_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.aa_cred_raw_label) #8
  br label %aa_get_newest_cred_label.exit

aa_get_newest_cred_label.exit:                    ; preds = %do.end.i.i, %cred_label.exit.i.i.aa_get_newest_cred_label.exit_crit_edge
  %call1.i = tail call fastcc ptr @aa_get_newest_label(ptr noundef %4) #8
  %call.i = tail call ptr @get_current_tty() #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %aa_get_newest_cred_label.exit.revalidate_tty.exit_crit_edge, label %if.end.i

aa_get_newest_cred_label.exit.revalidate_tty.exit_crit_edge: ; preds = %aa_get_newest_cred_label.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %revalidate_tty.exit

if.end.i:                                         ; preds = %aa_get_newest_cred_label.exit
  %files_lock.i = getelementptr inbounds %struct.tty_struct, ptr %call.i, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %files_lock.i) #8
  %tty_files.i = getelementptr inbounds %struct.tty_struct, ptr %call.i, i32 0, i32 32
  %5 = ptrtoint ptr %tty_files.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %tty_files.i, align 4
  %cmp.i.not.i = icmp eq ptr %6, %tty_files.i
  br i1 %cmp.i.not.i, label %cleanup.critedge.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %file5.i = getelementptr i8, ptr %6, i32 -4
  %7 = ptrtoint ptr %file5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %file5.i, align 4
  %call6.i = tail call i32 @aa_file_perm(ptr noundef nonnull @.str.25, ptr noundef %call1.i, ptr noundef %8, i32 noundef 6, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  tail call void @_raw_spin_unlock(ptr noundef %files_lock.i) #8
  tail call void @tty_kref_put(ptr noundef nonnull %call.i) #8
  br i1 %tobool7.not.i, label %if.then3.i.revalidate_tty.exit_crit_edge, label %if.then13.i

if.then3.i.revalidate_tty.exit_crit_edge:         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %revalidate_tty.exit

if.then13.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @no_tty() #8
  br label %revalidate_tty.exit

cleanup.critedge.i:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %files_lock.i) #8
  tail call void @tty_kref_put(ptr noundef nonnull %call.i) #8
  br label %revalidate_tty.exit

revalidate_tty.exit:                              ; preds = %cleanup.critedge.i, %if.then13.i, %if.then3.i.revalidate_tty.exit_crit_edge, %aa_get_newest_cred_label.exit.revalidate_tty.exit_crit_edge
  %call1 = tail call i32 @iterate_fd(ptr noundef %files, i32 noundef 0, ptr noundef nonnull @match_file, ptr noundef %call1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %revalidate_tty.exit.out_crit_edge, label %if.end

revalidate_tty.exit.out_crit_edge:                ; preds = %revalidate_tty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %revalidate_tty.exit
  %call2 = tail call ptr @dentry_open(ptr noundef nonnull @aa_null, i32 noundef 2, ptr noundef %cred) #8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i, ptr null, ptr %call2
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end
  %n.0 = phi i32 [ %call1, %if.end ], [ %call7, %do.body.do.body_crit_edge ]
  %sub = add i32 %n.0, -1
  %call6 = tail call i32 @replace_fd(i32 noundef %sub, ptr noundef %spec.select, i32 noundef 0) #8
  %call7 = tail call i32 @iterate_fd(ptr noundef %files, i32 noundef %n.0, ptr noundef nonnull @match_file, ptr noundef %call1.i) #8
  %cmp.not = icmp eq i32 %call7, 0
  br i1 %cmp.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %do.body
  %tobool8.not = icmp eq ptr %spec.select, null
  br i1 %tobool8.not, label %do.end.out_crit_edge, label %if.then9

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @fput(ptr noundef nonnull %spec.select) #8
  br label %out

out:                                              ; preds = %if.then9, %do.end.out_crit_edge, %revalidate_tty.exit.out_crit_edge
  %tobool.not.i21 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i21, label %out.aa_put_label.exit_crit_edge, label %if.then.i

out.aa_put_label.exit_crit_edge:                  ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_put_label.exit

if.then.i:                                        ; preds = %out
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call1.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @llvm.prefetch.p0(ptr nonnull %call1.i, i32 1, i32 3, i32 1) #8
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call1.i, ptr nonnull %call1.i, i32 1, ptr nonnull elementtype(i32) %call1.i) #8, !srcloc !82
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !75

if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aa_put_label.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call1.i, i32 noundef 3) #8
  br label %aa_put_label.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @aa_label_kref(ptr noundef nonnull %call1.i) #8
  br label %aa_put_label.exit

aa_put_label.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.aa_put_label.exit_crit_edge, %out.aa_put_label.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iterate_fd(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @match_file(ptr noundef %p, ptr noundef %file, i32 noundef %fd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_flags.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %0 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_flags.i, align 4
  %f_mode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %2 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_mode.i, align 8
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %trunc.i = trunc i32 %3 to i3
  %rev.i = tail call i3 @llvm.bitreverse.i3(i3 %trunc.i) #8
  %mask.i = and i3 %rev.i, -2
  %4 = zext i3 %mask.i to i32
  %and7.i = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %or.cond.i = select i1 %tobool8.not.i, i1 true, i1 %tobool.not.i
  %and12.i = and i32 %4, 4
  %or13.i = or i32 %and12.i, 8
  %perms.2.i = select i1 %or.cond.i, i32 %4, i32 %or13.i
  %and15.i = lshr i32 %1, 8
  %5 = and i32 %and15.i, 2
  %and20.i = lshr i32 %1, 2
  %6 = and i32 %and20.i, 16
  %7 = or i32 %6, %5
  %8 = or i32 %7, %perms.2.i
  %call1 = tail call i32 @aa_file_perm(ptr noundef nonnull @.str.25, ptr noundef %p, ptr noundef %file, i32 noundef %8, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %add = add i32 %fd, 1
  %retval.0 = select i1 %tobool.not, i32 0, i32 %add
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @replace_fd(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_perm_mask_to_str(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_label_xaudit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_untrustedstring(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @path_name(ptr noundef %op, ptr noundef %label, ptr noundef %path, i32 noundef %flags, ptr noundef %buffer, ptr noundef %name, ptr nocapture noundef readonly %cond, i32 noundef %request) unnamed_addr #0 align 64 {
entry:
  %info = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info) #8
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %info, align 4
  %size = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 7
  %1 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size, align 4
  %sub = add i32 %2, -1
  %arrayidx = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %sub
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %disconnected = getelementptr inbounds %struct.aa_profile, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %disconnected to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %disconnected, align 4
  %call = call i32 @aa_path_name(ptr noundef %path, i32 noundef %flags, ptr noundef %buffer, ptr noundef %name, ptr noundef nonnull %info, ptr noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %call1 = call i32 @aa_label_next_confined(ptr noundef %label, i32 noundef 0) #8
  %arrayidx525 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %call1
  %7 = ptrtoint ptr %arrayidx525 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx525, align 4
  %tobool6.not26 = icmp eq ptr %8, null
  br i1 %tobool6.not26, label %if.then.cleanup_crit_edge, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  br label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.then.do.body_crit_edge
  %9 = phi ptr [ %17, %do.body.do.body_crit_edge ], [ %8, %if.then.do.body_crit_edge ]
  %i.sroa.0.027 = phi i32 [ %call11, %do.body.do.body_crit_edge ], [ %call1, %if.then.do.body_crit_edge ]
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  %12 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info, align 4
  %14 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack = load i32, ptr %cond, align 4
  %15 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call7 = call i32 @aa_audit_file(ptr noundef nonnull %9, ptr noundef nonnull @nullperms, ptr noundef %op, i32 noundef %request, ptr noundef %11, ptr noundef null, ptr noundef null, [1 x i32] %15, ptr noundef %13, i32 noundef %call)
  %add = add i32 %i.sroa.0.027, 1
  %call11 = call i32 @aa_label_next_confined(ptr noundef %label, i32 noundef %add) #8
  %arrayidx5 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %call11
  %16 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %17, null
  br i1 %tobool6.not, label %do.body.cleanup_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %do.body.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_path_name(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_dfa_next(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__aa_label_next_not_in_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_file_ctx(ptr noundef %fctx, ptr noundef %label, i32 noundef %request) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %fctx) #8
  %dep_map = getelementptr inbounds %struct.anon, ptr %fctx, i32 0, i32 1
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b64 = load i1, ptr @update_file_ctx.__warned, align 1
  br i1 %.b64, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @update_file_ctx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 494, ptr noundef nonnull @.str.21) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %label6 = getelementptr inbounds %struct.aa_file_ctx, ptr %fctx, i32 0, i32 1
  %0 = ptrtoint ptr %label6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %label6, align 4
  %call7 = tail call ptr @aa_label_merge(ptr noundef %1, ptr noundef %label, i32 noundef 2592) #8
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end.if.end52_crit_edge, label %if.then9

do.end.if.end52_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then9:                                         ; preds = %do.end
  %cmp.not = icmp eq ptr %call7, %1
  br i1 %cmp.not, label %if.then.i69, label %do.body11

do.body11:                                        ; preds = %if.then9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !86
  %2 = ptrtoint ptr %label6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %call7, ptr %label6, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body11.if.end51_crit_edge, label %if.then.i

do.body11.if.end51_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then.i:                                        ; preds = %do.body11
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #8
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #8, !srcloc !82
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end51_crit_edge, label %if.then10.i.i.i.i.i, !prof !75

if.end5.i.i.i.i.i.if.end51_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef 3) #8
  br label %if.end51

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @aa_label_kref(ptr noundef nonnull %1) #8
  br label %if.end51

if.then.i69:                                      ; preds = %if.then9
  %call.i.i.i.i.i.i.i66 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #8, !srcloc !82
  %asmresult.i.i.i.i.i.i.i.i67 = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i67)
  %cmp.i.i.i.i.i68 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i67, 1
  br i1 %cmp.i.i.i.i.i68, label %if.then.i.i73, label %if.end5.i.i.i.i.i71

if.end5.i.i.i.i.i71:                              ; preds = %if.then.i69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i67)
  %.not.i.i.i.i.i70 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i67, 0
  br i1 %.not.i.i.i.i.i70, label %if.end5.i.i.i.i.i71.if.end51_crit_edge, label %if.then10.i.i.i.i.i72, !prof !75

if.end5.i.i.i.i.i71.if.end51_crit_edge:           ; preds = %if.end5.i.i.i.i.i71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then10.i.i.i.i.i72:                            ; preds = %if.end5.i.i.i.i.i71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef 3) #8
  br label %if.end51

if.then.i.i73:                                    ; preds = %if.then.i69
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @aa_label_kref(ptr noundef nonnull %1) #8
  br label %if.end51

if.end51:                                         ; preds = %if.then.i.i73, %if.then10.i.i.i.i.i72, %if.end5.i.i.i.i.i71.if.end51_crit_edge, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end51_crit_edge, %do.body11.if.end51_crit_edge
  %allow = getelementptr inbounds %struct.aa_file_ctx, ptr %fctx, i32 0, i32 2
  %5 = ptrtoint ptr %allow to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %allow, align 4
  %or = or i32 %6, %request
  store i32 %or, ptr %allow, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %do.end.if.end52_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %fctx) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aa_label_merge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_sock_file_perm(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_label_kref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_current_tty() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @no_tty() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i3 @llvm.bitreverse.i3(i3) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !9, !11, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !40, !41, !43, !44, !45, !47, !49, !51, !53, !54, !56, !57, !59, !60, !62, !63}
!llvm.named.register.sp = !{!65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/apparmor/file.c", i32 125, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.aa_audit_file, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../security/apparmor/file.c", i32 225, i32 13}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/apparmor/file.c", i32 606, i32 2}
!8 = !{ptr @__func__.aa_file_perm, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../security/apparmor/file.c", i32 607, i32 2}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../security/apparmor/file.c", i32 612, i32 12}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../security/apparmor/file.c", i32 613, i32 2}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../security/apparmor/file.c", i32 47, i32 17}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../security/apparmor/file.c", i32 53, i32 24}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../security/apparmor/file.c", i32 58, i32 24}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../security/apparmor/file.c", i32 61, i32 24}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../security/apparmor/file.c", i32 63, i32 24}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../security/apparmor/file.c", i32 68, i32 24}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../security/apparmor/file.c", i32 370, i32 20}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../security/apparmor/file.c", i32 401, i32 10}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../security/apparmor/file.c", i32 427, i32 10}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../security/apparmor/include/label.h", i32 424, i32 3}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @__func__.aa_get_newest_label, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../security/apparmor/include/label.h", i32 425, i32 3}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../security/apparmor/include/label.h", i32 431, i32 3}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../security/apparmor/include/label.h", i32 401, i32 7}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../security/apparmor/file.c", i32 493, i32 8}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../security/apparmor/file.c", i32 569, i32 2}
!56 = !{ptr @__func__.__file_sock_perm, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../security/apparmor/include/cred.h", i32 51, i32 2}
!59 = !{ptr @__func__.aa_cred_raw_label, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../security/apparmor/include/cred.h", i32 26, i32 2}
!62 = !{ptr @__func__.cred_label, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../security/apparmor/file.c", i32 664, i32 20}
!65 = !{!"sp"}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{!"branch_weights", i32 1, i32 2000}
!77 = !{!"auto-init"}
!78 = !{i64 2149501072}
!79 = !{i64 2149501338}
!80 = !{i64 2152440086}
!81 = !{i64 2148778181}
!82 = !{i64 2148692621, i64 2148692653, i64 2148692682, i64 2148692716, i64 2148692747, i64 2148692770}
!83 = !{i64 2150399270}
!84 = !{i64 1174139, i64 1174163, i64 1174184, i64 1174201, i64 1174218}
!85 = !{i64 2148690156, i64 2148690188, i64 2148690217, i64 2148690251, i64 2148690282, i64 2148690305}
!86 = !{i64 2158634478}
