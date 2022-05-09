; ModuleID = '/llk/IR_all_yes/security/commoncap.c_pt.bc'
source_filename = "../security/commoncap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.8 }
%union.anon.8 = type { [5 x %struct.uid_gid_extent] }
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
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.10, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.lsm_info = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.security_hook_list = type { %struct.hlist_node, ptr, %union.security_list_options, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.security_list_options = type { ptr }
%struct.security_hook_heads = type { %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.14 }
%union.anon.14 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.72, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.15 }
%struct.llist_node = type { ptr }
%union.anon.15 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.62 }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
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
%union.anon.72 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.33, %struct.list_head, %struct.list_head, %union.anon.34 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.25, ptr }
%union.anon.25 = type { i64 }
%struct.lockref = type { %union.anon.27 }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { %struct.spinlock, i32 }
%union.anon.33 = type { %struct.list_head }
%union.anon.34 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.79 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.81 = type { ptr }
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
%struct.vfs_ns_cap_data = type { i32, [2 x %struct.anon.85], i32 }
%struct.anon.85 = type { i32, i32 }
%struct.vfs_cap_data = type { i32, [2 x %struct.anon.84] }
%struct.anon.84 = type { i32, i32 }
%struct.cpu_vfs_cap_data = type { i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kuid_t }
%struct.linux_binprm = type { ptr, i32, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rlimit, [256 x i8] }
%struct.rlimit = type { i32, i32 }
%struct.file = type { %union.anon.24, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.24 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }

@cap_ptrace_access_check.__warned.1 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"security/commoncap.c\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@cap_ptrace_traceme.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cap_capget.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"security.capability\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"capability\00", [21 x i8] zeroinitializer }, align 32
@__cap_empty_set = external dso_local local_unnamed_addr constant %struct.kernel_cap_struct, align 4
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"security.\00", [22 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@dac_mmap_min_addr = external dso_local local_unnamed_addr global i32, align 4
@__lsm_capability = internal global %struct.lsm_info { ptr @.str.5, i32 -1, i32 0, ptr null, ptr @capability_init, ptr null }, section ".lsm_info.init", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@file_caps_enabled = external dso_local local_unnamed_addr global i32, align 4
@get_file_caps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str, i32 756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015Invalid argument reading file caps for %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"get_file_caps\00", [18 x i8] zeroinitializer }, align 32
@get_file_caps._entry_ptr = internal global ptr @get_file_caps._entry, section ".printk_index", align 4
@warn_setuid_and_fcaps_mixed.warned = internal global { i1, [31 x i8] } zeroinitializer, align 32
@warn_setuid_and_fcaps_mixed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"\016warning: `%s' has both setuid-root and effective capabilities. Therefore not raising all capabilities.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"warn_setuid_and_fcaps_mixed\00", [36 x i8] zeroinitializer }, align 32
@warn_setuid_and_fcaps_mixed._entry_ptr = internal global ptr @warn_setuid_and_fcaps_mixed._entry, section ".printk_index", align 4
@cap_safe_nice.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cap_safe_nice.__warned.25 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@capability_hooks = internal global { [18 x %struct.security_hook_list], [88 x i8] } { [18 x %struct.security_hook_list] [%struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 32), %union.security_list_options { ptr @cap_capable }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 48), %union.security_list_options { ptr @cap_settime }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 16), %union.security_list_options { ptr @cap_ptrace_access_check }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 20), %union.security_list_options { ptr @cap_ptrace_traceme }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 24), %union.security_list_options { ptr @cap_capget }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 28), %union.security_list_options { ptr @cap_capset }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 60), %union.security_list_options { ptr @cap_bprm_creds_from_file }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 292), %union.security_list_options { ptr @cap_inode_need_killpriv }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 296), %union.security_list_options { ptr @cap_inode_killpriv }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 300), %union.security_list_options { ptr @cap_inode_getsecurity }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 344), %union.security_list_options { ptr @cap_mmap_addr }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 348), %union.security_list_options { ptr @cap_mmap_file }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 436), %union.security_list_options { ptr @cap_task_fix_setuid }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 500), %union.security_list_options { ptr @cap_task_prctl }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 484), %union.security_list_options { ptr @cap_task_setscheduler }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 468), %union.security_list_options { ptr @cap_task_setioprio }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 464), %union.security_list_options { ptr @cap_task_setnice }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 52), %union.security_list_options { ptr @cap_vm_enough_memory }, ptr null }], [88 x i8] zeroinitializer }, align 32
@security_hook_heads = external dso_local global %struct.security_hook_heads, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 20, i64 24]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 20, i64 24]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 4294967201, i64 4294967235]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 16777216, i64 33554432, i64 50331648]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 4294967235, i64 4294967274]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.32 = internal global [9 x i64] [i64 7, i64 32, i64 7, i64 8, i64 23, i64 24, i64 27, i64 28, i64 47]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 142, i32 15 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 301, i32 40 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 392, i32 19 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 1001, i32 20 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 695, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 723, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 755, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant [35 x i8] c"warn_setuid_and_fcaps_mixed.warned\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 44, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"capability_hooks\00", align 1
@___asan_gen_.78 = private constant [24 x i8] c"../security/commoncap.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 1449, i32 34 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__lsm_capability, ptr @get_file_caps._entry, ptr @get_file_caps._entry_ptr, ptr @warn_setuid_and_fcaps_mixed._entry, ptr @warn_setuid_and_fcaps_mixed._entry_ptr, ptr @.str, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @warn_setuid_and_fcaps_mixed.warned, ptr @.str.22, ptr @.str.23, ptr @capability_hooks], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_file_caps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @warn_setuid_and_fcaps_mixed.warned to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @warn_setuid_and_fcaps_mixed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capability_hooks to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cap_capable(ptr nocapture noundef readonly %cred, ptr noundef readonly %targ_ns, i32 noundef %cap, i32 %opts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ns = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 25
  %0 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ns, align 4
  %cmp24 = icmp eq ptr %1, %targ_ns
  br i1 %cmp24, label %entry.if.then_crit_edge, label %if.end.lr.ph

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.end.lr.ph:                                     ; preds = %entry
  %level4 = getelementptr inbounds %struct.user_namespace, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %level4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %level4, align 4
  %euid = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %cap_effective = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 15
  %shr = ashr i32 %cap, 5
  %arrayidx = getelementptr [2 x i32], ptr %cap_effective, i32 0, i32 %shr
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %and = and i32 %cap, 31
  %shl = shl nuw i32 1, %and
  %and2 = and i32 %5, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  %cond = sext i1 %tobool.not to i32
  br label %cleanup

if.end:                                           ; preds = %if.end7.if.end_crit_edge, %if.end.lr.ph
  %ns.025 = phi ptr [ %targ_ns, %if.end.lr.ph ], [ %9, %if.end7.if.end_crit_edge ]
  %level = getelementptr inbounds %struct.user_namespace, ptr %ns.025, i32 0, i32 4
  %6 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp5.not = icmp sgt i32 %7, %3
  br i1 %cmp5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %parent = getelementptr inbounds %struct.user_namespace, ptr %ns.025, i32 0, i32 3
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 4
  %cmp9 = icmp eq ptr %9, %1
  br i1 %cmp9, label %land.lhs.true, label %if.end7.if.end_crit_edge

if.end7.if.end_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %if.end7
  %owner = getelementptr inbounds %struct.user_namespace, ptr %ns.025, i32 0, i32 5
  %10 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack = load i32, ptr %owner, align 4
  %11 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack23 = load i32, ptr %euid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack23)
  %cmp.i = icmp eq i32 %.unpack, %.unpack23
  br i1 %cmp.i, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cap_settime(ptr nocapture readnone %ts, ptr nocapture readnone %tz) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 25) #14
  %not.call = xor i1 %call, true
  %. = sext i1 %not.call to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cap_ptrace_access_check(ptr noundef %child, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !93) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !103
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !93) #14
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %cred1 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 99
  %8 = ptrtoint ptr %cred1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cred1, align 16
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 98
  %10 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %real_cred, align 4
  %call7 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end13_crit_edge

rcu_read_lock.exit.do.end13_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end13_crit_edge, label %land.lhs.true10

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b38 = load i1, ptr @cap_ptrace_access_check.__warned.1, align 1
  br i1 %.b38, label %land.lhs.true10.do.end13_crit_edge, label %if.then

land.lhs.true10.do.end13_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

if.then:                                          ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cap_ptrace_access_check.__warned.1, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 142, ptr noundef nonnull @.str.2) #14
  br label %do.end13

do.end13:                                         ; preds = %if.then, %land.lhs.true10.do.end13_crit_edge, %land.lhs.true.do.end13_crit_edge, %rcu_read_lock.exit.do.end13_crit_edge
  %user_ns = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 25
  %12 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ns, align 4
  %user_ns18 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 25
  %14 = ptrtoint ptr %user_ns18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %user_ns18, align 4
  %cmp = icmp eq ptr %13, %15
  br i1 %cmp, label %land.lhs.true19, label %do.end13.if.end24_crit_edge

do.end13.if.end24_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

land.lhs.true19:                                  ; preds = %do.end13
  %and = and i32 %mode, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  %cap_permitted = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 14
  %cap_effective = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 15
  %caller_caps.0 = select i1 %tobool15.not, ptr %cap_permitted, ptr %cap_effective
  %cap_permitted20 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 14
  %16 = ptrtoint ptr %cap_permitted20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack = load i32, ptr %cap_permitted20, align 4
  %.elt33 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 14, i32 0, i32 1
  %17 = ptrtoint ptr %.elt33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack34 = load i32, ptr %.elt33, align 4
  %18 = ptrtoint ptr %caller_caps.0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack35 = load i32, ptr %caller_caps.0, align 4
  %.elt36 = getelementptr inbounds [2 x i32], ptr %caller_caps.0, i32 0, i32 1
  %19 = ptrtoint ptr %.elt36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack37 = load i32, ptr %.elt36, align 4
  %neg.i.i = xor i32 %.unpack35, -1
  %and.i.i = and i32 %.unpack, %neg.i.i
  %neg.1.i.i = xor i32 %.unpack37, -1
  %and.1.i.i = and i32 %.unpack34, %neg.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp1.not.i.i = icmp eq i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %cmp1.not.1.i.i = icmp eq i32 %and.1.i.i, 0
  %or.cond.i.i = select i1 %cmp1.not.i.i, i1 %cmp1.not.1.i.i, i1 false
  br i1 %or.cond.i.i, label %land.lhs.true19.out_crit_edge, label %land.lhs.true19.if.end24_crit_edge

land.lhs.true19.if.end24_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

land.lhs.true19.out_crit_edge:                    ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end24:                                         ; preds = %land.lhs.true19.if.end24_crit_edge, %do.end13.if.end24_crit_edge
  %call26 = tail call zeroext i1 @ns_capable(ptr noundef %15, i32 noundef 19) #14
  %not.call26 = xor i1 %call26, true
  %spec.select = sext i1 %not.call26 to i32
  br label %out

out:                                              ; preds = %if.end24, %land.lhs.true19.out_crit_edge
  %ret.0 = phi i32 [ 0, %land.lhs.true19.out_crit_edge ], [ %spec.select, %if.end24 ]
  %call.i39 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i39, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i42

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i42:                                ; preds = %out
  %call1.i40 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i40)
  %tobool.not.i41 = icmp eq i32 %call1.i40, 0
  br i1 %tobool.not.i41, label %land.lhs.true.i42.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i44

land.lhs.true.i42.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i44:                               ; preds = %land.lhs.true.i42
  %.b4.i43 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i43, label %land.lhs.true2.i44.rcu_read_unlock.exit_crit_edge, label %if.then.i45

land.lhs.true2.i44.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i44
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i45:                                      ; preds = %land.lhs.true2.i44
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i45, %land.lhs.true2.i44.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i42.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !104
  %20 = tail call i32 @llvm.read_register.i32(metadata !93) #14
  %and.i.i.i.i.i46 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i46 to ptr
  %preempt_count.i.i.i.i47 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i47, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i47, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cap_ptrace_traceme(ptr noundef %parent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !93) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !103
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %parent, i32 0, i32 98
  %4 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %real_cred, align 4
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b35 = load i1, ptr @cap_ptrace_traceme.__warned, align 1
  br i1 %.b35, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cap_ptrace_traceme.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 177, ptr noundef nonnull @.str.2) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %6 = tail call i32 @llvm.read_register.i32(metadata !93) #14
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %cred14 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 99
  %10 = ptrtoint ptr %cred14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cred14, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %12 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ns, align 4
  %user_ns15 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 25
  %14 = ptrtoint ptr %user_ns15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %user_ns15, align 4
  %cmp = icmp eq ptr %13, %15
  br i1 %cmp, label %land.lhs.true16, label %do.end7.if.end21_crit_edge

do.end7.if.end21_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

land.lhs.true16:                                  ; preds = %do.end7
  %cap_permitted = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 14
  %cap_permitted17 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 14
  %16 = ptrtoint ptr %cap_permitted to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack = load i32, ptr %cap_permitted, align 4
  %.elt30 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 14, i32 0, i32 1
  %17 = ptrtoint ptr %.elt30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack31 = load i32, ptr %.elt30, align 4
  %18 = ptrtoint ptr %cap_permitted17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack32 = load i32, ptr %cap_permitted17, align 4
  %.elt33 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 14, i32 0, i32 1
  %19 = ptrtoint ptr %.elt33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack34 = load i32, ptr %.elt33, align 4
  %neg.i.i = xor i32 %.unpack32, -1
  %and.i.i = and i32 %.unpack, %neg.i.i
  %neg.1.i.i = xor i32 %.unpack34, -1
  %and.1.i.i = and i32 %.unpack31, %neg.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp1.not.i.i = icmp eq i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %cmp1.not.1.i.i = icmp eq i32 %and.1.i.i, 0
  %or.cond.i.i = select i1 %cmp1.not.i.i, i1 %cmp1.not.1.i.i, i1 false
  br i1 %or.cond.i.i, label %land.lhs.true16.out_crit_edge, label %land.lhs.true16.if.end21_crit_edge

land.lhs.true16.if.end21_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

land.lhs.true16.out_crit_edge:                    ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end21:                                         ; preds = %land.lhs.true16.if.end21_crit_edge, %do.end7.if.end21_crit_edge
  %call23 = tail call zeroext i1 @has_ns_capability(ptr noundef %parent, ptr noundef %15, i32 noundef 19) #14
  %not.call23 = xor i1 %call23, true
  %spec.select = sext i1 %not.call23 to i32
  br label %out

out:                                              ; preds = %if.end21, %land.lhs.true16.out_crit_edge
  %ret.0 = phi i32 [ 0, %land.lhs.true16.out_crit_edge ], [ %spec.select, %if.end21 ]
  %call.i36 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i36, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i39

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i39:                                ; preds = %out
  %call1.i37 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37)
  %tobool.not.i38 = icmp eq i32 %call1.i37, 0
  br i1 %tobool.not.i38, label %land.lhs.true.i39.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i41

land.lhs.true.i39.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i41:                               ; preds = %land.lhs.true.i39
  %.b4.i40 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i40, label %land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge, label %if.then.i42

land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i42:                                      ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i42, %land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i39.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !104
  %20 = tail call i32 @llvm.read_register.i32(metadata !93) #14
  %and.i.i.i.i.i43 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i43 to ptr
  %preempt_count.i.i.i.i44 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i44, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i44, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @has_ns_capability(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cap_capget(ptr noundef %target, ptr nocapture noundef writeonly %effective, ptr nocapture noundef writeonly %inheritable, ptr nocapture noundef writeonly %permitted) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !93) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !103
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %target, i32 0, i32 98
  %4 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %real_cred, align 4
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b11 = load i1, ptr @cap_capget.__warned, align 1
  br i1 %.b11, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cap_capget.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 207, ptr noundef nonnull @.str.2) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %cap_effective = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %cap_effective to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %cap_effective, align 4
  %8 = ptrtoint ptr %effective to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %7, ptr %effective, align 4
  %cap_inheritable = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 13
  %9 = ptrtoint ptr %cap_inheritable to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %cap_inheritable, align 4
  %11 = ptrtoint ptr %inheritable to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %inheritable, align 4
  %cap_permitted = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 14
  %12 = ptrtoint ptr %cap_permitted to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %cap_permitted, align 4
  %14 = ptrtoint ptr %permitted to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %permitted, align 4
  %call.i12 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i12, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i15

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i15:                                ; preds = %do.end7
  %call1.i13 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13)
  %tobool.not.i14 = icmp eq i32 %call1.i13, 0
  br i1 %tobool.not.i14, label %land.lhs.true.i15.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i17

land.lhs.true.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i15
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i17:                               ; preds = %land.lhs.true.i15
  %.b4.i16 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i16, label %land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge, label %if.then.i18

land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i18:                                      ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i18, %land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i15.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !104
  %15 = tail call i32 @llvm.read_register.i32(metadata !93) #14
  %and.i.i.i.i.i19 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i19 to ptr
  %preempt_count.i.i.i.i20 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i20, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i20, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cap_capset(ptr nocapture noundef %new, ptr nocapture noundef readonly %old, ptr nocapture noundef readonly %effective, ptr nocapture noundef readonly %inheritable, ptr nocapture noundef readonly %permitted) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !93) #14
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
  %cap_effective.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %cap_effective.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cap_effective.i.i, align 4
  %8 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.not = icmp eq i32 %8, 0
  br i1 %tobool.not.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %cap_inheritable = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 13
  %cap_permitted = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 14
  %9 = ptrtoint ptr %cap_inheritable to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack118 = load i32, ptr %cap_inheritable, align 4
  %.elt119 = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 13, i32 0, i32 1
  %10 = ptrtoint ptr %.elt119 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack120 = load i32, ptr %.elt119, align 4
  %11 = ptrtoint ptr %cap_permitted to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack121 = load i32, ptr %cap_permitted, align 4
  %.elt122 = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 14, i32 0, i32 1
  %12 = ptrtoint ptr %.elt122 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack123 = load i32, ptr %.elt122, align 4
  %or.i = or i32 %.unpack121, %.unpack118
  %or.1.i = or i32 %.unpack123, %.unpack120
  %13 = ptrtoint ptr %inheritable to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack124 = load i32, ptr %inheritable, align 4
  %.elt125 = getelementptr inbounds [2 x i32], ptr %inheritable, i32 0, i32 1
  %14 = ptrtoint ptr %.elt125 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack126 = load i32, ptr %.elt125, align 4
  %neg.i.i = xor i32 %or.i, -1
  %and.i.i127 = and i32 %.unpack124, %neg.i.i
  %neg.1.i.i = xor i32 %or.1.i, -1
  %and.1.i.i = and i32 %.unpack126, %neg.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i127)
  %cmp1.not.i.i = icmp eq i32 %and.i.i127, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %cmp1.not.1.i.i = icmp eq i32 %and.1.i.i, 0
  %or.cond.i.i = select i1 %cmp1.not.i.i, i1 %cmp1.not.1.i.i, i1 false
  br i1 %or.cond.i.i, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %cap_inheritable6 = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 13
  %cap_bset = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 16
  %15 = ptrtoint ptr %cap_inheritable6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack = load i32, ptr %cap_inheritable6, align 4
  %.elt89 = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 13, i32 0, i32 1
  %16 = ptrtoint ptr %.elt89 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack90 = load i32, ptr %.elt89, align 4
  %17 = ptrtoint ptr %cap_bset to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack91 = load i32, ptr %cap_bset, align 4
  %.elt92 = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 16, i32 0, i32 1
  %18 = ptrtoint ptr %.elt92 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack93 = load i32, ptr %.elt92, align 4
  %or.i128 = or i32 %.unpack91, %.unpack
  %or.1.i129 = or i32 %.unpack93, %.unpack90
  %19 = ptrtoint ptr %inheritable to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack94 = load i32, ptr %inheritable, align 4
  %.elt95 = getelementptr inbounds [2 x i32], ptr %inheritable, i32 0, i32 1
  %20 = ptrtoint ptr %.elt95 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack96 = load i32, ptr %.elt95, align 4
  %neg.i.i130 = xor i32 %or.i128, -1
  %and.i.i131 = and i32 %.unpack94, %neg.i.i130
  %neg.1.i.i132 = xor i32 %or.1.i129, -1
  %and.1.i.i133 = and i32 %.unpack96, %neg.1.i.i132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i131)
  %cmp1.not.i.i134 = icmp eq i32 %and.i.i131, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i133)
  %cmp1.not.1.i.i135 = icmp eq i32 %and.1.i.i133, 0
  %or.cond.i.i136 = select i1 %cmp1.not.i.i134, i1 %cmp1.not.1.i.i135, i1 false
  br i1 %or.cond.i.i136, label %if.end13, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end13:                                         ; preds = %if.end
  %cap_permitted14 = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 14
  %21 = ptrtoint ptr %permitted to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack97 = load i32, ptr %permitted, align 4
  %.elt98 = getelementptr inbounds [2 x i32], ptr %permitted, i32 0, i32 1
  %22 = ptrtoint ptr %.elt98 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack99 = load i32, ptr %.elt98, align 4
  %23 = ptrtoint ptr %cap_permitted14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack100 = load i32, ptr %cap_permitted14, align 4
  %.elt101 = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 14, i32 0, i32 1
  %24 = ptrtoint ptr %.elt101 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.unpack102 = load i32, ptr %.elt101, align 4
  %neg.i.i137 = xor i32 %.unpack100, -1
  %and.i.i138 = and i32 %.unpack97, %neg.i.i137
  %neg.1.i.i139 = xor i32 %.unpack102, -1
  %and.1.i.i140 = and i32 %.unpack99, %neg.1.i.i139
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i138)
  %cmp1.not.i.i141 = icmp eq i32 %and.i.i138, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i140)
  %cmp1.not.1.i.i142 = icmp eq i32 %and.1.i.i140, 0
  %or.cond.i.i143 = select i1 %cmp1.not.i.i141, i1 %cmp1.not.1.i.i142, i1 false
  br i1 %or.cond.i.i143, label %if.end19, label %if.end13.return_crit_edge

if.end13.return_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end19:                                         ; preds = %if.end13
  %25 = ptrtoint ptr %effective to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack103 = load i32, ptr %effective, align 4
  %.elt104 = getelementptr inbounds [2 x i32], ptr %effective, i32 0, i32 1
  %26 = ptrtoint ptr %.elt104 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.unpack105 = load i32, ptr %.elt104, align 4
  %neg.i.i144 = xor i32 %.unpack97, -1
  %and.i.i145 = and i32 %.unpack103, %neg.i.i144
  %neg.1.i.i146 = xor i32 %.unpack99, -1
  %and.1.i.i147 = and i32 %.unpack105, %neg.1.i.i146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i145)
  %cmp1.not.i.i148 = icmp eq i32 %and.i.i145, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i147)
  %cmp1.not.1.i.i149 = icmp eq i32 %and.1.i.i147, 0
  %or.cond.i.i150 = select i1 %cmp1.not.i.i148, i1 %cmp1.not.1.i.i149, i1 false
  br i1 %or.cond.i.i150, label %if.end24, label %if.end19.return_crit_edge

if.end19.return_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end24:                                         ; preds = %if.end19
  %cap_effective = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 15
  %27 = ptrtoint ptr %effective to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %effective, align 4
  %29 = ptrtoint ptr %cap_effective to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %28, ptr %cap_effective, align 4
  %cap_inheritable25 = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 13
  %30 = ptrtoint ptr %inheritable to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %inheritable, align 4
  %32 = ptrtoint ptr %cap_inheritable25 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 %31, ptr %cap_inheritable25, align 4
  %cap_permitted26 = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 14
  %33 = ptrtoint ptr %permitted to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %34 = load i64, ptr %permitted, align 4
  %35 = ptrtoint ptr %cap_permitted26 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 %34, ptr %cap_permitted26, align 4
  %cap_ambient = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 17
  %.unpack109 = load i32, ptr %permitted, align 4
  %36 = ptrtoint ptr %.elt98 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.unpack111 = load i32, ptr %.elt98, align 4
  %.unpack112 = load i32, ptr %inheritable, align 4
  %37 = ptrtoint ptr %.elt95 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.unpack114 = load i32, ptr %.elt95, align 4
  %and.i = and i32 %.unpack112, %.unpack109
  %and.1.i = and i32 %.unpack114, %.unpack111
  %38 = ptrtoint ptr %cap_ambient to i32
  call void @__asan_load4_noabort(i32 %38)
  %.unpack115 = load i32, ptr %cap_ambient, align 4
  %.elt116 = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 17, i32 0, i32 1
  %39 = ptrtoint ptr %.elt116 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.unpack117 = load i32, ptr %.elt116, align 4
  %and.i151 = and i32 %and.i, %.unpack115
  %and.1.i152 = and i32 %and.1.i, %.unpack117
  %tmp.sroa.4.0.insert.ext = zext i32 %and.1.i152 to i64
  %tmp.sroa.0.0.insert.ext = zext i32 %and.i151 to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %tmp.sroa.0.0.insert.insert = or i64 %tmp.sroa.0.0.insert.shift, %tmp.sroa.4.0.insert.ext
  store i64 %tmp.sroa.0.0.insert.insert, ptr %cap_ambient, align 4
  %40 = and i64 %31, %34
  %and.i.i153155 = lshr i64 %40, 32
  %and.i.i153 = trunc i64 %and.i.i153155 to i32
  %and.1.i.i154156 = and i64 %31, %34
  %and.1.i.i154 = trunc i64 %and.1.i.i154156 to i32
  %neg.i.i.i = xor i32 %and.i.i153, -1
  %and.i.i.i = and i32 %and.i151, %neg.i.i.i
  %neg.1.i.i.i = xor i32 %and.1.i.i154, -1
  %and.1.i.i.i = and i32 %and.1.i152, %neg.1.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp1.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i.i)
  %cmp1.not.1.i.i.i = icmp eq i32 %and.1.i.i.i, 0
  %or.cond.i.i.i = select i1 %cmp1.not.i.i.i, i1 %cmp1.not.1.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %if.end24.return_crit_edge, label %do.end, !prof !105

if.end24.return_crit_edge:                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

do.end:                                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 280, i32 noundef 9, ptr noundef null) #14
  br label %return

return:                                           ; preds = %do.end, %if.end24.return_crit_edge, %if.end19.return_crit_edge, %if.end13.return_crit_edge, %if.end.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ -1, %land.lhs.true.return_crit_edge ], [ -1, %if.end.return_crit_edge ], [ -1, %if.end13.return_crit_edge ], [ -1, %if.end19.return_crit_edge ], [ -22, %do.end ], [ 0, %if.end24.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cap_inode_need_killpriv(ptr noundef %dentry) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %call1 = tail call i32 @__vfs_getxattr(ptr noundef %dentry, ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp sgt i32 %call1, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vfs_getxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cap_inode_killpriv(ptr noundef %mnt_userns, ptr noundef %dentry) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__vfs_removexattr(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef nonnull @.str.4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call)
  %cmp = icmp eq i32 %call, -95
  %spec.store.select = select i1 %cmp, i32 0, i32 %call
  ret i32 %spec.store.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vfs_removexattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cap_inode_getsecurity(ptr noundef %mnt_userns, ptr noundef %inode, ptr nocapture noundef readonly %name, ptr nocapture noundef writeonly %buffer, i1 noundef zeroext %alloc) #2 align 64 {
entry:
  %tmpbuf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpbuf) #14
  %0 = ptrtoint ptr %tmpbuf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %tmpbuf, align 4
  %call = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(11) @.str.5) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @d_find_any_alias(ptr noundef %inode) #14
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @vfs_getxattr_alloc(ptr noundef %mnt_userns, ptr noundef nonnull %call1, ptr noundef nonnull @.str.4, ptr noundef nonnull %tmpbuf, i32 noundef 24, i32 noundef 3136) #14
  call void @dput(ptr noundef nonnull %call1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end3.cleanup_crit_edge, label %lor.lhs.false

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end3
  %1 = ptrtoint ptr %tmpbuf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tmpbuf, align 4
  %tobool6.not = icmp eq ptr %2, null
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 53
  %5 = ptrtoint ptr %s_user_ns to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_user_ns, align 8
  %7 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call4, label %if.end8.out_free_crit_edge [
    i32 20, label %is_v2header.exit
    i32 24, label %is_v3header.exit
  ]

if.end8.out_free_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

is_v2header.exit:                                 ; preds = %if.end8
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %2, align 4
  %10 = and i32 %9, -16777217
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp1.i = icmp eq i32 %10, 2
  br i1 %cmp1.i, label %is_v2header.exit.if.end15_crit_edge, label %is_v2header.exit.out_free_crit_edge

is_v2header.exit.out_free_crit_edge:              ; preds = %is_v2header.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

is_v2header.exit.if.end15_crit_edge:              ; preds = %is_v2header.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

is_v3header.exit:                                 ; preds = %if.end8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %2, align 4
  %13 = and i32 %12, -16777217
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp1.i127 = icmp eq i32 %13, 3
  br i1 %cmp1.i127, label %if.then12, label %is_v3header.exit.out_free_crit_edge

is_v3header.exit.out_free_crit_edge:              ; preds = %is_v3header.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

if.then12:                                        ; preds = %is_v3header.exit
  call void @__sanitizer_cov_trace_pc() #16
  %rootid = getelementptr inbounds %struct.vfs_ns_cap_data, ptr %2, i32 0, i32 2
  %14 = ptrtoint ptr %rootid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rootid, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %is_v2header.exit.if.end15_crit_edge
  %root.0 = phi i32 [ %16, %if.then12 ], [ 0, %is_v2header.exit.if.end15_crit_edge ]
  %nscap.0 = phi ptr [ %2, %if.then12 ], [ null, %is_v2header.exit.if.end15_crit_edge ]
  %call16 = call i32 @make_kuid(ptr noundef %6, i32 noundef %root.0) #14
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %call16, 0
  %cmp.i.i.i = icmp eq ptr %mnt_userns, @init_user_ns
  %cmp.i.i = icmp eq ptr %6, %mnt_userns
  %spec.select.i.i = or i1 %cmp.i.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end15.mapped_kuid_fs.exit_crit_edge, label %if.end.i130

if.end15.mapped_kuid_fs.exit_crit_edge:           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %mapped_kuid_fs.exit

if.end.i130:                                      ; preds = %if.end15
  %cmp.i21.i = icmp eq ptr %6, @init_user_ns
  br i1 %cmp.i21.i, label %if.end.i130.if.end7.i_crit_edge, label %if.else.i

if.end.i130.if.end7.i_crit_edge:                  ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

if.else.i:                                        ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #16
  %call6.i = call i32 @from_kuid(ptr noundef %6, [1 x i32] %.fca.0.insert) #14
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.end.i130.if.end7.i_crit_edge
  %uid.0.i = phi i32 [ %call6.i, %if.else.i ], [ %call16, %if.end.i130.if.end7.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uid.0.i)
  %cmp.i = icmp eq i32 %uid.0.i, -1
  br i1 %cmp.i, label %if.end7.i.mapped_kuid_fs.exit_crit_edge, label %if.end9.i

if.end7.i.mapped_kuid_fs.exit_crit_edge:          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mapped_kuid_fs.exit

if.end9.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  %call10.i = call i32 @make_kuid(ptr noundef %mnt_userns, i32 noundef %uid.0.i) #14
  br label %mapped_kuid_fs.exit

mapped_kuid_fs.exit:                              ; preds = %if.end9.i, %if.end7.i.mapped_kuid_fs.exit_crit_edge, %if.end15.mapped_kuid_fs.exit_crit_edge
  %retval.sroa.0.0.i = phi i32 [ %call10.i, %if.end9.i ], [ -1, %if.end7.i.mapped_kuid_fs.exit_crit_edge ], [ %call16, %if.end15.mapped_kuid_fs.exit_crit_edge ]
  %17 = call i32 @llvm.read_register.i32(metadata !93) #14
  %and.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 99
  %21 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %22, i32 0, i32 25
  %23 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %user_ns, align 4
  %.fca.0.insert109 = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i, 0
  %call25 = call i32 @from_kuid(ptr noundef %24, [1 x i32] %.fca.0.insert109) #14
  %25 = zext i32 %call25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %call25, label %if.then28 [
    i32 -1, label %mapped_kuid_fs.exit.if.end46_crit_edge
    i32 0, label %mapped_kuid_fs.exit.if.end46_crit_edge148
  ]

mapped_kuid_fs.exit.if.end46_crit_edge148:        ; preds = %mapped_kuid_fs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

mapped_kuid_fs.exit.if.end46_crit_edge:           ; preds = %mapped_kuid_fs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.then28:                                        ; preds = %mapped_kuid_fs.exit
  br i1 %alloc, label %if.then30, label %if.then28.out_free_crit_edge

if.then28.out_free_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

if.then30:                                        ; preds = %if.then28
  %tobool31.not = icmp eq ptr %nscap.0, null
  br i1 %tobool31.not, label %if.then32, label %if.else42

if.then32:                                        ; preds = %if.then30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 2848, i32 noundef 24) #18
  %tobool34.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool34.not, label %if.then32.out_free_crit_edge, label %if.end36

if.then32.out_free_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

if.end36:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %2, align 4
  %29 = and i32 %28, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool37.not = icmp eq i32 %29, 0
  %spec.select = select i1 %tobool37.not, i32 50331648, i32 50331649
  %data = getelementptr inbounds %struct.vfs_ns_cap_data, ptr %call7.i.i, i32 0, i32 1
  %data40 = getelementptr inbounds %struct.vfs_cap_data, ptr %2, i32 0, i32 1
  %30 = call ptr @memcpy(ptr %data, ptr %data40, i32 16)
  %31 = call i32 @llvm.bswap.i32(i32 %spec.select)
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %call7.i.i, align 8
  br label %if.end43

if.else42:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %tmpbuf to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %tmpbuf, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.else42, %if.end36
  %nscap.1 = phi ptr [ %nscap.0, %if.else42 ], [ %call7.i.i, %if.end36 ]
  %34 = call i32 @llvm.bswap.i32(i32 %call25)
  %rootid44 = getelementptr inbounds %struct.vfs_ns_cap_data, ptr %nscap.1, i32 0, i32 2
  %35 = ptrtoint ptr %rootid44 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %rootid44, align 4
  br label %out_free.sink.split

if.end46:                                         ; preds = %mapped_kuid_fs.exit.if.end46_crit_edge, %mapped_kuid_fs.exit.if.end46_crit_edge148
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.sroa.0.0.i)
  %cmp.i.not.i = icmp eq i32 %retval.sroa.0.0.i, -1
  br i1 %cmp.i.not.i, label %if.end46.out_free_crit_edge, label %do.end.i

if.end46.out_free_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

do.end.i:                                         ; preds = %if.end46
  %36 = call i32 @llvm.read_register.i32(metadata !93) #14
  %and.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 99
  %40 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cred.i, align 16
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %41, i32 0, i32 25
  %42 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %ns.017.i = load ptr, ptr %user_ns.i, align 4
  %call518.i = call i32 @from_kuid(ptr noundef %ns.017.i, [1 x i32] %.fca.0.insert109) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call518.i)
  %cmp19.i = icmp eq i32 %call518.i, 0
  br i1 %cmp19.i, label %do.end.i..loopexit_crit_edge, label %do.end.i.if.end7.i132_crit_edge

do.end.i.if.end7.i132_crit_edge:                  ; preds = %do.end.i
  br label %if.end7.i132

do.end.i..loopexit_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %.loopexit

for.cond.i:                                       ; preds = %if.end7.i132
  %parent.i = getelementptr inbounds %struct.user_namespace, ptr %ns.020.i, i32 0, i32 3
  %43 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %ns.0.i = load ptr, ptr %parent.i, align 4
  %call5.i = call i32 @from_kuid(ptr noundef %ns.0.i, [1 x i32] %.fca.0.insert109) #14
  %cmp.i131 = icmp eq i32 %call5.i, 0
  br i1 %cmp.i131, label %for.cond.i..loopexit_crit_edge, label %for.cond.i.if.end7.i132_crit_edge

for.cond.i.if.end7.i132_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i132

for.cond.i..loopexit_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %.loopexit

if.end7.i132:                                     ; preds = %for.cond.i.if.end7.i132_crit_edge, %do.end.i.if.end7.i132_crit_edge
  %ns.020.i = phi ptr [ %ns.0.i, %for.cond.i.if.end7.i132_crit_edge ], [ %ns.017.i, %do.end.i.if.end7.i132_crit_edge ]
  %cmp8.i = icmp eq ptr %ns.020.i, @init_user_ns
  br i1 %cmp8.i, label %if.end7.i132.out_free_crit_edge, label %for.cond.i

if.end7.i132.out_free_crit_edge:                  ; preds = %if.end7.i132
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

.loopexit:                                        ; preds = %for.cond.i..loopexit_crit_edge, %do.end.i..loopexit_crit_edge
  br i1 %alloc, label %if.then52, label %.loopexit.out_free_crit_edge

.loopexit.out_free_crit_edge:                     ; preds = %.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

if.then52:                                        ; preds = %.loopexit
  %tobool53.not = icmp eq ptr %nscap.0, null
  br i1 %tobool53.not, label %if.else68, label %if.then54

if.then54:                                        ; preds = %if.then52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i134 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 2848, i32 noundef 20) #18
  %tobool56.not = icmp eq ptr %call7.i.i134, null
  br i1 %tobool56.not, label %if.then54.out_free_crit_edge, label %if.end58

if.then54.out_free_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

if.end58:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %nscap.0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nscap.0, align 4
  %47 = and i32 %46, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool61.not = icmp eq i32 %47, 0
  %spec.select125 = select i1 %tobool61.not, i32 33554432, i32 33554433
  %data65 = getelementptr inbounds %struct.vfs_cap_data, ptr %call7.i.i134, i32 0, i32 1
  %data66 = getelementptr inbounds %struct.vfs_ns_cap_data, ptr %nscap.0, i32 0, i32 1
  %48 = call ptr @memcpy(ptr %data65, ptr %data66, i32 16)
  %49 = call i32 @llvm.bswap.i32(i32 %spec.select125)
  %50 = ptrtoint ptr %call7.i.i134 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %call7.i.i134, align 8
  br label %out_free.sink.split

if.else68:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  %51 = ptrtoint ptr %tmpbuf to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %tmpbuf, align 4
  br label %out_free.sink.split

out_free.sink.split:                              ; preds = %if.else68, %if.end58, %if.end43
  %cap.0.sink = phi ptr [ %nscap.1, %if.end43 ], [ %call7.i.i134, %if.end58 ], [ %2, %if.else68 ]
  %size.0.ph = phi i32 [ 24, %if.end43 ], [ 20, %if.end58 ], [ 20, %if.else68 ]
  %52 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %cap.0.sink, ptr %buffer, align 4
  br label %out_free

out_free:                                         ; preds = %out_free.sink.split, %if.then54.out_free_crit_edge, %.loopexit.out_free_crit_edge, %if.end7.i132.out_free_crit_edge, %if.end46.out_free_crit_edge, %if.then32.out_free_crit_edge, %if.then28.out_free_crit_edge, %is_v3header.exit.out_free_crit_edge, %is_v2header.exit.out_free_crit_edge, %if.end8.out_free_crit_edge
  %size.0 = phi i32 [ 24, %if.then28.out_free_crit_edge ], [ -22, %is_v3header.exit.out_free_crit_edge ], [ -12, %if.then32.out_free_crit_edge ], [ 20, %.loopexit.out_free_crit_edge ], [ -12, %if.then54.out_free_crit_edge ], [ -22, %is_v2header.exit.out_free_crit_edge ], [ -75, %if.end46.out_free_crit_edge ], [ -22, %if.end8.out_free_crit_edge ], [ %size.0.ph, %out_free.sink.split ], [ -75, %if.end7.i132.out_free_crit_edge ]
  %53 = ptrtoint ptr %tmpbuf to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tmpbuf, align 4
  call void @kfree(ptr noundef %54) #14
  br label %cleanup

cleanup:                                          ; preds = %out_free, %lor.lhs.false.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size.0, %out_free ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call4, %lor.lhs.false.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpbuf) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_find_any_alias(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getxattr_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cap_convert_nscap(ptr noundef %mnt_userns, ptr nocapture noundef readonly %dentry, ptr nocapture noundef %ivalue, i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ivalue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ivalue, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !93) #14
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 99
  %8 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 25
  %10 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_ns, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 53
  %14 = ptrtoint ptr %s_user_ns to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_user_ns, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %size, label %if.end.cleanup_crit_edge [
    i32 20, label %if.end.validheader.exit_crit_edge
    i32 24, label %if.end.i6.i
  ]

if.end.validheader.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %validheader.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i6.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %validheader.exit

validheader.exit:                                 ; preds = %if.end.i6.i, %if.end.validheader.exit_crit_edge
  %.sink10.i = phi i32 [ 3, %if.end.i6.i ], [ 2, %if.end.validheader.exit_crit_edge ]
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 4
  %19 = and i32 %18, -16777217
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %.sink10.i)
  %cmp1.i.i = icmp eq i32 %19, %.sink10.i
  br i1 %cmp1.i.i, label %if.end5, label %validheader.exit.cleanup_crit_edge

validheader.exit.cleanup_crit_edge:               ; preds = %validheader.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %validheader.exit
  %call6 = tail call zeroext i1 @capable_wrt_inode_uidgid(ptr noundef %mnt_userns, ptr noundef %3, i32 noundef 31) #14
  br i1 %call6, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %size)
  %cmp = icmp eq i32 %size, 20
  %cmp9 = icmp eq ptr %15, %mnt_userns
  %or.cond = select i1 %cmp, i1 %cmp9, i1 false
  br i1 %or.cond, label %if.then10, label %if.end16

if.then10:                                        ; preds = %if.end8
  %20 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb, align 4
  %s_user_ns12 = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 53
  %22 = ptrtoint ptr %s_user_ns12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_user_ns12, align 8
  %call13 = tail call zeroext i1 @ns_capable(ptr noundef %23, i32 noundef 31) #14
  br i1 %call13, label %if.then10.cleanup_crit_edge, label %if.then10.if.end.i_crit_edge

if.then10.if.end.i_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %size)
  %cmp.i = icmp eq i32 %size, 24
  br i1 %cmp.i, label %if.then.i, label %if.end16.if.end.i_crit_edge

if.end16.if.end.i_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %ivalue to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ivalue, align 4
  %rootid1.i = getelementptr inbounds %struct.vfs_ns_cap_data, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %rootid1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rootid1.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end16.if.end.i_crit_edge, %if.then10.if.end.i_crit_edge
  %rootid.0.i = phi i32 [ %28, %if.then.i ], [ 0, %if.end16.if.end.i_crit_edge ], [ 0, %if.then10.if.end.i_crit_edge ]
  %call.i = tail call i32 @make_kuid(ptr noundef %11, i32 noundef %rootid.0.i) #14
  %cmp.i.i.i.i = icmp eq ptr %mnt_userns, @init_user_ns
  %spec.select.i.i.i = or i1 %cmp.i.i.i.i, %cmp9
  br i1 %spec.select.i.i.i, label %if.end.i.rootid_from_xattr.exit_crit_edge, label %if.end.i.i

if.end.i.rootid_from_xattr.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rootid_from_xattr.exit

if.end.i.i:                                       ; preds = %if.end.i
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %call.i, 0
  %call2.i.i = tail call i32 @from_kuid(ptr noundef %mnt_userns, [1 x i32] %.fca.0.insert.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i)
  %cmp.i.i = icmp eq i32 %call2.i.i, -1
  br i1 %cmp.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end4.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4.i.i:                                      ; preds = %if.end.i.i
  %cmp.i17.i.i = icmp eq ptr %15, @init_user_ns
  br i1 %cmp.i17.i.i, label %if.end4.i.i.if.end22_crit_edge, label %if.end8.i.i

if.end4.i.i.if.end22_crit_edge:                   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.end8.i.i:                                      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i.i = tail call i32 @make_kuid(ptr noundef %15, i32 noundef %call2.i.i) #14
  br label %rootid_from_xattr.exit

rootid_from_xattr.exit:                           ; preds = %if.end8.i.i, %if.end.i.rootid_from_xattr.exit_crit_edge
  %retval.sroa.0.0.i.i = phi i32 [ %call9.i.i, %if.end8.i.i ], [ %call.i, %if.end.i.rootid_from_xattr.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.sroa.0.0.i.i)
  %cmp.i72.not = icmp eq i32 %retval.sroa.0.0.i.i, -1
  br i1 %cmp.i72.not, label %rootid_from_xattr.exit.cleanup_crit_edge, label %rootid_from_xattr.exit.if.end22_crit_edge

rootid_from_xattr.exit.if.end22_crit_edge:        ; preds = %rootid_from_xattr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

rootid_from_xattr.exit.cleanup_crit_edge:         ; preds = %rootid_from_xattr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end22:                                         ; preds = %rootid_from_xattr.exit.if.end22_crit_edge, %if.end4.i.i.if.end22_crit_edge
  %call2.i.i.pn = phi i32 [ %retval.sroa.0.0.i.i, %rootid_from_xattr.exit.if.end22_crit_edge ], [ %call2.i.i, %if.end4.i.i.if.end22_crit_edge ]
  %.fca.0.insert77 = insertvalue [1 x i32] undef, i32 %call2.i.i.pn, 0
  %call24 = tail call i32 @from_kuid(ptr noundef %15, [1 x i32] %.fca.0.insert77) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call24)
  %cmp25 = icmp eq i32 %call24, -1
  br i1 %cmp25, label %if.end22.cleanup_crit_edge, label %if.end27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 2592, i32 noundef 24) #18
  %tobool29.not = icmp eq ptr %call7.i, null
  br i1 %tobool29.not, label %if.end27.cleanup_crit_edge, label %if.end31

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  %30 = tail call i32 @llvm.bswap.i32(i32 %call24)
  %rootid32 = getelementptr inbounds %struct.vfs_ns_cap_data, ptr %call7.i, i32 0, i32 2
  %31 = ptrtoint ptr %rootid32 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %rootid32, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %1, align 4
  %34 = and i32 %33, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool33.not = icmp eq i32 %34, 0
  %spec.select = select i1 %tobool33.not, i32 50331648, i32 50331649
  %35 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %36 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %call7.i, align 8
  %data = getelementptr inbounds %struct.vfs_ns_cap_data, ptr %call7.i, i32 0, i32 1
  %data37 = getelementptr inbounds %struct.vfs_cap_data, ptr %1, i32 0, i32 1
  %37 = call ptr @memcpy(ptr %data, ptr %data37, i32 16)
  %38 = ptrtoint ptr %ivalue to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i, ptr %ivalue, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end27.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %rootid_from_xattr.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %validheader.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 24, %if.end31 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %validheader.exit.cleanup_crit_edge ], [ -1, %if.end5.cleanup_crit_edge ], [ 20, %if.then10.cleanup_crit_edge ], [ -22, %rootid_from_xattr.exit.cleanup_crit_edge ], [ -22, %if.end22.cleanup_crit_edge ], [ -12, %if.end27.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable_wrt_inode_uidgid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_vfs_caps_from_disk(ptr noundef %mnt_userns, ptr noundef %dentry, ptr nocapture noundef %cpu_caps) local_unnamed_addr #2 align 64 {
entry:
  %data = alloca %struct.vfs_ns_cap_data, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %data) #14
  %2 = getelementptr inbounds %struct.vfs_ns_cap_data, ptr %data, i32 0, i32 2
  %3 = call ptr @memset(ptr %data, i32 255, i32 24)
  %4 = call ptr @memset(ptr %cpu_caps, i32 0, i32 24)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 53
  %7 = ptrtoint ptr %s_user_ns to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_user_ns, align 8
  %call1 = call i32 @__vfs_getxattr(ptr noundef %dentry, ptr noundef nonnull %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %data, i32 noundef 24) #14
  %9 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %call1, label %if.end4 [
    i32 -61, label %if.end.cleanup_crit_edge
    i32 -95, label %if.end.cleanup_crit_edge106
  ]

if.end.cleanup_crit_edge106:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp5 = icmp slt i32 %call1, 0
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call1)
  %cmp8 = icmp ult i32 %call1, 4
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %cpu_caps to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %cpu_caps, align 4
  %call13 = call i32 @make_kuid(ptr noundef %8, i32 noundef 0) #14
  %and = and i32 %12, -16777216
  %14 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %and, label %if.end10.cleanup_crit_edge [
    i32 16777216, label %sw.bb
    i32 33554432, label %sw.bb17
    i32 50331648, label %sw.bb21
  ]

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call1)
  %cmp14.not = icmp eq i32 %call1, 12
  br i1 %cmp14.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %call1)
  %cmp18.not = icmp eq i32 %call1, 20
  br i1 %cmp18.not, label %sw.bb17.sw.epilog_crit_edge, label %sw.bb17.cleanup_crit_edge

sw.bb17.cleanup_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %call1)
  %cmp22.not = icmp eq i32 %call1, 24
  br i1 %cmp22.not, label %if.end24, label %sw.bb21.cleanup_crit_edge

sw.bb21.cleanup_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end24:                                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %2, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  %call26 = call i32 @make_kuid(ptr noundef %8, i32 noundef %17) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end24, %sw.bb17.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %exitcond.not = phi i1 [ false, %sw.bb17.sw.epilog_crit_edge ], [ true, %sw.bb.sw.epilog_crit_edge ], [ false, %if.end24 ]
  %rootkuid.sroa.0.0 = phi i32 [ %call13, %sw.bb17.sw.epilog_crit_edge ], [ %call13, %sw.bb.sw.epilog_crit_edge ], [ %call26, %if.end24 ]
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %rootkuid.sroa.0.0, 0
  %cmp.i.i.i = icmp eq ptr %mnt_userns, @init_user_ns
  %cmp.i.i = icmp eq ptr %8, %mnt_userns
  %spec.select.i.i = or i1 %cmp.i.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %sw.epilog.mapped_kuid_fs.exit_crit_edge, label %if.end.i

sw.epilog.mapped_kuid_fs.exit_crit_edge:          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %mapped_kuid_fs.exit

if.end.i:                                         ; preds = %sw.epilog
  %cmp.i21.i = icmp eq ptr %8, @init_user_ns
  br i1 %cmp.i21.i, label %if.end.i.if.end7.i_crit_edge, label %if.else.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %call6.i = call i32 @from_kuid(ptr noundef %8, [1 x i32] %.fca.0.insert) #14
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.end.i.if.end7.i_crit_edge
  %uid.0.i = phi i32 [ %call6.i, %if.else.i ], [ %rootkuid.sroa.0.0, %if.end.i.if.end7.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uid.0.i)
  %cmp.i = icmp eq i32 %uid.0.i, -1
  br i1 %cmp.i, label %if.end7.i.cleanup_crit_edge, label %if.end9.i

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  %call10.i = call i32 @make_kuid(ptr noundef %mnt_userns, i32 noundef %uid.0.i) #14
  %.pre = insertvalue [1 x i32] poison, i32 %call10.i, 0
  br label %mapped_kuid_fs.exit

mapped_kuid_fs.exit:                              ; preds = %if.end9.i, %sw.epilog.mapped_kuid_fs.exit_crit_edge
  %.fca.0.insert70.pre-phi = phi [1 x i32] [ %.fca.0.insert, %sw.epilog.mapped_kuid_fs.exit_crit_edge ], [ %.pre, %if.end9.i ]
  %retval.sroa.0.0.i = phi i32 [ %rootkuid.sroa.0.0, %sw.epilog.mapped_kuid_fs.exit_crit_edge ], [ %call10.i, %if.end9.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.sroa.0.0.i)
  %cmp.i.not.i = icmp eq i32 %retval.sroa.0.0.i, -1
  br i1 %cmp.i.not.i, label %mapped_kuid_fs.exit.cleanup_crit_edge, label %do.end.i

mapped_kuid_fs.exit.cleanup_crit_edge:            ; preds = %mapped_kuid_fs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end.i:                                         ; preds = %mapped_kuid_fs.exit
  %18 = call i32 @llvm.read_register.i32(metadata !93) #14
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 99
  %22 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cred.i, align 16
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 25
  %24 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %ns.017.i = load ptr, ptr %user_ns.i, align 4
  %call518.i = call i32 @from_kuid(ptr noundef %ns.017.i, [1 x i32] %.fca.0.insert70.pre-phi) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call518.i)
  %cmp19.i = icmp eq i32 %call518.i, 0
  br i1 %cmp19.i, label %do.end.i.if.end39_crit_edge, label %do.end.i.if.end7.i97_crit_edge

do.end.i.if.end7.i97_crit_edge:                   ; preds = %do.end.i
  br label %if.end7.i97

do.end.i.if.end39_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

for.cond.i:                                       ; preds = %if.end7.i97
  %parent.i = getelementptr inbounds %struct.user_namespace, ptr %ns.020.i, i32 0, i32 3
  %25 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %ns.0.i = load ptr, ptr %parent.i, align 4
  %call5.i = call i32 @from_kuid(ptr noundef %ns.0.i, [1 x i32] %.fca.0.insert70.pre-phi) #14
  %cmp.i96 = icmp eq i32 %call5.i, 0
  br i1 %cmp.i96, label %for.cond.i.if.end39_crit_edge, label %for.cond.i.if.end7.i97_crit_edge

for.cond.i.if.end7.i97_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i97

for.cond.i.if.end39_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.end7.i97:                                      ; preds = %for.cond.i.if.end7.i97_crit_edge, %do.end.i.if.end7.i97_crit_edge
  %ns.020.i = phi ptr [ %ns.0.i, %for.cond.i.if.end7.i97_crit_edge ], [ %ns.017.i, %do.end.i.if.end7.i97_crit_edge ]
  %cmp8.i = icmp eq ptr %ns.020.i, @init_user_ns
  br i1 %cmp8.i, label %if.end7.i97.cleanup_crit_edge, label %for.cond.i

if.end7.i97.cleanup_crit_edge:                    ; preds = %if.end7.i97
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end39:                                         ; preds = %for.cond.i.if.end39_crit_edge, %do.end.i.if.end39_crit_edge
  %inheritable45 = getelementptr inbounds %struct.cpu_vfs_cap_data, ptr %cpu_caps, i32 0, i32 2
  %permitted41 = getelementptr inbounds %struct.cpu_vfs_cap_data, ptr %cpu_caps, i32 0, i32 1
  %arrayidx = getelementptr inbounds %struct.vfs_cap_data, ptr %data, i32 0, i32 1, i32 0
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %permitted41 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %permitted41, align 4
  %inheritable = getelementptr inbounds %struct.vfs_cap_data, ptr %data, i32 0, i32 1, i32 0, i32 1
  %30 = ptrtoint ptr %inheritable to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %inheritable, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %inheritable45 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %inheritable45, align 4
  br i1 %exitcond.not, label %if.end39.for.end_crit_edge, label %if.end39.1

if.end39.for.end_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end39.1:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.1 = getelementptr inbounds %struct.vfs_cap_data, ptr %data, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.1, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %35)
  %arrayidx42.1 = getelementptr %struct.cpu_vfs_cap_data, ptr %cpu_caps, i32 0, i32 1, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx42.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx42.1, align 4
  %inheritable.1 = getelementptr inbounds %struct.vfs_cap_data, ptr %data, i32 0, i32 1, i32 1, i32 1
  %38 = ptrtoint ptr %inheritable.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %inheritable.1, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %39)
  %arrayidx47.1 = getelementptr %struct.cpu_vfs_cap_data, ptr %cpu_caps, i32 0, i32 2, i32 0, i32 1
  %41 = ptrtoint ptr %arrayidx47.1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx47.1, align 4
  br label %for.end

for.end:                                          ; preds = %if.end39.1, %if.end39.for.end_crit_edge
  %arrayidx50 = getelementptr %struct.cpu_vfs_cap_data, ptr %cpu_caps, i32 0, i32 1, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx50, align 4
  %and51 = and i32 %43, 511
  store i32 %and51, ptr %arrayidx50, align 4
  %arrayidx54 = getelementptr %struct.cpu_vfs_cap_data, ptr %cpu_caps, i32 0, i32 2, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx54, align 4
  %and55 = and i32 %45, 511
  store i32 %and55, ptr %arrayidx54, align 4
  %rootid56 = getelementptr inbounds %struct.cpu_vfs_cap_data, ptr %cpu_caps, i32 0, i32 3
  %46 = ptrtoint ptr %rootid56 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %retval.sroa.0.0.i, ptr %rootid56, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end7.i97.cleanup_crit_edge, %mapped_kuid_fs.exit.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %sw.bb21.cleanup_crit_edge, %sw.bb17.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge106, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -61, %entry.cleanup_crit_edge ], [ -61, %if.end.cleanup_crit_edge ], [ -61, %if.end.cleanup_crit_edge106 ], [ %call1, %if.end4.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb17.cleanup_crit_edge ], [ -22, %sw.bb21.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ -61, %mapped_kuid_fs.exit.cleanup_crit_edge ], [ -61, %if.end7.i.cleanup_crit_edge ], [ -61, %if.end7.i97.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %data) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cap_bprm_creds_from_file(ptr nocapture noundef %bprm, ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  %vcaps.i = alloca %struct.cpu_vfs_cap_data, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !93) #14
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
  %cred1 = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 9
  %6 = ptrtoint ptr %cred1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cred1, align 4
  %cap_ambient.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 17
  %cap_permitted.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 14
  %cap_inheritable.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 13
  %8 = ptrtoint ptr %cap_permitted.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack.i = load i32, ptr %cap_permitted.i, align 4
  %.elt6.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 14, i32 0, i32 1
  %9 = ptrtoint ptr %.elt6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack7.i = load i32, ptr %.elt6.i, align 4
  %10 = ptrtoint ptr %cap_inheritable.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack8.i = load i32, ptr %cap_inheritable.i, align 4
  %.elt9.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 13, i32 0, i32 1
  %11 = ptrtoint ptr %.elt9.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack10.i = load i32, ptr %.elt9.i, align 4
  %and.i.i = and i32 %.unpack8.i, %.unpack.i
  %and.1.i.i = and i32 %.unpack10.i, %.unpack7.i
  %12 = ptrtoint ptr %cap_ambient.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack11.i = load i32, ptr %cap_ambient.i, align 4
  %.elt12.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 17, i32 0, i32 1
  %13 = ptrtoint ptr %.elt12.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack13.i = load i32, ptr %.elt12.i, align 4
  %neg.i.i.i = xor i32 %and.i.i, -1
  %and.i.i.i = and i32 %.unpack11.i, %neg.i.i.i
  %neg.1.i.i.i = xor i32 %and.1.i.i, -1
  %and.1.i.i.i = and i32 %.unpack13.i, %neg.1.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp1.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i.i)
  %cmp1.not.1.i.i.i = icmp eq i32 %and.1.i.i.i, 0
  %or.cond.i.i.i = select i1 %cmp1.not.i.i.i, i1 %cmp1.not.1.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %if.end28, label %do.end13, !prof !105

do.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 900, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end28:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %vcaps.i) #14
  %14 = getelementptr inbounds %struct.cpu_vfs_cap_data, ptr %vcaps.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.cpu_vfs_cap_data, ptr %vcaps.i, i32 0, i32 1, i32 0, i32 1
  %16 = getelementptr inbounds %struct.cpu_vfs_cap_data, ptr %vcaps.i, i32 0, i32 2
  %17 = getelementptr inbounds %struct.cpu_vfs_cap_data, ptr %vcaps.i, i32 0, i32 2, i32 0, i32 1
  %18 = call ptr @memset(ptr %vcaps.i, i32 255, i32 24)
  %cap_permitted.i289 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 14
  call void @__asan_loadN_noabort(i32 ptrtoint (ptr @__cap_empty_set to i32), i32 8)
  %19 = load i64, ptr @__cap_empty_set, align 4
  %20 = ptrtoint ptr %cap_permitted.i289 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %cap_permitted.i289, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @file_caps_enabled to i32))
  %21 = load i32, ptr @file_caps_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %if.end28.if.end31_crit_edge, label %if.end.i

if.end28.if.end31_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.end.i:                                         ; preds = %if.end28
  %f_path.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %22 = ptrtoint ptr %f_path.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %f_path.i, align 8
  %call.i = tail call zeroext i1 @mnt_may_suid(ptr noundef %23) #14
  br i1 %call.i, label %if.end2.i, label %if.end.i.if.end31_crit_edge

if.end.i.if.end31_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.end2.i:                                        ; preds = %if.end.i
  %24 = ptrtoint ptr %f_path.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %f_path.i, align 8
  %mnt_sb.i = getelementptr inbounds %struct.vfsmount, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %mnt_sb.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mnt_sb.i, align 4
  %s_user_ns.i = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 53
  %28 = ptrtoint ptr %s_user_ns.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_user_ns.i, align 8
  %call5.i = tail call zeroext i1 @current_in_userns(ptr noundef %29) #14
  br i1 %call5.i, label %if.end7.i, label %if.end2.i.if.end31_crit_edge

if.end2.i.if.end31_crit_edge:                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.end7.i:                                        ; preds = %if.end2.i
  %30 = ptrtoint ptr %f_path.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %f_path.i, align 8
  %mnt_userns.i.i.i = getelementptr inbounds %struct.vfsmount, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %mnt_userns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %mnt_userns.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !106
  %dentry.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dentry.i, align 4
  %call10.i = call i32 @get_vfs_caps_from_disk(ptr noundef %33, ptr noundef %35, ptr noundef nonnull %vcaps.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp.i = icmp slt i32 %call10.i, 0
  br i1 %cmp.i, label %if.then11.i, label %if.end22.i

if.then11.i:                                      ; preds = %if.end7.i
  %36 = zext i32 %call10.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %call10.i, label %if.then11.i.get_file_caps.exit_crit_edge [
    i32 -22, label %do.end16.i
    i32 -61, label %if.then11.i.if.end31_crit_edge
  ]

if.then11.i.if.end31_crit_edge:                   ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then11.i.get_file_caps.exit_crit_edge:         ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_file_caps.exit

do.end16.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #16
  %filename.i = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 14
  %37 = ptrtoint ptr %filename.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %filename.i, align 4
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %38) #19
  br label %get_file_caps.exit

if.end22.i:                                       ; preds = %if.end7.i
  %39 = ptrtoint ptr %cred1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cred1, align 4
  %41 = ptrtoint ptr %vcaps.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vcaps.i, align 4
  %43 = trunc i32 %42 to i8
  %44 = and i8 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %42)
  %tobool3.not.i.i = icmp ugt i32 %42, 16777215
  %has_fcap.0 = zext i1 %tobool3.not.i.i to i8
  %cap_bset.i.i = getelementptr inbounds %struct.cred, ptr %40, i32 0, i32 16
  %cap_inheritable.i.i = getelementptr inbounds %struct.cred, ptr %40, i32 0, i32 13
  %cap_permitted.i.i = getelementptr inbounds %struct.cred, ptr %40, i32 0, i32 14
  %45 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %14, align 4
  %47 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %16, align 4
  %49 = ptrtoint ptr %cap_bset.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cap_bset.i.i, align 4
  %and12.i.i = and i32 %50, %46
  %51 = ptrtoint ptr %cap_inheritable.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cap_inheritable.i.i, align 4
  %and15.i.i = and i32 %52, %48
  %or.i.i = or i32 %and15.i.i, %and12.i.i
  %53 = ptrtoint ptr %cap_permitted.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or.i.i, ptr %cap_permitted.i.i, align 4
  %neg.i.i = xor i32 %or.i.i, -1
  %and21.i.i = and i32 %46, %neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i)
  %tobool22.not.i.i = icmp ne i32 %and21.i.i, 0
  %54 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %15, align 4
  %56 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %17, align 4
  %arrayidx11.1.i.i = getelementptr %struct.cred, ptr %40, i32 0, i32 16, i32 0, i32 1
  %58 = ptrtoint ptr %arrayidx11.1.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx11.1.i.i, align 4
  %and12.1.i.i = and i32 %59, %55
  %arrayidx14.1.i.i = getelementptr %struct.cred, ptr %40, i32 0, i32 13, i32 0, i32 1
  %60 = ptrtoint ptr %arrayidx14.1.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx14.1.i.i, align 4
  %and15.1.i.i = and i32 %61, %57
  %or.1.i.i = or i32 %and15.1.i.i, %and12.1.i.i
  %arrayidx17.1.i.i = getelementptr %struct.cred, ptr %40, i32 0, i32 14, i32 0, i32 1
  %62 = ptrtoint ptr %arrayidx17.1.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or.1.i.i, ptr %arrayidx17.1.i.i, align 4
  %neg.1.i.i = xor i32 %or.1.i.i, -1
  %and21.1.i.i = and i32 %55, %neg.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.1.i.i)
  %tobool22.not.1.i.i = icmp ne i32 %and21.1.i.i, 0
  %narrow.i.i = select i1 %tobool22.not.1.i.i, i1 true, i1 %tobool22.not.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool25.not.i.i = icmp ne i8 %44, 0
  %narrow44.i.i = select i1 %tobool25.not.i.i, i1 %narrow.i.i, i1 false
  br i1 %narrow44.i.i, label %if.end22.i.get_file_caps.exit_crit_edge, label %if.end22.i.if.end31_crit_edge

if.end22.i.if.end31_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.end22.i.get_file_caps.exit_crit_edge:          ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_file_caps.exit

get_file_caps.exit:                               ; preds = %if.end22.i.get_file_caps.exit_crit_edge, %do.end16.i, %if.then11.i.get_file_caps.exit_crit_edge
  %rc.045.i = phi i32 [ -1, %if.end22.i.get_file_caps.exit_crit_edge ], [ -22, %do.end16.i ], [ %call10.i, %if.then11.i.get_file_caps.exit_crit_edge ]
  %63 = ptrtoint ptr %cred1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cred1, align 4
  %cap_permitted28.i = getelementptr inbounds %struct.cred, ptr %64, i32 0, i32 14
  %65 = ptrtoint ptr %cap_permitted28.i to i32
  call void @__asan_storeN_noabort(i32 %65, i32 8)
  store i64 %19, ptr %cap_permitted28.i, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %vcaps.i) #14
  br label %cleanup

if.end31:                                         ; preds = %if.end22.i.if.end31_crit_edge, %if.then11.i.if.end31_crit_edge, %if.end2.i.if.end31_crit_edge, %if.end.i.if.end31_crit_edge, %if.end28.if.end31_crit_edge
  %has_fcap.2.ph = phi i8 [ 0, %if.end.i.if.end31_crit_edge ], [ 0, %if.end2.i.if.end31_crit_edge ], [ %has_fcap.0, %if.end22.i.if.end31_crit_edge ], [ 0, %if.then11.i.if.end31_crit_edge ], [ 0, %if.end28.if.end31_crit_edge ]
  %effective.2.ph = phi i8 [ 0, %if.end.i.if.end31_crit_edge ], [ 0, %if.end2.i.if.end31_crit_edge ], [ %44, %if.end22.i.if.end31_crit_edge ], [ 0, %if.then11.i.if.end31_crit_edge ], [ 0, %if.end28.if.end31_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %vcaps.i) #14
  %user_ns = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 25
  %66 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %user_ns, align 4
  %call33 = tail call i32 @make_kuid(ptr noundef %67, i32 noundef 0) #14
  %68 = tail call i32 @llvm.read_register.i32(metadata !93) #14
  %and.i.i291 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i291 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %task.i, align 8
  %cred.i292 = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 99
  %72 = ptrtoint ptr %cred.i292 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cred.i292, align 16
  %74 = ptrtoint ptr %cred1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cred1, align 4
  %securebits.i.i = getelementptr inbounds %struct.cred, ptr %73, i32 0, i32 12
  %76 = ptrtoint ptr %securebits.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %securebits.i.i, align 4
  %and.i44.i = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i44.i)
  %tobool.not.i.i293 = icmp eq i32 %and.i44.i, 0
  br i1 %tobool.not.i.i293, label %if.end.i294, label %if.end31.handle_privileged_root.exit_crit_edge

if.end31.handle_privileged_root.exit_crit_edge:   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %handle_privileged_root.exit

if.end.i294:                                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %has_fcap.2.ph)
  %tobool34.not = icmp eq i8 %has_fcap.2.ph, 0
  br i1 %tobool34.not, label %if.end.i294.if.end6.i_crit_edge, label %land.lhs.true.i

if.end.i294.if.end6.i_crit_edge:                  ; preds = %if.end.i294
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %if.end.i294
  %uid1.i.i.i = getelementptr inbounds %struct.cred, ptr %75, i32 0, i32 4
  %78 = ptrtoint ptr %uid1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %.unpack.i.i.i = load i32, ptr %uid1.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i.i.i, i32 %call33)
  %cmp.i.i.i.i = icmp eq i32 %.unpack.i.i.i, %call33
  br i1 %cmp.i.i.i.i, label %land.lhs.true.i.if.end6.i_crit_edge, label %__is_suid.exit.i

land.lhs.true.i.if.end6.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

__is_suid.exit.i:                                 ; preds = %land.lhs.true.i
  %euid.i.i.i = getelementptr inbounds %struct.cred, ptr %75, i32 0, i32 8
  %79 = ptrtoint ptr %euid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %.unpack.i9.i.i = load i32, ptr %euid.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i9.i.i, i32 %call33)
  %cmp.i.i11.i.i = icmp eq i32 %.unpack.i9.i.i, %call33
  br i1 %cmp.i.i11.i.i, label %if.then5.i, label %__is_suid.exit.i.if.end6.i_crit_edge

__is_suid.exit.i.if.end6.i_crit_edge:             ; preds = %__is_suid.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

if.then5.i:                                       ; preds = %__is_suid.exit.i
  %.b.i.i = load i1, ptr @warn_setuid_and_fcaps_mixed.warned, align 4
  br i1 %.b.i.i, label %if.then5.i.handle_privileged_root.exit_crit_edge, label %do.end.i.i

if.then5.i.handle_privileged_root.exit_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %handle_privileged_root.exit

do.end.i.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #16
  %filename.i295 = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 14
  %80 = ptrtoint ptr %filename.i295 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %filename.i295, align 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %81) #19
  store i1 true, ptr @warn_setuid_and_fcaps_mixed.warned, align 4
  br label %handle_privileged_root.exit

if.end6.i:                                        ; preds = %__is_suid.exit.i.if.end6.i_crit_edge, %land.lhs.true.i.if.end6.i_crit_edge, %if.end.i294.if.end6.i_crit_edge
  %euid.i.i = getelementptr inbounds %struct.cred, ptr %75, i32 0, i32 8
  %82 = ptrtoint ptr %euid.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %.unpack.i.i = load i32, ptr %euid.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i.i, i32 %call33)
  %cmp.i.i.i = icmp eq i32 %.unpack.i.i, %call33
  br i1 %cmp.i.i.i, label %if.end6.i.if.then11.i301_crit_edge, label %lor.lhs.false.i

if.end6.i.if.then11.i301_crit_edge:               ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i301

lor.lhs.false.i:                                  ; preds = %if.end6.i
  %uid1.i.i = getelementptr inbounds %struct.cred, ptr %75, i32 0, i32 4
  %83 = ptrtoint ptr %uid1.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %.unpack.i45.i = load i32, ptr %uid1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i45.i, i32 %call33)
  %cmp.i.i47.i = icmp eq i32 %.unpack.i45.i, %call33
  br i1 %cmp.i.i47.i, label %lor.lhs.false.i.if.then11.i301_crit_edge, label %lor.lhs.false.i.if.end15.i_crit_edge

lor.lhs.false.i.if.end15.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.i

lor.lhs.false.i.if.then11.i301_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i301

if.then11.i301:                                   ; preds = %lor.lhs.false.i.if.then11.i301_crit_edge, %if.end6.i.if.then11.i301_crit_edge
  %cap_permitted.i296 = getelementptr inbounds %struct.cred, ptr %75, i32 0, i32 14
  %cap_bset.i = getelementptr inbounds %struct.cred, ptr %73, i32 0, i32 16
  %cap_inheritable.i297 = getelementptr inbounds %struct.cred, ptr %73, i32 0, i32 13
  %84 = ptrtoint ptr %cap_bset.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %.unpack.i298 = load i32, ptr %cap_bset.i, align 4
  %.elt39.i = getelementptr inbounds %struct.cred, ptr %73, i32 0, i32 16, i32 0, i32 1
  %85 = ptrtoint ptr %.elt39.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %.unpack40.i = load i32, ptr %.elt39.i, align 4
  %86 = ptrtoint ptr %cap_inheritable.i297 to i32
  call void @__asan_load4_noabort(i32 %86)
  %.unpack41.i = load i32, ptr %cap_inheritable.i297, align 4
  %.elt42.i = getelementptr inbounds %struct.cred, ptr %73, i32 0, i32 13, i32 0, i32 1
  %87 = ptrtoint ptr %.elt42.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %.unpack43.i = load i32, ptr %.elt42.i, align 4
  %or.i.i299 = or i32 %.unpack41.i, %.unpack.i298
  %or.1.i.i300 = or i32 %.unpack43.i, %.unpack40.i
  %tmp12.sroa.4.0.insert.ext.i = zext i32 %or.1.i.i300 to i64
  %tmp12.sroa.0.0.insert.ext.i = zext i32 %or.i.i299 to i64
  %tmp12.sroa.0.0.insert.shift.i = shl nuw i64 %tmp12.sroa.0.0.insert.ext.i, 32
  %tmp12.sroa.0.0.insert.insert.i = or i64 %tmp12.sroa.0.0.insert.shift.i, %tmp12.sroa.4.0.insert.ext.i
  %88 = ptrtoint ptr %cap_permitted.i296 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 8)
  store i64 %tmp12.sroa.0.0.insert.insert.i, ptr %cap_permitted.i296, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then11.i301, %lor.lhs.false.i.if.end15.i_crit_edge
  %89 = ptrtoint ptr %euid.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %.unpack.i49.i = load i32, ptr %euid.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i49.i, i32 %call33)
  %cmp.i.i51.i = icmp eq i32 %.unpack.i49.i, %call33
  %spec.select407 = select i1 %cmp.i.i51.i, i8 1, i8 %effective.2.ph
  br label %handle_privileged_root.exit

handle_privileged_root.exit:                      ; preds = %if.end15.i, %do.end.i.i, %if.then5.i.handle_privileged_root.exit_crit_edge, %if.end31.handle_privileged_root.exit_crit_edge
  %effective.3 = phi i8 [ %effective.2.ph, %if.then5.i.handle_privileged_root.exit_crit_edge ], [ %effective.2.ph, %do.end.i.i ], [ %effective.2.ph, %if.end31.handle_privileged_root.exit_crit_edge ], [ %spec.select407, %if.end15.i ]
  %90 = ptrtoint ptr %cap_permitted.i289 to i32
  call void @__asan_load4_noabort(i32 %90)
  %.unpack = load i32, ptr %cap_permitted.i289, align 4
  %.elt260 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 14, i32 0, i32 1
  %91 = ptrtoint ptr %.elt260 to i32
  call void @__asan_load4_noabort(i32 %91)
  %.unpack261 = load i32, ptr %.elt260, align 4
  %92 = ptrtoint ptr %cap_permitted.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %.unpack262 = load i32, ptr %cap_permitted.i, align 4
  %93 = ptrtoint ptr %.elt6.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %.unpack264 = load i32, ptr %.elt6.i, align 4
  %neg.i.i302 = xor i32 %.unpack262, -1
  %and.i.i303 = and i32 %.unpack, %neg.i.i302
  %neg.1.i.i304 = xor i32 %.unpack264, -1
  %and.1.i.i305 = and i32 %.unpack261, %neg.1.i.i304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i303)
  %cmp1.not.i.i = icmp eq i32 %and.i.i303, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i305)
  %cmp1.not.1.i.i = icmp eq i32 %and.1.i.i305, 0
  %or.cond.i.i = select i1 %cmp1.not.i.i, i1 %cmp1.not.1.i.i, i1 false
  br i1 %or.cond.i.i, label %handle_privileged_root.exit.if.end41_crit_edge, label %if.then40

handle_privileged_root.exit.if.end41_crit_edge:   ; preds = %handle_privileged_root.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

if.then40:                                        ; preds = %handle_privileged_root.exit
  call void @__sanitizer_cov_trace_pc() #16
  %per_clear = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 11
  %94 = ptrtoint ptr %per_clear to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %per_clear, align 4
  %or = or i32 %95, 7602176
  store i32 %or, ptr %per_clear, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %handle_privileged_root.exit.if.end41_crit_edge
  %euid.i = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 8
  %uid.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 4
  %96 = ptrtoint ptr %euid.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %.unpack.i306 = load i32, ptr %euid.i, align 4
  %97 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %.unpack2.i = load i32, ptr %uid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i306, i32 %.unpack2.i)
  %cmp.i.i.not = icmp eq i32 %.unpack.i306, %.unpack2.i
  br i1 %cmp.i.i.not, label %lor.end, label %if.end41.land.lhs.true_crit_edge

if.end41.land.lhs.true_crit_edge:                 ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

lor.end:                                          ; preds = %if.end41
  %egid.i = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 9
  %gid.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 5
  %98 = ptrtoint ptr %egid.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %.unpack.i307 = load i32, ptr %egid.i, align 4
  %99 = ptrtoint ptr %gid.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %.unpack2.i308 = load i32, ptr %gid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i307, i32 %.unpack2.i308)
  %cmp.i.i309.not = icmp eq i32 %.unpack.i307, %.unpack2.i308
  br i1 %cmp.i.i309.not, label %lor.lhs.false, label %lor.end.land.lhs.true_crit_edge

lor.end.land.lhs.true_crit_edge:                  ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %lor.end
  %100 = ptrtoint ptr %cap_permitted.i289 to i32
  call void @__asan_load4_noabort(i32 %100)
  %.unpack265 = load i32, ptr %cap_permitted.i289, align 4
  %101 = ptrtoint ptr %.elt260 to i32
  call void @__asan_load4_noabort(i32 %101)
  %.unpack267 = load i32, ptr %.elt260, align 4
  %102 = ptrtoint ptr %cap_permitted.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %.unpack268 = load i32, ptr %cap_permitted.i, align 4
  %103 = ptrtoint ptr %.elt6.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %.unpack270 = load i32, ptr %.elt6.i, align 4
  %neg.i.i310 = xor i32 %.unpack268, -1
  %and.i.i311 = and i32 %.unpack265, %neg.i.i310
  %neg.1.i.i312 = xor i32 %.unpack270, -1
  %and.1.i.i313 = and i32 %.unpack267, %neg.1.i.i312
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i311)
  %cmp1.not.i.i314 = icmp eq i32 %and.i.i311, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i313)
  %cmp1.not.1.i.i315 = icmp eq i32 %and.1.i.i313, 0
  %or.cond.i.i316 = select i1 %cmp1.not.i.i314, i1 %cmp1.not.1.i.i315, i1 false
  br i1 %or.cond.i.i316, label %lor.lhs.false.if.end71_crit_edge, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

lor.lhs.false.if.end71_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %lor.end.land.lhs.true_crit_edge, %if.end41.land.lhs.true_crit_edge
  %104 = phi i1 [ false, %lor.lhs.false.land.lhs.true_crit_edge ], [ true, %lor.end.land.lhs.true_crit_edge ], [ true, %if.end41.land.lhs.true_crit_edge ]
  %unsafe = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 10
  %105 = ptrtoint ptr %unsafe to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %unsafe, align 4
  %and = and i32 %106, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool50.not = icmp eq i32 %and, 0
  br i1 %tobool50.not, label %lor.lhs.false51, label %land.lhs.true.if.then56_crit_edge

land.lhs.true.if.then56_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

lor.lhs.false51:                                  ; preds = %land.lhs.true
  %107 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %task, align 8
  %109 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %user_ns, align 4
  %call55 = tail call zeroext i1 @ptracer_capable(ptr noundef %108, ptr noundef %110) #14
  br i1 %call55, label %lor.lhs.false51.if.end71_crit_edge, label %lor.lhs.false51.if.then56_crit_edge

lor.lhs.false51.if.then56_crit_edge:              ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

lor.lhs.false51.if.end71_crit_edge:               ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

if.then56:                                        ; preds = %lor.lhs.false51.if.then56_crit_edge, %land.lhs.true.if.then56_crit_edge
  %111 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %user_ns, align 4
  %call58 = tail call zeroext i1 @ns_capable(ptr noundef %112, i32 noundef 7) #14
  br i1 %call58, label %lor.lhs.false59, label %if.then56.if.then63_crit_edge

if.then56.if.then63_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then63

lor.lhs.false59:                                  ; preds = %if.then56
  %113 = ptrtoint ptr %unsafe to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %unsafe, align 4
  %and61 = and i32 %114, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %lor.lhs.false59.if.end64_crit_edge, label %lor.lhs.false59.if.then63_crit_edge

lor.lhs.false59.if.then63_crit_edge:              ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then63

lor.lhs.false59.if.end64_crit_edge:               ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64

if.then63:                                        ; preds = %lor.lhs.false59.if.then63_crit_edge, %if.then56.if.then63_crit_edge
  %uid = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 4
  %115 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %uid, align 4
  %117 = ptrtoint ptr %euid.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %euid.i, align 4
  %egid = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 9
  %gid = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 5
  %118 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %gid, align 4
  %120 = ptrtoint ptr %egid to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %egid, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %lor.lhs.false59.if.end64_crit_edge
  %121 = ptrtoint ptr %cap_permitted.i289 to i32
  call void @__asan_load4_noabort(i32 %121)
  %.unpack271 = load i32, ptr %cap_permitted.i289, align 4
  %122 = ptrtoint ptr %.elt260 to i32
  call void @__asan_load4_noabort(i32 %122)
  %.unpack273 = load i32, ptr %.elt260, align 4
  %123 = ptrtoint ptr %cap_permitted.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %.unpack274 = load i32, ptr %cap_permitted.i, align 4
  %124 = ptrtoint ptr %.elt6.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %.unpack276 = load i32, ptr %.elt6.i, align 4
  %and.i317 = and i32 %.unpack274, %.unpack271
  %and.1.i = and i32 %.unpack276, %.unpack273
  %tmp66.sroa.4.0.insert.ext = zext i32 %and.1.i to i64
  %tmp66.sroa.0.0.insert.ext = zext i32 %and.i317 to i64
  %tmp66.sroa.0.0.insert.shift = shl nuw i64 %tmp66.sroa.0.0.insert.ext, 32
  %tmp66.sroa.0.0.insert.insert = or i64 %tmp66.sroa.0.0.insert.shift, %tmp66.sroa.4.0.insert.ext
  store i64 %tmp66.sroa.0.0.insert.insert, ptr %cap_permitted.i289, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.end64, %lor.lhs.false51.if.end71_crit_edge, %lor.lhs.false.if.end71_crit_edge
  %125 = phi i1 [ %104, %if.end64 ], [ %104, %lor.lhs.false51.if.end71_crit_edge ], [ false, %lor.lhs.false.if.end71_crit_edge ]
  %suid = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 6
  %fsuid = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 10
  %126 = ptrtoint ptr %euid.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %euid.i, align 4
  %128 = ptrtoint ptr %fsuid to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %fsuid, align 4
  %129 = ptrtoint ptr %suid to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %127, ptr %suid, align 4
  %sgid = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 7
  %fsgid = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 11
  %egid73 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 9
  %130 = ptrtoint ptr %egid73 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %egid73, align 4
  %132 = ptrtoint ptr %fsgid to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %fsgid, align 4
  %133 = ptrtoint ptr %sgid to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %131, ptr %sgid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %has_fcap.2.ph)
  %tobool74.not = icmp ne i8 %has_fcap.2.ph, 0
  %brmerge = or i1 %tobool74.not, %125
  br i1 %brmerge, label %do.body78, label %if.end71.if.end81_crit_edge

if.end71.if.end81_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81

do.body78:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  %cap_ambient = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 17
  %134 = ptrtoint ptr %cap_ambient to i32
  call void @__asan_storeN_noabort(i32 %134, i32 8)
  store i64 %19, ptr %cap_ambient, align 4
  br label %if.end81

if.end81:                                         ; preds = %do.body78, %if.end71.if.end81_crit_edge
  %cap_ambient85 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 17
  %135 = ptrtoint ptr %cap_permitted.i289 to i32
  call void @__asan_load4_noabort(i32 %135)
  %.unpack277 = load i32, ptr %cap_permitted.i289, align 4
  %136 = ptrtoint ptr %.elt260 to i32
  call void @__asan_load4_noabort(i32 %136)
  %.unpack279 = load i32, ptr %.elt260, align 4
  %137 = ptrtoint ptr %cap_ambient85 to i32
  call void @__asan_load4_noabort(i32 %137)
  %.unpack280 = load i32, ptr %cap_ambient85, align 4
  %.elt281 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 17, i32 0, i32 1
  %138 = ptrtoint ptr %.elt281 to i32
  call void @__asan_load4_noabort(i32 %138)
  %.unpack282 = load i32, ptr %.elt281, align 4
  %or.i = or i32 %.unpack280, %.unpack277
  %or.1.i = or i32 %.unpack282, %.unpack279
  %tmp83.sroa.4.0.insert.ext = zext i32 %or.1.i to i64
  %tmp83.sroa.0.0.insert.ext = zext i32 %or.i to i64
  %tmp83.sroa.0.0.insert.shift = shl nuw i64 %tmp83.sroa.0.0.insert.ext, 32
  %tmp83.sroa.0.0.insert.insert = or i64 %tmp83.sroa.0.0.insert.shift, %tmp83.sroa.4.0.insert.ext
  store i64 %tmp83.sroa.0.0.insert.insert, ptr %cap_permitted.i289, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %effective.3)
  %tobool88.not = icmp eq i8 %effective.3, 0
  br i1 %tobool88.not, label %if.else, label %if.end81.if.end93_crit_edge

if.end81.if.end93_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end93

if.else:                                          ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  %139 = ptrtoint ptr %cap_ambient85 to i32
  call void @__asan_loadN_noabort(i32 %139, i32 8)
  %140 = load i64, ptr %cap_ambient85, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.else, %if.end81.if.end93_crit_edge
  %tmp83.sroa.0.0.insert.insert.sink = phi i64 [ %140, %if.else ], [ %tmp83.sroa.0.0.insert.insert, %if.end81.if.end93_crit_edge ]
  %141 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 15
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_storeN_noabort(i32 %142, i32 8)
  store i64 %tmp83.sroa.0.0.insert.insert.sink, ptr %141, align 4
  %cap_inheritable.i320 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 13
  %143 = ptrtoint ptr %cap_permitted.i289 to i32
  call void @__asan_load4_noabort(i32 %143)
  %.unpack.i321 = load i32, ptr %cap_permitted.i289, align 4
  %144 = ptrtoint ptr %.elt260 to i32
  call void @__asan_load4_noabort(i32 %144)
  %.unpack7.i323 = load i32, ptr %.elt260, align 4
  %145 = ptrtoint ptr %cap_inheritable.i320 to i32
  call void @__asan_load4_noabort(i32 %145)
  %.unpack8.i324 = load i32, ptr %cap_inheritable.i320, align 4
  %.elt9.i325 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 13, i32 0, i32 1
  %146 = ptrtoint ptr %.elt9.i325 to i32
  call void @__asan_load4_noabort(i32 %146)
  %.unpack10.i326 = load i32, ptr %.elt9.i325, align 4
  %and.i.i327 = and i32 %.unpack8.i324, %.unpack.i321
  %and.1.i.i328 = and i32 %.unpack10.i326, %.unpack7.i323
  %147 = ptrtoint ptr %cap_ambient85 to i32
  call void @__asan_load4_noabort(i32 %147)
  %.unpack11.i329 = load i32, ptr %cap_ambient85, align 4
  %148 = ptrtoint ptr %.elt281 to i32
  call void @__asan_load4_noabort(i32 %148)
  %.unpack13.i331 = load i32, ptr %.elt281, align 4
  %neg.i.i.i332 = xor i32 %and.i.i327, -1
  %and.i.i.i333 = and i32 %.unpack11.i329, %neg.i.i.i332
  %neg.1.i.i.i334 = xor i32 %and.1.i.i328, -1
  %and.1.i.i.i335 = and i32 %.unpack13.i331, %neg.1.i.i.i334
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i333)
  %cmp1.not.i.i.i336 = icmp eq i32 %and.i.i.i333, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i.i335)
  %cmp1.not.1.i.i.i337 = icmp eq i32 %and.1.i.i.i335, 0
  %or.cond.i.i.i338 = select i1 %cmp1.not.i.i.i336, i1 %cmp1.not.1.i.i.i337, i1 false
  br i1 %or.cond.i.i.i338, label %if.end129, label %do.end113, !prof !105

do.end113:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 957, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end129:                                        ; preds = %if.end93
  %neg.i.i.i341 = xor i32 %.unpack11.i329, -1
  %neg.1.i.i.i343 = xor i32 %.unpack13.i331, -1
  %securebits = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 12
  %149 = ptrtoint ptr %securebits to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %securebits, align 4
  %and139 = and i32 %150, -17
  store i32 %and139, ptr %securebits, align 4
  br i1 %125, label %if.end129.if.then188_crit_edge, label %lor.lhs.false177

if.end129.if.then188_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then188

lor.lhs.false177:                                 ; preds = %if.end129
  %uid1.i = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 4
  %151 = ptrtoint ptr %uid1.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %.unpack.i387 = load i32, ptr %uid1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i387, i32 %call33)
  %cmp.i.i388 = icmp eq i32 %.unpack.i387, %call33
  br i1 %cmp.i.i388, label %lor.lhs.false177.cleanup_crit_edge, label %land.lhs.true180

lor.lhs.false177.cleanup_crit_edge:               ; preds = %lor.lhs.false177
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true180:                                 ; preds = %lor.lhs.false177
  br i1 %tobool88.not, label %lor.lhs.false182, label %land.lhs.true180.if.then188_crit_edge

land.lhs.true180.if.then188_crit_edge:            ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then188

lor.lhs.false182:                                 ; preds = %land.lhs.true180
  %and.i.i390 = and i32 %.unpack.i321, %neg.i.i.i341
  %and.1.i.i392 = and i32 %.unpack7.i323, %neg.1.i.i.i343
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i390)
  %cmp1.not.i.i393 = icmp eq i32 %and.i.i390, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i392)
  %cmp1.not.1.i.i394 = icmp eq i32 %and.1.i.i392, 0
  %or.cond.i.i395 = select i1 %cmp1.not.i.i393, i1 %cmp1.not.1.i.i394, i1 false
  br i1 %or.cond.i.i395, label %lor.lhs.false182.cleanup_crit_edge, label %lor.lhs.false182.if.then188_crit_edge

lor.lhs.false182.if.then188_crit_edge:            ; preds = %lor.lhs.false182
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then188

lor.lhs.false182.cleanup_crit_edge:               ; preds = %lor.lhs.false182
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then188:                                       ; preds = %lor.lhs.false182.if.then188_crit_edge, %land.lhs.true180.if.then188_crit_edge, %if.end129.if.then188_crit_edge
  %secureexec = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 5
  %152 = ptrtoint ptr %secureexec to i32
  call void @__asan_load1_noabort(i32 %152)
  %bf.load = load i8, ptr %secureexec, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %secureexec, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then188, %lor.lhs.false182.cleanup_crit_edge, %lor.lhs.false177.cleanup_crit_edge, %do.end113, %get_file_caps.exit, %do.end13
  %retval.0 = phi i32 [ -1, %do.end13 ], [ -1, %do.end113 ], [ %rc.045.i, %get_file_caps.exit ], [ 0, %if.then188 ], [ 0, %lor.lhs.false182.cleanup_crit_edge ], [ 0, %lor.lhs.false177.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ptracer_capable(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cap_inode_setxattr(ptr nocapture noundef readonly %dentry, ptr nocapture noundef readonly %name, ptr nocapture noundef readnone %value, i32 noundef %size, i32 noundef %flags) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %s_user_ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_user_ns, align 8
  %call = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(10) @.str.6, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(20) @.str.4) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call5 = tail call zeroext i1 @ns_capable(ptr noundef %3, i32 noundef 21) #14
  %not.call5 = xor i1 %call5, true
  %. = sext i1 %not.call5 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %., %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cap_inode_removexattr(ptr noundef %mnt_userns, ptr nocapture noundef readonly %dentry, ptr nocapture noundef readonly %name) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %s_user_ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_user_ns, align 8
  %call = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(10) @.str.6, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup14_crit_edge

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup14

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(20) @.str.4) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end10

if.then3:                                         ; preds = %if.end
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then3.cleanup14_crit_edge, label %if.end6

if.then3.cleanup14_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup14

if.end6:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  %call7 = tail call zeroext i1 @capable_wrt_inode_uidgid(ptr noundef %mnt_userns, ptr noundef nonnull %5, i32 noundef 31) #14
  %not.call7 = xor i1 %call7, true
  %. = sext i1 %not.call7 to i32
  br label %cleanup14

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call11 = tail call zeroext i1 @ns_capable(ptr noundef %3, i32 noundef 21) #14
  %not.call11 = xor i1 %call11, true
  %.18 = sext i1 %not.call11 to i32
  br label %cleanup14

cleanup14:                                        ; preds = %if.end10, %if.end6, %if.then3.cleanup14_crit_edge, %entry.cleanup14_crit_edge
  %retval.1 = phi i32 [ 0, %entry.cleanup14_crit_edge ], [ -22, %if.then3.cleanup14_crit_edge ], [ %., %if.end6 ], [ %.18, %if.end10 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cap_task_fix_setuid(ptr nocapture noundef %new, ptr nocapture noundef readonly %old, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %flags to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %flags, label %entry.return_crit_edge [
    i32 2, label %entry.do.end_crit_edge
    i32 1, label %entry.do.end_crit_edge86
    i32 4, label %entry.do.end_crit_edge87
    i32 8, label %do.end5
  ]

entry.do.end_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

entry.do.end_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

do.end:                                           ; preds = %entry.do.end_crit_edge, %entry.do.end_crit_edge86, %entry.do.end_crit_edge87
  %1 = tail call i32 @llvm.read_register.i32(metadata !93) #14
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
  %securebits = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %securebits to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %securebits, align 4
  %and = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %do.end.return_crit_edge

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then:                                          ; preds = %do.end
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 25
  %9 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %user_ns.i, align 4
  %call.i = tail call i32 @make_kuid(ptr noundef %10, i32 noundef 0) #14
  %uid.i = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 4
  %11 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack.i = load i32, ptr %uid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i, i32 %call.i)
  %cmp.i.i = icmp eq i32 %.unpack.i, %call.i
  br i1 %cmp.i.i, label %if.then.land.lhs.true.i_crit_edge, label %lor.lhs.false.i

if.then.land.lhs.true.i_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %if.then
  %euid.i = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 8
  %12 = ptrtoint ptr %euid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack117.i = load i32, ptr %euid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack117.i, i32 %call.i)
  %cmp.i126.i = icmp eq i32 %.unpack117.i, %call.i
  br i1 %cmp.i126.i, label %lor.lhs.false.i.land.lhs.true.i_crit_edge, label %lor.lhs.false7.i

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false.i
  %suid.i = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 6
  %13 = ptrtoint ptr %suid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack118.i = load i32, ptr %suid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack118.i, i32 %call.i)
  %cmp.i127.i = icmp eq i32 %.unpack118.i, %call.i
  br i1 %cmp.i127.i, label %lor.lhs.false7.i.land.lhs.true.i_crit_edge, label %lor.lhs.false7.i.if.end37.i_crit_edge

lor.lhs.false7.i.if.end37.i_crit_edge:            ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37.i

lor.lhs.false7.i.land.lhs.true.i_crit_edge:       ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false7.i.land.lhs.true.i_crit_edge, %lor.lhs.false.i.land.lhs.true.i_crit_edge, %if.then.land.lhs.true.i_crit_edge
  %uid11.i = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 4
  %14 = ptrtoint ptr %uid11.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack123.i = load i32, ptr %uid11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack123.i, i32 %call.i)
  %cmp.i128.i = icmp eq i32 %.unpack123.i, %call.i
  br i1 %cmp.i128.i, label %land.lhs.true.i.if.end37.i_crit_edge, label %land.lhs.true15.i

land.lhs.true.i.if.end37.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37.i

land.lhs.true15.i:                                ; preds = %land.lhs.true.i
  %euid16.i = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 8
  %15 = ptrtoint ptr %euid16.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack124.i = load i32, ptr %euid16.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack124.i, i32 %call.i)
  %cmp.i129.i = icmp eq i32 %.unpack124.i, %call.i
  br i1 %cmp.i129.i, label %land.lhs.true15.i.if.end37.i_crit_edge, label %land.lhs.true20.i

land.lhs.true15.i.if.end37.i_crit_edge:           ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37.i

land.lhs.true20.i:                                ; preds = %land.lhs.true15.i
  %suid21.i = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 6
  %16 = ptrtoint ptr %suid21.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack125.i = load i32, ptr %suid21.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack125.i, i32 %call.i)
  %cmp.i130.i = icmp eq i32 %.unpack125.i, %call.i
  br i1 %cmp.i130.i, label %land.lhs.true20.i.if.end37.i_crit_edge, label %do.end.i

land.lhs.true20.i.if.end37.i_crit_edge:           ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37.i

do.end.i:                                         ; preds = %land.lhs.true20.i
  %17 = tail call i32 @llvm.read_register.i32(metadata !93) #14
  %and.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 99
  %21 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cred.i, align 16
  %securebits.i = getelementptr inbounds %struct.cred, ptr %22, i32 0, i32 12
  %23 = ptrtoint ptr %securebits.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %securebits.i, align 4
  %and.i78 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i78)
  %tobool.not.i = icmp eq i32 %and.i78, 0
  br i1 %tobool.not.i, label %do.body28.i, label %do.end.i.do.body34.i_crit_edge

do.end.i.do.body34.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body34.i

do.body28.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %cap_permitted.i = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 14
  call void @__asan_loadN_noabort(i32 ptrtoint (ptr @__cap_empty_set to i32), i32 8)
  %25 = load i64, ptr @__cap_empty_set, align 4
  %26 = ptrtoint ptr %cap_permitted.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %25, ptr %cap_permitted.i, align 4
  %cap_effective.i = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 15
  %27 = ptrtoint ptr %cap_effective.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %25, ptr %cap_effective.i, align 4
  br label %do.body34.i

do.body34.i:                                      ; preds = %do.body28.i, %do.end.i.do.body34.i_crit_edge
  %cap_ambient.i = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 17
  call void @__asan_loadN_noabort(i32 ptrtoint (ptr @__cap_empty_set to i32), i32 8)
  %28 = load i64, ptr @__cap_empty_set, align 4
  %29 = ptrtoint ptr %cap_ambient.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %28, ptr %cap_ambient.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %do.body34.i, %land.lhs.true20.i.if.end37.i_crit_edge, %land.lhs.true15.i.if.end37.i_crit_edge, %land.lhs.true.i.if.end37.i_crit_edge, %lor.lhs.false7.i.if.end37.i_crit_edge
  %euid38.i = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 8
  %30 = ptrtoint ptr %euid38.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.unpack119.i = load i32, ptr %euid38.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack119.i, i32 %call.i)
  %cmp.i131.i = icmp eq i32 %.unpack119.i, %call.i
  br i1 %cmp.i131.i, label %land.lhs.true42.i, label %if.end37.i.if.end52.i_crit_edge

if.end37.i.if.end52.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52.i

land.lhs.true42.i:                                ; preds = %if.end37.i
  %euid43.i = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 8
  %31 = ptrtoint ptr %euid43.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.unpack122.i = load i32, ptr %euid43.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack122.i, i32 %call.i)
  %cmp.i132.i = icmp eq i32 %.unpack122.i, %call.i
  br i1 %cmp.i132.i, label %land.lhs.true42.i.if.end52.i_crit_edge, label %do.body48.i

land.lhs.true42.i.if.end52.i_crit_edge:           ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52.i

do.body48.i:                                      ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #16
  %cap_effective49.i = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 15
  call void @__asan_loadN_noabort(i32 ptrtoint (ptr @__cap_empty_set to i32), i32 8)
  %32 = load i64, ptr @__cap_empty_set, align 4
  %33 = ptrtoint ptr %cap_effective49.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %32, ptr %cap_effective49.i, align 4
  br label %if.end52.i

if.end52.i:                                       ; preds = %do.body48.i, %land.lhs.true42.i.if.end52.i_crit_edge, %if.end37.i.if.end52.i_crit_edge
  %34 = ptrtoint ptr %euid38.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.unpack120.i = load i32, ptr %euid38.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack120.i, i32 %call.i)
  %cmp.i133.i = icmp eq i32 %.unpack120.i, %call.i
  br i1 %cmp.i133.i, label %if.end52.i.return_crit_edge, label %land.lhs.true57.i

if.end52.i.return_crit_edge:                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

land.lhs.true57.i:                                ; preds = %if.end52.i
  %euid58.i = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 8
  %35 = ptrtoint ptr %euid58.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.unpack121.i = load i32, ptr %euid58.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack121.i, i32 %call.i)
  %cmp.i134.i = icmp eq i32 %.unpack121.i, %call.i
  br i1 %cmp.i134.i, label %if.then62.i, label %land.lhs.true57.i.return_crit_edge

land.lhs.true57.i.return_crit_edge:               ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then62.i:                                      ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #16
  %cap_effective63.i = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 15
  %cap_permitted64.i = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 14
  %36 = ptrtoint ptr %cap_permitted64.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %cap_permitted64.i, align 4
  %38 = ptrtoint ptr %cap_effective63.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 8)
  store i64 %37, ptr %cap_effective63.i, align 4
  br label %return

do.end5:                                          ; preds = %entry
  %39 = tail call i32 @llvm.read_register.i32(metadata !93) #14
  %and.i79 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i79 to ptr
  %task8 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task8 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task8, align 8
  %cred9 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 99
  %43 = ptrtoint ptr %cred9 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cred9, align 16
  %securebits10 = getelementptr inbounds %struct.cred, ptr %44, i32 0, i32 12
  %45 = ptrtoint ptr %securebits10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %securebits10, align 4
  %and11 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then13, label %do.end5.return_crit_edge

do.end5.return_crit_edge:                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then13:                                        ; preds = %do.end5
  %user_ns = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 25
  %47 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %user_ns, align 4
  %call14 = tail call i32 @make_kuid(ptr noundef %48, i32 noundef 0) #14
  %fsuid = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 10
  %49 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %49)
  %.unpack = load i32, ptr %fsuid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %call14)
  %cmp.i = icmp eq i32 %.unpack, %call14
  br i1 %cmp.i, label %land.lhs.true, label %if.then13.if.end26_crit_edge

if.then13.if.end26_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

land.lhs.true:                                    ; preds = %if.then13
  %fsuid18 = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 10
  %50 = ptrtoint ptr %fsuid18 to i32
  call void @__asan_load4_noabort(i32 %50)
  %.unpack74 = load i32, ptr %fsuid18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack74, i32 %call14)
  %cmp.i80 = icmp eq i32 %.unpack74, %call14
  br i1 %cmp.i80, label %land.lhs.true.if.end26_crit_edge, label %if.then22

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %cap_effective = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 15
  %51 = ptrtoint ptr %cap_effective to i32
  call void @__asan_load4_noabort(i32 %51)
  %.unpack75 = load i32, ptr %cap_effective, align 4
  %.elt76 = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 15, i32 0, i32 1
  %52 = ptrtoint ptr %.elt76 to i32
  call void @__asan_load4_noabort(i32 %52)
  %.unpack77 = load i32, ptr %.elt76, align 4
  %and.i.i81 = and i32 %.unpack75, -134218272
  %and.1.i.i = and i32 %.unpack77, -2
  %tmp23.sroa.4.0.insert.ext = zext i32 %and.1.i.i to i64
  %tmp23.sroa.0.0.insert.ext = zext i32 %and.i.i81 to i64
  %tmp23.sroa.0.0.insert.shift = shl nuw i64 %tmp23.sroa.0.0.insert.ext, 32
  %tmp23.sroa.0.0.insert.insert = or i64 %tmp23.sroa.0.0.insert.shift, %tmp23.sroa.4.0.insert.ext
  store i64 %tmp23.sroa.0.0.insert.insert, ptr %cap_effective, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %land.lhs.true.if.end26_crit_edge, %if.then13.if.end26_crit_edge
  %53 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %53)
  %.unpack66 = load i32, ptr %fsuid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack66, i32 %call14)
  %cmp.i82 = icmp eq i32 %.unpack66, %call14
  br i1 %cmp.i82, label %if.end26.return_crit_edge, label %land.lhs.true31

if.end26.return_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

land.lhs.true31:                                  ; preds = %if.end26
  %fsuid32 = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 10
  %54 = ptrtoint ptr %fsuid32 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.unpack67 = load i32, ptr %fsuid32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack67, i32 %call14)
  %cmp.i83 = icmp eq i32 %.unpack67, %call14
  br i1 %cmp.i83, label %if.then36, label %land.lhs.true31.return_crit_edge

land.lhs.true31.return_crit_edge:                 ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then36:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #16
  %cap_effective37 = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 15
  %cap_permitted = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 14
  %55 = ptrtoint ptr %cap_effective37 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.unpack68 = load i32, ptr %cap_effective37, align 4
  %.elt69 = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 15, i32 0, i32 1
  %56 = ptrtoint ptr %.elt69 to i32
  call void @__asan_load4_noabort(i32 %56)
  %.unpack70 = load i32, ptr %.elt69, align 4
  %57 = ptrtoint ptr %cap_permitted to i32
  call void @__asan_load4_noabort(i32 %57)
  %.unpack71 = load i32, ptr %cap_permitted, align 4
  %.elt72 = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 14, i32 0, i32 1
  %58 = ptrtoint ptr %.elt72 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.unpack73 = load i32, ptr %.elt72, align 4
  %and.i.i84 = and i32 %.unpack71, 134218271
  %and.1.i.i85 = and i32 %.unpack73, 1
  %or.i.i = or i32 %and.i.i84, %.unpack68
  %or.1.i.i = or i32 %and.1.i.i85, %.unpack70
  %tmp38.sroa.4.0.insert.ext = zext i32 %or.1.i.i to i64
  %tmp38.sroa.0.0.insert.ext = zext i32 %or.i.i to i64
  %tmp38.sroa.0.0.insert.shift = shl nuw i64 %tmp38.sroa.0.0.insert.ext, 32
  %tmp38.sroa.0.0.insert.insert = or i64 %tmp38.sroa.0.0.insert.shift, %tmp38.sroa.4.0.insert.ext
  store i64 %tmp38.sroa.0.0.insert.insert, ptr %cap_effective37, align 4
  br label %return

return:                                           ; preds = %if.then36, %land.lhs.true31.return_crit_edge, %if.end26.return_crit_edge, %do.end5.return_crit_edge, %if.then62.i, %land.lhs.true57.i.return_crit_edge, %if.end52.i.return_crit_edge, %do.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.end26.return_crit_edge ], [ 0, %land.lhs.true31.return_crit_edge ], [ 0, %if.then36 ], [ 0, %do.end5.return_crit_edge ], [ 0, %do.end.return_crit_edge ], [ 0, %if.end52.i.return_crit_edge ], [ 0, %land.lhs.true57.i.return_crit_edge ], [ 0, %if.then62.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cap_task_setscheduler(ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cap_safe_nice(ptr noundef %p)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cap_safe_nice(ptr noundef %p) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !93) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !103
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 98
  %4 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %real_cred, align 4
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b48 = load i1, ptr @cap_safe_nice.__warned, align 1
  br i1 %.b48, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cap_safe_nice.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1183, ptr noundef nonnull @.str.2) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %cap_permitted = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 14
  %6 = tail call i32 @llvm.read_register.i32(metadata !93) #14
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 99
  %10 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cred, align 16
  %cap_permitted14 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %cap_permitted to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack = load i32, ptr %cap_permitted, align 4
  %.elt42 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 14, i32 0, i32 1
  %13 = ptrtoint ptr %.elt42 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack43 = load i32, ptr %.elt42, align 4
  %14 = ptrtoint ptr %cap_permitted14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack44 = load i32, ptr %cap_permitted14, align 4
  %.elt45 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 14, i32 0, i32 1
  %15 = ptrtoint ptr %.elt45 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack46 = load i32, ptr %.elt45, align 4
  %neg.i.i = xor i32 %.unpack44, -1
  %and.i.i = and i32 %.unpack, %neg.i.i
  %neg.1.i.i = xor i32 %.unpack46, -1
  %and.1.i.i = and i32 %.unpack43, %neg.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp1.not.i.i = icmp eq i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %cmp1.not.1.i.i = icmp eq i32 %and.1.i.i, 0
  %or.cond.i.i = select i1 %cmp1.not.i.i, i1 %cmp1.not.1.i.i, i1 false
  br i1 %or.cond.i.i, label %do.end7.if.end39_crit_edge, label %land.lhs.true18

do.end7.if.end39_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

land.lhs.true18:                                  ; preds = %do.end7
  %16 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %real_cred, align 4
  %call25 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true27, label %land.lhs.true18.do.end35_crit_edge

land.lhs.true18.do.end35_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end35

land.lhs.true27:                                  ; preds = %land.lhs.true18
  %call28 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true27.do.end35_crit_edge, label %land.lhs.true30

land.lhs.true27.do.end35_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end35

land.lhs.true30:                                  ; preds = %land.lhs.true27
  %.b4147 = load i1, ptr @cap_safe_nice.__warned.25, align 1
  br i1 %.b4147, label %land.lhs.true30.do.end35_crit_edge, label %if.then32

land.lhs.true30.do.end35_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end35

if.then32:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cap_safe_nice.__warned.25, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1185, ptr noundef nonnull @.str.2) #14
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %land.lhs.true30.do.end35_crit_edge, %land.lhs.true27.do.end35_crit_edge, %land.lhs.true18.do.end35_crit_edge
  %user_ns = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 25
  %18 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %user_ns, align 4
  %call37 = tail call zeroext i1 @ns_capable(ptr noundef %19, i32 noundef 23) #14
  %not.call37 = xor i1 %call37, true
  %spec.select = sext i1 %not.call37 to i32
  br label %if.end39

if.end39:                                         ; preds = %do.end35, %do.end7.if.end39_crit_edge
  %ret.0 = phi i32 [ 0, %do.end7.if.end39_crit_edge ], [ %spec.select, %do.end35 ]
  %call.i49 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i49, label %if.end39.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i52

if.end39.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i52:                                ; preds = %if.end39
  %call1.i50 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50)
  %tobool.not.i51 = icmp eq i32 %call1.i50, 0
  br i1 %tobool.not.i51, label %land.lhs.true.i52.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i54

land.lhs.true.i52.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i54:                               ; preds = %land.lhs.true.i52
  %.b4.i53 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i53, label %land.lhs.true2.i54.rcu_read_unlock.exit_crit_edge, label %if.then.i55

land.lhs.true2.i54.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i55:                                      ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i55, %land.lhs.true2.i54.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i52.rcu_read_unlock.exit_crit_edge, %if.end39.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !104
  %20 = tail call i32 @llvm.read_register.i32(metadata !93) #14
  %and.i.i.i.i.i56 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i56 to ptr
  %preempt_count.i.i.i.i57 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i57, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i57, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cap_task_setioprio(ptr noundef %p, i32 %ioprio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cap_safe_nice(ptr noundef %p)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cap_task_setnice(ptr noundef %p, i32 %nice) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cap_safe_nice(ptr noundef %p)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cap_task_prctl(i32 noundef %option, i32 noundef %arg2, i32 noundef %arg3, i32 noundef %arg4, i32 noundef %arg5) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !93) #14
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
  %6 = zext i32 %option to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %option, label %entry.cleanup_crit_edge [
    i32 23, label %land.lhs.true
    i32 24, label %sw.bb4
    i32 28, label %sw.bb6
    i32 27, label %sw.bb44
    i32 7, label %do.end50
    i32 8, label %sw.bb62
    i32 47, label %sw.bb90
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %arg2)
  %cmp1 = icmp ult i32 %arg2, 41
  br i1 %cmp1, label %if.end, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %cap_bset = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 16
  %shr = lshr i32 %arg2, 5
  %arrayidx = getelementptr [2 x i32], ptr %cap_bset, i32 0, i32 %shr
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %and = and i32 %arg2, 31
  %9 = lshr i32 %8, %and
  %10 = and i32 %9, 1
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %11 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %user_ns.i, align 4
  %call2.i = tail call zeroext i1 @ns_capable(ptr noundef %12, i32 noundef 8) #14
  br i1 %call2.i, label %land.lhs.true.i, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.i:                                  ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %arg2)
  %cmp3.i = icmp ult i32 %arg2, 41
  br i1 %cmp3.i, label %if.end5.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5.i:                                        ; preds = %land.lhs.true.i
  %call6.i = tail call ptr @prepare_creds() #14
  %tobool.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool.not.i, label %if.end5.i.cleanup_crit_edge, label %if.end8.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  %and.i260 = and i32 %arg2, 31
  %shl.i = shl nuw i32 1, %and.i260
  %neg.i = xor i32 %shl.i, -1
  %cap_bset.i = getelementptr inbounds %struct.cred, ptr %call6.i, i32 0, i32 16
  %shr.i = lshr i32 %arg2, 5
  %arrayidx.i = getelementptr [2 x i32], ptr %cap_bset.i, i32 0, i32 %shr.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %and10.i = and i32 %14, %neg.i
  store i32 %and10.i, ptr %arrayidx.i, align 4
  %call11.i = tail call i32 @commit_creds(ptr noundef nonnull %call6.i) #14
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %securebits = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 12
  %15 = ptrtoint ptr %securebits to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %securebits, align 4
  %and7 = and i32 %16, 170
  %shr8 = lshr exact i32 %and7, 1
  %xor = xor i32 %16, %arg2
  %and10 = and i32 %shr8, %xor
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb6
  %neg = xor i32 %arg2, -1
  %and14 = and i32 %and7, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %arg2)
  %tobool18.not = icmp ult i32 %arg2, 256
  %or.cond = and i1 %tobool18.not, %tobool15.not
  br i1 %or.cond, label %cap_capable.exit, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cap_capable.exit:                                 ; preds = %lor.lhs.false
  %cap_effective.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 15
  %17 = ptrtoint ptr %cap_effective.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cap_effective.i, align 4
  %19 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp35.not.not = icmp eq i32 %19, 0
  br i1 %cmp35.not.not, label %cap_capable.exit.cleanup_crit_edge, label %if.end37

cap_capable.exit.cleanup_crit_edge:               ; preds = %cap_capable.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end37:                                         ; preds = %cap_capable.exit
  %call38 = tail call ptr @prepare_creds() #14
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.end37.cleanup_crit_edge, label %if.end41

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  %securebits42 = getelementptr inbounds %struct.cred, ptr %call38, i32 0, i32 12
  %20 = ptrtoint ptr %securebits42 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %arg2, ptr %securebits42, align 4
  %call43 = tail call i32 @commit_creds(ptr noundef nonnull %call38) #14
  br label %cleanup

sw.bb44:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %securebits45 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 12
  %21 = ptrtoint ptr %securebits45 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %securebits45, align 4
  br label %cleanup

do.end50:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %securebits55 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 12
  %23 = ptrtoint ptr %securebits55 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %securebits55, align 4
  %and56 = lshr i32 %24, 4
  %and56.lobit = and i32 %and56, 1
  br label %cleanup

sw.bb62:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %arg2)
  %cmp63 = icmp ugt i32 %arg2, 1
  br i1 %cmp63, label %sw.bb62.cleanup_crit_edge, label %do.end69

sw.bb62.cleanup_crit_edge:                        ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end69:                                         ; preds = %sw.bb62
  %securebits74 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 12
  %25 = ptrtoint ptr %securebits74 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %securebits74, align 4
  %and75 = and i32 %26, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end78, label %do.end69.cleanup_crit_edge

do.end69.cleanup_crit_edge:                       ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end78:                                         ; preds = %do.end69
  %call79 = tail call ptr @prepare_creds() #14
  %tobool80.not = icmp eq ptr %call79, null
  br i1 %tobool80.not, label %if.end78.cleanup_crit_edge, label %if.end82

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end82:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg2)
  %tobool83.not = icmp eq i32 %arg2, 0
  %securebits86 = getelementptr inbounds %struct.cred, ptr %call79, i32 0, i32 12
  %27 = ptrtoint ptr %securebits86 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %securebits86, align 4
  %and87 = and i32 %28, -17
  %masksel = select i1 %tobool83.not, i32 0, i32 16
  %and87.sink = or i32 %and87, %masksel
  store i32 %and87.sink, ptr %securebits86, align 4
  %call89 = tail call i32 @commit_creds(ptr noundef nonnull %call79) #14
  br label %cleanup

sw.bb90:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %arg2)
  %cmp91 = icmp eq i32 %arg2, 4
  br i1 %cmp91, label %if.then92, label %land.end

if.then92:                                        ; preds = %sw.bb90
  %or93 = or i32 %arg5, %arg4
  %or94 = or i32 %or93, %arg3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or94)
  %tobool95.not = icmp eq i32 %or94, 0
  br i1 %tobool95.not, label %if.end97, label %if.then92.cleanup_crit_edge

if.then92.cleanup_crit_edge:                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end97:                                         ; preds = %if.then92
  %call98 = tail call ptr @prepare_creds() #14
  %tobool99.not = icmp eq ptr %call98, null
  br i1 %tobool99.not, label %if.end97.cleanup_crit_edge, label %do.body102

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body102:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #16
  %cap_ambient = getelementptr inbounds %struct.cred, ptr %call98, i32 0, i32 17
  call void @__asan_loadN_noabort(i32 ptrtoint (ptr @__cap_empty_set to i32), i32 8)
  %29 = load i64, ptr @__cap_empty_set, align 4
  %30 = ptrtoint ptr %cap_ambient to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %29, ptr %cap_ambient, align 4
  %call105 = tail call i32 @commit_creds(ptr noundef nonnull %call98) #14
  br label %cleanup

land.end:                                         ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %arg3)
  %cmp108 = icmp ugt i32 %arg3, 40
  %lnot.ext110 = zext i1 %cmp108 to i32
  %or111 = or i32 %arg5, %arg4
  %or112 = or i32 %or111, %lnot.ext110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or112)
  %tobool113.not = icmp eq i32 %or112, 0
  br i1 %tobool113.not, label %if.end115, label %land.end.cleanup_crit_edge

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end115:                                        ; preds = %land.end
  %31 = zext i32 %arg2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %arg2, label %if.end115.cleanup_crit_edge [
    i32 1, label %do.end120
    i32 2, label %do.end147
    i32 3, label %if.end187.thread
  ]

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end120:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #16
  %cap_ambient125 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 17
  %shr127 = lshr i32 %arg3, 5
  %arrayidx128 = getelementptr [2 x i32], ptr %cap_ambient125, i32 0, i32 %shr127
  %32 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx128, align 4
  %and129 = and i32 %arg3, 31
  %34 = lshr i32 %33, %and129
  %35 = and i32 %34, 1
  br label %cleanup

do.end147:                                        ; preds = %if.end115
  %cap_permitted = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 14
  %shr153 = lshr i32 %arg3, 5
  %arrayidx154 = getelementptr [2 x i32], ptr %cap_permitted, i32 0, i32 %shr153
  %36 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx154, align 4
  %and155 = and i32 %arg3, 31
  %shl156 = shl nuw i32 1, %and155
  %and157 = and i32 %37, %shl156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157)
  %tobool158.not = icmp eq i32 %and157, 0
  br i1 %tobool158.not, label %do.end147.cleanup_crit_edge, label %do.end162

do.end147.cleanup_crit_edge:                      ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end162:                                        ; preds = %do.end147
  %cap_inheritable = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 13
  %arrayidx169 = getelementptr [2 x i32], ptr %cap_inheritable, i32 0, i32 %shr153
  %38 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx169, align 4
  %and172 = and i32 %39, %shl156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %do.end162.cleanup_crit_edge, label %do.end178

do.end162.cleanup_crit_edge:                      ; preds = %do.end162
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end178:                                        ; preds = %do.end162
  %securebits183 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 12
  %40 = ptrtoint ptr %securebits183 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %securebits183, align 4
  %and184 = and i32 %41, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %tobool185.not = icmp eq i32 %and184, 0
  br i1 %tobool185.not, label %if.end187, label %do.end178.cleanup_crit_edge

do.end178.cleanup_crit_edge:                      ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end187:                                        ; preds = %do.end178
  %call188 = tail call ptr @prepare_creds() #14
  %tobool189.not = icmp eq ptr %call188, null
  br i1 %tobool189.not, label %if.end187.cleanup_crit_edge, label %if.then193.critedge

if.end187.cleanup_crit_edge:                      ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end187.thread:                                 ; preds = %if.end115
  %call188265 = tail call ptr @prepare_creds() #14
  %tobool189.not266 = icmp eq ptr %call188265, null
  br i1 %tobool189.not266, label %if.end187.thread.cleanup_crit_edge, label %if.else201

if.end187.thread.cleanup_crit_edge:               ; preds = %if.end187.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then193.critedge:                              ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #16
  %cap_ambient196 = getelementptr inbounds %struct.cred, ptr %call188, i32 0, i32 17
  %arrayidx199 = getelementptr [2 x i32], ptr %cap_ambient196, i32 0, i32 %shr153
  %42 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx199, align 4
  %or200 = or i32 %43, %shl156
  store i32 %or200, ptr %arrayidx199, align 4
  br label %if.end210

if.else201:                                       ; preds = %if.end187.thread
  call void @__sanitizer_cov_trace_pc() #16
  %and202 = and i32 %arg3, 31
  %shl203 = shl nuw i32 1, %and202
  %neg204 = xor i32 %shl203, -1
  %cap_ambient205 = getelementptr inbounds %struct.cred, ptr %call188265, i32 0, i32 17
  %shr207 = lshr i32 %arg3, 5
  %arrayidx208 = getelementptr [2 x i32], ptr %cap_ambient205, i32 0, i32 %shr207
  %44 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx208, align 4
  %and209 = and i32 %45, %neg204
  store i32 %and209, ptr %arrayidx208, align 4
  br label %if.end210

if.end210:                                        ; preds = %if.else201, %if.then193.critedge
  %call188268 = phi ptr [ %call188265, %if.else201 ], [ %call188, %if.then193.critedge ]
  %call211 = tail call i32 @commit_creds(ptr noundef nonnull %call188268) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end210, %if.end187.thread.cleanup_crit_edge, %if.end187.cleanup_crit_edge, %do.end178.cleanup_crit_edge, %do.end162.cleanup_crit_edge, %do.end147.cleanup_crit_edge, %do.end120, %if.end115.cleanup_crit_edge, %land.end.cleanup_crit_edge, %do.body102, %if.end97.cleanup_crit_edge, %if.then92.cleanup_crit_edge, %if.end82, %if.end78.cleanup_crit_edge, %do.end69.cleanup_crit_edge, %sw.bb62.cleanup_crit_edge, %do.end50, %sw.bb44, %if.end41, %if.end37.cleanup_crit_edge, %cap_capable.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %if.end8.i, %if.end5.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %if.end, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call105, %do.body102 ], [ %35, %do.end120 ], [ %call211, %if.end210 ], [ %call89, %if.end82 ], [ %and56.lobit, %do.end50 ], [ %22, %sw.bb44 ], [ %call43, %if.end41 ], [ %10, %if.end ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -1, %cap_capable.exit.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %sw.bb6.cleanup_crit_edge ], [ -12, %if.end37.cleanup_crit_edge ], [ -22, %sw.bb62.cleanup_crit_edge ], [ -1, %do.end69.cleanup_crit_edge ], [ -12, %if.end78.cleanup_crit_edge ], [ -22, %if.then92.cleanup_crit_edge ], [ -12, %if.end97.cleanup_crit_edge ], [ -22, %land.end.cleanup_crit_edge ], [ -22, %if.end115.cleanup_crit_edge ], [ -1, %do.end178.cleanup_crit_edge ], [ -1, %do.end162.cleanup_crit_edge ], [ -1, %do.end147.cleanup_crit_edge ], [ -12, %if.end187.cleanup_crit_edge ], [ -38, %entry.cleanup_crit_edge ], [ %call11.i, %if.end8.i ], [ -1, %sw.bb4.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ], [ -12, %if.end5.i.cleanup_crit_edge ], [ -12, %if.end187.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_creds() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @commit_creds(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cap_vm_enough_memory(ptr nocapture readnone %mm, i32 %pages) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !93) #14
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
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns.i, align 4
  %cmp24.i = icmp eq ptr %7, @init_user_ns
  br i1 %cmp24.i, label %entry.cap_capable.exit_crit_edge, label %if.end.lr.ph.i

entry.cap_capable.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cap_capable.exit

if.end.lr.ph.i:                                   ; preds = %entry
  %level4.i = getelementptr inbounds %struct.user_namespace, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %level4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %level4.i, align 4
  %euid.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.end7.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %ns.025.i = phi ptr [ @init_user_ns, %if.end.lr.ph.i ], [ %13, %if.end7.i.if.end.i_crit_edge ]
  %level.i = getelementptr inbounds %struct.user_namespace, ptr %ns.025.i, i32 0, i32 4
  %10 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %level.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp5.not.i = icmp sgt i32 %11, %9
  br i1 %cmp5.not.i, label %if.end7.i, label %if.end.i.cap_capable.exit.thread4_crit_edge

if.end.i.cap_capable.exit.thread4_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cap_capable.exit.thread4

if.end7.i:                                        ; preds = %if.end.i
  %parent.i = getelementptr inbounds %struct.user_namespace, ptr %ns.025.i, i32 0, i32 3
  %12 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.i, align 4
  %cmp9.i = icmp eq ptr %13, %7
  br i1 %cmp9.i, label %land.lhs.true.i, label %if.end7.i.if.end.i_crit_edge

if.end7.i.if.end.i_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end7.i
  %owner.i = getelementptr inbounds %struct.user_namespace, ptr %ns.025.i, i32 0, i32 5
  %14 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack.i = load i32, ptr %owner.i, align 4
  %15 = ptrtoint ptr %euid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack23.i = load i32, ptr %euid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i, i32 %.unpack23.i)
  %cmp.i.i = icmp eq i32 %.unpack.i, %.unpack23.i
  br i1 %cmp.i.i, label %land.lhs.true.i.cap_capable.exit.thread_crit_edge, label %land.lhs.true.i.cap_capable.exit_crit_edge

land.lhs.true.i.cap_capable.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cap_capable.exit

land.lhs.true.i.cap_capable.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cap_capable.exit.thread

cap_capable.exit:                                 ; preds = %land.lhs.true.i.cap_capable.exit_crit_edge, %entry.cap_capable.exit_crit_edge
  %cap_effective.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 15
  %16 = ptrtoint ptr %cap_effective.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cap_effective.i, align 4
  %18 = and i32 %17, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not = icmp eq i32 %18, 0
  br i1 %cmp.not, label %cap_capable.exit.cap_capable.exit.thread4_crit_edge, label %cap_capable.exit.cap_capable.exit.thread_crit_edge

cap_capable.exit.cap_capable.exit.thread_crit_edge: ; preds = %cap_capable.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cap_capable.exit.thread

cap_capable.exit.cap_capable.exit.thread4_crit_edge: ; preds = %cap_capable.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cap_capable.exit.thread4

cap_capable.exit.thread:                          ; preds = %cap_capable.exit.cap_capable.exit.thread_crit_edge, %land.lhs.true.i.cap_capable.exit.thread_crit_edge
  br label %cap_capable.exit.thread4

cap_capable.exit.thread4:                         ; preds = %cap_capable.exit.thread, %cap_capable.exit.cap_capable.exit.thread4_crit_edge, %if.end.i.cap_capable.exit.thread4_crit_edge
  %19 = phi i32 [ 1, %cap_capable.exit.thread ], [ 0, %cap_capable.exit.cap_capable.exit.thread4_crit_edge ], [ 0, %if.end.i.cap_capable.exit.thread4_crit_edge ]
  ret i32 %19
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cap_mmap_addr(i32 noundef %addr) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dac_mmap_min_addr to i32))
  %0 = load i32, ptr @dac_mmap_min_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %addr)
  %cmp = icmp ugt i32 %0, %addr
  br i1 %cmp, label %do.end, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

do.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !93) #14
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
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 25
  %7 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %user_ns.i, align 4
  %cmp24.i = icmp eq ptr %8, @init_user_ns
  br i1 %cmp24.i, label %do.end.cap_capable.exit_crit_edge, label %if.end.lr.ph.i

do.end.cap_capable.exit_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cap_capable.exit

if.end.lr.ph.i:                                   ; preds = %do.end
  %level4.i = getelementptr inbounds %struct.user_namespace, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %level4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %level4.i, align 4
  %euid.i = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.end7.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %ns.025.i = phi ptr [ @init_user_ns, %if.end.lr.ph.i ], [ %14, %if.end7.i.if.end.i_crit_edge ]
  %level.i = getelementptr inbounds %struct.user_namespace, ptr %ns.025.i, i32 0, i32 4
  %11 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %level.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %10)
  %cmp5.not.i = icmp sgt i32 %12, %10
  br i1 %cmp5.not.i, label %if.end7.i, label %if.end.i.if.end6_crit_edge

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.end7.i:                                        ; preds = %if.end.i
  %parent.i = getelementptr inbounds %struct.user_namespace, ptr %ns.025.i, i32 0, i32 3
  %13 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i, align 4
  %cmp9.i = icmp eq ptr %14, %8
  br i1 %cmp9.i, label %land.lhs.true.i, label %if.end7.i.if.end.i_crit_edge

if.end7.i.if.end.i_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end7.i
  %owner.i = getelementptr inbounds %struct.user_namespace, ptr %ns.025.i, i32 0, i32 5
  %15 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack.i = load i32, ptr %owner.i, align 4
  %16 = ptrtoint ptr %euid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack23.i = load i32, ptr %euid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i, i32 %.unpack23.i)
  %cmp.i.i = icmp eq i32 %.unpack.i, %.unpack23.i
  br i1 %cmp.i.i, label %land.lhs.true.i.if.then3_crit_edge, label %land.lhs.true.i.cap_capable.exit_crit_edge

land.lhs.true.i.cap_capable.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cap_capable.exit

land.lhs.true.i.if.then3_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then3

cap_capable.exit:                                 ; preds = %land.lhs.true.i.cap_capable.exit_crit_edge, %do.end.cap_capable.exit_crit_edge
  %cap_effective.i = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 15
  %17 = ptrtoint ptr %cap_effective.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cap_effective.i, align 4
  %19 = and i32 %18, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp2.not = icmp eq i32 %19, 0
  br i1 %cmp2.not, label %cap_capable.exit.if.end6_crit_edge, label %cap_capable.exit.if.then3_crit_edge

cap_capable.exit.if.then3_crit_edge:              ; preds = %cap_capable.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then3

cap_capable.exit.if.end6_crit_edge:               ; preds = %cap_capable.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then3:                                         ; preds = %cap_capable.exit.if.then3_crit_edge, %land.lhs.true.i.if.then3_crit_edge
  %flags = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 3
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %or = or i32 %21, 256
  store i32 %or, ptr %flags, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %cap_capable.exit.if.end6_crit_edge, %if.end.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  %ret.0 = phi i32 [ 0, %if.then3 ], [ -1, %cap_capable.exit.if.end6_crit_edge ], [ 0, %entry.if.end6_crit_edge ], [ -1, %if.end.i.if.end6_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cap_mmap_file(ptr nocapture readnone %file, i32 %reqprot, i32 %prot, i32 %flags) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @capability_init() #9 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @security_add_hooks(ptr noundef nonnull @capability_hooks, i32 noundef 18, ptr noundef nonnull @.str.5) #14
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mnt_may_suid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @current_in_userns(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_add_hooks(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !58, !59, !61, !63, !65, !67, !68, !69, !70, !72, !74, !76, !78, !79, !80, !81, !83, !85, !87, !89, !91}
!llvm.named.register.sp = !{!93}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../security/commoncap.c", i32 141, i32 9}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../security/commoncap.c", i32 142, i32 15}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../security/commoncap.c", i32 177, i32 9}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../security/commoncap.c", i32 178, i32 15}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../security/commoncap.c", i32 207, i32 9}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/commoncap.c", i32 301, i32 40}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../security/commoncap.c", i32 392, i32 19}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../security/commoncap.c", i32 426, i32 25}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../security/commoncap.c", i32 548, i32 35}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../security/commoncap.c", i32 894, i32 27}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../security/commoncap.c", i32 1001, i32 20}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../security/commoncap.c", i32 1137, i32 8}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../security/commoncap.c", i32 1148, i32 8}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../security/commoncap.c", i32 1274, i32 27}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../security/commoncap.c", i32 1310, i32 23}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../security/commoncap.c", i32 1311, i32 9}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../security/commoncap.c", i32 1335, i32 12}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../security/commoncap.c", i32 1340, i32 7}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../security/commoncap.c", i32 1368, i32 13}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../security/commoncap.c", i32 1374, i32 10}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../security/commoncap.c", i32 1375, i32 10}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../security/commoncap.c", i32 1377, i32 9}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../security/commoncap.c", i32 1410, i32 18}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../security/commoncap.c", i32 1432, i32 21}
!50 = !{ptr @__lsm_capability, !51, !"__lsm_capability", i1 false, i1 false}
!51 = !{!"../security/commoncap.c", i32 1477, i32 1}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!54 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!58 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../security/commoncap.c", i32 224, i32 18}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../security/commoncap.c", i32 224, i32 34}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../security/commoncap.c", i32 338, i32 12}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../security/commoncap.c", i32 755, i32 4}
!67 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @get_file_caps._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @get_file_caps._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../security/commoncap.c", i32 797, i32 27}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../security/commoncap.c", i32 771, i32 52}
!74 = distinct !{null, !75, !"warned", i1 false, i1 false}
!75 = !{!"../security/commoncap.c", i32 42, i32 13}
!76 = !{ptr @.str.22, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../security/commoncap.c", i32 44, i32 3}
!78 = !{ptr @.str.23, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @warn_setuid_and_fcaps_mixed._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @warn_setuid_and_fcaps_mixed._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../security/commoncap.c", i32 1100, i32 8}
!83 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!84 = !{!"../security/commoncap.c", i32 1183, i32 27}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../security/commoncap.c", i32 1184, i32 6}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../security/commoncap.c", i32 1185, i32 32}
!89 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!90 = !{!"../security/commoncap.c", i32 1244, i32 18}
!91 = !{ptr @capability_hooks, !92, !"capability_hooks", i1 false, i1 false}
!92 = !{!"../security/commoncap.c", i32 1449, i32 34}
!93 = !{!"sp"}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{i64 2149347824}
!104 = !{i64 2149348090}
!105 = !{!"branch_weights", i32 2000, i32 1}
!106 = !{i64 2153044299}
