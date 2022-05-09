; ModuleID = '/llk/IR_all_yes/security/tomoyo/condition.c_pt.bc'
source_filename = "../security/tomoyo/condition.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.4 }
%union.anon.4 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.14, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tomoyo_shared_acl_head = type { %struct.list_head, %struct.atomic_t }
%struct.tomoyo_condition = type { %struct.tomoyo_shared_acl_head, i32, i16, i16, i16, i16, i16, i8, ptr }
%struct.tomoyo_argv = type { i32, ptr, i8 }
%struct.tomoyo_envp = type { ptr, ptr, i8 }
%struct.tomoyo_number_union = type { [2 x i32], ptr, [2 x i8] }
%struct.tomoyo_name_union = type { ptr, ptr }
%struct.tomoyo_condition_element = type { i8, i8, i8 }
%struct.tomoyo_obj_info = type { i8, [4 x i8], %struct.path, %struct.path, [4 x %struct.tomoyo_mini_stat], ptr }
%struct.path = type { ptr, ptr }
%struct.tomoyo_mini_stat = type { %struct.kuid_t, %struct.kgid_t, i32, i16, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.128, %struct.list_head, %struct.list_head, %union.anon.129 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.126 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%union.anon.128 = type { %struct.list_head }
%union.anon.129 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.120, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.121, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.122, ptr, %struct.address_space, %struct.list_head, %union.anon.125, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.120 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.121 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.122 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.125 = type { ptr }
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
%struct.tomoyo_path_info = type { ptr, i32, i16, i8, i8 }
%struct.tomoyo_request_info = type { ptr, ptr, ptr, %union.anon.146, ptr, i8, i8, i8, i8, i8, i8 }
%union.anon.146 = type { %struct.anon.149 }
%struct.anon.149 = type { ptr, i32, i32, i32, i8 }
%struct.tomoyo_execve = type { %struct.tomoyo_request_info, %struct.tomoyo_obj_info, ptr, ptr, %struct.tomoyo_page_dump, ptr }
%struct.tomoyo_page_dump = type { ptr, ptr }
%struct.linux_binprm = type { ptr, i32, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rlimit, [256 x i8] }
%struct.rlimit = type { i32, i32 }
%struct.file = type { %union.anon.130, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.130 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.110, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.42 }
%struct.llist_node = type { ptr }
%union.anon.42 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.44 }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.110 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.29 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.29 = type { %struct.callback_head }

@tomoyo_condition_list = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @tomoyo_condition_list, ptr @tomoyo_condition_list }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"grant_log\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"exec.argv[\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"exec.envp[\22\00", [20 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"keep\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"initialize\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"child\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"parent\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"/\00", [30 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@tomoyo_condition_keyword = external dso_local local_unnamed_addr constant [59 x ptr], align 4
@tomoyo_policy_lock = external dso_local global %struct.mutex, align 4
@tomoyo_sys_getppid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"security/tomoyo/common.h\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@switch.table.tomoyo_condition = internal constant { [26 x i32], [56 x i8] } { [26 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 7, i64 0, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 8, i64 31, i64 32]
@__sancov_gen_cov_switch_values.26 = internal global [34 x i64] [i64 32, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 60]
@__sancov_gen_cov_switch_values.27 = internal global [28 x i64] [i64 26, i64 8, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58]
@__sancov_gen_cov_switch_values.28 = internal global [6 x i64] [i64 4, i64 8, i64 38, i64 47, i64 54, i64 58]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 8, i64 38, i64 47, i64 54, i64 58]
@___asan_gen_.30 = private unnamed_addr constant [22 x i8] c"tomoyo_condition_list\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 12, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 536, i32 10 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 550, i32 26 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 555, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 557, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 564, i32 27 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 579, i32 27 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 469, i32 51 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 470, i32 17 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 470, i32 47 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 471, i32 17 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 471, i32 42 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 485, i32 9 }
@___asan_gen_.70 = private constant [31 x i8] c"../security/tomoyo/condition.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 333, i32 21 }
@___asan_gen_.76 = private unnamed_addr constant [28 x i8] c"../security/tomoyo/common.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 1139, i32 22 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 695, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 723, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [30 x i8] c"switch.table.tomoyo_condition\00", align 1
@llvm.compiler.used = appending global [20 x ptr] [ptr @tomoyo_condition_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @switch.table.tomoyo_condition], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_condition_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tomoyo_condition to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tomoyo_get_condition(ptr noundef %param) local_unnamed_addr #0 align 64 {
entry:
  %left.addr.i = alloca ptr, align 4
  %e.sroa.0 = alloca %struct.tomoyo_shared_acl_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %e.sroa.0)
  %0 = call ptr @memset(ptr %e.sroa.0, i32 0, i32 12)
  %1 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %param, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %4)
  %cmp.i = icmp eq i8 %4, 60
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call ptr @tomoyo_get_domainname(ptr noundef %param) #9
  br label %done.i

if.end.i:                                         ; preds = %entry
  %call2.i = tail call ptr @strchr(ptr noundef %2, i32 noundef 32) #9
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then3.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call2.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %call2.i, align 1
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %call5.i = tail call zeroext i1 @tomoyo_correct_path(ptr noundef %2) #9
  br i1 %call5.i, label %if.end4.i.lor.end.i_crit_edge, label %lor.lhs.false.i

if.end4.i.lor.end.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end.i

lor.lhs.false.i:                                  ; preds = %if.end4.i
  %call7.i = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(5) @.str.13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %lor.lhs.false.i.lor.end.i_crit_edge, label %lor.lhs.false9.i

lor.lhs.false.i.lor.end.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end.i

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false.i
  %call10.i = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(11) @.str.14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %lor.lhs.false9.i.lor.end.i_crit_edge, label %lor.lhs.false12.i

lor.lhs.false9.i.lor.end.i_crit_edge:             ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end.i

lor.lhs.false12.i:                                ; preds = %lor.lhs.false9.i
  %call13.i = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(6) @.str.15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %lor.lhs.false12.i.lor.end.i_crit_edge, label %lor.lhs.false15.i

lor.lhs.false12.i.lor.end.i_crit_edge:            ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end.i

lor.lhs.false15.i:                                ; preds = %lor.lhs.false12.i
  %call16.i = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(6) @.str.16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %lor.lhs.false15.i.lor.end.i_crit_edge, label %lor.rhs.i

lor.lhs.false15.i.lor.end.i_crit_edge:            ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #11
  %call18.i = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(7) @.str.17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %lor.lhs.false15.i.lor.end.i_crit_edge, %lor.lhs.false12.i.lor.end.i_crit_edge, %lor.lhs.false9.i.lor.end.i_crit_edge, %lor.lhs.false.i.lor.end.i_crit_edge, %if.end4.i.lor.end.i_crit_edge
  %6 = phi i1 [ true, %lor.lhs.false15.i.lor.end.i_crit_edge ], [ true, %lor.lhs.false12.i.lor.end.i_crit_edge ], [ true, %lor.lhs.false9.i.lor.end.i_crit_edge ], [ true, %lor.lhs.false.i.lor.end.i_crit_edge ], [ true, %if.end4.i.lor.end.i_crit_edge ], [ %tobool19.not.i, %lor.rhs.i ]
  br i1 %tobool.not.i, label %lor.end.i.if.end22.i_crit_edge, label %if.then21.i

lor.end.i.if.end22.i_crit_edge:                   ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.then21.i:                                      ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 32, ptr %call2.i, align 1
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then21.i, %lor.end.i.if.end22.i_crit_edge
  br i1 %6, label %if.end25.i, label %if.end22.i.tomoyo_get_transit_preference.exit_crit_edge

if.end22.i.tomoyo_get_transit_preference.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_get_transit_preference.exit

if.end25.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %call26.i = tail call ptr @tomoyo_read_token(ptr noundef %param) #9
  %call27.i = tail call ptr @tomoyo_get_name(ptr noundef %call26.i) #9
  br label %done.i

done.i:                                           ; preds = %if.end25.i, %if.then.i
  %call27.sink.i = phi ptr [ %call27.i, %if.end25.i ], [ %call.i, %if.then.i ]
  %tobool30.not.i = icmp eq ptr %call27.sink.i, null
  br i1 %tobool30.not.i, label %done.i.tomoyo_get_transit_preference.exit_crit_edge, label %if.then31.i

done.i.tomoyo_get_transit_preference.exit_crit_edge: ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_get_transit_preference.exit

if.then31.i:                                      ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %param, align 4
  br label %tomoyo_get_transit_preference.exit

tomoyo_get_transit_preference.exit:               ; preds = %if.then31.i, %done.i.tomoyo_get_transit_preference.exit_crit_edge, %if.end22.i.tomoyo_get_transit_preference.exit_crit_edge
  %e.sroa.51476.0 = phi ptr [ null, %done.i.tomoyo_get_transit_preference.exit_crit_edge ], [ %call27.sink.i, %if.then31.i ], [ null, %if.end22.i.tomoyo_get_transit_preference.exit_crit_edge ]
  %retval.0.i = phi ptr [ @.str.18, %done.i.tomoyo_get_transit_preference.exit_crit_edge ], [ %9, %if.then31.i ], [ %2, %if.end22.i.tomoyo_get_transit_preference.exit_crit_edge ]
  %call2 = tail call i32 @strlen(ptr noundef %retval.0.i) #13
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 %call2
  %cmp261647 = icmp ult ptr %retval.0.i, %add.ptr
  br label %rerun

rerun:                                            ; preds = %rerun.backedge, %tomoyo_get_transit_preference.exit
  %e.sroa.5.0 = phi i16 [ 0, %tomoyo_get_transit_preference.exit ], [ %e.sroa.5.1.lcssa, %rerun.backedge ]
  %e.sroa.20.0 = phi i16 [ 0, %tomoyo_get_transit_preference.exit ], [ %e.sroa.20.1.lcssa, %rerun.backedge ]
  %e.sroa.31.0 = phi i16 [ 0, %tomoyo_get_transit_preference.exit ], [ %e.sroa.31.1.lcssa, %rerun.backedge ]
  %e.sroa.38.0 = phi i16 [ 0, %tomoyo_get_transit_preference.exit ], [ %e.sroa.38.1.lcssa, %rerun.backedge ]
  %e.sroa.45.0 = phi i16 [ 0, %tomoyo_get_transit_preference.exit ], [ %e.sroa.45.1.lcssa, %rerun.backedge ]
  %e.sroa.51476.1 = phi ptr [ %e.sroa.51476.0, %tomoyo_get_transit_preference.exit ], [ null, %rerun.backedge ]
  %entry1.0 = phi ptr [ null, %tomoyo_get_transit_preference.exit ], [ %call9.i.i447, %rerun.backedge ]
  %condp.0 = phi ptr [ null, %tomoyo_get_transit_preference.exit ], [ %add.ptr248, %rerun.backedge ]
  %numbers_p.0 = phi ptr [ null, %tomoyo_get_transit_preference.exit ], [ %add.ptr251, %rerun.backedge ]
  %names_p.0 = phi ptr [ null, %tomoyo_get_transit_preference.exit ], [ %add.ptr254, %rerun.backedge ]
  %argv.0 = phi ptr [ null, %tomoyo_get_transit_preference.exit ], [ %add.ptr257, %rerun.backedge ]
  %envp.0 = phi ptr [ null, %tomoyo_get_transit_preference.exit ], [ %add.ptr260, %rerun.backedge ]
  %10 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %retval.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not621 = icmp eq i8 %11, 0
  br i1 %tobool.not621, label %rerun.do.end192_crit_edge, label %if.end.lr.ph

rerun.do.end192_crit_edge:                        ; preds = %rerun
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end192

if.end.lr.ph:                                     ; preds = %rerun
  %tobool31.not = icmp eq ptr %entry1.0, null
  %grant_log = getelementptr inbounds %struct.tomoyo_condition, ptr %entry1.0, i32 0, i32 7
  br label %if.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.end.lr.ph
  %pos.0641 = phi ptr [ %retval.0.i, %if.end.lr.ph ], [ %pos.1, %cleanup.if.end_crit_edge ]
  %envp.1639 = phi ptr [ %envp.0, %if.end.lr.ph ], [ %envp.3, %cleanup.if.end_crit_edge ]
  %argv.1636 = phi ptr [ %argv.0, %if.end.lr.ph ], [ %argv.3, %cleanup.if.end_crit_edge ]
  %names_p.1633 = phi ptr [ %names_p.0, %if.end.lr.ph ], [ %names_p.3, %cleanup.if.end_crit_edge ]
  %numbers_p.1632 = phi ptr [ %numbers_p.0, %if.end.lr.ph ], [ %numbers_p.5, %cleanup.if.end_crit_edge ]
  %condp.1631 = phi ptr [ %condp.0, %if.end.lr.ph ], [ %condp.2, %cleanup.if.end_crit_edge ]
  %e.sroa.45.1629 = phi i16 [ %e.sroa.45.0, %if.end.lr.ph ], [ %e.sroa.45.3, %cleanup.if.end_crit_edge ]
  %e.sroa.38.1627 = phi i16 [ %e.sroa.38.0, %if.end.lr.ph ], [ %e.sroa.38.3, %cleanup.if.end_crit_edge ]
  %e.sroa.31.1625 = phi i16 [ %e.sroa.31.0, %if.end.lr.ph ], [ %e.sroa.31.3, %cleanup.if.end_crit_edge ]
  %e.sroa.20.1623 = phi i16 [ %e.sroa.20.0, %if.end.lr.ph ], [ %e.sroa.20.4, %cleanup.if.end_crit_edge ]
  %e.sroa.5.1622 = phi i16 [ %e.sroa.5.0, %if.end.lr.ph ], [ %e.sroa.5.4, %cleanup.if.end_crit_edge ]
  %call3 = call ptr @strchr(ptr noundef %pos.0641, i32 noundef 32)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %call3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %call3, align 1
  %add.ptr6 = getelementptr i8, ptr %call3, i32 1
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %pos.1 = phi ptr [ %add.ptr6, %if.then5 ], [ @.str, %if.end.if.end7_crit_edge ]
  %call8 = call ptr @strchr(ptr noundef %pos.0641, i32 noundef 61)
  %tobool9.not = icmp eq ptr %call8, null
  %cmp = icmp eq ptr %call8, %pos.0641
  %or.cond = or i1 %tobool9.not, %cmp
  br i1 %or.cond, label %if.end7.do.end284_crit_edge, label %if.end11

if.end7.do.end284_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end284

if.end11:                                         ; preds = %if.end7
  %add.ptr12 = getelementptr i8, ptr %call8, i32 -1
  %13 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %14)
  %cmp13 = icmp eq i8 %14, 33
  %frombool = zext i1 %cmp13 to i8
  %incdec.ptr = getelementptr i8, ptr %call8, i32 1
  br i1 %cmp13, label %if.end11.do.end_crit_edge, label %if.else18

if.end11.do.end_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.else18:                                        ; preds = %if.end11
  %15 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %incdec.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %16)
  %cmp21.not = icmp eq i8 %16, 61
  br i1 %cmp21.not, label %if.else18.do.end284_crit_edge, label %if.else18.do.end_crit_edge

if.else18.do.end_crit_edge:                       ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.else18.do.end284_crit_edge:                    ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end284

do.end:                                           ; preds = %if.else18.do.end_crit_edge, %if.end11.do.end_crit_edge
  %add.ptr12.sink = phi ptr [ %add.ptr12, %if.end11.do.end_crit_edge ], [ %call8, %if.else18.do.end_crit_edge ]
  %17 = ptrtoint ptr %add.ptr12.sink to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %add.ptr12.sink, align 1
  %call28 = call i32 @strcmp(ptr noundef %pos.0641, ptr noundef nonnull dereferenceable(10) @.str.1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then30, label %if.end55

if.then30:                                        ; preds = %do.end
  br i1 %tobool31.not, label %if.then30.cleanup_crit_edge, label %if.then32

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then32:                                        ; preds = %if.then30
  br i1 %cmp13, label %if.then32.if.then286_crit_edge, label %lor.lhs.false35

if.then32.if.then286_crit_edge:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then286

lor.lhs.false35:                                  ; preds = %if.then32
  %18 = ptrtoint ptr %grant_log to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %grant_log, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp37.not = icmp eq i8 %19, 0
  br i1 %cmp37.not, label %if.else40, label %lor.lhs.false35.if.then286_crit_edge

lor.lhs.false35.if.then286_crit_edge:             ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then286

if.else40:                                        ; preds = %lor.lhs.false35
  %call41 = call i32 @strcmp(ptr noundef %incdec.ptr, ptr noundef nonnull dereferenceable(4) @.str.2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then43, label %if.else45

if.then43:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %grant_log to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %grant_log, align 2
  br label %cleanup

if.else45:                                        ; preds = %if.else40
  %call46 = call i32 @strcmp(ptr noundef %incdec.ptr, ptr noundef nonnull dereferenceable(3) @.str.3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then48, label %if.else45.if.then286_crit_edge

if.else45.if.then286_crit_edge:                   ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then286

if.then48:                                        ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %grant_log to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %grant_log, align 2
  br label %cleanup

if.end55:                                         ; preds = %do.end
  %call56 = call i32 @strncmp(ptr noundef %pos.0641, ptr noundef nonnull dereferenceable(11) @.str.4, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then58, label %if.end75

if.then58:                                        ; preds = %if.end55
  %tobool59.not = icmp eq ptr %argv.1636, null
  br i1 %tobool59.not, label %if.then60, label %if.else62

if.then60:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add i16 %e.sroa.38.1627, 1
  %inc61 = add i16 %e.sroa.5.1622, 1
  br label %store_value

if.else62:                                        ; preds = %if.then58
  %dec = add i16 %e.sroa.38.1627, -1
  %dec65 = add i16 %e.sroa.5.1622, -1
  %is_not67 = getelementptr inbounds %struct.tomoyo_argv, ptr %argv.1636, i32 0, i32 2
  %22 = ptrtoint ptr %is_not67 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool, ptr %is_not67, align 4
  %add.ptr69 = getelementptr i8, ptr %pos.0641, i32 10
  %incdec.ptr70 = getelementptr %struct.tomoyo_argv, ptr %argv.1636, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %left.addr.i)
  %23 = ptrtoint ptr %left.addr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr69, ptr %left.addr.i, align 4
  %call.i383 = call zeroext i8 @tomoyo_parse_ulong(ptr noundef nonnull %argv.1636, ptr noundef nonnull %left.addr.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call.i383)
  %cmp.not.i = icmp eq i8 %call.i383, 1
  br i1 %cmp.not.i, label %lor.lhs.false.i384, label %if.else62.tomoyo_parse_argv.exit.thread_crit_edge

if.else62.tomoyo_parse_argv.exit.thread_crit_edge: ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_parse_argv.exit.thread

lor.lhs.false.i384:                               ; preds = %if.else62
  %24 = ptrtoint ptr %left.addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %left.addr.i, align 4
  %incdec.ptr.i = getelementptr i8, ptr %25, i32 1
  store ptr %incdec.ptr.i, ptr %left.addr.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 93, i8 %27)
  %cmp3.not.i = icmp eq i8 %27, 93
  br i1 %cmp3.not.i, label %lor.lhs.false5.i, label %lor.lhs.false.i384.tomoyo_parse_argv.exit.thread_crit_edge

lor.lhs.false.i384.tomoyo_parse_argv.exit.thread_crit_edge: ; preds = %lor.lhs.false.i384
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_parse_argv.exit.thread

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i384
  %28 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %incdec.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i385 = icmp eq i8 %29, 0
  br i1 %tobool.not.i385, label %if.end.i386, label %lor.lhs.false5.i.tomoyo_parse_argv.exit.thread_crit_edge

lor.lhs.false5.i.tomoyo_parse_argv.exit.thread_crit_edge: ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_parse_argv.exit.thread

if.end.i386:                                      ; preds = %lor.lhs.false5.i
  %call.i.i = call i32 @strlen(ptr noundef %incdec.ptr) #12
  %add.ptr1.i.i = getelementptr i8, ptr %call8, i32 %call.i.i
  %cmp.i.i = icmp eq ptr %add.ptr1.i.i, %incdec.ptr
  br i1 %cmp.i.i, label %if.end.i386.tomoyo_parse_argv.exit.thread509_crit_edge, label %lor.lhs.false.i.i

if.end.i386.tomoyo_parse_argv.exit.thread509_crit_edge: ; preds = %if.end.i386
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_parse_argv.exit.thread509

lor.lhs.false.i.i:                                ; preds = %if.end.i386
  %incdec.ptr.i.i = getelementptr i8, ptr %call8, i32 2
  %30 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %incdec.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %31)
  %cmp2.not.i.i = icmp eq i8 %31, 34
  br i1 %cmp2.not.i.i, label %lor.lhs.false4.i.i, label %lor.lhs.false.i.i.tomoyo_parse_argv.exit.thread509_crit_edge

lor.lhs.false.i.i.tomoyo_parse_argv.exit.thread509_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_parse_argv.exit.thread509

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %32 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %33)
  %cmp6.not.i.i = icmp eq i8 %33, 34
  br i1 %cmp6.not.i.i, label %if.end.i.i, label %lor.lhs.false4.i.i.tomoyo_parse_argv.exit.thread509_crit_edge

lor.lhs.false4.i.i.tomoyo_parse_argv.exit.thread509_crit_edge: ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_parse_argv.exit.thread509

if.end.i.i:                                       ; preds = %lor.lhs.false4.i.i
  %34 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %add.ptr1.i.i, align 1
  %35 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %incdec.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.tomoyo_parse_argv.exit_crit_edge, label %land.lhs.true.i.i

if.end.i.i.tomoyo_parse_argv.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_parse_argv.exit

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %call9.i.i = call zeroext i1 @tomoyo_correct_word(ptr noundef %incdec.ptr.i.i) #9
  br i1 %call9.i.i, label %land.lhs.true.i.i.tomoyo_parse_argv.exit_crit_edge, label %land.lhs.true.i.i.tomoyo_parse_argv.exit.thread509_crit_edge

land.lhs.true.i.i.tomoyo_parse_argv.exit.thread509_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_parse_argv.exit.thread509

land.lhs.true.i.i.tomoyo_parse_argv.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_parse_argv.exit

tomoyo_parse_argv.exit.thread:                    ; preds = %lor.lhs.false5.i.tomoyo_parse_argv.exit.thread_crit_edge, %lor.lhs.false.i384.tomoyo_parse_argv.exit.thread_crit_edge, %if.else62.tomoyo_parse_argv.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %left.addr.i)
  br label %do.end284

tomoyo_parse_argv.exit.thread509:                 ; preds = %land.lhs.true.i.i.tomoyo_parse_argv.exit.thread509_crit_edge, %lor.lhs.false4.i.i.tomoyo_parse_argv.exit.thread509_crit_edge, %lor.lhs.false.i.i.tomoyo_parse_argv.exit.thread509_crit_edge, %if.end.i386.tomoyo_parse_argv.exit.thread509_crit_edge
  %value.i511 = getelementptr inbounds %struct.tomoyo_argv, ptr %argv.1636, i32 0, i32 1
  %37 = ptrtoint ptr %value.i511 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %value.i511, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %left.addr.i)
  br label %do.end284

tomoyo_parse_argv.exit:                           ; preds = %land.lhs.true.i.i.tomoyo_parse_argv.exit_crit_edge, %if.end.i.i.tomoyo_parse_argv.exit_crit_edge
  %call12.i.i = call ptr @tomoyo_get_name(ptr noundef %incdec.ptr.i.i) #9
  %value.i = getelementptr inbounds %struct.tomoyo_argv, ptr %argv.1636, i32 0, i32 1
  %38 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call12.i.i, ptr %value.i, align 4
  %cmp9.i.not = icmp eq ptr %call12.i.i, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %left.addr.i)
  br i1 %cmp9.i.not, label %tomoyo_parse_argv.exit.do.end284_crit_edge, label %tomoyo_parse_argv.exit.store_value_crit_edge

tomoyo_parse_argv.exit.store_value_crit_edge:     ; preds = %tomoyo_parse_argv.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %store_value

tomoyo_parse_argv.exit.do.end284_crit_edge:       ; preds = %tomoyo_parse_argv.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end284

if.end75:                                         ; preds = %if.end55
  %call76 = call i32 @strncmp(ptr noundef %pos.0641, ptr noundef nonnull dereferenceable(12) @.str.5, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then78, label %if.end75.for.body.i_crit_edge

if.end75.for.body.i_crit_edge:                    ; preds = %if.end75
  br label %for.body.i

if.then78:                                        ; preds = %if.end75
  %tobool79.not = icmp eq ptr %envp.1639, null
  br i1 %tobool79.not, label %if.then80, label %if.else84

if.then80:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  %inc81 = add i16 %e.sroa.45.1629, 1
  %inc83 = add i16 %e.sroa.5.1622, 1
  br label %store_value

if.else84:                                        ; preds = %if.then78
  %dec86 = add i16 %e.sroa.45.1629, -1
  %dec88 = add i16 %e.sroa.5.1622, -1
  %is_not90 = getelementptr inbounds %struct.tomoyo_envp, ptr %envp.1639, i32 0, i32 2
  %39 = ptrtoint ptr %is_not90 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %frombool, ptr %is_not90, align 4
  %add.ptr92 = getelementptr i8, ptr %pos.0641, i32 11
  %incdec.ptr93 = getelementptr %struct.tomoyo_envp, ptr %envp.1639, i32 1
  %call.i388 = call i32 @strlen(ptr noundef %add.ptr92) #12
  %add.ptr.i = getelementptr i8, ptr %pos.0641, i32 10
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %call.i388
  %incdec.ptr.i389 = getelementptr i8, ptr %add.ptr1.i, i32 -1
  %40 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %add.ptr1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 93, i8 %41)
  %cmp.not.i390 = icmp eq i8 %41, 93
  br i1 %cmp.not.i390, label %lor.lhs.false.i391, label %if.else84.do.end284_crit_edge

if.else84.do.end284_crit_edge:                    ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end284

lor.lhs.false.i391:                               ; preds = %if.else84
  %42 = ptrtoint ptr %incdec.ptr.i389 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %incdec.ptr.i389, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %43)
  %cmp4.not.i = icmp eq i8 %43, 34
  br i1 %cmp4.not.i, label %if.end.i392, label %lor.lhs.false.i391.do.end284_crit_edge

lor.lhs.false.i391.do.end284_crit_edge:           ; preds = %lor.lhs.false.i391
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end284

if.end.i392:                                      ; preds = %lor.lhs.false.i391
  %44 = ptrtoint ptr %incdec.ptr.i389 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %incdec.ptr.i389, align 1
  %call6.i = call zeroext i1 @tomoyo_correct_word(ptr noundef %add.ptr92) #9
  br i1 %call6.i, label %if.end8.i, label %if.end.i392.do.end284_crit_edge

if.end.i392.do.end284_crit_edge:                  ; preds = %if.end.i392
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end284

if.end8.i:                                        ; preds = %if.end.i392
  %call9.i = call ptr @tomoyo_get_name(ptr noundef %add.ptr92) #9
  %tobool.not.i393 = icmp eq ptr %call9.i, null
  br i1 %tobool.not.i393, label %if.end8.i.do.end284_crit_edge, label %if.end11.i

if.end8.i.do.end284_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end284

if.end11.i:                                       ; preds = %if.end8.i
  %call12.i = call i32 @strcmp(ptr noundef %incdec.ptr, ptr noundef nonnull dereferenceable(5) @.str.19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end11.i.tomoyo_parse_envp.exit_crit_edge, label %if.else.i

if.end11.i.tomoyo_parse_envp.exit_crit_edge:      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_parse_envp.exit

if.else.i:                                        ; preds = %if.end11.i
  %call.i.i394 = call i32 @strlen(ptr noundef %incdec.ptr) #12
  %add.ptr1.i.i396 = getelementptr i8, ptr %call8, i32 %call.i.i394
  %cmp.i.i397 = icmp eq ptr %add.ptr1.i.i396, %incdec.ptr
  br i1 %cmp.i.i397, label %if.else.i.tomoyo_put_name.exit.i_crit_edge, label %lor.lhs.false.i.i400

if.else.i.tomoyo_put_name.exit.i_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_put_name.exit.i

lor.lhs.false.i.i400:                             ; preds = %if.else.i
  %incdec.ptr.i.i398 = getelementptr i8, ptr %call8, i32 2
  %45 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %incdec.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %46)
  %cmp2.not.i.i399 = icmp eq i8 %46, 34
  br i1 %cmp2.not.i.i399, label %lor.lhs.false4.i.i402, label %lor.lhs.false.i.i400.tomoyo_put_name.exit.i_crit_edge

lor.lhs.false.i.i400.tomoyo_put_name.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i400
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_put_name.exit.i

lor.lhs.false4.i.i402:                            ; preds = %lor.lhs.false.i.i400
  %47 = ptrtoint ptr %add.ptr1.i.i396 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %add.ptr1.i.i396, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %48)
  %cmp6.not.i.i401 = icmp eq i8 %48, 34
  br i1 %cmp6.not.i.i401, label %if.end.i.i404, label %lor.lhs.false4.i.i402.tomoyo_put_name.exit.i_crit_edge

lor.lhs.false4.i.i402.tomoyo_put_name.exit.i_crit_edge: ; preds = %lor.lhs.false4.i.i402
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_put_name.exit.i

if.end.i.i404:                                    ; preds = %lor.lhs.false4.i.i402
  %49 = ptrtoint ptr %add.ptr1.i.i396 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %add.ptr1.i.i396, align 1
  %50 = ptrtoint ptr %incdec.ptr.i.i398 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %incdec.ptr.i.i398, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i.i403 = icmp eq i8 %51, 0
  br i1 %tobool.not.i.i403, label %if.end.i.i404.tomoyo_get_dqword.exit.i408_crit_edge, label %land.lhs.true.i.i406

if.end.i.i404.tomoyo_get_dqword.exit.i408_crit_edge: ; preds = %if.end.i.i404
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_get_dqword.exit.i408

land.lhs.true.i.i406:                             ; preds = %if.end.i.i404
  %call9.i.i405 = call zeroext i1 @tomoyo_correct_word(ptr noundef %incdec.ptr.i.i398) #9
  br i1 %call9.i.i405, label %land.lhs.true.i.i406.tomoyo_get_dqword.exit.i408_crit_edge, label %land.lhs.true.i.i406.tomoyo_put_name.exit.i_crit_edge

land.lhs.true.i.i406.tomoyo_put_name.exit.i_crit_edge: ; preds = %land.lhs.true.i.i406
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_put_name.exit.i

land.lhs.true.i.i406.tomoyo_get_dqword.exit.i408_crit_edge: ; preds = %land.lhs.true.i.i406
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_get_dqword.exit.i408

tomoyo_get_dqword.exit.i408:                      ; preds = %land.lhs.true.i.i406.tomoyo_get_dqword.exit.i408_crit_edge, %if.end.i.i404.tomoyo_get_dqword.exit.i408_crit_edge
  %call12.i.i407 = call ptr @tomoyo_get_name(ptr noundef %incdec.ptr.i.i398) #9
  %tobool16.not.i = icmp eq ptr %call12.i.i407, null
  br i1 %tobool16.not.i, label %tomoyo_get_dqword.exit.i408.tomoyo_put_name.exit.i_crit_edge, label %tomoyo_get_dqword.exit.i408.tomoyo_parse_envp.exit_crit_edge

tomoyo_get_dqword.exit.i408.tomoyo_parse_envp.exit_crit_edge: ; preds = %tomoyo_get_dqword.exit.i408
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_parse_envp.exit

tomoyo_get_dqword.exit.i408.tomoyo_put_name.exit.i_crit_edge: ; preds = %tomoyo_get_dqword.exit.i408
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_put_name.exit.i

tomoyo_put_name.exit.i:                           ; preds = %tomoyo_get_dqword.exit.i408.tomoyo_put_name.exit.i_crit_edge, %land.lhs.true.i.i406.tomoyo_put_name.exit.i_crit_edge, %lor.lhs.false4.i.i402.tomoyo_put_name.exit.i_crit_edge, %lor.lhs.false.i.i400.tomoyo_put_name.exit.i_crit_edge, %if.else.i.tomoyo_put_name.exit.i_crit_edge
  %users.i.i = getelementptr i8, ptr %call9.i, i32 -4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %users.i.i, i32 1, i32 3, i32 1) #9
  %52 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i, ptr %users.i.i, i32 1, ptr elementtype(i32) %users.i.i) #9, !srcloc !65
  br label %do.end284

tomoyo_parse_envp.exit:                           ; preds = %tomoyo_get_dqword.exit.i408.tomoyo_parse_envp.exit_crit_edge, %if.end11.i.tomoyo_parse_envp.exit_crit_edge
  %value.0.i = phi ptr [ %call12.i.i407, %tomoyo_get_dqword.exit.i408.tomoyo_parse_envp.exit_crit_edge ], [ null, %if.end11.i.tomoyo_parse_envp.exit_crit_edge ]
  %53 = ptrtoint ptr %envp.1639 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call9.i, ptr %envp.1639, align 4
  %value21.i = getelementptr inbounds %struct.tomoyo_envp, ptr %envp.1639, i32 0, i32 1
  %54 = ptrtoint ptr %value21.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %value.0.i, ptr %value21.i, align 4
  br label %store_value

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end75.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end75.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [59 x ptr], ptr @tomoyo_condition_keyword, i32 0, i32 %indvars.iv.i
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i, align 4
  %call.i410 = call i32 @strcmp(ptr noundef %pos.0641, ptr noundef %56) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i410)
  %tobool.not.i411 = icmp eq i32 %call.i410, 0
  br i1 %tobool.not.i411, label %tomoyo_condition_type.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 59
  br i1 %exitcond.not.i, label %for.inc.i.if.then106_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.then106_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then106

tomoyo_condition_type.exit:                       ; preds = %for.body.i
  %57 = trunc i32 %indvars.iv.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %57)
  %cmp104 = icmp eq i8 %57, 59
  br i1 %cmp104, label %tomoyo_condition_type.exit.if.then106_crit_edge, label %if.end122

tomoyo_condition_type.exit.if.then106_crit_edge:  ; preds = %tomoyo_condition_type.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then106

if.then106:                                       ; preds = %tomoyo_condition_type.exit.if.then106_crit_edge, %for.inc.i.if.then106_crit_edge
  %tobool107.not = icmp eq ptr %numbers_p.1632, null
  br i1 %tobool107.not, label %if.then108, label %if.else110

if.then108:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #11
  %inc109 = add i16 %e.sroa.20.1623, 1
  br label %if.end122.thread

if.else110:                                       ; preds = %if.then106
  %58 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %pos.0641, ptr %param, align 4
  %59 = ptrtoint ptr %pos.0641 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %pos.0641, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %60)
  %cmp114 = icmp eq i8 %60, 64
  br i1 %cmp114, label %if.else110.do.end284_crit_edge, label %lor.lhs.false116

if.else110.do.end284_crit_edge:                   ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end284

lor.lhs.false116:                                 ; preds = %if.else110
  %dec112 = add i16 %e.sroa.20.1623, -1
  %incdec.ptr117 = getelementptr %struct.tomoyo_number_union, ptr %numbers_p.1632, i32 1
  %call118 = call zeroext i1 @tomoyo_parse_number_union(ptr noundef %param, ptr noundef nonnull %numbers_p.1632) #9
  br i1 %call118, label %lor.lhs.false116.if.end122.thread_crit_edge, label %lor.lhs.false116.do.end284_crit_edge

lor.lhs.false116.do.end284_crit_edge:             ; preds = %lor.lhs.false116
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end284

lor.lhs.false116.if.end122.thread_crit_edge:      ; preds = %lor.lhs.false116
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122.thread

if.end122.thread:                                 ; preds = %lor.lhs.false116.if.end122.thread_crit_edge, %if.then108
  %e.sroa.20.2.ph = phi i16 [ %dec112, %lor.lhs.false116.if.end122.thread_crit_edge ], [ %inc109, %if.then108 ]
  %numbers_p.3.ph = phi ptr [ %incdec.ptr117, %lor.lhs.false116.if.end122.thread_crit_edge ], [ null, %if.then108 ]
  %left.0.ph = phi i8 [ 60, %lor.lhs.false116.if.end122.thread_crit_edge ], [ 59, %if.then108 ]
  %tobool123.not691 = icmp eq ptr %condp.1631, null
  %e.sroa.5.2.v692 = select i1 %tobool123.not691, i16 1, i16 -1
  %e.sroa.5.2693 = add i16 %e.sroa.5.2.v692, %e.sroa.5.1622
  br label %for.body.i438.preheader

if.end122:                                        ; preds = %tomoyo_condition_type.exit
  %tobool123.not = icmp eq ptr %condp.1631, null
  %e.sroa.5.2.v = select i1 %tobool123.not, i16 1, i16 -1
  %e.sroa.5.2 = add i16 %e.sroa.5.2.v, %e.sroa.5.1622
  %left.0.off = add i8 %57, -31
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %left.0.off)
  %switch = icmp ult i8 %left.0.off, 2
  br i1 %switch, label %if.then138, label %if.end122.for.body.i438.preheader_crit_edge

if.end122.for.body.i438.preheader_crit_edge:      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i438.preheader

for.body.i438.preheader:                          ; preds = %if.end122.for.body.i438.preheader_crit_edge, %if.end122.thread
  %e.sroa.5.2699 = phi i16 [ %e.sroa.5.2693, %if.end122.thread ], [ %e.sroa.5.2, %if.end122.for.body.i438.preheader_crit_edge ]
  %left.0698 = phi i8 [ %left.0.ph, %if.end122.thread ], [ %57, %if.end122.for.body.i438.preheader_crit_edge ]
  %numbers_p.3697 = phi ptr [ %numbers_p.3.ph, %if.end122.thread ], [ %numbers_p.1632, %if.end122.for.body.i438.preheader_crit_edge ]
  %e.sroa.20.2696 = phi i16 [ %e.sroa.20.2.ph, %if.end122.thread ], [ %e.sroa.20.1623, %if.end122.for.body.i438.preheader_crit_edge ]
  br label %for.body.i438

if.then138:                                       ; preds = %if.end122
  %tobool139.not = icmp eq ptr %names_p.1633, null
  br i1 %tobool139.not, label %if.then140, label %if.else142

if.then140:                                       ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #11
  %inc141 = add i16 %e.sroa.31.1625, 1
  br label %store_value

if.else142:                                       ; preds = %if.then138
  %dec144 = add i16 %e.sroa.31.1625, -1
  %61 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %incdec.ptr, ptr %param, align 4
  %incdec.ptr146 = getelementptr %struct.tomoyo_name_union, ptr %names_p.1633, i32 1
  %62 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %incdec.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %63)
  %cmp.i412 = icmp eq i8 %63, 64
  br i1 %cmp.i412, label %if.then.i414, label %if.end.i419

if.then.i414:                                     ; preds = %if.else142
  %call.i413 = call zeroext i1 @tomoyo_parse_name_union(ptr noundef %param, ptr noundef nonnull %names_p.1633) #9
  br i1 %call.i413, label %if.then.i414.store_value_crit_edge, label %if.then.i414.do.end284_crit_edge

if.then.i414.do.end284_crit_edge:                 ; preds = %if.then.i414
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end284

if.then.i414.store_value_crit_edge:               ; preds = %if.then.i414
  call void @__sanitizer_cov_trace_pc() #11
  br label %store_value

if.end.i419:                                      ; preds = %if.else142
  %call.i.i415 = call i32 @strlen(ptr noundef %incdec.ptr) #12
  %add.ptr1.i.i417 = getelementptr i8, ptr %call8, i32 %call.i.i415
  %cmp.i.i418 = icmp eq ptr %add.ptr1.i.i417, %incdec.ptr
  br i1 %cmp.i.i418, label %if.end.i419.tomoyo_parse_name_union_quoted.exit.thread_crit_edge, label %lor.lhs.false.i.i422

if.end.i419.tomoyo_parse_name_union_quoted.exit.thread_crit_edge: ; preds = %if.end.i419
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_parse_name_union_quoted.exit.thread

lor.lhs.false.i.i422:                             ; preds = %if.end.i419
  %incdec.ptr.i.i420 = getelementptr i8, ptr %call8, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %63)
  %cmp2.not.i.i421 = icmp eq i8 %63, 34
  br i1 %cmp2.not.i.i421, label %lor.lhs.false4.i.i424, label %lor.lhs.false.i.i422.tomoyo_parse_name_union_quoted.exit.thread_crit_edge

lor.lhs.false.i.i422.tomoyo_parse_name_union_quoted.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i422
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_parse_name_union_quoted.exit.thread

lor.lhs.false4.i.i424:                            ; preds = %lor.lhs.false.i.i422
  %64 = ptrtoint ptr %add.ptr1.i.i417 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %add.ptr1.i.i417, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %65)
  %cmp6.not.i.i423 = icmp eq i8 %65, 34
  br i1 %cmp6.not.i.i423, label %if.end.i.i426, label %lor.lhs.false4.i.i424.tomoyo_parse_name_union_quoted.exit.thread_crit_edge

lor.lhs.false4.i.i424.tomoyo_parse_name_union_quoted.exit.thread_crit_edge: ; preds = %lor.lhs.false4.i.i424
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_parse_name_union_quoted.exit.thread

if.end.i.i426:                                    ; preds = %lor.lhs.false4.i.i424
  %66 = ptrtoint ptr %add.ptr1.i.i417 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %add.ptr1.i.i417, align 1
  %67 = ptrtoint ptr %incdec.ptr.i.i420 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %incdec.ptr.i.i420, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i.i425 = icmp eq i8 %68, 0
  br i1 %tobool.not.i.i425, label %if.end.i.i426.tomoyo_parse_name_union_quoted.exit_crit_edge, label %land.lhs.true.i.i428

if.end.i.i426.tomoyo_parse_name_union_quoted.exit_crit_edge: ; preds = %if.end.i.i426
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_parse_name_union_quoted.exit

land.lhs.true.i.i428:                             ; preds = %if.end.i.i426
  %call9.i.i427 = call zeroext i1 @tomoyo_correct_word(ptr noundef %incdec.ptr.i.i420) #9
  br i1 %call9.i.i427, label %land.lhs.true.i.i428.tomoyo_parse_name_union_quoted.exit_crit_edge, label %land.lhs.true.i.i428.tomoyo_parse_name_union_quoted.exit.thread_crit_edge

land.lhs.true.i.i428.tomoyo_parse_name_union_quoted.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i428
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_parse_name_union_quoted.exit.thread

land.lhs.true.i.i428.tomoyo_parse_name_union_quoted.exit_crit_edge: ; preds = %land.lhs.true.i.i428
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_parse_name_union_quoted.exit

tomoyo_parse_name_union_quoted.exit.thread:       ; preds = %land.lhs.true.i.i428.tomoyo_parse_name_union_quoted.exit.thread_crit_edge, %lor.lhs.false4.i.i424.tomoyo_parse_name_union_quoted.exit.thread_crit_edge, %lor.lhs.false.i.i422.tomoyo_parse_name_union_quoted.exit.thread_crit_edge, %if.end.i419.tomoyo_parse_name_union_quoted.exit.thread_crit_edge
  %69 = ptrtoint ptr %names_p.1633 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %names_p.1633, align 4
  br label %do.end284

tomoyo_parse_name_union_quoted.exit:              ; preds = %land.lhs.true.i.i428.tomoyo_parse_name_union_quoted.exit_crit_edge, %if.end.i.i426.tomoyo_parse_name_union_quoted.exit_crit_edge
  %call12.i.i429 = call ptr @tomoyo_get_name(ptr noundef %incdec.ptr.i.i420) #9
  %70 = ptrtoint ptr %names_p.1633 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call12.i.i429, ptr %names_p.1633, align 4
  %cmp5.i.not = icmp eq ptr %call12.i.i429, null
  br i1 %cmp5.i.not, label %tomoyo_parse_name_union_quoted.exit.do.end284_crit_edge, label %tomoyo_parse_name_union_quoted.exit.store_value_crit_edge

tomoyo_parse_name_union_quoted.exit.store_value_crit_edge: ; preds = %tomoyo_parse_name_union_quoted.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %store_value

tomoyo_parse_name_union_quoted.exit.do.end284_crit_edge: ; preds = %tomoyo_parse_name_union_quoted.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end284

for.body.i438:                                    ; preds = %for.inc.i441.for.body.i438_crit_edge, %for.body.i438.preheader
  %indvars.iv.i434 = phi i32 [ %indvars.iv.next.i439, %for.inc.i441.for.body.i438_crit_edge ], [ 0, %for.body.i438.preheader ]
  %arrayidx.i435 = getelementptr [59 x ptr], ptr @tomoyo_condition_keyword, i32 0, i32 %indvars.iv.i434
  %71 = ptrtoint ptr %arrayidx.i435 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i435, align 4
  %call.i436 = call i32 @strcmp(ptr noundef %incdec.ptr, ptr noundef %72) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i436)
  %tobool.not.i437 = icmp eq i32 %call.i436, 0
  br i1 %tobool.not.i437, label %tomoyo_condition_type.exit444, label %for.inc.i441

for.inc.i441:                                     ; preds = %for.body.i438
  %indvars.iv.next.i439 = add nuw nsw i32 %indvars.iv.i434, 1
  %exitcond.not.i440 = icmp eq i32 %indvars.iv.next.i439, 59
  br i1 %exitcond.not.i440, label %for.inc.i441.if.then156_crit_edge, label %for.inc.i441.for.body.i438_crit_edge

for.inc.i441.for.body.i438_crit_edge:             ; preds = %for.inc.i441
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i438

for.inc.i441.if.then156_crit_edge:                ; preds = %for.inc.i441
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then156

tomoyo_condition_type.exit444:                    ; preds = %for.body.i438
  %73 = trunc i32 %indvars.iv.i434 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %73)
  %cmp154 = icmp eq i8 %73, 59
  br i1 %cmp154, label %tomoyo_condition_type.exit444.if.then156_crit_edge, label %tomoyo_condition_type.exit444.store_value_crit_edge

tomoyo_condition_type.exit444.store_value_crit_edge: ; preds = %tomoyo_condition_type.exit444
  call void @__sanitizer_cov_trace_pc() #11
  br label %store_value

tomoyo_condition_type.exit444.if.then156_crit_edge: ; preds = %tomoyo_condition_type.exit444
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then156

if.then156:                                       ; preds = %tomoyo_condition_type.exit444.if.then156_crit_edge, %for.inc.i441.if.then156_crit_edge
  %tobool157.not = icmp eq ptr %numbers_p.3697, null
  br i1 %tobool157.not, label %if.then158, label %if.else161

if.then158:                                       ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #11
  %inc160 = add i16 %e.sroa.20.2696, 1
  br label %store_value

if.else161:                                       ; preds = %if.then156
  %dec163 = add i16 %e.sroa.20.2696, -1
  %74 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %incdec.ptr, ptr %param, align 4
  %incdec.ptr165 = getelementptr %struct.tomoyo_number_union, ptr %numbers_p.3697, i32 1
  %call166 = call zeroext i1 @tomoyo_parse_number_union(ptr noundef %param, ptr noundef nonnull %numbers_p.3697) #9
  br i1 %call166, label %if.else161.store_value_crit_edge, label %if.else161.do.end284_crit_edge

if.else161.do.end284_crit_edge:                   ; preds = %if.else161
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end284

if.else161.store_value_crit_edge:                 ; preds = %if.else161
  call void @__sanitizer_cov_trace_pc() #11
  br label %store_value

store_value:                                      ; preds = %if.else161.store_value_crit_edge, %if.then158, %tomoyo_condition_type.exit444.store_value_crit_edge, %tomoyo_parse_name_union_quoted.exit.store_value_crit_edge, %if.then.i414.store_value_crit_edge, %if.then140, %tomoyo_parse_envp.exit, %if.then80, %tomoyo_parse_argv.exit.store_value_crit_edge, %if.then60
  %e.sroa.5.3 = phi i16 [ %inc61, %if.then60 ], [ %dec65, %tomoyo_parse_argv.exit.store_value_crit_edge ], [ %inc83, %if.then80 ], [ %dec88, %tomoyo_parse_envp.exit ], [ %e.sroa.5.2, %if.then140 ], [ %e.sroa.5.2, %tomoyo_parse_name_union_quoted.exit.store_value_crit_edge ], [ %e.sroa.5.2699, %if.then158 ], [ %e.sroa.5.2699, %if.else161.store_value_crit_edge ], [ %e.sroa.5.2699, %tomoyo_condition_type.exit444.store_value_crit_edge ], [ %e.sroa.5.2, %if.then.i414.store_value_crit_edge ]
  %e.sroa.20.3 = phi i16 [ %e.sroa.20.1623, %if.then60 ], [ %e.sroa.20.1623, %tomoyo_parse_argv.exit.store_value_crit_edge ], [ %e.sroa.20.1623, %if.then80 ], [ %e.sroa.20.1623, %tomoyo_parse_envp.exit ], [ %e.sroa.20.1623, %if.then140 ], [ %e.sroa.20.1623, %tomoyo_parse_name_union_quoted.exit.store_value_crit_edge ], [ %inc160, %if.then158 ], [ %dec163, %if.else161.store_value_crit_edge ], [ %e.sroa.20.2696, %tomoyo_condition_type.exit444.store_value_crit_edge ], [ %e.sroa.20.1623, %if.then.i414.store_value_crit_edge ]
  %e.sroa.31.2 = phi i16 [ %e.sroa.31.1625, %if.then60 ], [ %e.sroa.31.1625, %tomoyo_parse_argv.exit.store_value_crit_edge ], [ %e.sroa.31.1625, %if.then80 ], [ %e.sroa.31.1625, %tomoyo_parse_envp.exit ], [ %inc141, %if.then140 ], [ %dec144, %tomoyo_parse_name_union_quoted.exit.store_value_crit_edge ], [ %e.sroa.31.1625, %if.then158 ], [ %e.sroa.31.1625, %if.else161.store_value_crit_edge ], [ %e.sroa.31.1625, %tomoyo_condition_type.exit444.store_value_crit_edge ], [ %dec144, %if.then.i414.store_value_crit_edge ]
  %e.sroa.38.2 = phi i16 [ %inc, %if.then60 ], [ %dec, %tomoyo_parse_argv.exit.store_value_crit_edge ], [ %e.sroa.38.1627, %if.then80 ], [ %e.sroa.38.1627, %tomoyo_parse_envp.exit ], [ %e.sroa.38.1627, %if.then140 ], [ %e.sroa.38.1627, %tomoyo_parse_name_union_quoted.exit.store_value_crit_edge ], [ %e.sroa.38.1627, %if.then158 ], [ %e.sroa.38.1627, %if.else161.store_value_crit_edge ], [ %e.sroa.38.1627, %tomoyo_condition_type.exit444.store_value_crit_edge ], [ %e.sroa.38.1627, %if.then.i414.store_value_crit_edge ]
  %e.sroa.45.2 = phi i16 [ %e.sroa.45.1629, %if.then60 ], [ %e.sroa.45.1629, %tomoyo_parse_argv.exit.store_value_crit_edge ], [ %inc81, %if.then80 ], [ %dec86, %tomoyo_parse_envp.exit ], [ %e.sroa.45.1629, %if.then140 ], [ %e.sroa.45.1629, %tomoyo_parse_name_union_quoted.exit.store_value_crit_edge ], [ %e.sroa.45.1629, %if.then158 ], [ %e.sroa.45.1629, %if.else161.store_value_crit_edge ], [ %e.sroa.45.1629, %tomoyo_condition_type.exit444.store_value_crit_edge ], [ %e.sroa.45.1629, %if.then.i414.store_value_crit_edge ]
  %numbers_p.4 = phi ptr [ %numbers_p.1632, %if.then60 ], [ %numbers_p.1632, %tomoyo_parse_argv.exit.store_value_crit_edge ], [ %numbers_p.1632, %if.then80 ], [ %numbers_p.1632, %tomoyo_parse_envp.exit ], [ %numbers_p.1632, %if.then140 ], [ %numbers_p.1632, %tomoyo_parse_name_union_quoted.exit.store_value_crit_edge ], [ null, %if.then158 ], [ %incdec.ptr165, %if.else161.store_value_crit_edge ], [ %numbers_p.3697, %tomoyo_condition_type.exit444.store_value_crit_edge ], [ %numbers_p.1632, %if.then.i414.store_value_crit_edge ]
  %names_p.2 = phi ptr [ %names_p.1633, %if.then60 ], [ %names_p.1633, %tomoyo_parse_argv.exit.store_value_crit_edge ], [ %names_p.1633, %if.then80 ], [ %names_p.1633, %tomoyo_parse_envp.exit ], [ null, %if.then140 ], [ %incdec.ptr146, %tomoyo_parse_name_union_quoted.exit.store_value_crit_edge ], [ %names_p.1633, %if.then158 ], [ %names_p.1633, %if.else161.store_value_crit_edge ], [ %names_p.1633, %tomoyo_condition_type.exit444.store_value_crit_edge ], [ %incdec.ptr146, %if.then.i414.store_value_crit_edge ]
  %argv.2 = phi ptr [ null, %if.then60 ], [ %incdec.ptr70, %tomoyo_parse_argv.exit.store_value_crit_edge ], [ %argv.1636, %if.then80 ], [ %argv.1636, %tomoyo_parse_envp.exit ], [ %argv.1636, %if.then140 ], [ %argv.1636, %tomoyo_parse_name_union_quoted.exit.store_value_crit_edge ], [ %argv.1636, %if.then158 ], [ %argv.1636, %if.else161.store_value_crit_edge ], [ %argv.1636, %tomoyo_condition_type.exit444.store_value_crit_edge ], [ %argv.1636, %if.then.i414.store_value_crit_edge ]
  %envp.2 = phi ptr [ %envp.1639, %if.then60 ], [ %envp.1639, %tomoyo_parse_argv.exit.store_value_crit_edge ], [ null, %if.then80 ], [ %incdec.ptr93, %tomoyo_parse_envp.exit ], [ %envp.1639, %if.then140 ], [ %envp.1639, %tomoyo_parse_name_union_quoted.exit.store_value_crit_edge ], [ %envp.1639, %if.then158 ], [ %envp.1639, %if.else161.store_value_crit_edge ], [ %envp.1639, %tomoyo_condition_type.exit444.store_value_crit_edge ], [ %envp.1639, %if.then.i414.store_value_crit_edge ]
  %left.1 = phi i8 [ -1, %if.then60 ], [ 62, %tomoyo_parse_argv.exit.store_value_crit_edge ], [ -1, %if.then80 ], [ 63, %tomoyo_parse_envp.exit ], [ %57, %if.then140 ], [ %57, %tomoyo_parse_name_union_quoted.exit.store_value_crit_edge ], [ %left.0698, %if.then158 ], [ %left.0698, %if.else161.store_value_crit_edge ], [ %left.0698, %tomoyo_condition_type.exit444.store_value_crit_edge ], [ %57, %if.then.i414.store_value_crit_edge ]
  %right.0 = phi i8 [ -1, %if.then60 ], [ -1, %tomoyo_parse_argv.exit.store_value_crit_edge ], [ -1, %if.then80 ], [ -1, %tomoyo_parse_envp.exit ], [ -1, %if.then140 ], [ 61, %tomoyo_parse_name_union_quoted.exit.store_value_crit_edge ], [ 59, %if.then158 ], [ 60, %if.else161.store_value_crit_edge ], [ %73, %tomoyo_condition_type.exit444.store_value_crit_edge ], [ 61, %if.then.i414.store_value_crit_edge ]
  %tobool171.not = icmp eq ptr %condp.1631, null
  br i1 %tobool171.not, label %store_value.cleanup_crit_edge, label %if.end176

store_value.cleanup_crit_edge:                    ; preds = %store_value
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end176:                                        ; preds = %store_value
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %condp.1631 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %left.1, ptr %condp.1631, align 1
  %right178 = getelementptr inbounds %struct.tomoyo_condition_element, ptr %condp.1631, i32 0, i32 1
  %76 = ptrtoint ptr %right178 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %right.0, ptr %right178, align 1
  %lnot = xor i1 %cmp13, true
  %equals = getelementptr inbounds %struct.tomoyo_condition_element, ptr %condp.1631, i32 0, i32 2
  %frombool180 = zext i1 %lnot to i8
  %77 = ptrtoint ptr %equals to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %frombool180, ptr %equals, align 1
  %incdec.ptr184 = getelementptr %struct.tomoyo_condition_element, ptr %condp.1631, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end176, %store_value.cleanup_crit_edge, %if.then48, %if.then43, %if.then30.cleanup_crit_edge
  %e.sroa.5.4 = phi i16 [ %e.sroa.5.1622, %if.then30.cleanup_crit_edge ], [ %e.sroa.5.1622, %if.then43 ], [ %e.sroa.5.1622, %if.then48 ], [ %e.sroa.5.3, %store_value.cleanup_crit_edge ], [ %e.sroa.5.3, %if.end176 ]
  %e.sroa.20.4 = phi i16 [ %e.sroa.20.1623, %if.then30.cleanup_crit_edge ], [ %e.sroa.20.1623, %if.then43 ], [ %e.sroa.20.1623, %if.then48 ], [ %e.sroa.20.3, %store_value.cleanup_crit_edge ], [ %e.sroa.20.3, %if.end176 ]
  %e.sroa.31.3 = phi i16 [ %e.sroa.31.1625, %if.then30.cleanup_crit_edge ], [ %e.sroa.31.1625, %if.then43 ], [ %e.sroa.31.1625, %if.then48 ], [ %e.sroa.31.2, %store_value.cleanup_crit_edge ], [ %e.sroa.31.2, %if.end176 ]
  %e.sroa.38.3 = phi i16 [ %e.sroa.38.1627, %if.then30.cleanup_crit_edge ], [ %e.sroa.38.1627, %if.then43 ], [ %e.sroa.38.1627, %if.then48 ], [ %e.sroa.38.2, %store_value.cleanup_crit_edge ], [ %e.sroa.38.2, %if.end176 ]
  %e.sroa.45.3 = phi i16 [ %e.sroa.45.1629, %if.then30.cleanup_crit_edge ], [ %e.sroa.45.1629, %if.then43 ], [ %e.sroa.45.1629, %if.then48 ], [ %e.sroa.45.2, %store_value.cleanup_crit_edge ], [ %e.sroa.45.2, %if.end176 ]
  %condp.2 = phi ptr [ %condp.1631, %if.then30.cleanup_crit_edge ], [ %condp.1631, %if.then43 ], [ %condp.1631, %if.then48 ], [ null, %store_value.cleanup_crit_edge ], [ %incdec.ptr184, %if.end176 ]
  %numbers_p.5 = phi ptr [ %numbers_p.1632, %if.then30.cleanup_crit_edge ], [ %numbers_p.1632, %if.then43 ], [ %numbers_p.1632, %if.then48 ], [ %numbers_p.4, %store_value.cleanup_crit_edge ], [ %numbers_p.4, %if.end176 ]
  %names_p.3 = phi ptr [ %names_p.1633, %if.then30.cleanup_crit_edge ], [ %names_p.1633, %if.then43 ], [ %names_p.1633, %if.then48 ], [ %names_p.2, %store_value.cleanup_crit_edge ], [ %names_p.2, %if.end176 ]
  %argv.3 = phi ptr [ %argv.1636, %if.then30.cleanup_crit_edge ], [ %argv.1636, %if.then43 ], [ %argv.1636, %if.then48 ], [ %argv.2, %store_value.cleanup_crit_edge ], [ %argv.2, %if.end176 ]
  %envp.3 = phi ptr [ %envp.1639, %if.then30.cleanup_crit_edge ], [ %envp.1639, %if.then43 ], [ %envp.1639, %if.then48 ], [ %envp.2, %store_value.cleanup_crit_edge ], [ %envp.2, %if.end176 ]
  %78 = ptrtoint ptr %pos.1 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %pos.1, align 1
  %tobool.not = icmp eq i8 %79, 0
  br i1 %tobool.not, label %cleanup.do.end192_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cleanup.do.end192_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end192

do.end192:                                        ; preds = %cleanup.do.end192_crit_edge, %rerun.do.end192_crit_edge
  %e.sroa.5.1.lcssa = phi i16 [ %e.sroa.5.0, %rerun.do.end192_crit_edge ], [ %e.sroa.5.4, %cleanup.do.end192_crit_edge ]
  %e.sroa.20.1.lcssa = phi i16 [ %e.sroa.20.0, %rerun.do.end192_crit_edge ], [ %e.sroa.20.4, %cleanup.do.end192_crit_edge ]
  %e.sroa.31.1.lcssa = phi i16 [ %e.sroa.31.0, %rerun.do.end192_crit_edge ], [ %e.sroa.31.3, %cleanup.do.end192_crit_edge ]
  %e.sroa.38.1.lcssa = phi i16 [ %e.sroa.38.0, %rerun.do.end192_crit_edge ], [ %e.sroa.38.3, %cleanup.do.end192_crit_edge ]
  %e.sroa.45.1.lcssa = phi i16 [ %e.sroa.45.0, %rerun.do.end192_crit_edge ], [ %e.sroa.45.3, %cleanup.do.end192_crit_edge ]
  %tobool193.not = icmp eq ptr %entry1.0, null
  br i1 %tobool193.not, label %if.end224, label %do.body195

do.body195:                                       ; preds = %do.end192
  %or379 = or i16 %e.sroa.20.1.lcssa, %e.sroa.5.1.lcssa
  %or202380 = or i16 %or379, %e.sroa.31.1.lcssa
  %or205381 = or i16 %or202380, %e.sroa.38.1.lcssa
  %or208382 = or i16 %or205381, %e.sroa.45.1.lcssa
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or208382)
  %tobool209.not = icmp eq i16 %or208382, 0
  br i1 %tobool209.not, label %do.end222, label %do.body214, !prof !66

do.body214:                                       ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/tomoyo/condition.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 660, 0\0A.popsection", ""() #9, !srcloc !67
  unreachable

do.end222:                                        ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #11
  %call223 = call fastcc ptr @tomoyo_commit_condition(ptr noundef nonnull %entry1.0)
  br label %cleanup289

if.end224:                                        ; preds = %do.end192
  %conv226 = zext i16 %e.sroa.5.1.lcssa to i32
  %mul = mul nuw nsw i32 %conv226, 3
  %conv228 = zext i16 %e.sroa.20.1.lcssa to i32
  %mul229 = shl nuw nsw i32 %conv228, 4
  %conv232 = zext i16 %e.sroa.31.1.lcssa to i32
  %mul233 = shl nuw nsw i32 %conv232, 3
  %conv236 = zext i16 %e.sroa.38.1.lcssa to i32
  %conv240 = zext i16 %e.sroa.45.1.lcssa to i32
  %reass.add = add nuw nsw i32 %conv240, %conv236
  %reass.mul = mul nuw nsw i32 %reass.add, 12
  %add230 = add nuw nsw i32 %mul, 32
  %add234 = add nuw nsw i32 %add230, %mul229
  %add238 = add nuw nsw i32 %add234, %mul233
  %add242 = add nuw nsw i32 %add238, %reass.mul
  %call9.i.i447 = call noalias align 128 ptr @__kmalloc(i32 noundef %add242, i32 noundef 3392) #14
  %tobool245.not = icmp eq ptr %call9.i.i447, null
  br i1 %tobool245.not, label %if.end224.out2_crit_edge, label %if.end247

if.end224.out2_crit_edge:                         ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #11
  br label %out2

if.end247:                                        ; preds = %if.end224
  %80 = call ptr @memcpy(ptr %call9.i.i447, ptr %e.sroa.0, i32 12)
  %e.sroa.4.0.retval.1.i.i.sroa_idx = getelementptr inbounds i8, ptr %call9.i.i447, i32 12
  %81 = ptrtoint ptr %e.sroa.4.0.retval.1.i.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add242, ptr %e.sroa.4.0.retval.1.i.i.sroa_idx, align 4
  %e.sroa.5.0.retval.1.i.i.sroa_idx = getelementptr inbounds i8, ptr %call9.i.i447, i32 16
  %82 = ptrtoint ptr %e.sroa.5.0.retval.1.i.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %e.sroa.5.1.lcssa, ptr %e.sroa.5.0.retval.1.i.i.sroa_idx, align 16
  %e.sroa.20.0.retval.1.i.i.sroa_idx = getelementptr inbounds i8, ptr %call9.i.i447, i32 18
  %83 = ptrtoint ptr %e.sroa.20.0.retval.1.i.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %e.sroa.20.1.lcssa, ptr %e.sroa.20.0.retval.1.i.i.sroa_idx, align 2
  %e.sroa.31.0.retval.1.i.i.sroa_idx = getelementptr inbounds i8, ptr %call9.i.i447, i32 20
  %84 = ptrtoint ptr %e.sroa.31.0.retval.1.i.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %e.sroa.31.1.lcssa, ptr %e.sroa.31.0.retval.1.i.i.sroa_idx, align 4
  %e.sroa.38.0.retval.1.i.i.sroa_idx = getelementptr inbounds i8, ptr %call9.i.i447, i32 22
  %85 = ptrtoint ptr %e.sroa.38.0.retval.1.i.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %e.sroa.38.1.lcssa, ptr %e.sroa.38.0.retval.1.i.i.sroa_idx, align 2
  %e.sroa.45.0.retval.1.i.i.sroa_idx = getelementptr inbounds i8, ptr %call9.i.i447, i32 24
  %86 = ptrtoint ptr %e.sroa.45.0.retval.1.i.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %e.sroa.45.1.lcssa, ptr %e.sroa.45.0.retval.1.i.i.sroa_idx, align 8
  %e.sroa.51.0.retval.1.i.i.sroa_idx = getelementptr inbounds i8, ptr %call9.i.i447, i32 26
  %87 = ptrtoint ptr %e.sroa.51.0.retval.1.i.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %e.sroa.51.0.retval.1.i.i.sroa_idx, align 2
  %e.sroa.51476.0.retval.1.i.i.sroa_idx = getelementptr inbounds i8, ptr %call9.i.i447, i32 28
  %88 = ptrtoint ptr %e.sroa.51476.0.retval.1.i.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %e.sroa.51476.1, ptr %e.sroa.51476.0.retval.1.i.i.sroa_idx, align 4
  %add.ptr248 = getelementptr %struct.tomoyo_condition, ptr %call9.i.i447, i32 1
  %add.ptr251 = getelementptr %struct.tomoyo_condition_element, ptr %add.ptr248, i32 %conv226
  %add.ptr254 = getelementptr %struct.tomoyo_number_union, ptr %add.ptr251, i32 %conv228
  %add.ptr257 = getelementptr %struct.tomoyo_name_union, ptr %add.ptr254, i32 %conv232
  %add.ptr260 = getelementptr %struct.tomoyo_argv, ptr %add.ptr257, i32 %conv236
  br i1 %cmp261647, label %if.end247.for.body_crit_edge, label %if.end247.rerun.backedge_crit_edge

if.end247.rerun.backedge_crit_edge:               ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #11
  br label %rerun.backedge

if.end247.for.body_crit_edge:                     ; preds = %if.end247
  br label %for.body

rerun.backedge:                                   ; preds = %for.inc.rerun.backedge_crit_edge, %if.end247.rerun.backedge_crit_edge
  br label %rerun

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end247.for.body_crit_edge
  %flag.0.off0649 = phi i1 [ %flag.1.off0, %for.inc.for.body_crit_edge ], [ false, %if.end247.for.body_crit_edge ]
  %pos.3648 = phi ptr [ %incdec.ptr281, %for.inc.for.body_crit_edge ], [ %retval.0.i, %if.end247.for.body_crit_edge ]
  %89 = ptrtoint ptr %pos.3648 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %pos.3648, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool263.not = icmp eq i8 %90, 0
  br i1 %tobool263.not, label %if.end265, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end265:                                        ; preds = %for.body
  br i1 %flag.0.off0649, label %if.end265.if.end276_crit_edge, label %if.else268

if.end265.if.end276_crit_edge:                    ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end276

if.else268:                                       ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr269 = getelementptr i8, ptr %pos.3648, i32 1
  %91 = ptrtoint ptr %add.ptr269 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %add.ptr269, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %92)
  %cmp271 = icmp eq i8 %92, 61
  %. = select i1 %cmp271, i8 33, i8 61
  br label %if.end276

if.end276:                                        ; preds = %if.else268, %if.end265.if.end276_crit_edge
  %.sink = phi i8 [ 32, %if.end265.if.end276_crit_edge ], [ %., %if.else268 ]
  %93 = ptrtoint ptr %pos.3648 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %.sink, ptr %pos.3648, align 1
  %lnot278 = xor i1 %flag.0.off0649, true
  br label %for.inc

for.inc:                                          ; preds = %if.end276, %for.body.for.inc_crit_edge
  %flag.1.off0 = phi i1 [ %flag.0.off0649, %for.body.for.inc_crit_edge ], [ %lnot278, %if.end276 ]
  %incdec.ptr281 = getelementptr i8, ptr %pos.3648, i32 1
  %exitcond.not = icmp eq ptr %incdec.ptr281, %add.ptr
  br i1 %exitcond.not, label %for.inc.rerun.backedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.rerun.backedge_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %rerun.backedge

do.end284:                                        ; preds = %if.else161.do.end284_crit_edge, %tomoyo_parse_name_union_quoted.exit.do.end284_crit_edge, %tomoyo_parse_name_union_quoted.exit.thread, %if.then.i414.do.end284_crit_edge, %lor.lhs.false116.do.end284_crit_edge, %if.else110.do.end284_crit_edge, %tomoyo_put_name.exit.i, %if.end8.i.do.end284_crit_edge, %if.end.i392.do.end284_crit_edge, %lor.lhs.false.i391.do.end284_crit_edge, %if.else84.do.end284_crit_edge, %tomoyo_parse_argv.exit.do.end284_crit_edge, %tomoyo_parse_argv.exit.thread509, %tomoyo_parse_argv.exit.thread, %if.else18.do.end284_crit_edge, %if.end7.do.end284_crit_edge
  br i1 %tobool31.not, label %do.end284.out2_crit_edge, label %do.end284.if.then286_crit_edge

do.end284.if.then286_crit_edge:                   ; preds = %do.end284
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then286

do.end284.out2_crit_edge:                         ; preds = %do.end284
  call void @__sanitizer_cov_trace_pc() #11
  br label %out2

if.then286:                                       ; preds = %do.end284.if.then286_crit_edge, %if.else45.if.then286_crit_edge, %lor.lhs.false35.if.then286_crit_edge, %if.then32.if.then286_crit_edge
  call void @tomoyo_del_condition(ptr noundef nonnull %entry1.0) #9
  call void @kfree(ptr noundef nonnull %entry1.0) #9
  br label %out2

out2:                                             ; preds = %if.then286, %do.end284.out2_crit_edge, %if.end224.out2_crit_edge
  %tobool.not.i448 = icmp eq ptr %e.sroa.51476.1, null
  br i1 %tobool.not.i448, label %out2.cleanup289_crit_edge, label %if.then.i449

out2.cleanup289_crit_edge:                        ; preds = %out2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup289

if.then.i449:                                     ; preds = %out2
  call void @__sanitizer_cov_trace_pc() #11
  %users.i = getelementptr i8, ptr %e.sroa.51476.1, i32 -4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #9
  %94 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #9, !srcloc !65
  br label %cleanup289

cleanup289:                                       ; preds = %if.then.i449, %out2.cleanup289_crit_edge, %do.end222
  %retval.0 = phi ptr [ %call223, %do.end222 ], [ null, %out2.cleanup289_crit_edge ], [ null, %if.then.i449 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %e.sroa.0)
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_parse_number_union(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tomoyo_commit_condition(ptr noundef %entry1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @tomoyo_policy_lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.if.then26_crit_edge

entry.if.then26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

for.cond.preheader:                               ; preds = %entry
  %ptr.055 = load ptr, ptr @tomoyo_condition_list, align 4
  %cmp.not56 = icmp eq ptr %ptr.055, @tomoyo_condition_list
  br i1 %cmp.not56, label %for.cond.preheader.if.then16_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.then16_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %size1.i = getelementptr inbounds %struct.tomoyo_condition, ptr %entry1, i32 0, i32 1
  %condc2.i = getelementptr inbounds %struct.tomoyo_condition, ptr %entry1, i32 0, i32 2
  %numbers_count8.i = getelementptr inbounds %struct.tomoyo_condition, ptr %entry1, i32 0, i32 3
  %names_count14.i = getelementptr inbounds %struct.tomoyo_condition, ptr %entry1, i32 0, i32 4
  %argc20.i = getelementptr inbounds %struct.tomoyo_condition, ptr %entry1, i32 0, i32 5
  %envc26.i = getelementptr inbounds %struct.tomoyo_condition, ptr %entry1, i32 0, i32 6
  %grant_log32.i = getelementptr inbounds %struct.tomoyo_condition, ptr %entry1, i32 0, i32 7
  %transit37.i = getelementptr inbounds %struct.tomoyo_condition, ptr %entry1, i32 0, i32 8
  %add.ptr40.i = getelementptr %struct.tomoyo_condition, ptr %entry1, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ptr.057 = phi ptr [ %ptr.055, %for.body.lr.ph ], [ %ptr.0, %for.inc.for.body_crit_edge ]
  %size.i = getelementptr inbounds %struct.tomoyo_condition, ptr %ptr.057, i32 0, i32 1
  %0 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size.i, align 4
  %2 = ptrtoint ptr %size1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i = icmp eq i32 %1, %3
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true.i:                                  ; preds = %for.body
  %condc.i = getelementptr inbounds %struct.tomoyo_condition, ptr %ptr.057, i32 0, i32 2
  %4 = ptrtoint ptr %condc.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %condc.i, align 4
  %6 = ptrtoint ptr %condc2.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %condc2.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp4.i = icmp eq i16 %5, %7
  br i1 %cmp4.i, label %land.lhs.true6.i, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %numbers_count.i = getelementptr inbounds %struct.tomoyo_condition, ptr %ptr.057, i32 0, i32 3
  %8 = ptrtoint ptr %numbers_count.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %numbers_count.i, align 2
  %10 = ptrtoint ptr %numbers_count8.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %numbers_count8.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp10.i = icmp eq i16 %9, %11
  br i1 %cmp10.i, label %land.lhs.true12.i, label %land.lhs.true6.i.for.inc_crit_edge

land.lhs.true6.i.for.inc_crit_edge:               ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true12.i:                                ; preds = %land.lhs.true6.i
  %names_count.i = getelementptr inbounds %struct.tomoyo_condition, ptr %ptr.057, i32 0, i32 4
  %12 = ptrtoint ptr %names_count.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %names_count.i, align 4
  %14 = ptrtoint ptr %names_count14.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %names_count14.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp16.i = icmp eq i16 %13, %15
  br i1 %cmp16.i, label %land.lhs.true18.i, label %land.lhs.true12.i.for.inc_crit_edge

land.lhs.true12.i.for.inc_crit_edge:              ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true18.i:                                ; preds = %land.lhs.true12.i
  %argc.i = getelementptr inbounds %struct.tomoyo_condition, ptr %ptr.057, i32 0, i32 5
  %16 = ptrtoint ptr %argc.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %argc.i, align 2
  %18 = ptrtoint ptr %argc20.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %argc20.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %19)
  %cmp22.i = icmp eq i16 %17, %19
  br i1 %cmp22.i, label %land.lhs.true24.i, label %land.lhs.true18.i.for.inc_crit_edge

land.lhs.true18.i.for.inc_crit_edge:              ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true24.i:                                ; preds = %land.lhs.true18.i
  %envc.i = getelementptr inbounds %struct.tomoyo_condition, ptr %ptr.057, i32 0, i32 6
  %20 = ptrtoint ptr %envc.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %envc.i, align 4
  %22 = ptrtoint ptr %envc26.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %envc26.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %23)
  %cmp28.i = icmp eq i16 %21, %23
  br i1 %cmp28.i, label %land.lhs.true30.i, label %land.lhs.true24.i.for.inc_crit_edge

land.lhs.true24.i.for.inc_crit_edge:              ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true30.i:                                ; preds = %land.lhs.true24.i
  %grant_log.i = getelementptr inbounds %struct.tomoyo_condition, ptr %ptr.057, i32 0, i32 7
  %24 = ptrtoint ptr %grant_log.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %grant_log.i, align 2
  %26 = ptrtoint ptr %grant_log32.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %grant_log32.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp34.i = icmp eq i8 %25, %27
  br i1 %cmp34.i, label %land.lhs.true36.i, label %land.lhs.true30.i.for.inc_crit_edge

land.lhs.true30.i.for.inc_crit_edge:              ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true36.i:                                ; preds = %land.lhs.true30.i
  %transit.i = getelementptr inbounds %struct.tomoyo_condition, ptr %ptr.057, i32 0, i32 8
  %28 = ptrtoint ptr %transit.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %transit.i, align 4
  %30 = ptrtoint ptr %transit37.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %transit37.i, align 4
  %cmp38.i = icmp eq ptr %29, %31
  br i1 %cmp38.i, label %tomoyo_same_condition.exit, label %land.lhs.true36.i.for.inc_crit_edge

land.lhs.true36.i.for.inc_crit_edge:              ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

tomoyo_same_condition.exit:                       ; preds = %land.lhs.true36.i
  %add.ptr.i = getelementptr %struct.tomoyo_condition, ptr %ptr.057, i32 1
  %sub.i = add i32 %1, -32
  %bcmp.i = tail call i32 @bcmp(ptr %add.ptr.i, ptr %add.ptr40.i, i32 %sub.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false, label %tomoyo_same_condition.exit.for.inc_crit_edge

tomoyo_same_condition.exit.for.inc_crit_edge:     ; preds = %tomoyo_same_condition.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false:                                    ; preds = %tomoyo_same_condition.exit
  %users = getelementptr inbounds %struct.tomoyo_shared_acl_head, ptr %ptr.057, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users, i32 noundef 4) #9
  %32 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp5 = icmp eq i32 %33, -1
  br i1 %cmp5, label %lor.lhs.false.for.inc_crit_edge, label %for.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %tomoyo_same_condition.exit.for.inc_crit_edge, %land.lhs.true36.i.for.inc_crit_edge, %land.lhs.true30.i.for.inc_crit_edge, %land.lhs.true24.i.for.inc_crit_edge, %land.lhs.true18.i.for.inc_crit_edge, %land.lhs.true12.i.for.inc_crit_edge, %land.lhs.true6.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %34 = ptrtoint ptr %ptr.057 to i32
  call void @__asan_load4_noabort(i32 %34)
  %ptr.0 = load ptr, ptr %ptr.057, align 4
  %cmp.not = icmp eq ptr %ptr.0, @tomoyo_condition_list
  br i1 %cmp.not, label %for.inc.if.then16_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.then16_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

for.end:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i44 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #9
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #9, !srcloc !68
  br label %if.then26.sink.split

if.then16:                                        ; preds = %for.inc.if.then16_crit_edge, %for.cond.preheader.if.then16_crit_edge
  %call17 = tail call zeroext i1 @tomoyo_memory_ok(ptr noundef %entry1) #9
  br i1 %call17, label %if.then18, label %if.then16.if.then26.sink.split_crit_edge

if.then16.if.then26.sink.split_crit_edge:         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26.sink.split

if.then18:                                        ; preds = %if.then16
  %users20 = getelementptr inbounds %struct.tomoyo_shared_acl_head, ptr %entry1, i32 0, i32 1
  %call.i.i45 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users20, i32 noundef 4) #9
  %36 = ptrtoint ptr %users20 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 1, ptr %users20, align 4
  %37 = load ptr, ptr @tomoyo_condition_list, align 4
  %call.i.i46 = tail call zeroext i1 @__list_add_valid(ptr noundef %entry1, ptr noundef nonnull @tomoyo_condition_list, ptr noundef %37) #9
  br i1 %call.i.i46, label %if.end29.critedge, label %if.end29.critedge53

if.then26.sink.split:                             ; preds = %if.then16.if.then26.sink.split_crit_edge, %for.end
  %ptr.249.ph = phi ptr [ %ptr.057, %for.end ], [ null, %if.then16.if.then26.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @tomoyo_policy_lock) #9
  br label %if.then26

if.then26:                                        ; preds = %if.then26.sink.split, %entry.if.then26_crit_edge
  %ptr.249 = phi ptr [ null, %entry.if.then26_crit_edge ], [ %ptr.249.ph, %if.then26.sink.split ]
  tail call void @tomoyo_del_condition(ptr noundef %entry1) #9
  tail call void @kfree(ptr noundef %entry1) #9
  br label %if.end29

if.end29.critedge:                                ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.c = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.c to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %entry1, ptr %prev1.i.i.c, align 4
  %39 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %37, ptr %entry1, align 4
  %prev3.i.i.c = getelementptr inbounds %struct.list_head, ptr %entry1, i32 0, i32 1
  %40 = ptrtoint ptr %prev3.i.i.c to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @tomoyo_condition_list, ptr %prev3.i.i.c, align 4
  store volatile ptr %entry1, ptr @tomoyo_condition_list, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @tomoyo_policy_lock) #9
  br label %if.end29

if.end29.critedge53:                              ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef nonnull @tomoyo_policy_lock) #9
  br label %if.end29

if.end29:                                         ; preds = %if.end29.critedge53, %if.end29.critedge, %if.then26
  %entry.addr.0 = phi ptr [ %ptr.249, %if.then26 ], [ %entry1, %if.end29.critedge ], [ %entry1, %if.end29.critedge53 ]
  ret ptr %entry.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tomoyo_del_condition(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tomoyo_get_attributes(ptr nocapture noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry5 = getelementptr inbounds %struct.tomoyo_obj_info, ptr %obj, i32 0, i32 3, i32 1
  %dentry3 = getelementptr inbounds %struct.tomoyo_obj_info, ptr %obj, i32 0, i32 2, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %cleanup.for.body_crit_edge ]
  %i.050 = phi i8 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %dentry.049 = phi ptr [ null, %entry ], [ %dentry.2, %cleanup.for.body_crit_edge ]
  %trunc = trunc i8 %i.050 to i7
  %0 = zext i7 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i7 %trunc, label %sw.default [
    i7 0, label %sw.bb
    i7 2, label %sw.bb4
  ]

sw.bb:                                            ; preds = %for.body
  %1 = ptrtoint ptr %dentry3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dentry3, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb4:                                           ; preds = %for.body
  %3 = ptrtoint ptr %dentry5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dentry5, align 4
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %sw.bb4.cleanup_crit_edge, label %sw.bb4.sw.epilog_crit_edge

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.default:                                       ; preds = %for.body
  %tobool9.not = icmp eq ptr %dentry.049, null
  br i1 %tobool9.not, label %sw.default.cleanup_crit_edge, label %if.end11

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call ptr @dget_parent(ptr noundef nonnull %dentry.049) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end11, %sw.bb4.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %dentry.1 = phi ptr [ %call, %if.end11 ], [ %4, %sw.bb4.sw.epilog_crit_edge ], [ %2, %sw.bb.sw.epilog_crit_edge ]
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry.1, i32 0, i32 5
  %5 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_inode.i, align 8
  %tobool13.not = icmp eq ptr %6, null
  br i1 %tobool13.not, label %sw.epilog.if.end18_crit_edge, label %if.then14

sw.epilog.if.end18_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then14:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.tomoyo_obj_info, ptr %obj, i32 0, i32 4, i32 %indvars.iv
  %i_uid = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_uid, align 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx, align 4
  %gid = getelementptr %struct.tomoyo_obj_info, ptr %obj, i32 0, i32 4, i32 %indvars.iv, i32 1
  %i_gid = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 3
  %10 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_gid, align 8
  %12 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %gid, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 11
  %13 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino, align 8
  %ino = getelementptr %struct.tomoyo_obj_info, ptr %obj, i32 0, i32 4, i32 %indvars.iv, i32 2
  %15 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %ino, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %6, align 8
  %mode = getelementptr %struct.tomoyo_obj_info, ptr %obj, i32 0, i32 4, i32 %indvars.iv, i32 3
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %mode, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %19 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_dev, align 8
  %dev = getelementptr %struct.tomoyo_obj_info, ptr %obj, i32 0, i32 4, i32 %indvars.iv, i32 4
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %dev, align 4
  %i_rdev = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 13
  %24 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_rdev, align 8
  %rdev = getelementptr %struct.tomoyo_obj_info, ptr %obj, i32 0, i32 4, i32 %indvars.iv, i32 5
  %26 = ptrtoint ptr %rdev to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %rdev, align 4
  %arrayidx17 = getelementptr %struct.tomoyo_obj_info, ptr %obj, i32 0, i32 1, i32 %indvars.iv
  %27 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %arrayidx17, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %sw.epilog.if.end18_crit_edge
  %and = and i32 %indvars.iv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %if.then21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dput(ptr noundef %dentry.1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end18.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %dentry.2 = phi ptr [ null, %sw.bb.cleanup_crit_edge ], [ null, %sw.bb4.cleanup_crit_edge ], [ null, %sw.default.cleanup_crit_edge ], [ %dentry.1, %if.then21 ], [ %dentry.1, %if.end18.cleanup_crit_edge ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %inc = add nuw nsw i8 %i.050, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 4
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dget_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tomoyo_condition(ptr nocapture noundef readonly %r, ptr noundef %cond) local_unnamed_addr #0 align 64 {
entry:
  %name.i.i = alloca %struct.tomoyo_path_info, align 4
  %value.i258.i = alloca %struct.tomoyo_path_info, align 4
  %arg.i.i = alloca %struct.tomoyo_path_info, align 4
  %local_checked.i = alloca [32 x i8], align 1
  %exe.i = alloca %struct.tomoyo_path_info, align 4
  %min_v = alloca [2 x i32], align 8
  %max_v = alloca [2 x i32], align 8
  %is_bitop = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %min_v) #9
  %0 = ptrtoint ptr %min_v to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %min_v, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %max_v) #9
  %1 = ptrtoint ptr %max_v to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %max_v, align 8
  %tobool.not = icmp eq ptr %cond, null
  br i1 %tobool.not, label %entry.cleanup404_crit_edge, label %if.end

entry.cleanup404_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup404

if.end:                                           ; preds = %entry
  %condc1 = getelementptr inbounds %struct.tomoyo_condition, ptr %cond, i32 0, i32 2
  %2 = ptrtoint ptr %condc1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %condc1, align 4
  %argc2 = getelementptr inbounds %struct.tomoyo_condition, ptr %cond, i32 0, i32 5
  %4 = ptrtoint ptr %argc2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %argc2, align 2
  %envc3 = getelementptr inbounds %struct.tomoyo_condition, ptr %cond, i32 0, i32 6
  %6 = ptrtoint ptr %envc3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %envc3, align 4
  %8 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %r, align 4
  %ee = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 1
  %10 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ee, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %if.end.land.lhs.true_crit_edge, label %if.end9

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end9:                                          ; preds = %if.end
  %bprm8 = getelementptr inbounds %struct.tomoyo_execve, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %bprm8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bprm8, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %if.end9.land.lhs.true_crit_edge, label %if.end9.if.end15_crit_edge

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end9.land.lhs.true_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end9.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool11.not = icmp eq i16 %5, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool13.not = icmp eq i16 %7, 0
  %or.cond = select i1 %tobool11.not, i1 %tobool13.not, i1 false
  br i1 %or.cond, label %land.lhs.true.if.end15_crit_edge, label %land.lhs.true.cleanup404_crit_edge

land.lhs.true.cleanup404_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup404

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.end9.if.end15_crit_edge
  %tobool10.not536 = phi i1 [ true, %land.lhs.true.if.end15_crit_edge ], [ false, %if.end9.if.end15_crit_edge ]
  %bprm.0534 = phi ptr [ null, %land.lhs.true.if.end15_crit_edge ], [ %13, %if.end9.if.end15_crit_edge ]
  %add.ptr = getelementptr %struct.tomoyo_condition, ptr %cond, i32 1
  %conv16 = zext i16 %3 to i32
  %add.ptr17 = getelementptr %struct.tomoyo_condition_element, ptr %add.ptr, i32 %conv16
  %numbers_count = getelementptr inbounds %struct.tomoyo_condition, ptr %cond, i32 0, i32 3
  %14 = ptrtoint ptr %numbers_count to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %numbers_count, align 2
  %conv18 = zext i16 %15 to i32
  %add.ptr19 = getelementptr %struct.tomoyo_number_union, ptr %add.ptr17, i32 %conv18
  %names_count = getelementptr inbounds %struct.tomoyo_condition, ptr %cond, i32 0, i32 4
  %16 = ptrtoint ptr %names_count to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %names_count, align 4
  %conv20 = zext i16 %17 to i32
  %add.ptr21 = getelementptr %struct.tomoyo_name_union, ptr %add.ptr19, i32 %conv20
  %conv22 = zext i16 %5 to i32
  %add.ptr23 = getelementptr %struct.tomoyo_argv, ptr %add.ptr21, i32 %conv22
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp567.not = icmp eq i16 %3, 0
  br i1 %cmp567.not, label %if.end15.for.end391_crit_edge, label %for.body.lr.ph

if.end15.for.end391_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end391

for.body.lr.ph:                                   ; preds = %if.end15
  %envc200 = getelementptr inbounds %struct.linux_binprm, ptr %bprm.0534, i32 0, i32 13
  %argc195 = getelementptr inbounds %struct.linux_binprm, ptr %bprm.0534, i32 0, i32 12
  %tobool201.not = icmp eq ptr %9, null
  %arrayidx317 = getelementptr inbounds [2 x i8], ptr %is_bitop, i32 0, i32 1
  %arrayidx328 = getelementptr inbounds [2 x i32], ptr %max_v, i32 0, i32 1
  %arrayidx370 = getelementptr inbounds [2 x i32], ptr %min_v, i32 0, i32 1
  %18 = getelementptr inbounds i8, ptr %exe.i, i32 4
  %symlink_target = getelementptr inbounds %struct.tomoyo_obj_info, ptr %9, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc389.for.body_crit_edge, %for.body.lr.ph
  %i.0571 = phi i32 [ 0, %for.body.lr.ph ], [ %inc390, %for.inc389.for.body_crit_edge ]
  %condp.0570 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %incdec.ptr, %for.inc389.for.body_crit_edge ]
  %numbers_p.0569 = phi ptr [ %add.ptr17, %for.body.lr.ph ], [ %numbers_p.3.ph, %for.inc389.for.body_crit_edge ]
  %names_p.0568 = phi ptr [ %add.ptr19, %for.body.lr.ph ], [ %names_p.2.ph, %for.inc389.for.body_crit_edge ]
  %equals = getelementptr inbounds %struct.tomoyo_condition_element, ptr %condp.0570, i32 0, i32 2
  %19 = ptrtoint ptr %equals to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %equals, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool26 = icmp ne i8 %20, 0
  %21 = ptrtoint ptr %condp.0570 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %condp.0570, align 1
  %right28 = getelementptr inbounds %struct.tomoyo_condition_element, ptr %condp.0570, i32 0, i32 1
  %23 = ptrtoint ptr %right28 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %right28, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %is_bitop) #9
  %25 = ptrtoint ptr %is_bitop to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %is_bitop, align 2
  %incdec.ptr = getelementptr %struct.tomoyo_condition_element, ptr %condp.0570, i32 1
  %26 = and i8 %22, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 62, i8 %26)
  %switch513 = icmp eq i8 %26, 62
  br i1 %switch513, label %for.body.for.inc389_crit_edge, label %if.end37

for.body.for.inc389_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc389

if.end37:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %24)
  %cmp39 = icmp eq i8 %24, 61
  br i1 %cmp39, label %if.then41, label %if.end37.for.body77_crit_edge

if.end37.for.body77_crit_edge:                    ; preds = %if.end37
  br label %for.body77

if.then41:                                        ; preds = %if.end37
  %incdec.ptr42 = getelementptr %struct.tomoyo_name_union, ptr %names_p.0568, i32 1
  %27 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %22, label %if.then41.for.inc389_crit_edge [
    i8 32, label %sw.bb
    i8 31, label %sw.bb56
  ]

if.then41.for.inc389_crit_edge:                   ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc389

sw.bb:                                            ; preds = %if.then41
  br i1 %tobool201.not, label %sw.bb.cleanup383_crit_edge, label %cond.end

sw.bb.cleanup383_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup383

cond.end:                                         ; preds = %sw.bb
  %28 = ptrtoint ptr %symlink_target to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %symlink_target, align 4
  %tobool47.not = icmp eq ptr %29, null
  br i1 %tobool47.not, label %cond.end.cleanup383_crit_edge, label %lor.lhs.false48

cond.end.cleanup383_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup383

lor.lhs.false48:                                  ; preds = %cond.end
  %call = call ptr @tomoyo_compare_name_union(ptr noundef nonnull %29, ptr noundef %names_p.0568) #9
  %tobool49.not = icmp eq ptr %call, null
  %30 = zext i1 %tobool49.not to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %30)
  %cmp52 = icmp eq i8 %20, %30
  br i1 %cmp52, label %lor.lhs.false48.cleanup383_crit_edge, label %lor.lhs.false48.for.inc389_crit_edge

lor.lhs.false48.for.inc389_crit_edge:             ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc389

lor.lhs.false48.cleanup383_crit_edge:             ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup383

sw.bb56:                                          ; preds = %if.then41
  %31 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ee, align 4
  %tobool58.not = icmp eq ptr %32, null
  br i1 %tobool58.not, label %cond.end63.thread, label %cond.end63

cond.end63.thread:                                ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %exe.i) #9
  br label %tomoyo_scan_exec_realpath.exit.thread

cond.end63:                                       ; preds = %sw.bb56
  %bprm60 = getelementptr inbounds %struct.tomoyo_execve, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %bprm60 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bprm60, align 4
  %file61 = getelementptr inbounds %struct.linux_binprm, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %file61 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %file61, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %exe.i) #9
  %tobool.not.i = icmp eq ptr %36, null
  %37 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 -1, ptr %18, align 4
  br i1 %tobool.not.i, label %cond.end63.tomoyo_scan_exec_realpath.exit.thread_crit_edge, label %if.end.i

cond.end63.tomoyo_scan_exec_realpath.exit.thread_crit_edge: ; preds = %cond.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_scan_exec_realpath.exit.thread

if.end.i:                                         ; preds = %cond.end63
  %f_path.i = getelementptr inbounds %struct.file, ptr %36, i32 0, i32 1
  %call.i = call ptr @tomoyo_realpath_from_path(ptr noundef %f_path.i) #9
  %38 = ptrtoint ptr %exe.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %exe.i, align 4
  %tobool2.not.i = icmp eq ptr %call.i, null
  br i1 %tobool2.not.i, label %if.end.i.tomoyo_scan_exec_realpath.exit.thread_crit_edge, label %tomoyo_scan_exec_realpath.exit

if.end.i.tomoyo_scan_exec_realpath.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_scan_exec_realpath.exit.thread

tomoyo_scan_exec_realpath.exit.thread:            ; preds = %if.end.i.tomoyo_scan_exec_realpath.exit.thread_crit_edge, %cond.end63.tomoyo_scan_exec_realpath.exit.thread_crit_edge, %cond.end63.thread
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %exe.i) #9
  br label %cleanup383

tomoyo_scan_exec_realpath.exit:                   ; preds = %if.end.i
  call void @tomoyo_fill_path_info(ptr noundef nonnull %exe.i) #9
  %call5.i = call ptr @tomoyo_compare_name_union(ptr noundef nonnull %exe.i, ptr noundef %names_p.0568) #9
  %tobool6.i = icmp eq ptr %call5.i, null
  %39 = ptrtoint ptr %exe.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %exe.i, align 4
  call void @kfree(ptr noundef %40) #9
  %cmp.i = xor i1 %tobool26, %tobool6.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %exe.i) #9
  br i1 %cmp.i, label %tomoyo_scan_exec_realpath.exit.for.inc389_crit_edge, label %tomoyo_scan_exec_realpath.exit.cleanup383_crit_edge

tomoyo_scan_exec_realpath.exit.cleanup383_crit_edge: ; preds = %tomoyo_scan_exec_realpath.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup383

tomoyo_scan_exec_realpath.exit.for.inc389_crit_edge: ; preds = %tomoyo_scan_exec_realpath.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc389

for.body77:                                       ; preds = %for.inc.for.body77_crit_edge, %if.end37.for.body77_crit_edge
  %tobool79.not = phi i1 [ false, %for.inc.for.body77_crit_edge ], [ true, %if.end37.for.body77_crit_edge ]
  %indvars.iv = phi i32 [ 1, %for.inc.for.body77_crit_edge ], [ 0, %if.end37.for.body77_crit_edge ]
  %. = select i1 %tobool79.not, i8 %22, i8 %24
  %41 = zext i8 %. to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %., label %sw.default [
    i8 0, label %do.end
    i8 1, label %do.end95
    i8 2, label %do.end106
    i8 3, label %do.end117
    i8 4, label %do.end128
    i8 5, label %do.end139
    i8 6, label %do.end150
    i8 7, label %do.end161
    i8 8, label %sw.bb168
    i8 9, label %sw.bb170
    i8 12, label %sw.bb172
    i8 13, label %sw.bb173
    i8 14, label %sw.bb174
    i8 15, label %sw.bb175
    i8 16, label %sw.bb176
    i8 17, label %sw.bb177
    i8 18, label %sw.bb178
    i8 19, label %for.body77.sw.bb255_crit_edge
    i8 20, label %sw.bb180
    i8 21, label %sw.bb181
    i8 22, label %sw.bb182
    i8 23, label %sw.bb183
    i8 24, label %sw.bb184
    i8 25, label %sw.bb185
    i8 26, label %sw.bb186
    i8 27, label %sw.bb187
    i8 28, label %sw.bb188
    i8 29, label %sw.bb189
    i8 30, label %sw.bb190
    i8 10, label %sw.bb191
    i8 11, label %sw.bb196
    i8 60, label %for.body77.sw.epilog249.thread_crit_edge
  ]

for.body77.sw.epilog249.thread_crit_edge:         ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog249.thread

for.body77.sw.bb255_crit_edge:                    ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb255

do.end:                                           ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #11
  %42 = call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 99
  %46 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cred, align 16
  %uid = getelementptr inbounds %struct.cred, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %48)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %uid, align 4
  %.fca.0.insert440 = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call90 = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert440) #9
  br label %sw.epilog249.thread

do.end95:                                         ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #11
  %49 = call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i514 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i514 to ptr
  %task98 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task98 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task98, align 8
  %cred99 = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 99
  %53 = ptrtoint ptr %cred99 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cred99, align 16
  %euid = getelementptr inbounds %struct.cred, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %55)
  %agg.tmp92.sroa.0.0.copyload = load i32, ptr %euid, align 4
  %.fca.0.insert439 = insertvalue [1 x i32] poison, i32 %agg.tmp92.sroa.0.0.copyload, 0
  %call101 = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert439) #9
  br label %sw.epilog249.thread

do.end106:                                        ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #11
  %56 = call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i515 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i515 to ptr
  %task109 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %task109 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task109, align 8
  %cred110 = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 99
  %60 = ptrtoint ptr %cred110 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cred110, align 16
  %suid = getelementptr inbounds %struct.cred, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %suid to i32
  call void @__asan_load4_noabort(i32 %62)
  %agg.tmp103.sroa.0.0.copyload = load i32, ptr %suid, align 4
  %.fca.0.insert438 = insertvalue [1 x i32] poison, i32 %agg.tmp103.sroa.0.0.copyload, 0
  %call112 = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert438) #9
  br label %sw.epilog249.thread

do.end117:                                        ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #11
  %63 = call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i516 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i516 to ptr
  %task120 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %task120 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task120, align 8
  %cred121 = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 99
  %67 = ptrtoint ptr %cred121 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cred121, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %68, i32 0, i32 10
  %69 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %69)
  %agg.tmp114.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %.fca.0.insert437 = insertvalue [1 x i32] poison, i32 %agg.tmp114.sroa.0.0.copyload, 0
  %call123 = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert437) #9
  br label %sw.epilog249.thread

do.end128:                                        ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #11
  %70 = call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i517 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i517 to ptr
  %task131 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %task131 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %task131, align 8
  %cred132 = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 99
  %74 = ptrtoint ptr %cred132 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cred132, align 16
  %gid = getelementptr inbounds %struct.cred, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %76)
  %agg.tmp125.sroa.0.0.copyload = load i32, ptr %gid, align 4
  %.fca.0.insert436 = insertvalue [1 x i32] poison, i32 %agg.tmp125.sroa.0.0.copyload, 0
  %call134 = call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert436) #9
  br label %sw.epilog249.thread

do.end139:                                        ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #11
  %77 = call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i518 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i518 to ptr
  %task142 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %task142 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task142, align 8
  %cred143 = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 99
  %81 = ptrtoint ptr %cred143 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cred143, align 16
  %egid = getelementptr inbounds %struct.cred, ptr %82, i32 0, i32 9
  %83 = ptrtoint ptr %egid to i32
  call void @__asan_load4_noabort(i32 %83)
  %agg.tmp136.sroa.0.0.copyload = load i32, ptr %egid, align 4
  %.fca.0.insert435 = insertvalue [1 x i32] poison, i32 %agg.tmp136.sroa.0.0.copyload, 0
  %call145 = call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert435) #9
  br label %sw.epilog249.thread

do.end150:                                        ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #11
  %84 = call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i519 = and i32 %84, -16384
  %85 = inttoptr i32 %and.i519 to ptr
  %task153 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %task153 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %task153, align 8
  %cred154 = getelementptr inbounds %struct.task_struct, ptr %87, i32 0, i32 99
  %88 = ptrtoint ptr %cred154 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cred154, align 16
  %sgid = getelementptr inbounds %struct.cred, ptr %89, i32 0, i32 7
  %90 = ptrtoint ptr %sgid to i32
  call void @__asan_load4_noabort(i32 %90)
  %agg.tmp147.sroa.0.0.copyload = load i32, ptr %sgid, align 4
  %.fca.0.insert434 = insertvalue [1 x i32] poison, i32 %agg.tmp147.sroa.0.0.copyload, 0
  %call156 = call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert434) #9
  br label %sw.epilog249.thread

do.end161:                                        ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #11
  %91 = call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i520 = and i32 %91, -16384
  %92 = inttoptr i32 %and.i520 to ptr
  %task164 = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %task164 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %task164, align 8
  %cred165 = getelementptr inbounds %struct.task_struct, ptr %94, i32 0, i32 99
  %95 = ptrtoint ptr %cred165 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cred165, align 16
  %fsgid = getelementptr inbounds %struct.cred, ptr %96, i32 0, i32 11
  %97 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %97)
  %agg.tmp158.sroa.0.0.copyload = load i32, ptr %fsgid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp158.sroa.0.0.copyload, 0
  %call167 = call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #9
  br label %sw.epilog249.thread

sw.bb168:                                         ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #11
  %98 = call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i.i = and i32 %98, -16384
  %99 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %task.i, align 8
  %call.i.i = call i32 @__task_pid_nr_ns(ptr noundef %101, i32 noundef 1, ptr noundef null) #9
  br label %sw.epilog249.thread

sw.bb170:                                         ; preds = %for.body77
  %102 = call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i.i.i.i.i.i = and i32 %102, -16384
  %103 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %105, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !70
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i521 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i521, label %sw.bb170.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

sw.bb170.rcu_read_lock.exit.i_crit_edge:          ; preds = %sw.bb170
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %sw.bb170
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %sw.bb170.rcu_read_lock.exit.i_crit_edge
  %106 = call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i.i522 = and i32 %106, -16384
  %107 = inttoptr i32 %and.i.i522 to ptr
  %task.i523 = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %task.i523 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %task.i523, align 8
  %real_parent.i = getelementptr inbounds %struct.task_struct, ptr %109, i32 0, i32 71
  %110 = ptrtoint ptr %real_parent.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile ptr, ptr %real_parent.i, align 4
  %call2.i = call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i524 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i524, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end8.i_crit_edge

rcu_read_lock.exit.i.do.end8.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b11.i = load i1, ptr @tomoyo_sys_getppid.__warned, align 1
  br i1 %.b11.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tomoyo_sys_getppid.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 1139, ptr noundef nonnull @.str.21) #9
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %rcu_read_lock.exit.i.do.end8.i_crit_edge
  %call.i12.i = call i32 @__task_pid_nr_ns(ptr noundef %111, i32 noundef 1, ptr noundef null) #9
  %call.i13.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i13.i, label %do.end8.i.tomoyo_sys_getppid.exit_crit_edge, label %land.lhs.true.i16.i

do.end8.i.tomoyo_sys_getppid.exit_crit_edge:      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_sys_getppid.exit

land.lhs.true.i16.i:                              ; preds = %do.end8.i
  %call1.i14.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14.i)
  %tobool.not.i15.i = icmp eq i32 %call1.i14.i, 0
  br i1 %tobool.not.i15.i, label %land.lhs.true.i16.i.tomoyo_sys_getppid.exit_crit_edge, label %land.lhs.true2.i18.i

land.lhs.true.i16.i.tomoyo_sys_getppid.exit_crit_edge: ; preds = %land.lhs.true.i16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_sys_getppid.exit

land.lhs.true2.i18.i:                             ; preds = %land.lhs.true.i16.i
  %.b4.i17.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i17.i, label %land.lhs.true2.i18.i.tomoyo_sys_getppid.exit_crit_edge, label %if.then.i19.i

land.lhs.true2.i18.i.tomoyo_sys_getppid.exit_crit_edge: ; preds = %land.lhs.true2.i18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_sys_getppid.exit

if.then.i19.i:                                    ; preds = %land.lhs.true2.i18.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #9
  br label %tomoyo_sys_getppid.exit

tomoyo_sys_getppid.exit:                          ; preds = %if.then.i19.i, %land.lhs.true2.i18.i.tomoyo_sys_getppid.exit_crit_edge, %land.lhs.true.i16.i.tomoyo_sys_getppid.exit_crit_edge, %do.end8.i.tomoyo_sys_getppid.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !71
  %112 = call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i.i.i.i.i20.i = and i32 %112, -16384
  %113 = inttoptr i32 %and.i.i.i.i.i20.i to ptr
  %preempt_count.i.i.i.i21.i = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %preempt_count.i.i.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %preempt_count.i.i.i.i21.i, align 4
  %sub.i.i.i.i = add i32 %115, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i21.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %sw.epilog249.thread

sw.bb172:                                         ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog249.thread

sw.bb173:                                         ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog249.thread

sw.bb174:                                         ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog249.thread

sw.bb175:                                         ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog249.thread

sw.bb176:                                         ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog249.thread

sw.bb177:                                         ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog249.thread

sw.bb178:                                         ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog249.thread

sw.bb180:                                         ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb255

sw.bb181:                                         ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb255

sw.bb182:                                         ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb255

sw.bb183:                                         ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb255

sw.bb184:                                         ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb255

sw.bb185:                                         ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb255

sw.bb186:                                         ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb255

sw.bb187:                                         ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb255

sw.bb188:                                         ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb255

sw.bb189:                                         ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb255

sw.bb190:                                         ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb255

sw.bb191:                                         ; preds = %for.body77
  br i1 %tobool10.not536, label %sw.bb191.cleanup383_crit_edge, label %if.end194

sw.bb191.cleanup383_crit_edge:                    ; preds = %sw.bb191
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup383

if.end194:                                        ; preds = %sw.bb191
  call void @__sanitizer_cov_trace_pc() #11
  %116 = ptrtoint ptr %argc195 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %argc195, align 4
  br label %sw.epilog249.thread

sw.bb196:                                         ; preds = %for.body77
  br i1 %tobool10.not536, label %sw.bb196.cleanup383_crit_edge, label %if.end199

sw.bb196.cleanup383_crit_edge:                    ; preds = %sw.bb196
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup383

if.end199:                                        ; preds = %sw.bb196
  call void @__sanitizer_cov_trace_pc() #11
  %118 = ptrtoint ptr %envc200 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %envc200, align 4
  br label %sw.epilog249.thread

sw.default:                                       ; preds = %for.body77
  br i1 %tobool201.not, label %sw.default.cleanup383_crit_edge, label %if.end203

sw.default.cleanup383_crit_edge:                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup383

if.end203:                                        ; preds = %sw.default
  %120 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %9, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool204.not = icmp eq i8 %121, 0
  br i1 %tobool204.not, label %if.then205, label %if.end203.if.end207_crit_edge

if.end203.if.end207_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end207

if.then205:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #11
  call void @tomoyo_get_attributes(ptr noundef nonnull %9)
  %122 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 1, ptr %9, align 4
  br label %if.end207

if.end207:                                        ; preds = %if.then205, %if.end203.if.end207_crit_edge
  %switch.tableidx = add i8 %., -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %switch.tableidx)
  %123 = icmp ult i8 %switch.tableidx, 26
  br i1 %123, label %switch.lookup, label %if.end207.cleanup383_crit_edge

if.end207.cleanup383_crit_edge:                   ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup383

switch.lookup:                                    ; preds = %if.end207
  %124 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [26 x i32], ptr @switch.table.tomoyo_condition, i32 0, i32 %124
  %125 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %125)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx = getelementptr %struct.tomoyo_obj_info, ptr %9, i32 0, i32 1, i32 %switch.load
  %126 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool215.not = icmp eq i8 %127, 0
  br i1 %tobool215.not, label %switch.lookup.cleanup383_crit_edge, label %if.end217

switch.lookup.cleanup383_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup383

if.end217:                                        ; preds = %switch.lookup
  %128 = zext i8 %. to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %., label %if.end217.sw.epilog249.thread_crit_edge [
    i8 33, label %if.end217.sw.bb222_crit_edge
    i8 42, label %if.end217.sw.bb222_crit_edge584
    i8 51, label %if.end217.sw.bb222_crit_edge585
    i8 55, label %if.end217.sw.bb222_crit_edge586
    i8 34, label %if.end217.sw.bb226_crit_edge
    i8 43, label %if.end217.sw.bb226_crit_edge587
    i8 52, label %if.end217.sw.bb226_crit_edge588
    i8 56, label %if.end217.sw.bb226_crit_edge589
    i8 35, label %if.end217.sw.bb230_crit_edge
    i8 44, label %if.end217.sw.bb230_crit_edge590
    i8 53, label %if.end217.sw.bb230_crit_edge591
    i8 57, label %if.end217.sw.bb230_crit_edge592
    i8 36, label %if.end217.sw.bb231_crit_edge
    i8 45, label %if.end217.sw.bb231_crit_edge593
    i8 37, label %if.end217.sw.bb232_crit_edge
    i8 46, label %if.end217.sw.bb232_crit_edge594
    i8 39, label %if.end217.sw.bb234_crit_edge
    i8 48, label %if.end217.sw.bb234_crit_edge595
    i8 40, label %if.end217.sw.bb237_crit_edge
    i8 49, label %if.end217.sw.bb237_crit_edge596
    i8 41, label %if.end217.sw.bb239_crit_edge
    i8 50, label %if.end217.sw.bb239_crit_edge597
    i8 38, label %if.end217.sw.bb242_crit_edge
    i8 47, label %if.end217.sw.bb242_crit_edge598
    i8 54, label %if.end217.sw.bb242_crit_edge599
    i8 58, label %if.end217.sw.bb242_crit_edge600
  ]

if.end217.sw.bb242_crit_edge600:                  ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb242

if.end217.sw.bb242_crit_edge599:                  ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb242

if.end217.sw.bb242_crit_edge598:                  ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb242

if.end217.sw.bb242_crit_edge:                     ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb242

if.end217.sw.bb239_crit_edge597:                  ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb239

if.end217.sw.bb239_crit_edge:                     ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb239

if.end217.sw.bb237_crit_edge596:                  ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb237

if.end217.sw.bb237_crit_edge:                     ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb237

if.end217.sw.bb234_crit_edge595:                  ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb234

if.end217.sw.bb234_crit_edge:                     ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb234

if.end217.sw.bb232_crit_edge594:                  ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb232

if.end217.sw.bb232_crit_edge:                     ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb232

if.end217.sw.bb231_crit_edge593:                  ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb231

if.end217.sw.bb231_crit_edge:                     ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb231

if.end217.sw.bb230_crit_edge592:                  ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb230

if.end217.sw.bb230_crit_edge591:                  ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb230

if.end217.sw.bb230_crit_edge590:                  ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb230

if.end217.sw.bb230_crit_edge:                     ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb230

if.end217.sw.bb226_crit_edge589:                  ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb226

if.end217.sw.bb226_crit_edge588:                  ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb226

if.end217.sw.bb226_crit_edge587:                  ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb226

if.end217.sw.bb226_crit_edge:                     ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb226

if.end217.sw.bb222_crit_edge586:                  ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb222

if.end217.sw.bb222_crit_edge585:                  ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb222

if.end217.sw.bb222_crit_edge584:                  ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb222

if.end217.sw.bb222_crit_edge:                     ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb222

if.end217.sw.epilog249.thread_crit_edge:          ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog249.thread

sw.bb222:                                         ; preds = %if.end217.sw.bb222_crit_edge, %if.end217.sw.bb222_crit_edge584, %if.end217.sw.bb222_crit_edge585, %if.end217.sw.bb222_crit_edge586
  %arrayidx220 = getelementptr %struct.tomoyo_obj_info, ptr %9, i32 0, i32 4, i32 %switch.load
  %129 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_load4_noabort(i32 %129)
  %.unpack511 = load i32, ptr %arrayidx220, align 4
  %130 = insertvalue [1 x i32] undef, i32 %.unpack511, 0
  %call225 = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %130) #9
  br label %sw.epilog249.thread

sw.bb226:                                         ; preds = %if.end217.sw.bb226_crit_edge, %if.end217.sw.bb226_crit_edge587, %if.end217.sw.bb226_crit_edge588, %if.end217.sw.bb226_crit_edge589
  %gid227 = getelementptr %struct.tomoyo_obj_info, ptr %9, i32 0, i32 4, i32 %switch.load, i32 1
  %131 = ptrtoint ptr %gid227 to i32
  call void @__asan_load4_noabort(i32 %131)
  %.unpack = load i32, ptr %gid227, align 4
  %132 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call229 = call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %132) #9
  br label %sw.epilog249.thread

sw.bb230:                                         ; preds = %if.end217.sw.bb230_crit_edge, %if.end217.sw.bb230_crit_edge590, %if.end217.sw.bb230_crit_edge591, %if.end217.sw.bb230_crit_edge592
  %ino = getelementptr %struct.tomoyo_obj_info, ptr %9, i32 0, i32 4, i32 %switch.load, i32 2
  %133 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %ino, align 4
  br label %sw.epilog249.thread

sw.bb231:                                         ; preds = %if.end217.sw.bb231_crit_edge, %if.end217.sw.bb231_crit_edge593
  %dev = getelementptr %struct.tomoyo_obj_info, ptr %9, i32 0, i32 4, i32 %switch.load, i32 4
  %135 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %dev, align 4
  %shr = lshr i32 %136, 20
  br label %sw.epilog249.thread

sw.bb232:                                         ; preds = %if.end217.sw.bb232_crit_edge, %if.end217.sw.bb232_crit_edge594
  %dev233 = getelementptr %struct.tomoyo_obj_info, ptr %9, i32 0, i32 4, i32 %switch.load, i32 4
  %137 = ptrtoint ptr %dev233 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %dev233, align 4
  %and = and i32 %138, 1048575
  br label %sw.epilog249.thread

sw.bb234:                                         ; preds = %if.end217.sw.bb234_crit_edge, %if.end217.sw.bb234_crit_edge595
  %mode = getelementptr %struct.tomoyo_obj_info, ptr %9, i32 0, i32 4, i32 %switch.load, i32 3
  %139 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %mode, align 4
  %141 = and i16 %140, -4096
  %and236 = zext i16 %141 to i32
  br label %sw.epilog249.thread

sw.bb237:                                         ; preds = %if.end217.sw.bb237_crit_edge, %if.end217.sw.bb237_crit_edge596
  %rdev = getelementptr %struct.tomoyo_obj_info, ptr %9, i32 0, i32 4, i32 %switch.load, i32 5
  %142 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %rdev, align 4
  %shr238 = lshr i32 %143, 20
  br label %sw.epilog249.thread

sw.bb239:                                         ; preds = %if.end217.sw.bb239_crit_edge, %if.end217.sw.bb239_crit_edge597
  %rdev240 = getelementptr %struct.tomoyo_obj_info, ptr %9, i32 0, i32 4, i32 %switch.load, i32 5
  %144 = ptrtoint ptr %rdev240 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %rdev240, align 4
  %and241 = and i32 %145, 1048575
  br label %sw.epilog249.thread

sw.bb242:                                         ; preds = %if.end217.sw.bb242_crit_edge, %if.end217.sw.bb242_crit_edge598, %if.end217.sw.bb242_crit_edge599, %if.end217.sw.bb242_crit_edge600
  %mode243 = getelementptr %struct.tomoyo_obj_info, ptr %9, i32 0, i32 4, i32 %switch.load, i32 3
  %146 = ptrtoint ptr %mode243 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %mode243, align 4
  %148 = and i16 %147, 4095
  %and245 = zext i16 %148 to i32
  br label %sw.epilog249.thread

sw.epilog249.thread:                              ; preds = %sw.bb242, %sw.bb239, %sw.bb237, %sw.bb234, %sw.bb232, %sw.bb231, %sw.bb230, %sw.bb226, %sw.bb222, %if.end217.sw.epilog249.thread_crit_edge, %if.end199, %if.end194, %sw.bb178, %sw.bb177, %sw.bb176, %sw.bb175, %sw.bb174, %sw.bb173, %sw.bb172, %tomoyo_sys_getppid.exit, %sw.bb168, %do.end161, %do.end150, %do.end139, %do.end128, %do.end117, %do.end106, %do.end95, %do.end, %for.body77.sw.epilog249.thread_crit_edge
  %value.2.ph = phi i32 [ %call90, %do.end ], [ %call101, %do.end95 ], [ %call112, %do.end106 ], [ %call123, %do.end117 ], [ %call134, %do.end128 ], [ %call145, %do.end139 ], [ %call156, %do.end150 ], [ %call167, %do.end161 ], [ %call.i.i, %sw.bb168 ], [ %call.i12.i, %tomoyo_sys_getppid.exit ], [ 49152, %sw.bb172 ], [ 40960, %sw.bb173 ], [ 32768, %sw.bb174 ], [ 24576, %sw.bb175 ], [ 16384, %sw.bb176 ], [ 8192, %sw.bb177 ], [ 4096, %sw.bb178 ], [ %117, %if.end194 ], [ %119, %if.end199 ], [ 0, %for.body77.sw.epilog249.thread_crit_edge ], [ %call225, %sw.bb222 ], [ %call229, %sw.bb226 ], [ %134, %sw.bb230 ], [ %shr, %sw.bb231 ], [ %and, %sw.bb232 ], [ %and236, %sw.bb234 ], [ %shr238, %sw.bb237 ], [ %and241, %sw.bb239 ], [ %and245, %sw.bb242 ], [ 0, %if.end217.sw.epilog249.thread_crit_edge ]
  %arrayidx251549 = getelementptr [2 x i32], ptr %max_v, i32 0, i32 %indvars.iv
  %149 = ptrtoint ptr %arrayidx251549 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %value.2.ph, ptr %arrayidx251549, align 4
  %arrayidx253550 = getelementptr [2 x i32], ptr %min_v, i32 0, i32 %indvars.iv
  %150 = ptrtoint ptr %arrayidx253550 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %value.2.ph, ptr %arrayidx253550, align 4
  br label %for.inc

sw.bb255:                                         ; preds = %sw.bb190, %sw.bb189, %sw.bb188, %sw.bb187, %sw.bb186, %sw.bb185, %sw.bb184, %sw.bb183, %sw.bb182, %sw.bb181, %sw.bb180, %for.body77.sw.bb255_crit_edge
  %value.2 = phi i32 [ 1, %sw.bb190 ], [ 2, %sw.bb189 ], [ 4, %sw.bb188 ], [ 8, %sw.bb187 ], [ 16, %sw.bb186 ], [ 32, %sw.bb185 ], [ 64, %sw.bb184 ], [ 128, %sw.bb183 ], [ 256, %sw.bb182 ], [ 512, %sw.bb181 ], [ 1024, %sw.bb180 ], [ 2048, %for.body77.sw.bb255_crit_edge ]
  %arrayidx251 = getelementptr [2 x i32], ptr %max_v, i32 0, i32 %indvars.iv
  %151 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %value.2, ptr %arrayidx251, align 4
  %arrayidx253 = getelementptr [2 x i32], ptr %min_v, i32 0, i32 %indvars.iv
  %152 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %value.2, ptr %arrayidx253, align 4
  %arrayidx257 = getelementptr [2 x i8], ptr %is_bitop, i32 0, i32 %indvars.iv
  %153 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 1, ptr %arrayidx257, align 1
  br label %for.inc

for.inc:                                          ; preds = %sw.bb255, %sw.epilog249.thread
  br i1 %tobool79.not, label %for.inc.for.body77_crit_edge, label %for.end

for.inc.for.body77_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body77

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %22)
  %cmp264 = icmp eq i8 %22, 60
  br i1 %cmp264, label %if.then266, label %for.end.if.end274_crit_edge

for.end.if.end274_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end274

if.then266:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr268 = getelementptr %struct.tomoyo_number_union, ptr %numbers_p.0569, i32 1
  %154 = ptrtoint ptr %numbers_p.0569 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %numbers_p.0569, align 4
  %156 = ptrtoint ptr %min_v to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %min_v, align 8
  %arrayidx272 = getelementptr [2 x i32], ptr %numbers_p.0569, i32 0, i32 1
  %157 = ptrtoint ptr %arrayidx272 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx272, align 4
  %159 = ptrtoint ptr %max_v to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %max_v, align 8
  br label %if.end274

if.end274:                                        ; preds = %if.then266, %for.end.if.end274_crit_edge
  %numbers_p.1 = phi ptr [ %incdec.ptr268, %if.then266 ], [ %numbers_p.0569, %for.end.if.end274_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %24)
  %cmp276 = icmp eq i8 %24, 60
  br i1 %cmp276, label %if.then278, label %if.end312

if.then278:                                       ; preds = %if.end274
  %incdec.ptr280 = getelementptr %struct.tomoyo_number_union, ptr %numbers_p.1, i32 1
  %group = getelementptr inbounds %struct.tomoyo_number_union, ptr %numbers_p.1, i32 0, i32 1
  %160 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %group, align 4
  %tobool281.not = icmp eq ptr %161, null
  %162 = ptrtoint ptr %min_v to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %min_v, align 8
  br i1 %tobool281.not, label %if.else, label %if.then282

if.then282:                                       ; preds = %if.then278
  %164 = ptrtoint ptr %max_v to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %max_v, align 8
  %call286 = call zeroext i1 @tomoyo_number_matches_group(i32 noundef %163, i32 noundef %165, ptr noundef nonnull %161) #9
  %166 = zext i1 %call286 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %166)
  %cmp290 = icmp eq i8 %20, %166
  br i1 %cmp290, label %if.then282.for.inc389_crit_edge, label %if.then282.cleanup383_crit_edge

if.then282.cleanup383_crit_edge:                  ; preds = %if.then282
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup383

if.then282.for.inc389_crit_edge:                  ; preds = %if.then282
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc389

if.else:                                          ; preds = %if.then278
  %arrayidx296 = getelementptr [2 x i32], ptr %numbers_p.1, i32 0, i32 1
  %167 = ptrtoint ptr %arrayidx296 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx296, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %163, i32 %168)
  %cmp297.not = icmp ugt i32 %163, %168
  br i1 %cmp297.not, label %if.else.land.end_crit_edge, label %land.rhs

if.else.land.end_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %169 = ptrtoint ptr %max_v to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %max_v, align 8
  %171 = ptrtoint ptr %numbers_p.1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %numbers_p.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %170, i32 %172)
  %cmp302 = icmp uge i32 %170, %172
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else.land.end_crit_edge
  %173 = phi i1 [ false, %if.else.land.end_crit_edge ], [ %cmp302, %land.rhs ]
  %174 = zext i1 %173 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %174)
  %cmp306 = icmp eq i8 %20, %174
  br i1 %cmp306, label %land.end.for.inc389_crit_edge, label %land.end.cleanup383_crit_edge

land.end.cleanup383_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup383

land.end.for.inc389_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc389

if.end312:                                        ; preds = %if.end274
  %175 = ptrtoint ptr %is_bitop to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %is_bitop, align 2, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool314.not = icmp eq i8 %176, 0
  %177 = ptrtoint ptr %arrayidx317 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx317, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool343.not = icmp eq i8 %178, 0
  br i1 %tobool314.not, label %if.else341, label %land.lhs.true316

land.lhs.true316:                                 ; preds = %if.end312
  br i1 %tobool343.not, label %if.then324, label %land.lhs.true316.cleanup383_crit_edge

land.lhs.true316.cleanup383_crit_edge:            ; preds = %land.lhs.true316
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup383

if.then324:                                       ; preds = %land.lhs.true316
  %179 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %179, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %24, label %if.then324.cleanup383_crit_edge [
    i8 38, label %if.then324.sw.bb326_crit_edge
    i8 54, label %if.then324.sw.bb326_crit_edge601
    i8 47, label %if.then324.sw.bb326_crit_edge602
    i8 58, label %if.then324.sw.bb326_crit_edge603
  ]

if.then324.sw.bb326_crit_edge603:                 ; preds = %if.then324
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb326

if.then324.sw.bb326_crit_edge602:                 ; preds = %if.then324
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb326

if.then324.sw.bb326_crit_edge601:                 ; preds = %if.then324
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb326

if.then324.sw.bb326_crit_edge:                    ; preds = %if.then324
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb326

if.then324.cleanup383_crit_edge:                  ; preds = %if.then324
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup383

sw.bb326:                                         ; preds = %if.then324.sw.bb326_crit_edge, %if.then324.sw.bb326_crit_edge601, %if.then324.sw.bb326_crit_edge602, %if.then324.sw.bb326_crit_edge603
  %180 = ptrtoint ptr %max_v to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %max_v, align 8
  %182 = ptrtoint ptr %arrayidx328 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx328, align 4
  %and329 = and i32 %183, %181
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and329)
  %tobool330.not = icmp eq i32 %and329, 0
  %cmp336 = xor i1 %tobool26, %tobool330.not
  br i1 %cmp336, label %sw.bb326.for.inc389_crit_edge, label %sw.bb326.cleanup383_crit_edge

sw.bb326.cleanup383_crit_edge:                    ; preds = %sw.bb326
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup383

sw.bb326.for.inc389_crit_edge:                    ; preds = %sw.bb326
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc389

if.else341:                                       ; preds = %if.end312
  br i1 %tobool343.not, label %if.end363, label %if.then344

if.then344:                                       ; preds = %if.else341
  %184 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %184, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %22, label %if.then344.cleanup383_crit_edge [
    i8 38, label %if.then344.sw.bb346_crit_edge
    i8 54, label %if.then344.sw.bb346_crit_edge604
    i8 47, label %if.then344.sw.bb346_crit_edge605
    i8 58, label %if.then344.sw.bb346_crit_edge606
  ]

if.then344.sw.bb346_crit_edge606:                 ; preds = %if.then344
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb346

if.then344.sw.bb346_crit_edge605:                 ; preds = %if.then344
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb346

if.then344.sw.bb346_crit_edge604:                 ; preds = %if.then344
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb346

if.then344.sw.bb346_crit_edge:                    ; preds = %if.then344
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb346

if.then344.cleanup383_crit_edge:                  ; preds = %if.then344
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup383

sw.bb346:                                         ; preds = %if.then344.sw.bb346_crit_edge, %if.then344.sw.bb346_crit_edge604, %if.then344.sw.bb346_crit_edge605, %if.then344.sw.bb346_crit_edge606
  %185 = ptrtoint ptr %max_v to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %max_v, align 8
  %187 = ptrtoint ptr %arrayidx328 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx328, align 4
  %and349 = and i32 %188, %186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and349)
  %tobool350.not = icmp eq i32 %and349, 0
  %cmp356 = xor i1 %tobool26, %tobool350.not
  br i1 %cmp356, label %sw.bb346.for.inc389_crit_edge, label %sw.bb346.cleanup383_crit_edge

sw.bb346.cleanup383_crit_edge:                    ; preds = %sw.bb346
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup383

sw.bb346.for.inc389_crit_edge:                    ; preds = %sw.bb346
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc389

if.end363:                                        ; preds = %if.else341
  %189 = ptrtoint ptr %min_v to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %min_v, align 8
  %191 = ptrtoint ptr %arrayidx328 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx328, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %190, i32 %192)
  %cmp366.not = icmp ugt i32 %190, %192
  br i1 %cmp366.not, label %if.end363.land.end373_crit_edge, label %land.rhs368

if.end363.land.end373_crit_edge:                  ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end373

land.rhs368:                                      ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #11
  %193 = ptrtoint ptr %max_v to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %max_v, align 8
  %195 = ptrtoint ptr %arrayidx370 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx370, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %194, i32 %196)
  %cmp371 = icmp uge i32 %194, %196
  br label %land.end373

land.end373:                                      ; preds = %land.rhs368, %if.end363.land.end373_crit_edge
  %197 = phi i1 [ false, %if.end363.land.end373_crit_edge ], [ %cmp371, %land.rhs368 ]
  %198 = zext i1 %197 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %198)
  %cmp377 = icmp eq i8 %20, %198
  br i1 %cmp377, label %land.end373.for.inc389_crit_edge, label %land.end373.cleanup383_crit_edge

land.end373.cleanup383_crit_edge:                 ; preds = %land.end373
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup383

land.end373.for.inc389_crit_edge:                 ; preds = %land.end373
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc389

cleanup383:                                       ; preds = %land.end373.cleanup383_crit_edge, %sw.bb346.cleanup383_crit_edge, %if.then344.cleanup383_crit_edge, %sw.bb326.cleanup383_crit_edge, %if.then324.cleanup383_crit_edge, %land.lhs.true316.cleanup383_crit_edge, %land.end.cleanup383_crit_edge, %if.then282.cleanup383_crit_edge, %switch.lookup.cleanup383_crit_edge, %if.end207.cleanup383_crit_edge, %sw.default.cleanup383_crit_edge, %sw.bb196.cleanup383_crit_edge, %sw.bb191.cleanup383_crit_edge, %tomoyo_scan_exec_realpath.exit.cleanup383_crit_edge, %tomoyo_scan_exec_realpath.exit.thread, %lor.lhs.false48.cleanup383_crit_edge, %cond.end.cleanup383_crit_edge, %sw.bb.cleanup383_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %is_bitop) #9
  br label %cleanup404

for.inc389:                                       ; preds = %land.end373.for.inc389_crit_edge, %sw.bb346.for.inc389_crit_edge, %sw.bb326.for.inc389_crit_edge, %land.end.for.inc389_crit_edge, %if.then282.for.inc389_crit_edge, %tomoyo_scan_exec_realpath.exit.for.inc389_crit_edge, %lor.lhs.false48.for.inc389_crit_edge, %if.then41.for.inc389_crit_edge, %for.body.for.inc389_crit_edge
  %names_p.2.ph = phi ptr [ %incdec.ptr42, %tomoyo_scan_exec_realpath.exit.for.inc389_crit_edge ], [ %incdec.ptr42, %lor.lhs.false48.for.inc389_crit_edge ], [ %incdec.ptr42, %if.then41.for.inc389_crit_edge ], [ %names_p.0568, %land.end373.for.inc389_crit_edge ], [ %names_p.0568, %sw.bb346.for.inc389_crit_edge ], [ %names_p.0568, %sw.bb326.for.inc389_crit_edge ], [ %names_p.0568, %for.body.for.inc389_crit_edge ], [ %names_p.0568, %if.then282.for.inc389_crit_edge ], [ %names_p.0568, %land.end.for.inc389_crit_edge ]
  %numbers_p.3.ph = phi ptr [ %numbers_p.0569, %tomoyo_scan_exec_realpath.exit.for.inc389_crit_edge ], [ %numbers_p.0569, %lor.lhs.false48.for.inc389_crit_edge ], [ %numbers_p.0569, %if.then41.for.inc389_crit_edge ], [ %numbers_p.1, %land.end373.for.inc389_crit_edge ], [ %numbers_p.1, %sw.bb346.for.inc389_crit_edge ], [ %numbers_p.1, %sw.bb326.for.inc389_crit_edge ], [ %numbers_p.0569, %for.body.for.inc389_crit_edge ], [ %incdec.ptr280, %if.then282.for.inc389_crit_edge ], [ %incdec.ptr280, %land.end.for.inc389_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %is_bitop) #9
  %inc390 = add nuw nsw i32 %i.0571, 1
  %exitcond.not = icmp eq i32 %inc390, %conv16
  br i1 %exitcond.not, label %for.inc389.for.end391_crit_edge, label %for.inc389.for.body_crit_edge

for.inc389.for.body_crit_edge:                    ; preds = %for.inc389
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc389.for.end391_crit_edge:                  ; preds = %for.inc389
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end391

for.end391:                                       ; preds = %for.inc389.for.end391_crit_edge, %if.end15.for.end391_crit_edge
  %199 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %ee, align 4
  %tobool393.not = icmp eq ptr %200, null
  br i1 %tobool393.not, label %for.end391.cleanup404_crit_edge, label %land.lhs.true394

for.end391.cleanup404_crit_edge:                  ; preds = %for.end391
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup404

land.lhs.true394:                                 ; preds = %for.end391
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool396.not = icmp eq i16 %5, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool399.not = icmp eq i16 %7, 0
  %or.cond512 = select i1 %tobool396.not, i1 %tobool399.not, i1 false
  br i1 %or.cond512, label %land.lhs.true394.cleanup404_crit_edge, label %if.then400

land.lhs.true394.cleanup404_crit_edge:            ; preds = %land.lhs.true394
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup404

if.then400:                                       ; preds = %land.lhs.true394
  %bprm1.i = getelementptr inbounds %struct.tomoyo_execve, ptr %200, i32 0, i32 2
  %201 = ptrtoint ptr %bprm1.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %bprm1.i, align 4
  %dump2.i = getelementptr inbounds %struct.tomoyo_execve, ptr %200, i32 0, i32 4
  %tmp.i = getelementptr inbounds %struct.tomoyo_execve, ptr %200, i32 0, i32 5
  %203 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %tmp.i, align 4
  %p.i = getelementptr inbounds %struct.linux_binprm, ptr %202, i32 0, i32 3
  %205 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %p.i, align 4
  %rem.i = and i32 %206, 4095
  %argc3.i = getelementptr inbounds %struct.linux_binprm, ptr %202, i32 0, i32 12
  %207 = ptrtoint ptr %argc3.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %argc3.i, align 4
  %envc4.i = getelementptr inbounds %struct.linux_binprm, ptr %202, i32 0, i32 13
  %209 = ptrtoint ptr %envc4.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %envc4.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %local_checked.i) #9
  %conv5.i = zext i16 %7 to i32
  %add.i = add nuw nsw i32 %conv5.i, %conv22
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %add.i)
  %cmp.i525 = icmp ult i32 %add.i, 33
  %211 = call ptr @memset(ptr %local_checked.i, i32 255, i32 32)
  br i1 %cmp.i525, label %if.then.i526, label %if.end8.i.i.i

if.then.i526:                                     ; preds = %if.then400
  call void @__sanitizer_cov_trace_pc() #11
  %212 = call ptr @memset(ptr %local_checked.i, i32 0, i32 32)
  br label %if.end12.i

if.end8.i.i.i:                                    ; preds = %if.then400
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3392) #14
  %tobool.not.i527 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i527, label %if.end8.i.i.i.tomoyo_scan_bprm.exit_crit_edge, label %if.end8.i.i.i.if.end12.i_crit_edge

if.end8.i.i.i.if.end12.i_crit_edge:               ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.end8.i.i.i.tomoyo_scan_bprm.exit_crit_edge:    ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_scan_bprm.exit

if.end12.i:                                       ; preds = %if.end8.i.i.i.if.end12.i_crit_edge, %if.then.i526
  %checked.0.i = phi ptr [ %local_checked.i, %if.then.i526 ], [ %call9.i.i.i, %if.end8.i.i.i.if.end12.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool13.not298.i = icmp eq i32 %208, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %tobool14.not299.i = icmp eq i32 %210, 0
  %or.cond300.i = select i1 %tobool13.not298.i, i1 %tobool14.not299.i, i1 false
  br i1 %or.cond300.i, label %if.end12.i.for.cond.preheader.i_crit_edge, label %while.body.lr.ph.i

if.end12.i.for.cond.preheader.i_crit_edge:        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.i

while.body.lr.ph.i:                               ; preds = %if.end12.i
  %data.i = getelementptr inbounds %struct.tomoyo_execve, ptr %200, i32 0, i32 4, i32 1
  %213 = getelementptr inbounds i8, ptr %arg.i.i, i32 4
  %add.ptr91.i = getelementptr i8, ptr %checked.0.i, i32 %conv22
  %214 = getelementptr inbounds i8, ptr %name.i.i, i32 4
  %215 = getelementptr inbounds i8, ptr %value.i258.i, i32 4
  br label %while.body.i

while.cond.loopexit.i:                            ; preds = %cleanup100.i.while.cond.loopexit.i_crit_edge, %if.else83.i.while.cond.loopexit.i_crit_edge
  %arg_len.0.ph.i = phi i32 [ %arg_len.3.i, %cleanup100.i.while.cond.loopexit.i_crit_edge ], [ %arg_len.2.i, %if.else83.i.while.cond.loopexit.i_crit_edge ]
  %argv_count.0.ph.i = phi i32 [ %argv_count.3.i, %cleanup100.i.while.cond.loopexit.i_crit_edge ], [ 0, %if.else83.i.while.cond.loopexit.i_crit_edge ]
  %envp_count.0.ph.i = phi i32 [ %envp_count.4.i, %cleanup100.i.while.cond.loopexit.i_crit_edge ], [ 0, %if.else83.i.while.cond.loopexit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argv_count.0.ph.i)
  %tobool13.not.i = icmp eq i32 %argv_count.0.ph.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %envp_count.0.ph.i)
  %tobool14.not.i = icmp eq i32 %envp_count.0.ph.i, 0
  %or.cond.i = select i1 %tobool13.not.i, i1 %tobool14.not.i, i1 false
  br i1 %or.cond.i, label %while.cond.loopexit.i.for.cond.preheader.i_crit_edge, label %while.cond.loopexit.i.while.body.i_crit_edge

while.cond.loopexit.i.while.body.i_crit_edge:     ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.cond.loopexit.i.for.cond.preheader.i_crit_edge: ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %while.cond.loopexit.i.for.cond.preheader.i_crit_edge, %if.end12.i.for.cond.preheader.i_crit_edge
  br i1 %tobool396.not, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

while.body.i:                                     ; preds = %while.cond.loopexit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %envp_count.0305.i = phi i32 [ %210, %while.body.lr.ph.i ], [ %envp_count.0.ph.i, %while.cond.loopexit.i.while.body.i_crit_edge ]
  %argv_count.0304.i = phi i32 [ %208, %while.body.lr.ph.i ], [ %argv_count.0.ph.i, %while.cond.loopexit.i.while.body.i_crit_edge ]
  %offset.0303.i = phi i32 [ %rem.i, %while.body.lr.ph.i ], [ 0, %while.cond.loopexit.i.while.body.i_crit_edge ]
  %pos.0302.i = phi i32 [ %206, %while.body.lr.ph.i ], [ %add18.i, %while.cond.loopexit.i.while.body.i_crit_edge ]
  %arg_len.0301.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %arg_len.0.ph.i, %while.cond.loopexit.i.while.body.i_crit_edge ]
  %call15.i = call zeroext i1 @tomoyo_dump_page(ptr noundef %202, i32 noundef %pos.0302.i, ptr noundef %dump2.i) #9
  br i1 %call15.i, label %if.end17.i, label %while.body.i.if.end148.i_crit_edge

while.body.i.if.end148.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148.i

if.end17.i:                                       ; preds = %while.body.i
  %sub.i = sub nuw nsw i32 4096, %offset.0303.i
  %add18.i = add i32 %sub.i, %pos.0302.i
  br label %while.body22.i

while.body22.i:                                   ; preds = %cleanup100.i.while.body22.i_crit_edge, %if.end17.i
  %envp_count.1296.i = phi i32 [ %envp_count.0305.i, %if.end17.i ], [ %envp_count.4.i, %cleanup100.i.while.body22.i_crit_edge ]
  %argv_count.1294.i = phi i32 [ %argv_count.0304.i, %if.end17.i ], [ %argv_count.3.i, %cleanup100.i.while.body22.i_crit_edge ]
  %offset.1293.i = phi i32 [ %offset.0303.i, %if.end17.i ], [ %inc.i, %cleanup100.i.while.body22.i_crit_edge ]
  %arg_len.1292.i = phi i32 [ %arg_len.0301.i, %if.end17.i ], [ %arg_len.3.i, %cleanup100.i.while.body22.i_crit_edge ]
  %216 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %data.i, align 4
  %inc.i = add nuw nsw i32 %offset.1293.i, 1
  %arrayidx.i = getelementptr i8, ptr %217, i32 %offset.1293.i
  %218 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %219)
  %tobool24.not.i = icmp ne i8 %219, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4086, i32 %arg_len.1292.i)
  %cmp25.i = icmp slt i32 %arg_len.1292.i, 4086
  %or.cond256.i = select i1 %tobool24.not.i, i1 %cmp25.i, i1 false
  br i1 %or.cond256.i, label %if.then27.i, label %while.body22.i.if.end71.i_crit_edge

while.body22.i.if.end71.i_crit_edge:              ; preds = %while.body22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71.i

if.then27.i:                                      ; preds = %while.body22.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %219)
  %cmp29.i = icmp eq i8 %219, 92
  br i1 %cmp29.i, label %if.then31.i, label %if.else36.i

if.then31.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc32.i = add nsw i32 %arg_len.1292.i, 1
  %arrayidx33.i = getelementptr i8, ptr %204, i32 %arg_len.1292.i
  %220 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 92, ptr %arrayidx33.i, align 1
  %inc34.i = add nsw i32 %arg_len.1292.i, 2
  %arrayidx35.i = getelementptr i8, ptr %204, i32 %inc32.i
  %221 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 92, ptr %arrayidx35.i, align 1
  br label %cleanup100.i

if.else36.i:                                      ; preds = %if.then27.i
  %222 = add i8 %219, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 94, i8 %222)
  %223 = icmp ult i8 %222, 94
  %inc45.i = add nsw i32 %arg_len.1292.i, 1
  %arrayidx46.i = getelementptr i8, ptr %204, i32 %arg_len.1292.i
  br i1 %223, label %if.then44.i, label %if.else47.i

if.then44.i:                                      ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #11
  %224 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %219, ptr %arrayidx46.i, align 1
  br label %cleanup100.i

if.else47.i:                                      ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #11
  %225 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 92, ptr %arrayidx46.i, align 1
  %226 = lshr i8 %219, 6
  %add51.i = or i8 %226, 48
  %inc53.i = add nsw i32 %arg_len.1292.i, 2
  %arrayidx54.i = getelementptr i8, ptr %204, i32 %inc45.i
  %227 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %add51.i, ptr %arrayidx54.i, align 1
  %228 = lshr i8 %219, 3
  %and.i528 = and i8 %228, 7
  %add57.i = or i8 %and.i528, 48
  %inc59.i = add nsw i32 %arg_len.1292.i, 3
  %arrayidx60.i = getelementptr i8, ptr %204, i32 %inc53.i
  %229 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %add57.i, ptr %arrayidx60.i, align 1
  %and62.i = and i8 %219, 7
  %add63.i = or i8 %and62.i, 48
  %inc65.i = add nsw i32 %arg_len.1292.i, 4
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.else47.i, %while.body22.i.if.end71.i_crit_edge
  %inc59.sink.i = phi i32 [ %inc59.i, %if.else47.i ], [ %arg_len.1292.i, %while.body22.i.if.end71.i_crit_edge ]
  %add63.sink.i = phi i8 [ %add63.i, %if.else47.i ], [ 0, %while.body22.i.if.end71.i_crit_edge ]
  %arg_len.2.i = phi i32 [ %inc65.i, %if.else47.i ], [ %arg_len.1292.i, %while.body22.i.if.end71.i_crit_edge ]
  %arrayidx66.i = getelementptr i8, ptr %204, i32 %inc59.sink.i
  %230 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %add63.sink.i, ptr %arrayidx66.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %219)
  %tobool72.not.i = icmp eq i8 %219, 0
  br i1 %tobool72.not.i, label %if.end74.i, label %if.end71.i.cleanup100.i_crit_edge

if.end71.i.cleanup100.i_crit_edge:                ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup100.i

if.end74.i:                                       ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argv_count.1294.i)
  %tobool75.not.i = icmp eq i32 %argv_count.1294.i, 0
  br i1 %tobool75.not.i, label %if.else83.i, label %if.then76.i

if.then76.i:                                      ; preds = %if.end74.i
  %231 = ptrtoint ptr %argc3.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %argc3.i, align 4
  %sub78.i = sub i32 %232, %argv_count.1294.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %arg.i.i) #9
  %233 = ptrtoint ptr %213 to i32
  call void @__asan_storeN_noabort(i32 %233, i32 8)
  store i64 -1, ptr %213, align 4
  %234 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %204, ptr %arg.i.i, align 4
  br i1 %tobool396.not, label %tomoyo_argv.exit.thread.i, label %if.then76.i.for.body.i.i_crit_edge

if.then76.i.for.body.i.i_crit_edge:               ; preds = %if.then76.i
  br label %for.body.i.i

tomoyo_argv.exit.thread.i:                        ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %arg.i.i) #9
  br label %if.end82.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then76.i.for.body.i.i_crit_edge
  %cmp27.i.i = phi i1 [ %cmp.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ true, %if.then76.i.for.body.i.i_crit_edge ]
  %i.026.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then76.i.for.body.i.i_crit_edge ]
  %checked.addr.024.i.i = phi ptr [ %incdec.ptr10.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %checked.0.i, %if.then76.i.for.body.i.i_crit_edge ]
  %argv.addr.022.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr21, %if.then76.i.for.body.i.i_crit_edge ]
  %235 = ptrtoint ptr %argv.addr.022.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %argv.addr.022.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %236, i32 %sub78.i)
  %cmp2.not.i.i = icmp eq i32 %236, %sub78.i
  br i1 %cmp2.not.i.i, label %if.end.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %237 = ptrtoint ptr %checked.addr.024.i.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 1, ptr %checked.addr.024.i.i, align 1
  call void @tomoyo_fill_path_info(ptr noundef nonnull %arg.i.i) #9
  %value.i.i = getelementptr inbounds %struct.tomoyo_argv, ptr %argv.addr.022.i.i, i32 0, i32 1
  %238 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %value.i.i, align 4
  %call.i.i529 = call zeroext i1 @tomoyo_path_matches_pattern(ptr noundef nonnull %arg.i.i, ptr noundef %239) #9
  %is_not.i.i = getelementptr inbounds %struct.tomoyo_argv, ptr %argv.addr.022.i.i, i32 0, i32 2
  %240 = ptrtoint ptr %is_not.i.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %is_not.i.i, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %241)
  %tobool.not.i.i530 = icmp ne i8 %241, 0
  %spec.select.i.i = xor i1 %call.i.i529, %tobool.not.i.i530
  br i1 %spec.select.i.i, label %if.end.i.i.for.inc.i.i_crit_edge, label %if.end.i.i.tomoyo_argv.exit.i_crit_edge

if.end.i.i.tomoyo_argv.exit.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_argv.exit.i

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.tomoyo_argv, ptr %argv.addr.022.i.i, i32 1
  %incdec.ptr10.i.i = getelementptr i8, ptr %checked.addr.024.i.i, i32 1
  %inc.i.i = add nuw nsw i32 %i.026.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %conv22)
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv22
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv22
  br i1 %exitcond.not.i.i, label %for.inc.i.i.tomoyo_argv.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.tomoyo_argv.exit.i_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_argv.exit.i

tomoyo_argv.exit.i:                               ; preds = %for.inc.i.i.tomoyo_argv.exit.i_crit_edge, %if.end.i.i.tomoyo_argv.exit.i_crit_edge
  %cmp.lcssa.i.i = phi i1 [ %cmp27.i.i, %if.end.i.i.tomoyo_argv.exit.i_crit_edge ], [ %cmp.i.i, %for.inc.i.i.tomoyo_argv.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %arg.i.i) #9
  br i1 %cmp.lcssa.i.i, label %tomoyo_argv.exit.i.if.end148.i_crit_edge, label %tomoyo_argv.exit.i.if.end82.i_crit_edge

tomoyo_argv.exit.i.if.end82.i_crit_edge:          ; preds = %tomoyo_argv.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82.i

tomoyo_argv.exit.i.if.end148.i_crit_edge:         ; preds = %tomoyo_argv.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148.i

if.end82.i:                                       ; preds = %tomoyo_argv.exit.i.if.end82.i_crit_edge, %tomoyo_argv.exit.thread.i
  %dec.i = add i32 %argv_count.1294.i, -1
  br label %cleanup100.i

if.else83.i:                                      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %envp_count.1296.i)
  %tobool84.not.i = icmp eq i32 %envp_count.1296.i, 0
  br i1 %tobool84.not.i, label %if.else83.i.while.cond.loopexit.i_crit_edge, label %if.then85.i

if.else83.i.while.cond.loopexit.i_crit_edge:      ; preds = %if.else83.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.loopexit.i

if.then85.i:                                      ; preds = %if.else83.i
  %call86.i = call ptr @strchr(ptr noundef %204, i32 noundef 61) #9
  %tobool87.not.i = icmp eq ptr %call86.i, null
  br i1 %tobool87.not.i, label %if.then85.i.cleanup.thread.i_crit_edge, label %if.then88.i

if.then85.i.cleanup.thread.i_crit_edge:           ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

if.then88.i:                                      ; preds = %if.then85.i
  %242 = ptrtoint ptr %call86.i to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 0, ptr %call86.i, align 1
  %add.ptr.i = getelementptr i8, ptr %call86.i, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %name.i.i) #9
  %243 = ptrtoint ptr %214 to i32
  call void @__asan_storeN_noabort(i32 %243, i32 8)
  store i64 -1, ptr %214, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %value.i258.i) #9
  %244 = ptrtoint ptr %215 to i32
  call void @__asan_storeN_noabort(i32 %244, i32 8)
  store i64 -1, ptr %215, align 4
  %245 = ptrtoint ptr %name.i.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %204, ptr %name.i.i, align 4
  call void @tomoyo_fill_path_info(ptr noundef nonnull %name.i.i) #9
  %246 = ptrtoint ptr %value.i258.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %add.ptr.i, ptr %value.i258.i, align 4
  call void @tomoyo_fill_path_info(ptr noundef nonnull %value.i258.i) #9
  br i1 %tobool399.not, label %tomoyo_envp.exit.thread.i, label %if.then88.i.for.body.i260.i_crit_edge

if.then88.i.for.body.i260.i_crit_edge:            ; preds = %if.then88.i
  br label %for.body.i260.i

tomoyo_envp.exit.thread.i:                        ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %value.i258.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %name.i.i) #9
  br label %cleanup.thread.i

for.body.i260.i:                                  ; preds = %for.inc.i269.i.for.body.i260.i_crit_edge, %if.then88.i.for.body.i260.i_crit_edge
  %cmp44.i.i = phi i1 [ %cmp.i267.i, %for.inc.i269.i.for.body.i260.i_crit_edge ], [ true, %if.then88.i.for.body.i260.i_crit_edge ]
  %i.043.i.i = phi i32 [ %inc.i266.i, %for.inc.i269.i.for.body.i260.i_crit_edge ], [ 0, %if.then88.i.for.body.i260.i_crit_edge ]
  %checked.addr.042.i.i = phi ptr [ %incdec.ptr24.i.i, %for.inc.i269.i.for.body.i260.i_crit_edge ], [ %add.ptr91.i, %if.then88.i.for.body.i260.i_crit_edge ]
  %envp.addr.040.i.i = phi ptr [ %incdec.ptr.i265.i, %for.inc.i269.i.for.body.i260.i_crit_edge ], [ %add.ptr23, %if.then88.i.for.body.i260.i_crit_edge ]
  %247 = ptrtoint ptr %envp.addr.040.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %envp.addr.040.i.i, align 4
  %call.i259.i = call zeroext i1 @tomoyo_path_matches_pattern(ptr noundef nonnull %name.i.i, ptr noundef %248) #9
  br i1 %call.i259.i, label %if.end.i262.i, label %for.body.i260.i.for.inc.i269.i_crit_edge

for.body.i260.i.for.inc.i269.i_crit_edge:         ; preds = %for.body.i260.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i269.i

if.end.i262.i:                                    ; preds = %for.body.i260.i
  %249 = ptrtoint ptr %checked.addr.042.i.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 1, ptr %checked.addr.042.i.i, align 1
  %value4.i.i = getelementptr inbounds %struct.tomoyo_envp, ptr %envp.addr.040.i.i, i32 0, i32 1
  %250 = ptrtoint ptr %value4.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %value4.i.i, align 4
  %tobool.not.i261.i = icmp eq ptr %251, null
  br i1 %tobool.not.i261.i, label %if.end20.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.end.i262.i
  %call7.i.i = call zeroext i1 @tomoyo_path_matches_pattern(ptr noundef nonnull %value.i258.i, ptr noundef nonnull %251) #9
  %is_not.i263.i = getelementptr inbounds %struct.tomoyo_envp, ptr %envp.addr.040.i.i, i32 0, i32 2
  %252 = ptrtoint ptr %is_not.i263.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %is_not.i263.i, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %253)
  %tobool8.not.i.i = icmp ne i8 %253, 0
  %spec.select.i264.i = xor i1 %call7.i.i, %tobool8.not.i.i
  br i1 %spec.select.i264.i, label %if.then5.i.i.for.inc.i269.i_crit_edge, label %if.then5.i.i.tomoyo_envp.exit.i_crit_edge

if.then5.i.i.tomoyo_envp.exit.i_crit_edge:        ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_envp.exit.i

if.then5.i.i.for.inc.i269.i_crit_edge:            ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i269.i

if.end20.i.i:                                     ; preds = %if.end.i262.i
  %is_not13.i.i = getelementptr inbounds %struct.tomoyo_envp, ptr %envp.addr.040.i.i, i32 0, i32 2
  %254 = ptrtoint ptr %is_not13.i.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %is_not13.i.i, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %255)
  %tobool14.not.not.i.i = icmp eq i8 %255, 0
  br i1 %tobool14.not.not.i.i, label %if.end20.i.i.tomoyo_envp.exit.i_crit_edge, label %if.end20.i.i.for.inc.i269.i_crit_edge

if.end20.i.i.for.inc.i269.i_crit_edge:            ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i269.i

if.end20.i.i.tomoyo_envp.exit.i_crit_edge:        ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_envp.exit.i

for.inc.i269.i:                                   ; preds = %if.end20.i.i.for.inc.i269.i_crit_edge, %if.then5.i.i.for.inc.i269.i_crit_edge, %for.body.i260.i.for.inc.i269.i_crit_edge
  %incdec.ptr.i265.i = getelementptr %struct.tomoyo_envp, ptr %envp.addr.040.i.i, i32 1
  %incdec.ptr24.i.i = getelementptr i8, ptr %checked.addr.042.i.i, i32 1
  %inc.i266.i = add nuw nsw i32 %i.043.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i266.i, i32 %conv5.i)
  %cmp.i267.i = icmp ult i32 %inc.i266.i, %conv5.i
  %exitcond.not.i268.i = icmp eq i32 %inc.i266.i, %conv5.i
  br i1 %exitcond.not.i268.i, label %for.inc.i269.i.tomoyo_envp.exit.i_crit_edge, label %for.inc.i269.i.for.body.i260.i_crit_edge

for.inc.i269.i.for.body.i260.i_crit_edge:         ; preds = %for.inc.i269.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i260.i

for.inc.i269.i.tomoyo_envp.exit.i_crit_edge:      ; preds = %for.inc.i269.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_envp.exit.i

tomoyo_envp.exit.i:                               ; preds = %for.inc.i269.i.tomoyo_envp.exit.i_crit_edge, %if.end20.i.i.tomoyo_envp.exit.i_crit_edge, %if.then5.i.i.tomoyo_envp.exit.i_crit_edge
  %cmp.lcssa.i270.i = phi i1 [ %cmp44.i.i, %if.then5.i.i.tomoyo_envp.exit.i_crit_edge ], [ %cmp44.i.i, %if.end20.i.i.tomoyo_envp.exit.i_crit_edge ], [ %cmp.i267.i, %for.inc.i269.i.tomoyo_envp.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %value.i258.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %name.i.i) #9
  br i1 %cmp.lcssa.i270.i, label %tomoyo_envp.exit.i.if.end148.i_crit_edge, label %tomoyo_envp.exit.i.cleanup.thread.i_crit_edge

tomoyo_envp.exit.i.cleanup.thread.i_crit_edge:    ; preds = %tomoyo_envp.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

tomoyo_envp.exit.i.if.end148.i_crit_edge:         ; preds = %tomoyo_envp.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148.i

cleanup.thread.i:                                 ; preds = %tomoyo_envp.exit.i.cleanup.thread.i_crit_edge, %tomoyo_envp.exit.thread.i, %if.then85.i.cleanup.thread.i_crit_edge
  %dec96.i = add i32 %envp_count.1296.i, -1
  br label %cleanup100.i

cleanup100.i:                                     ; preds = %cleanup.thread.i, %if.end82.i, %if.end71.i.cleanup100.i_crit_edge, %if.then44.i, %if.then31.i
  %arg_len.3.i = phi i32 [ %arg_len.2.i, %if.end71.i.cleanup100.i_crit_edge ], [ 0, %cleanup.thread.i ], [ 0, %if.end82.i ], [ %inc45.i, %if.then44.i ], [ %inc34.i, %if.then31.i ]
  %argv_count.3.i = phi i32 [ %argv_count.1294.i, %if.end71.i.cleanup100.i_crit_edge ], [ 0, %cleanup.thread.i ], [ %dec.i, %if.end82.i ], [ %argv_count.1294.i, %if.then44.i ], [ %argv_count.1294.i, %if.then31.i ]
  %envp_count.4.i = phi i32 [ %envp_count.1296.i, %if.end71.i.cleanup100.i_crit_edge ], [ %dec96.i, %cleanup.thread.i ], [ %envp_count.1296.i, %if.end82.i ], [ %envp_count.1296.i, %if.then44.i ], [ %envp_count.1296.i, %if.then31.i ]
  %exitcond.not.i = icmp eq i32 %inc.i, 4096
  br i1 %exitcond.not.i, label %cleanup100.i.while.cond.loopexit.i_crit_edge, label %cleanup100.i.while.body22.i_crit_edge

cleanup100.i.while.body22.i_crit_edge:            ; preds = %cleanup100.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body22.i

cleanup100.i.while.cond.loopexit.i_crit_edge:     ; preds = %cleanup100.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.loopexit.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %cmp111309.i = phi i1 [ %cmp111.i, %for.inc.i.for.body.i_crit_edge ], [ true, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.0307.i = phi i32 [ %inc121.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx113.i = getelementptr i8, ptr %checked.0.i, i32 %i.0307.i
  %256 = ptrtoint ptr %arrayidx113.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %arrayidx113.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %257)
  %tobool114.not.i = icmp eq i8 %257, 0
  br i1 %tobool114.not.i, label %if.end116.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end116.i:                                      ; preds = %for.body.i
  %is_not.i = getelementptr %struct.tomoyo_argv, ptr %add.ptr21, i32 %i.0307.i, i32 2
  %258 = ptrtoint ptr %is_not.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %is_not.i, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %259)
  %tobool118.not.i = icmp eq i8 %259, 0
  br i1 %tobool118.not.i, label %if.end116.i.for.end.i_crit_edge, label %if.end116.i.for.inc.i_crit_edge

if.end116.i.for.inc.i_crit_edge:                  ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end116.i.for.end.i_crit_edge:                  ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end116.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc121.i = add nuw nsw i32 %i.0307.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc121.i, i32 %conv22)
  %cmp111.i = icmp ult i32 %inc121.i, %conv22
  %exitcond320.not.i = icmp eq i32 %inc121.i, %conv22
  br i1 %exitcond320.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end116.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %cmp111.lcssa.i = phi i1 [ false, %for.cond.preheader.i.for.end.i_crit_edge ], [ %cmp111.i, %for.inc.i.for.end.i_crit_edge ], [ %cmp111309.i, %if.end116.i.for.end.i_crit_edge ]
  %260 = xor i1 %cmp111.lcssa.i, true
  br i1 %tobool399.not, label %for.end.i.if.end148.i_crit_edge, label %for.end.i.for.body126.i_crit_edge

for.end.i.for.body126.i_crit_edge:                ; preds = %for.end.i
  br label %for.body126.i

for.end.i.if.end148.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148.i

for.body126.i:                                    ; preds = %for.inc145.i.for.body126.i_crit_edge, %for.end.i.for.body126.i_crit_edge
  %i.1314.i = phi i32 [ %inc146.i, %for.inc145.i.for.body126.i_crit_edge ], [ 0, %for.end.i.for.body126.i_crit_edge ]
  %envp.addr.0312.i = phi ptr [ %incdec.ptr.i, %for.inc145.i.for.body126.i_crit_edge ], [ %add.ptr23, %for.end.i.for.body126.i_crit_edge ]
  %add128.i = add nuw nsw i32 %i.1314.i, %conv22
  %arrayidx129.i = getelementptr i8, ptr %checked.0.i, i32 %add128.i
  %261 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %arrayidx129.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %262)
  %tobool130.not.i = icmp eq i8 %262, 0
  br i1 %tobool130.not.i, label %if.end132.i, label %for.body126.i.for.inc145.i_crit_edge

for.body126.i.for.inc145.i_crit_edge:             ; preds = %for.body126.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc145.i

if.end132.i:                                      ; preds = %for.body126.i
  %value.i = getelementptr inbounds %struct.tomoyo_envp, ptr %envp.addr.0312.i, i32 0, i32 1
  %263 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %value.i, align 4
  %tobool133.not.i = icmp eq ptr %264, null
  %is_not135.i = getelementptr inbounds %struct.tomoyo_envp, ptr %envp.addr.0312.i, i32 0, i32 2
  %265 = ptrtoint ptr %is_not135.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %is_not135.i, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %266)
  %tobool136.not.i = icmp eq i8 %266, 0
  br i1 %tobool133.not.i, label %land.lhs.true134.i, label %land.lhs.true139.i

land.lhs.true134.i:                               ; preds = %if.end132.i
  br i1 %tobool136.not.i, label %land.lhs.true134.i.for.inc145.i_crit_edge, label %land.lhs.true134.i.if.end148.i_crit_edge

land.lhs.true134.i.if.end148.i_crit_edge:         ; preds = %land.lhs.true134.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148.i

land.lhs.true134.i.for.inc145.i_crit_edge:        ; preds = %land.lhs.true134.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc145.i

land.lhs.true139.i:                               ; preds = %if.end132.i
  br i1 %tobool136.not.i, label %land.lhs.true139.i.if.end148.i_crit_edge, label %land.lhs.true139.i.for.inc145.i_crit_edge

land.lhs.true139.i.for.inc145.i_crit_edge:        ; preds = %land.lhs.true139.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc145.i

land.lhs.true139.i.if.end148.i_crit_edge:         ; preds = %land.lhs.true139.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148.i

for.inc145.i:                                     ; preds = %land.lhs.true139.i.for.inc145.i_crit_edge, %land.lhs.true134.i.for.inc145.i_crit_edge, %for.body126.i.for.inc145.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.tomoyo_envp, ptr %envp.addr.0312.i, i32 1
  %inc146.i = add nuw nsw i32 %i.1314.i, 1
  %exitcond321.not.i = icmp eq i32 %inc146.i, %conv5.i
  br i1 %exitcond321.not.i, label %for.inc145.i.if.end148.i_crit_edge, label %for.inc145.i.for.body126.i_crit_edge

for.inc145.i.for.body126.i_crit_edge:             ; preds = %for.inc145.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body126.i

for.inc145.i.if.end148.i_crit_edge:               ; preds = %for.inc145.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148.i

if.end148.i:                                      ; preds = %for.inc145.i.if.end148.i_crit_edge, %land.lhs.true139.i.if.end148.i_crit_edge, %land.lhs.true134.i.if.end148.i_crit_edge, %for.end.i.if.end148.i_crit_edge, %tomoyo_envp.exit.i.if.end148.i_crit_edge, %tomoyo_argv.exit.i.if.end148.i_crit_edge, %while.body.i.if.end148.i_crit_edge
  %result.9.off0.i = phi i1 [ %260, %for.end.i.if.end148.i_crit_edge ], [ false, %land.lhs.true134.i.if.end148.i_crit_edge ], [ %260, %for.inc145.i.if.end148.i_crit_edge ], [ false, %land.lhs.true139.i.if.end148.i_crit_edge ], [ false, %tomoyo_argv.exit.i.if.end148.i_crit_edge ], [ false, %tomoyo_envp.exit.i.if.end148.i_crit_edge ], [ false, %while.body.i.if.end148.i_crit_edge ]
  %cmp150.not.i = icmp eq ptr %checked.0.i, %local_checked.i
  br i1 %cmp150.not.i, label %if.end148.i.tomoyo_scan_bprm.exit_crit_edge, label %if.then152.i

if.end148.i.tomoyo_scan_bprm.exit_crit_edge:      ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tomoyo_scan_bprm.exit

if.then152.i:                                     ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef %checked.0.i) #9
  br label %tomoyo_scan_bprm.exit

tomoyo_scan_bprm.exit:                            ; preds = %if.then152.i, %if.end148.i.tomoyo_scan_bprm.exit_crit_edge, %if.end8.i.i.i.tomoyo_scan_bprm.exit_crit_edge
  %retval.0.i531 = phi i1 [ false, %if.end8.i.i.i.tomoyo_scan_bprm.exit_crit_edge ], [ %result.9.off0.i, %if.then152.i ], [ %result.9.off0.i, %if.end148.i.tomoyo_scan_bprm.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %local_checked.i) #9
  br label %cleanup404

cleanup404:                                       ; preds = %tomoyo_scan_bprm.exit, %land.lhs.true394.cleanup404_crit_edge, %for.end391.cleanup404_crit_edge, %cleanup383, %land.lhs.true.cleanup404_crit_edge, %entry.cleanup404_crit_edge
  %retval.2 = phi i1 [ false, %cleanup383 ], [ %retval.0.i531, %tomoyo_scan_bprm.exit ], [ true, %entry.cleanup404_crit_edge ], [ false, %land.lhs.true.cleanup404_crit_edge ], [ true, %land.lhs.true394.cleanup404_crit_edge ], [ true, %for.end391.cleanup404_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %max_v) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %min_v) #9
  ret i1 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_compare_name_union(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_number_matches_group(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_get_domainname(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_correct_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_read_token(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tomoyo_parse_ulong(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_correct_word(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_parse_name_union(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_memory_ok(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_realpath_from_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tomoyo_fill_path_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_dump_page(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_path_matches_pattern(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !50, !51, !52, !54}
!llvm.named.register.sp = !{!55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @tomoyo_condition_list, !1, !"tomoyo_condition_list", i1 false, i1 false}
!1 = !{!"../security/tomoyo/condition.c", i32 12, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/tomoyo/condition.c", i32 536, i32 10}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/tomoyo/condition.c", i32 550, i32 26}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/tomoyo/condition.c", i32 555, i32 34}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../security/tomoyo/condition.c", i32 557, i32 34}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/tomoyo/condition.c", i32 564, i32 27}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/tomoyo/condition.c", i32 579, i32 27}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../security/tomoyo/condition.c", i32 841, i32 38}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../security/tomoyo/condition.c", i32 844, i32 38}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../security/tomoyo/condition.c", i32 847, i32 38}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../security/tomoyo/condition.c", i32 850, i32 38}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../security/tomoyo/condition.c", i32 853, i32 38}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../security/tomoyo/condition.c", i32 856, i32 38}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../security/tomoyo/condition.c", i32 859, i32 38}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../security/tomoyo/condition.c", i32 862, i32 38}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../security/tomoyo/condition.c", i32 469, i32 51}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../security/tomoyo/condition.c", i32 470, i32 17}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../security/tomoyo/condition.c", i32 470, i32 47}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../security/tomoyo/condition.c", i32 471, i32 17}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../security/tomoyo/condition.c", i32 471, i32 42}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../security/tomoyo/condition.c", i32 485, i32 9}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../security/tomoyo/condition.c", i32 333, i32 21}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../security/tomoyo/common.h", i32 1139, i32 22}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{!"sp"}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 2148751441, i64 2148751467, i64 2148751496, i64 2148751530, i64 2148751561, i64 2148751584}
!66 = !{!"branch_weights", i32 2000, i32 1}
!67 = !{i64 2157526129, i64 2157526621, i64 2157526166, i64 2157526222, i64 2157526256, i64 2157526280, i64 2157526321, i64 2157526342, i64 2157526370, i64 2157526404}
!68 = !{i64 2148748976, i64 2148749002, i64 2148749031, i64 2148749065, i64 2148749096, i64 2148749119}
!69 = !{i8 0, i8 2}
!70 = !{i64 2150070498}
!71 = !{i64 2150070764}
