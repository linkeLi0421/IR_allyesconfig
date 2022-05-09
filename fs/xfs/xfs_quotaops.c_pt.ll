; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_quotaops.c_pt.bc'
source_filename = "../fs/xfs/xfs_quotaops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.quotactl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
%struct.xfs_quotainfo = type { %struct.xarray, %struct.xarray, %struct.xarray, %struct.mutex, ptr, ptr, ptr, %struct.list_lru, i32, %struct.mutex, i64, i32, %struct.xfs_def_quota, %struct.xfs_def_quota, %struct.xfs_def_quota, %struct.shrinker, i64, i64 }
%struct.xfs_def_quota = type { %struct.xfs_quota_limits, %struct.xfs_quota_limits, %struct.xfs_quota_limits }
%struct.xfs_quota_limits = type { i64, i64, i64, i16 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.90, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.89, i16, i8, i32 }
%union.anon.89 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%union.anon.90 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.75 = type { i32 }
%union.anon.76 = type { %struct.callback_head }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.78 = type { ptr }

@xfs_quotactl_operations = dso_local constant { %struct.quotactl_ops, [52 x i8] } { %struct.quotactl_ops { ptr null, ptr null, ptr @xfs_quota_enable, ptr @xfs_quota_disable, ptr null, ptr @xfs_fs_set_info, ptr @xfs_fs_get_dqblk, ptr @xfs_fs_get_nextdqblk, ptr @xfs_fs_set_dqblk, ptr @xfs_fs_get_quota_state, ptr @xfs_fs_rm_xquota }, [52 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.1 = private unnamed_addr constant [24 x i8] c"xfs_quotactl_operations\00", align 1
@___asan_gen_.2 = private constant [25 x i8] c"../fs/xfs/xfs_quotaops.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 271, i32 27 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @xfs_quotactl_operations], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_quotactl_operations to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_quota_enable(ptr nocapture noundef readonly %sb, i32 noundef %uflags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 60
  %4 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_qflags, align 4
  %and = and i32 %5, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and1.i = lshr i32 %uflags, 1
  %6 = and i32 %and1.i, 8
  %and6.i = shl i32 %uflags, 4
  %7 = and i32 %and6.i, 64
  %8 = and i32 %and6.i, 128
  %9 = and i32 %and6.i, 512
  %10 = and i32 %uflags, 3
  %11 = or i32 %6, %10
  %12 = or i32 %11, %7
  %13 = or i32 %12, %8
  %14 = or i32 %13, %9
  %call4 = tail call i32 @xfs_qm_scall_quotaon(ptr noundef %1, i32 noundef %14) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end2 ], [ -30, %entry.cleanup_crit_edge ], [ -38, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_quota_disable(ptr nocapture noundef readonly %sb, i32 noundef %uflags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 60
  %4 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_qflags, align 4
  %and = and i32 %5, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and1.i = lshr i32 %uflags, 1
  %6 = and i32 %and1.i, 8
  %and6.i = shl i32 %uflags, 4
  %7 = and i32 %and6.i, 64
  %8 = and i32 %and6.i, 128
  %9 = and i32 %and6.i, 512
  %10 = and i32 %uflags, 3
  %11 = or i32 %6, %10
  %12 = or i32 %11, %7
  %13 = or i32 %12, %8
  %14 = or i32 %13, %9
  %call4 = tail call i32 @xfs_qm_scall_quotaoff(ptr noundef %1, i32 noundef %14) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end2 ], [ -30, %entry.cleanup_crit_edge ], [ -38, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_fs_set_info(ptr nocapture noundef readonly %sb, i32 noundef %type, ptr nocapture noundef readonly %info) #1 align 64 {
entry:
  %newlim = alloca %struct.qc_dqblk, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %newlim) #6
  %2 = call ptr @memset(ptr %newlim, i32 255, i32 120)
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %3 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 60
  %5 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %m_qflags, align 4
  %and = and i32 %6, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %info, align 4
  %and3 = and i32 %8, -4033
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %and8 = and i32 %8, 4032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp = icmp eq i32 %and8, 0
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %newlim to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %newlim, align 8
  %i_spc_timelimit = getelementptr inbounds %struct.qc_info, ptr %info, i32 0, i32 2
  %10 = ptrtoint ptr %i_spc_timelimit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_spc_timelimit, align 4
  %conv = zext i32 %11 to i64
  %d_spc_timer = getelementptr inbounds %struct.qc_dqblk, ptr %newlim, i32 0, i32 8
  %12 = ptrtoint ptr %d_spc_timer to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv, ptr %d_spc_timer, align 8
  %i_ino_timelimit = getelementptr inbounds %struct.qc_info, ptr %info, i32 0, i32 3
  %13 = ptrtoint ptr %i_ino_timelimit to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino_timelimit, align 4
  %conv12 = zext i32 %14 to i64
  %d_ino_timer = getelementptr inbounds %struct.qc_dqblk, ptr %newlim, i32 0, i32 7
  %15 = ptrtoint ptr %d_ino_timer to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv12, ptr %d_ino_timer, align 8
  %i_rt_spc_timelimit = getelementptr inbounds %struct.qc_info, ptr %info, i32 0, i32 4
  %16 = ptrtoint ptr %i_rt_spc_timelimit to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_rt_spc_timelimit, align 4
  %conv13 = zext i32 %17 to i64
  %d_rt_spc_timer = getelementptr inbounds %struct.qc_dqblk, ptr %newlim, i32 0, i32 14
  %18 = ptrtoint ptr %d_rt_spc_timer to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv13, ptr %d_rt_spc_timer, align 8
  %i_ino_warnlimit = getelementptr inbounds %struct.qc_info, ptr %info, i32 0, i32 6
  %19 = ptrtoint ptr %i_ino_warnlimit to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_ino_warnlimit, align 4
  %d_ino_warns = getelementptr inbounds %struct.qc_dqblk, ptr %newlim, i32 0, i32 9
  %21 = ptrtoint ptr %d_ino_warns to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %d_ino_warns, align 8
  %i_spc_warnlimit = getelementptr inbounds %struct.qc_info, ptr %info, i32 0, i32 5
  %22 = ptrtoint ptr %i_spc_warnlimit to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_spc_warnlimit, align 4
  %d_spc_warns = getelementptr inbounds %struct.qc_dqblk, ptr %newlim, i32 0, i32 10
  %24 = ptrtoint ptr %d_spc_warns to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %d_spc_warns, align 4
  %i_rt_spc_warnlimit = getelementptr inbounds %struct.qc_info, ptr %info, i32 0, i32 7
  %25 = ptrtoint ptr %i_rt_spc_warnlimit to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_rt_spc_warnlimit, align 4
  %d_rt_spc_warns = getelementptr inbounds %struct.qc_dqblk, ptr %newlim, i32 0, i32 15
  %27 = ptrtoint ptr %d_rt_spc_warns to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %d_rt_spc_warns, align 8
  %call14 = tail call fastcc zeroext i8 @xfs_quota_type(i32 noundef %type), !range !14
  %call15 = call i32 @xfs_qm_scall_setqlim(ptr noundef %1, i32 noundef 0, i8 noundef zeroext %call14, ptr noundef nonnull %newlim) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end10 ], [ -30, %entry.cleanup_crit_edge ], [ -38, %if.end.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %newlim) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_fs_get_dqblk(ptr nocapture noundef readonly %sb, [2 x i32] %qid.coerce, ptr noundef %qdq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 60
  %2 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_qflags, align 4
  %and = and i32 %3, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %qid.coerce.fca.1.extract = extractvalue [2 x i32] %qid.coerce, 1
  %call = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %qid.coerce) #6
  %call1 = tail call fastcc zeroext i8 @xfs_quota_type(i32 noundef %qid.coerce.fca.1.extract), !range !14
  %call2 = tail call i32 @xfs_qm_scall_getquota(ptr noundef %1, i32 noundef %call, i8 noundef zeroext %call1, ptr noundef %qdq) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -38, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_fs_get_nextdqblk(ptr nocapture noundef readonly %sb, ptr nocapture noundef %qid, ptr noundef %qdq) #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #6
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 60
  %2 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_qflags, align 4
  %and = and i32 %3, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack = load i32, ptr %qid, align 4
  %5 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %.elt17 = getelementptr inbounds [2 x i32], ptr %qid, i32 0, i32 1
  %6 = ptrtoint ptr %.elt17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack18 = load i32, ptr %.elt17, align 4
  %7 = insertvalue [2 x i32] %5, i32 %.unpack18, 1
  %call = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %7) #6
  %8 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call, ptr %id, align 4
  %9 = ptrtoint ptr %.elt17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %.elt17, align 4
  %call1 = tail call fastcc zeroext i8 @xfs_quota_type(i32 noundef %10), !range !14
  %call2 = call i32 @xfs_qm_scall_getquota_next(ptr noundef %1, ptr noundef nonnull %id, i8 noundef zeroext %call1, ptr noundef %qdq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %11 = call i32 @llvm.read_register.i32(metadata !4) #6
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 99
  %15 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 25
  %17 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %user_ns, align 4
  %19 = ptrtoint ptr %.elt17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %.elt17, align 4
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 4
  %23 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %do.body.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb6.i
  ]

sw.bb.i:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 @make_kuid(ptr noundef %18, i32 noundef %22) #6, !noalias !15
  br label %make_kqid.exit

sw.bb2.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = call i32 @make_kgid(ptr noundef %18, i32 noundef %22) #6, !noalias !15
  br label %make_kqid.exit

sw.bb6.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i = call i32 @make_kprojid(ptr noundef %18, i32 noundef %22) #6, !noalias !15
  br label %make_kqid.exit

do.body.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/quota.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #6, !noalias !15, !srcloc !18
  unreachable

make_kqid.exit:                                   ; preds = %sw.bb6.i, %sw.bb2.i, %sw.bb.i
  %call8.sink.i = phi i32 [ %call8.i, %sw.bb6.i ], [ %call4.i, %sw.bb2.i ], [ %call.i, %sw.bb.i ]
  %tmp.sroa.4.0.insert.ext = zext i32 %20 to i64
  %tmp.sroa.0.0.insert.ext = zext i32 %call8.sink.i to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %tmp.sroa.0.0.insert.insert = or i64 %tmp.sroa.0.0.insert.shift, %tmp.sroa.4.0.insert.ext
  %24 = ptrtoint ptr %qid to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %tmp.sroa.0.0.insert.insert, ptr %qid, align 4
  br label %cleanup

cleanup:                                          ; preds = %make_kqid.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %make_kqid.exit ], [ -38, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_fs_set_dqblk(ptr nocapture noundef readonly %sb, [2 x i32] %qid.coerce, ptr noundef %qdq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %qid.coerce.fca.1.extract = extractvalue [2 x i32] %qid.coerce, 1
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 60
  %4 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_qflags, align 4
  %and = and i32 %5, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %qid.coerce) #6
  %call4 = tail call fastcc zeroext i8 @xfs_quota_type(i32 noundef %qid.coerce.fca.1.extract), !range !14
  %call5 = tail call i32 @xfs_qm_scall_setqlim(ptr noundef %1, i32 noundef %call3, i8 noundef zeroext %call4, ptr noundef %qdq) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end2 ], [ -30, %entry.cleanup_crit_edge ], [ -38, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_fs_get_quota_state(ptr nocapture noundef readonly %sb, ptr nocapture noundef %state) #1 align 64 {
entry:
  %ip.addr.i125 = alloca ptr, align 4
  %ip.addr.i89 = alloca ptr, align 4
  %ip.addr.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_quotainfo, align 4
  %4 = call ptr @memset(ptr %state, i32 0, i32 176)
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 60
  %5 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %m_qflags, align 4
  %and = and i32 %6, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %qi_dquots = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %qi_dquots to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qi_dquots, align 8
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %state, align 8
  %10 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %m_qflags, align 4
  %and2 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %s_state = getelementptr inbounds %struct.qc_state, ptr %state, i32 0, i32 1
  %12 = ptrtoint ptr %s_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_state, align 8
  %or = or i32 %13, 4
  store i32 %or, ptr %s_state, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %14 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %m_qflags, align 4
  %and7 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end5.if.end14_crit_edge, label %if.then9

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %s_state10 = getelementptr inbounds %struct.qc_state, ptr %state, i32 0, i32 1
  %16 = ptrtoint ptr %s_state10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_state10, align 8
  %or13 = or i32 %17, 8
  store i32 %or13, ptr %s_state10, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end5.if.end14_crit_edge
  %18 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %m_qflags, align 4
  %and16 = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end14.if.end23_crit_edge, label %if.then18

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx20 = getelementptr %struct.qc_state, ptr %state, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx20, align 8
  %or22 = or i32 %21, 4
  store i32 %or22, ptr %arrayidx20, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end14.if.end23_crit_edge
  %22 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %m_qflags, align 4
  %and25 = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end23.if.end32_crit_edge, label %if.then27

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx29 = getelementptr %struct.qc_state, ptr %state, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx29, align 8
  %or31 = or i32 %25, 8
  store i32 %or31, ptr %arrayidx29, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %if.end23.if.end32_crit_edge
  %26 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %m_qflags, align 4
  %and34 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end32.if.end41_crit_edge, label %if.then36

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx38 = getelementptr %struct.qc_state, ptr %state, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx38, align 8
  %or40 = or i32 %29, 4
  store i32 %or40, ptr %arrayidx38, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %if.end32.if.end41_crit_edge
  %30 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %m_qflags, align 4
  %and43 = and i32 %31, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end41.if.end50_crit_edge, label %if.then45

if.end41.if.end50_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx47 = getelementptr %struct.qc_state, ptr %state, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx47, align 8
  %or49 = or i32 %33, 8
  store i32 %or49, ptr %arrayidx47, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %if.end41.if.end50_crit_edge
  %s_state51 = getelementptr inbounds %struct.qc_state, ptr %state, i32 0, i32 1
  %qi_uquotaip = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 4
  %34 = ptrtoint ptr %qi_uquotaip to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %qi_uquotaip, align 8
  %sb_uquotino = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 32
  %36 = ptrtoint ptr %sb_uquotino to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %sb_uquotino, align 32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip.addr.i)
  %38 = ptrtoint ptr %ip.addr.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %ip.addr.i, align 4
  %ino1.i = getelementptr inbounds %struct.qc_state, ptr %state, i32 0, i32 1, i32 0, i32 7
  %39 = ptrtoint ptr %ino1.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %37, ptr %ino1.i, align 8
  %tobool.not.i = icmp eq ptr %35, null
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %37)
  %cmp.i = icmp eq i64 %37, -1
  %or.cond.i = and i1 %tobool.not.i, %cmp.i
  br i1 %or.cond.i, label %if.end50.xfs_qm_fill_state.exit_crit_edge, label %if.end.i

if.end50.xfs_qm_fill_state.exit_crit_edge:        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_qm_fill_state.exit

if.end.i:                                         ; preds = %if.end50
  br i1 %tobool.not.i, label %if.then3.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then3.i:                                       ; preds = %if.end.i
  %call.i = call i32 @xfs_iget(ptr noundef %1, ptr noundef null, i64 noundef %37, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %ip.addr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.then3.i.if.end7.i_crit_edge, label %if.then3.i.xfs_qm_fill_state.exit_crit_edge

if.then3.i.xfs_qm_fill_state.exit_crit_edge:      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_qm_fill_state.exit

if.then3.i.if.end7.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then3.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %40 = ptrtoint ptr %s_state51 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %s_state51, align 8
  %or.i = or i32 %41, 1
  store i32 %or.i, ptr %s_state51, align 8
  %42 = ptrtoint ptr %ip.addr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ip.addr.i, align 4
  %i_nblocks.i = getelementptr inbounds %struct.xfs_inode, ptr %43, i32 0, i32 19
  %44 = ptrtoint ptr %i_nblocks.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %i_nblocks.i, align 8
  %blocks.i = getelementptr inbounds %struct.qc_state, ptr %state, i32 0, i32 1, i32 0, i32 8
  %46 = ptrtoint ptr %blocks.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %blocks.i, align 8
  %if_nextents.i = getelementptr inbounds %struct.xfs_inode, ptr %43, i32 0, i32 8, i32 7
  %47 = ptrtoint ptr %if_nextents.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %if_nextents.i, align 4
  %conv.i = sext i32 %48 to i64
  %nextents.i = getelementptr inbounds %struct.qc_state, ptr %state, i32 0, i32 1, i32 0, i32 9
  %49 = ptrtoint ptr %nextents.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv.i, ptr %nextents.i, align 8
  %time.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 12, i32 0, i32 2
  %50 = ptrtoint ptr %time.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %time.i, align 8
  %conv8.i = trunc i64 %51 to i32
  %spc_timelimit.i = getelementptr inbounds %struct.qc_state, ptr %state, i32 0, i32 1, i32 0, i32 1
  %52 = ptrtoint ptr %spc_timelimit.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv8.i, ptr %spc_timelimit.i, align 4
  %time10.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 12, i32 1, i32 2
  %53 = ptrtoint ptr %time10.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %time10.i, align 8
  %conv11.i = trunc i64 %54 to i32
  %ino_timelimit.i = getelementptr inbounds %struct.qc_state, ptr %state, i32 0, i32 1, i32 0, i32 2
  %55 = ptrtoint ptr %ino_timelimit.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv11.i, ptr %ino_timelimit.i, align 8
  %time12.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 12, i32 2, i32 2
  %56 = ptrtoint ptr %time12.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %time12.i, align 8
  %conv13.i = trunc i64 %57 to i32
  %rt_spc_timelimit.i = getelementptr inbounds %struct.qc_state, ptr %state, i32 0, i32 1, i32 0, i32 3
  %58 = ptrtoint ptr %rt_spc_timelimit.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv13.i, ptr %rt_spc_timelimit.i, align 4
  %warn.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 12, i32 0, i32 3
  %59 = ptrtoint ptr %warn.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %warn.i, align 8
  %conv15.i = zext i16 %60 to i32
  %spc_warnlimit.i = getelementptr inbounds %struct.qc_state, ptr %state, i32 0, i32 1, i32 0, i32 4
  %61 = ptrtoint ptr %spc_warnlimit.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv15.i, ptr %spc_warnlimit.i, align 8
  %warn17.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 12, i32 1, i32 3
  %62 = ptrtoint ptr %warn17.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %warn17.i, align 8
  %conv18.i = zext i16 %63 to i32
  %ino_warnlimit.i = getelementptr inbounds %struct.qc_state, ptr %state, i32 0, i32 1, i32 0, i32 5
  %64 = ptrtoint ptr %ino_warnlimit.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv18.i, ptr %ino_warnlimit.i, align 4
  %warn20.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 12, i32 2, i32 3
  %65 = ptrtoint ptr %warn20.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %warn20.i, align 8
  %conv21.i = zext i16 %66 to i32
  %rt_spc_warnlimit.i = getelementptr inbounds %struct.qc_state, ptr %state, i32 0, i32 1, i32 0, i32 6
  %67 = ptrtoint ptr %rt_spc_warnlimit.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv21.i, ptr %rt_spc_warnlimit.i, align 8
  br i1 %tobool.not.i, label %if.then23.i, label %if.end7.i.xfs_qm_fill_state.exit_crit_edge

if.end7.i.xfs_qm_fill_state.exit_crit_edge:       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_qm_fill_state.exit

if.then23.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @xfs_irele(ptr noundef %43) #6
  br label %xfs_qm_fill_state.exit

xfs_qm_fill_state.exit:                           ; preds = %if.then23.i, %if.end7.i.xfs_qm_fill_state.exit_crit_edge, %if.then3.i.xfs_qm_fill_state.exit_crit_edge, %if.end50.xfs_qm_fill_state.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.addr.i)
  %arrayidx54 = getelementptr %struct.qc_state, ptr %state, i32 0, i32 1, i32 1
  %qi_gquotaip = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 5
  %68 = ptrtoint ptr %qi_gquotaip to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %qi_gquotaip, align 4
  %sb_gquotino = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 33
  %70 = ptrtoint ptr %sb_gquotino to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %sb_gquotino, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip.addr.i89)
  %72 = ptrtoint ptr %ip.addr.i89 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %ip.addr.i89, align 4
  %ino1.i90 = getelementptr %struct.qc_state, ptr %state, i32 0, i32 1, i32 1, i32 7
  %73 = ptrtoint ptr %ino1.i90 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %71, ptr %ino1.i90, align 8
  %tobool.not.i91 = icmp eq ptr %69, null
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %71)
  %cmp.i92 = icmp eq i64 %71, -1
  %or.cond.i93 = and i1 %tobool.not.i91, %cmp.i92
  br i1 %or.cond.i93, label %xfs_qm_fill_state.exit.xfs_qm_fill_state.exit124_crit_edge, label %if.end.i94

xfs_qm_fill_state.exit.xfs_qm_fill_state.exit124_crit_edge: ; preds = %xfs_qm_fill_state.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_qm_fill_state.exit124

if.end.i94:                                       ; preds = %xfs_qm_fill_state.exit
  br i1 %tobool.not.i91, label %if.then3.i97, label %if.end.i94.if.end7.i122_crit_edge

if.end.i94.if.end7.i122_crit_edge:                ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i122

if.then3.i97:                                     ; preds = %if.end.i94
  %call.i95 = call i32 @xfs_iget(ptr noundef %1, ptr noundef null, i64 noundef %71, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %ip.addr.i89) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %tobool4.not.i96 = icmp eq i32 %call.i95, 0
  br i1 %tobool4.not.i96, label %if.then3.i97.if.end7.i122_crit_edge, label %if.then3.i97.xfs_qm_fill_state.exit124_crit_edge

if.then3.i97.xfs_qm_fill_state.exit124_crit_edge: ; preds = %if.then3.i97
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_qm_fill_state.exit124

if.then3.i97.if.end7.i122_crit_edge:              ; preds = %if.then3.i97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i122

if.end7.i122:                                     ; preds = %if.then3.i97.if.end7.i122_crit_edge, %if.end.i94.if.end7.i122_crit_edge
  %74 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx54, align 8
  %or.i98 = or i32 %75, 1
  store i32 %or.i98, ptr %arrayidx54, align 8
  %76 = ptrtoint ptr %ip.addr.i89 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ip.addr.i89, align 4
  %i_nblocks.i99 = getelementptr inbounds %struct.xfs_inode, ptr %77, i32 0, i32 19
  %78 = ptrtoint ptr %i_nblocks.i99 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %i_nblocks.i99, align 8
  %blocks.i100 = getelementptr %struct.qc_state, ptr %state, i32 0, i32 1, i32 1, i32 8
  %80 = ptrtoint ptr %blocks.i100 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %blocks.i100, align 8
  %if_nextents.i101 = getelementptr inbounds %struct.xfs_inode, ptr %77, i32 0, i32 8, i32 7
  %81 = ptrtoint ptr %if_nextents.i101 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %if_nextents.i101, align 4
  %conv.i102 = sext i32 %82 to i64
  %nextents.i103 = getelementptr %struct.qc_state, ptr %state, i32 0, i32 1, i32 1, i32 9
  %83 = ptrtoint ptr %nextents.i103 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %conv.i102, ptr %nextents.i103, align 8
  %time.i104 = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 13, i32 0, i32 2
  %84 = ptrtoint ptr %time.i104 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %time.i104, align 8
  %conv8.i105 = trunc i64 %85 to i32
  %spc_timelimit.i106 = getelementptr %struct.qc_state, ptr %state, i32 0, i32 1, i32 1, i32 1
  %86 = ptrtoint ptr %spc_timelimit.i106 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %conv8.i105, ptr %spc_timelimit.i106, align 4
  %time10.i107 = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 13, i32 1, i32 2
  %87 = ptrtoint ptr %time10.i107 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %time10.i107, align 8
  %conv11.i108 = trunc i64 %88 to i32
  %ino_timelimit.i109 = getelementptr %struct.qc_state, ptr %state, i32 0, i32 1, i32 1, i32 2
  %89 = ptrtoint ptr %ino_timelimit.i109 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %conv11.i108, ptr %ino_timelimit.i109, align 8
  %time12.i110 = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 13, i32 2, i32 2
  %90 = ptrtoint ptr %time12.i110 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %time12.i110, align 8
  %conv13.i111 = trunc i64 %91 to i32
  %rt_spc_timelimit.i112 = getelementptr %struct.qc_state, ptr %state, i32 0, i32 1, i32 1, i32 3
  %92 = ptrtoint ptr %rt_spc_timelimit.i112 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %conv13.i111, ptr %rt_spc_timelimit.i112, align 4
  %warn.i113 = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 13, i32 0, i32 3
  %93 = ptrtoint ptr %warn.i113 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %warn.i113, align 8
  %conv15.i114 = zext i16 %94 to i32
  %spc_warnlimit.i115 = getelementptr %struct.qc_state, ptr %state, i32 0, i32 1, i32 1, i32 4
  %95 = ptrtoint ptr %spc_warnlimit.i115 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %conv15.i114, ptr %spc_warnlimit.i115, align 8
  %warn17.i116 = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 13, i32 1, i32 3
  %96 = ptrtoint ptr %warn17.i116 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %warn17.i116, align 8
  %conv18.i117 = zext i16 %97 to i32
  %ino_warnlimit.i118 = getelementptr %struct.qc_state, ptr %state, i32 0, i32 1, i32 1, i32 5
  %98 = ptrtoint ptr %ino_warnlimit.i118 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %conv18.i117, ptr %ino_warnlimit.i118, align 4
  %warn20.i119 = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 13, i32 2, i32 3
  %99 = ptrtoint ptr %warn20.i119 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %warn20.i119, align 8
  %conv21.i120 = zext i16 %100 to i32
  %rt_spc_warnlimit.i121 = getelementptr %struct.qc_state, ptr %state, i32 0, i32 1, i32 1, i32 6
  %101 = ptrtoint ptr %rt_spc_warnlimit.i121 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %conv21.i120, ptr %rt_spc_warnlimit.i121, align 8
  br i1 %tobool.not.i91, label %if.then23.i123, label %if.end7.i122.xfs_qm_fill_state.exit124_crit_edge

if.end7.i122.xfs_qm_fill_state.exit124_crit_edge: ; preds = %if.end7.i122
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_qm_fill_state.exit124

if.then23.i123:                                   ; preds = %if.end7.i122
  call void @__sanitizer_cov_trace_pc() #8
  call void @xfs_irele(ptr noundef %77) #6
  br label %xfs_qm_fill_state.exit124

xfs_qm_fill_state.exit124:                        ; preds = %if.then23.i123, %if.end7.i122.xfs_qm_fill_state.exit124_crit_edge, %if.then3.i97.xfs_qm_fill_state.exit124_crit_edge, %xfs_qm_fill_state.exit.xfs_qm_fill_state.exit124_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.addr.i89)
  %arrayidx57 = getelementptr %struct.qc_state, ptr %state, i32 0, i32 1, i32 2
  %qi_pquotaip = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 6
  %102 = ptrtoint ptr %qi_pquotaip to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %qi_pquotaip, align 8
  %sb_pquotino = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 52
  %104 = ptrtoint ptr %sb_pquotino to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %sb_pquotino, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip.addr.i125)
  %106 = ptrtoint ptr %ip.addr.i125 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %103, ptr %ip.addr.i125, align 4
  %ino1.i126 = getelementptr %struct.qc_state, ptr %state, i32 0, i32 1, i32 2, i32 7
  %107 = ptrtoint ptr %ino1.i126 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %105, ptr %ino1.i126, align 8
  %tobool.not.i127 = icmp eq ptr %103, null
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %105)
  %cmp.i128 = icmp eq i64 %105, -1
  %or.cond.i129 = and i1 %tobool.not.i127, %cmp.i128
  br i1 %or.cond.i129, label %xfs_qm_fill_state.exit124.xfs_qm_fill_state.exit160_crit_edge, label %if.end.i130

xfs_qm_fill_state.exit124.xfs_qm_fill_state.exit160_crit_edge: ; preds = %xfs_qm_fill_state.exit124
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_qm_fill_state.exit160

if.end.i130:                                      ; preds = %xfs_qm_fill_state.exit124
  br i1 %tobool.not.i127, label %if.then3.i133, label %if.end.i130.if.end7.i158_crit_edge

if.end.i130.if.end7.i158_crit_edge:               ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i158

if.then3.i133:                                    ; preds = %if.end.i130
  %call.i131 = call i32 @xfs_iget(ptr noundef %1, ptr noundef null, i64 noundef %105, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %ip.addr.i125) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %tobool4.not.i132 = icmp eq i32 %call.i131, 0
  br i1 %tobool4.not.i132, label %if.then3.i133.if.end7.i158_crit_edge, label %if.then3.i133.xfs_qm_fill_state.exit160_crit_edge

if.then3.i133.xfs_qm_fill_state.exit160_crit_edge: ; preds = %if.then3.i133
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_qm_fill_state.exit160

if.then3.i133.if.end7.i158_crit_edge:             ; preds = %if.then3.i133
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i158

if.end7.i158:                                     ; preds = %if.then3.i133.if.end7.i158_crit_edge, %if.end.i130.if.end7.i158_crit_edge
  %108 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx57, align 8
  %or.i134 = or i32 %109, 1
  store i32 %or.i134, ptr %arrayidx57, align 8
  %110 = ptrtoint ptr %ip.addr.i125 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ip.addr.i125, align 4
  %i_nblocks.i135 = getelementptr inbounds %struct.xfs_inode, ptr %111, i32 0, i32 19
  %112 = ptrtoint ptr %i_nblocks.i135 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %i_nblocks.i135, align 8
  %blocks.i136 = getelementptr %struct.qc_state, ptr %state, i32 0, i32 1, i32 2, i32 8
  %114 = ptrtoint ptr %blocks.i136 to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %113, ptr %blocks.i136, align 8
  %if_nextents.i137 = getelementptr inbounds %struct.xfs_inode, ptr %111, i32 0, i32 8, i32 7
  %115 = ptrtoint ptr %if_nextents.i137 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %if_nextents.i137, align 4
  %conv.i138 = sext i32 %116 to i64
  %nextents.i139 = getelementptr %struct.qc_state, ptr %state, i32 0, i32 1, i32 2, i32 9
  %117 = ptrtoint ptr %nextents.i139 to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %conv.i138, ptr %nextents.i139, align 8
  %time.i140 = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 14, i32 0, i32 2
  %118 = ptrtoint ptr %time.i140 to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %time.i140, align 8
  %conv8.i141 = trunc i64 %119 to i32
  %spc_timelimit.i142 = getelementptr %struct.qc_state, ptr %state, i32 0, i32 1, i32 2, i32 1
  %120 = ptrtoint ptr %spc_timelimit.i142 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %conv8.i141, ptr %spc_timelimit.i142, align 4
  %time10.i143 = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 14, i32 1, i32 2
  %121 = ptrtoint ptr %time10.i143 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %time10.i143, align 8
  %conv11.i144 = trunc i64 %122 to i32
  %ino_timelimit.i145 = getelementptr %struct.qc_state, ptr %state, i32 0, i32 1, i32 2, i32 2
  %123 = ptrtoint ptr %ino_timelimit.i145 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %conv11.i144, ptr %ino_timelimit.i145, align 8
  %time12.i146 = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 14, i32 2, i32 2
  %124 = ptrtoint ptr %time12.i146 to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %time12.i146, align 8
  %conv13.i147 = trunc i64 %125 to i32
  %rt_spc_timelimit.i148 = getelementptr %struct.qc_state, ptr %state, i32 0, i32 1, i32 2, i32 3
  %126 = ptrtoint ptr %rt_spc_timelimit.i148 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %conv13.i147, ptr %rt_spc_timelimit.i148, align 4
  %warn.i149 = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 14, i32 0, i32 3
  %127 = ptrtoint ptr %warn.i149 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %warn.i149, align 8
  %conv15.i150 = zext i16 %128 to i32
  %spc_warnlimit.i151 = getelementptr %struct.qc_state, ptr %state, i32 0, i32 1, i32 2, i32 4
  %129 = ptrtoint ptr %spc_warnlimit.i151 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %conv15.i150, ptr %spc_warnlimit.i151, align 8
  %warn17.i152 = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 14, i32 1, i32 3
  %130 = ptrtoint ptr %warn17.i152 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %warn17.i152, align 8
  %conv18.i153 = zext i16 %131 to i32
  %ino_warnlimit.i154 = getelementptr %struct.qc_state, ptr %state, i32 0, i32 1, i32 2, i32 5
  %132 = ptrtoint ptr %ino_warnlimit.i154 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %conv18.i153, ptr %ino_warnlimit.i154, align 4
  %warn20.i155 = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 14, i32 2, i32 3
  %133 = ptrtoint ptr %warn20.i155 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %warn20.i155, align 8
  %conv21.i156 = zext i16 %134 to i32
  %rt_spc_warnlimit.i157 = getelementptr %struct.qc_state, ptr %state, i32 0, i32 1, i32 2, i32 6
  %135 = ptrtoint ptr %rt_spc_warnlimit.i157 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %conv21.i156, ptr %rt_spc_warnlimit.i157, align 8
  br i1 %tobool.not.i127, label %if.then23.i159, label %if.end7.i158.xfs_qm_fill_state.exit160_crit_edge

if.end7.i158.xfs_qm_fill_state.exit160_crit_edge: ; preds = %if.end7.i158
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_qm_fill_state.exit160

if.then23.i159:                                   ; preds = %if.end7.i158
  call void @__sanitizer_cov_trace_pc() #8
  call void @xfs_irele(ptr noundef %111) #6
  br label %xfs_qm_fill_state.exit160

xfs_qm_fill_state.exit160:                        ; preds = %if.then23.i159, %if.end7.i158.xfs_qm_fill_state.exit160_crit_edge, %if.then3.i133.xfs_qm_fill_state.exit160_crit_edge, %xfs_qm_fill_state.exit124.xfs_qm_fill_state.exit160_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.addr.i125)
  br label %cleanup

cleanup:                                          ; preds = %xfs_qm_fill_state.exit160, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_fs_rm_xquota(ptr nocapture noundef readonly %sb, i32 noundef %uflags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 60
  %4 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_qflags, align 4
  %and = and i32 %5, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %uflags)
  %tobool4.not = icmp ult i32 %uflags, 8
  %or.cond = and i1 %tobool4.not, %tobool.not
  br i1 %or.cond, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and7 = shl nuw nsw i32 %uflags, 2
  %6 = and i32 %and7, 4
  %and11 = shl nuw nsw i32 %uflags, 11
  %7 = and i32 %and11, 8192
  %8 = or i32 %7, %6
  %9 = and i32 %and7, 8
  %10 = or i32 %8, %9
  %call21 = tail call i32 @xfs_qm_scall_trunc_qfiles(ptr noundef %1, i32 noundef %10) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end6 ], [ -30, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_qm_scall_quotaon(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_qm_scall_quotaoff(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_qm_scall_setqlim(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i8 @xfs_quota_type(i32 noundef %type) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %switch.selectcmp = icmp eq i32 %type, 1
  %switch.select = select i1 %switch.selectcmp, i8 4, i8 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %switch.selectcmp2 = icmp eq i32 %type, 0
  %switch.select3 = select i1 %switch.selectcmp2, i8 1, i8 %switch.select
  ret i8 %switch.select3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kqid(ptr noundef, [2 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_qm_scall_getquota(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_qm_scall_getquota_next(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kprojid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iget(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_irele(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_qm_scall_trunc_qfiles(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.named.register.sp = !{!4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @xfs_quotactl_operations, !1, !"xfs_quotactl_operations", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_quotaops.c", i32 271, i32 27}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../fs/xfs/xfs_quotaops.c", i32 250, i32 19}
!4 = !{!"sp"}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{i8 1, i8 5}
!15 = !{!16}
!16 = distinct !{!16, !17, !"make_kqid: %agg.result"}
!17 = distinct !{!17, !"make_kqid"}
!18 = !{i64 2153096540, i64 2153097026, i64 2153096577, i64 2153096633, i64 2153096667, i64 2153096691, i64 2153096732, i64 2153096753, i64 2153096781, i64 2153096815}
