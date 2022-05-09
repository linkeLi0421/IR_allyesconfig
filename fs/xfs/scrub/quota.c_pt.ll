; ModuleID = '/llk/IR_all_yes/fs/xfs/scrub/quota.c_pt.bc'
source_filename = "../fs/xfs/scrub/quota.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_scrub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.xchk_ag }
%struct.xchk_ag = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xfs_quotainfo = type { %struct.xarray, %struct.xarray, %struct.xarray, %struct.mutex, ptr, ptr, ptr, %struct.list_lru, i32, %struct.mutex, i64, i32, %struct.xfs_def_quota, %struct.xfs_def_quota, %struct.xfs_def_quota, %struct.shrinker, i64, i64 }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.xfs_def_quota = type { %struct.xfs_quota_limits, %struct.xfs_quota_limits, %struct.xfs_quota_limits }
%struct.xfs_quota_limits = type { i64, i64, i64, i16 }
%struct.xchk_quota_info = type { ptr, i32 }
%struct.xfs_scrub_metadata = type { i32, i32, i64, i32, i32, [5 x i64] }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%struct.xfs_iext_cursor = type { ptr, i32 }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.90, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.89, i16, i8, i32 }
%union.anon.89 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.llist_node = type { ptr }
%union.anon.90 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.xfs_dquot = type { %struct.list_head, ptr, i8, i16, i32, i32, i32, i64, i64, %struct.xfs_dquot_res, %struct.xfs_dquot_res, %struct.xfs_dquot_res, %struct.xfs_dq_logitem, i64, i64, [3 x i64], %struct.mutex, %struct.completion, %struct.atomic_t, %struct.wait_queue_head }
%struct.xfs_dquot_res = type { i64, i64, i64, i64, i64, i16 }
%struct.xfs_dq_logitem = type { %struct.xfs_log_item, ptr, i64 }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }

@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/xfs/xfs_qm.h\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/xfs/scrub/common.h\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 21, i64 22, i64 23]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 3, i64 1, i64 2, i64 4]
@___asan_gen_ = private constant [24 x i8] c"../fs/xfs/scrub/quota.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [19 x i8] c"../fs/xfs/xfs_qm.h\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 103, i32 3 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [25 x i8] c"../fs/xfs/scrub/common.h\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 24, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_setup_quota(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 4
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 60
  %2 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_qflags, align 4
  %and = and i32 %3, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %sm.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %4 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sm.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 21, label %if.end3.thread
    i32 22, label %if.end.xfs_this_quota_on.exit_crit_edge
    i32 23, label %sw.bb4.i
  ]

if.end.xfs_this_quota_on.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfs_this_quota_on.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfs_this_quota_on.exit

sw.bb4.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfs_this_quota_on.exit

xfs_this_quota_on.exit:                           ; preds = %sw.bb4.i, %if.end3.thread, %if.end.xfs_this_quota_on.exit_crit_edge
  %retval.0.i.ph36 = phi i3 [ 2, %sw.bb4.i ], [ 1, %if.end3.thread ], [ -4, %if.end.xfs_this_quota_on.exit_crit_edge ]
  %.sink9.i = phi i32 [ 8, %sw.bb4.i ], [ 1, %if.end3.thread ], [ 64, %if.end.xfs_this_quota_on.exit_crit_edge ]
  %and6.i = and i32 %.sink9.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool6.not = icmp eq i32 %and6.i, 0
  br i1 %tobool6.not, label %xfs_this_quota_on.exit.cleanup_crit_edge, label %if.end8

xfs_this_quota_on.exit.cleanup_crit_edge:         ; preds = %xfs_this_quota_on.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %xfs_this_quota_on.exit
  %call9 = tail call i32 @xchk_setup_fs(ptr noundef %sc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %9 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sc, align 4
  %11 = zext i3 %retval.0.i.ph36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.3)
  switch i3 %retval.0.i.ph36, label %sw.default.i30 [
    i3 1, label %sw.bb.i
    i3 -4, label %sw.bb1.i29
    i3 2, label %sw.bb3.i
  ]

sw.bb.i:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %m_quotainfo.i = getelementptr inbounds %struct.xfs_mount, ptr %10, i32 0, i32 12
  %12 = ptrtoint ptr %m_quotainfo.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m_quotainfo.i, align 4
  %qi_uquotaip.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %qi_uquotaip.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qi_uquotaip.i, align 8
  br label %xfs_quota_inode.exit

sw.bb1.i29:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %m_quotainfo2.i = getelementptr inbounds %struct.xfs_mount, ptr %10, i32 0, i32 12
  %16 = ptrtoint ptr %m_quotainfo2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m_quotainfo2.i, align 4
  %qi_gquotaip.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %qi_gquotaip.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %qi_gquotaip.i, align 4
  br label %xfs_quota_inode.exit

sw.bb3.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %m_quotainfo4.i = getelementptr inbounds %struct.xfs_mount, ptr %10, i32 0, i32 12
  %20 = ptrtoint ptr %m_quotainfo4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %m_quotainfo4.i, align 4
  %qi_pquotaip.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %qi_pquotaip.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %qi_pquotaip.i, align 8
  br label %xfs_quota_inode.exit

sw.default.i30:                                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 103) #5
  br label %xfs_quota_inode.exit

xfs_quota_inode.exit:                             ; preds = %sw.default.i30, %sw.bb3.i, %sw.bb1.i29, %sw.bb.i
  %retval.0.i31 = phi ptr [ null, %sw.default.i30 ], [ %23, %sw.bb3.i ], [ %19, %sw.bb1.i29 ], [ %15, %sw.bb.i ]
  %ip = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %24 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %retval.0.i31, ptr %ip, align 4
  tail call void @xfs_ilock(ptr noundef %retval.0.i31, i32 noundef 4) #5
  %ilock_flags = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 7
  %25 = ptrtoint ptr %ilock_flags to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %ilock_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %xfs_quota_inode.exit, %if.end8.cleanup_crit_edge, %xfs_this_quota_on.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %xfs_quota_inode.exit ], [ -2, %entry.cleanup_crit_edge ], [ -2, %xfs_this_quota_on.exit.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_setup_fs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ilock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_quota(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  %sqi = alloca %struct.xchk_quota_info, align 4
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sqi) #5
  %0 = getelementptr inbounds %struct.xchk_quota_info, ptr %sqi, i32 0, i32 1
  %1 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sc, align 4
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %m_quotainfo, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #5
  %sm.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %5 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sm.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %switch.tableidx = add i32 %8, -21
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %9 = icmp ult i32 %switch.tableidx, 3
  %switch.cast = trunc i32 %switch.tableidx to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 132097, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %retval.0.i = select i1 %9, i8 %switch.masked, i8 0
  %call2 = tail call fastcc i32 @xchk_quota_data_fork(ptr noundef %sc)
  %10 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call2, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sm.i, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sm_flags, align 4
  %and = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end5:                                          ; preds = %if.end
  %ip = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %15 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ip, align 4
  %ilock_flags = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 7
  %17 = ptrtoint ptr %ilock_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ilock_flags, align 4
  tail call void @xfs_iunlock(ptr noundef %16, i32 noundef %18) #5
  %19 = ptrtoint ptr %ilock_flags to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %ilock_flags, align 4
  %20 = ptrtoint ptr %sqi to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %sc, ptr %sqi, align 4
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %0, align 4
  %call8 = call i32 @xfs_qm_dqiterate(ptr noundef %2, i8 noundef zeroext %retval.0.i, ptr noundef nonnull @xchk_quota_item, ptr noundef nonnull %sqi) #5
  %22 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call8, ptr %error, align 4
  %23 = ptrtoint ptr %ilock_flags to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %ilock_flags, align 4
  %24 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ip, align 4
  call void @xfs_ilock(ptr noundef %25, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -125, i32 %call8)
  %cmp = icmp eq i32 %call8, -125
  br i1 %cmp, label %if.then12, label %if.end5.if.end13_crit_edge

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %error, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end5.if.end13_crit_edge
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %0, align 4
  %qi_dqperchunk = getelementptr inbounds %struct.xfs_quotainfo, ptr %4, i32 0, i32 11
  %29 = ptrtoint ptr %qi_dqperchunk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qi_dqperchunk, align 8
  %mul = mul i32 %30, %28
  %conv = zext i32 %mul to i64
  %call15 = call zeroext i1 @xchk_fblock_process_error(ptr noundef %sc, i32 noundef 0, i64 noundef %conv, ptr noundef nonnull %error) #5
  br label %out

out:                                              ; preds = %if.end13, %if.end.out_crit_edge, %entry.out_crit_edge
  %31 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %error, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sqi) #5
  ret i32 %32
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xchk_quota_data_fork(ptr noundef %sc) unnamed_addr #3 align 64 {
entry:
  %irec = alloca %struct.xfs_bmbt_irec, align 8
  %icur = alloca %struct.xfs_iext_cursor, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %irec) #5
  %0 = call ptr @memset(ptr %irec, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %icur) #5
  %1 = ptrtoint ptr %icur to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %icur, align 4, !annotation !15
  %2 = getelementptr inbounds %struct.xfs_iext_cursor, ptr %icur, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !15
  %4 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc, align 4
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m_quotainfo, align 4
  %call = tail call i32 @xchk_metadata_inode_forks(ptr noundef %sc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %8 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sm_flags, align 4
  %and = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %qi_dqperchunk = getelementptr inbounds %struct.xfs_quotainfo, ptr %7, i32 0, i32 11
  %12 = ptrtoint ptr %qi_dqperchunk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qi_dqperchunk, align 8
  %div = udiv i32 -1, %13
  %conv = zext i32 %div to i64
  %ip = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %14 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ip, align 4
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %15, i32 0, i32 8
  call void @xfs_iext_first(ptr noundef %i_df, ptr noundef nonnull %icur) #5
  %call235 = call zeroext i1 @xfs_iext_get_extent(ptr noundef %i_df, ptr noundef nonnull %icur, ptr noundef nonnull %irec) #5
  br i1 %call235, label %for.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 1
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 24, i32 noundef 0) #5
  %call.i.i = call i32 @__cond_resched() #5
  %16 = call i32 @llvm.read_register.i32(metadata !5) #5
  %and.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stack.i.i.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %and1.i.i.i.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.if.end5_crit_edge, label %fatal_signal_pending.exit.i

for.body.if.end5_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

fatal_signal_pending.exit.i:                      ; preds = %for.body
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 116, i32 1
  %24 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %signal.i.i.i, align 4
  %26 = and i32 %25, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %fatal_signal_pending.exit.i.if.end5_crit_edge, label %fatal_signal_pending.exit.i.cleanup_crit_edge

fatal_signal_pending.exit.i.cleanup_crit_edge:    ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

fatal_signal_pending.exit.i.if.end5_crit_edge:    ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.end5:                                          ; preds = %fatal_signal_pending.exit.i.if.end5_crit_edge, %for.body.if.end5_crit_edge
  %27 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %br_startblock, align 8
  %and.i = and i64 %28, 4503599627239424
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627239424, i64 %and.i)
  %cmp.i30.not = icmp eq i64 %and.i, 4503599627239424
  br i1 %cmp.i30.not, label %if.end5.if.then14_crit_edge, label %lor.lhs.false8

if.end5.if.then14_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14

lor.lhs.false8:                                   ; preds = %if.end5
  %29 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %irec, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %conv)
  %cmp = icmp ugt i64 %30, %conv
  br i1 %cmp, label %lor.lhs.false8.if.then14_crit_edge, label %lor.lhs.false10

lor.lhs.false8.if.then14_crit_edge:               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %31 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %br_blockcount, align 8
  %add = add i64 %30, -1
  %sub = add i64 %add, %32
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv)
  %cmp12 = icmp ugt i64 %sub, %conv
  br i1 %cmp12, label %lor.lhs.false10.if.then14_crit_edge, label %for.inc

lor.lhs.false10.if.then14_crit_edge:              ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false10.if.then14_crit_edge, %lor.lhs.false8.if.then14_crit_edge, %if.end5.if.then14_crit_edge
  %33 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %irec, align 8
  call void @xchk_fblock_set_corrupt(ptr noundef %sc, i32 noundef 0, i64 noundef %34) #5
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false10
  call void @xfs_iext_next(ptr noundef %i_df, ptr noundef nonnull %icur) #5
  %call2 = call zeroext i1 @xfs_iext_get_extent(ptr noundef %i_df, ptr noundef nonnull %icur, ptr noundef nonnull %irec) #5
  br i1 %call2, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then14, %fatal_signal_pending.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %error.2 = phi i32 [ 0, %if.then14 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -11, %fatal_signal_pending.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icur) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %irec) #5
  ret i32 %error.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_qm_dqiterate(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xchk_quota_item(ptr nocapture noundef readonly %dq, i8 noundef zeroext %dqtype, ptr nocapture noundef %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_quotainfo, align 4
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 24, i32 noundef 0) #5
  %call.i.i = tail call i32 @__cond_resched() #5
  %6 = tail call i32 @llvm.read_register.i32(metadata !5) #5
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stack.i.i.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and1.i.i.i.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %entry.if.end_crit_edge, label %fatal_signal_pending.exit.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

fatal_signal_pending.exit.i:                      ; preds = %entry
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 116, i32 1
  %14 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %signal.i.i.i, align 4
  %16 = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %fatal_signal_pending.exit.i.if.end_crit_edge, label %fatal_signal_pending.exit.i.cleanup_crit_edge

fatal_signal_pending.exit.i.cleanup_crit_edge:    ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

fatal_signal_pending.exit.i.if.end_crit_edge:     ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %fatal_signal_pending.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %q_id = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 4
  %17 = ptrtoint ptr %q_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %q_id, align 8
  %qi_dqperchunk = getelementptr inbounds %struct.xfs_quotainfo, ptr %5, i32 0, i32 11
  %19 = ptrtoint ptr %qi_dqperchunk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %qi_dqperchunk, align 8
  %div = udiv i32 %18, %20
  %conv = zext i32 %div to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %last_id = getelementptr inbounds %struct.xchk_quota_info, ptr %priv, i32 0, i32 1
  %21 = ptrtoint ptr %last_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %last_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %22)
  %cmp.not = icmp ugt i32 %18, %22
  br i1 %cmp.not, label %land.lhs.true.if.end7_crit_edge, label %if.then6

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xchk_fblock_set_corrupt(ptr noundef %1, i32 noundef 0, i64 noundef %conv) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %23 = ptrtoint ptr %q_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %q_id, align 8
  %last_id9 = getelementptr inbounds %struct.xchk_quota_info, ptr %priv, i32 0, i32 1
  %25 = ptrtoint ptr %last_id9 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %last_id9, align 4
  %hardlimit = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 9, i32 2
  %26 = ptrtoint ptr %hardlimit to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %hardlimit, align 8
  %sb_dblocks = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 2
  %28 = ptrtoint ptr %sb_dblocks to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %sb_dblocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %29)
  %cmp10 = icmp ugt i64 %27, %29
  br i1 %cmp10, label %if.then12, label %if.end7.if.end13_crit_edge

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xchk_fblock_set_warning(ptr noundef %1, i32 noundef 0, i64 noundef %conv) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end7.if.end13_crit_edge
  %softlimit = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 9, i32 3
  %30 = ptrtoint ptr %softlimit to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %softlimit, align 8
  %32 = ptrtoint ptr %hardlimit to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %hardlimit, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %33)
  %cmp17 = icmp ugt i64 %31, %33
  br i1 %cmp17, label %if.then19, label %if.end13.if.end20_crit_edge

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xchk_fblock_set_corrupt(ptr noundef %1, i32 noundef 0, i64 noundef %conv) #5
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end13.if.end20_crit_edge
  %hardlimit21 = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 10, i32 2
  %34 = ptrtoint ptr %hardlimit21 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %hardlimit21, align 8
  %m_ino_geo = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 64
  %36 = ptrtoint ptr %m_ino_geo to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %m_ino_geo, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %37)
  %cmp22 = icmp ugt i64 %35, %37
  br i1 %cmp22, label %if.then24, label %if.end20.if.end25_crit_edge

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xchk_fblock_set_warning(ptr noundef %1, i32 noundef 0, i64 noundef %conv) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end20.if.end25_crit_edge
  %softlimit27 = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 10, i32 3
  %38 = ptrtoint ptr %softlimit27 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %softlimit27, align 8
  %40 = ptrtoint ptr %hardlimit21 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %hardlimit21, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %41)
  %cmp30 = icmp ugt i64 %39, %41
  br i1 %cmp30, label %if.then32, label %if.end25.if.end33_crit_edge

if.end25.if.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then32:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xchk_fblock_set_corrupt(ptr noundef %1, i32 noundef 0, i64 noundef %conv) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end25.if.end33_crit_edge
  %hardlimit34 = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 11, i32 2
  %42 = ptrtoint ptr %hardlimit34 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %hardlimit34, align 8
  %sb_rblocks = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 3
  %44 = ptrtoint ptr %sb_rblocks to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %sb_rblocks, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %45)
  %cmp36 = icmp ugt i64 %43, %45
  br i1 %cmp36, label %if.then38, label %if.end33.if.end39_crit_edge

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xchk_fblock_set_warning(ptr noundef %1, i32 noundef 0, i64 noundef %conv) #5
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end33.if.end39_crit_edge
  %softlimit41 = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 11, i32 3
  %46 = ptrtoint ptr %softlimit41 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %softlimit41, align 8
  %48 = ptrtoint ptr %hardlimit34 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %hardlimit34, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %47, i64 %49)
  %cmp44 = icmp ugt i64 %47, %49
  br i1 %cmp44, label %if.then46, label %if.end39.if.end47_crit_edge

if.end39.if.end47_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then46:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xchk_fblock_set_corrupt(ptr noundef %1, i32 noundef 0, i64 noundef %conv) #5
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end39.if.end47_crit_edge
  %m_icount = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 77
  %call.i = tail call i64 @__percpu_counter_sum(ptr noundef %m_icount) #5
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  %50 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %51, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %52 = ptrtoint ptr %sb_dblocks to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %sb_dblocks, align 8
  %count61 = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 9, i32 1
  %54 = ptrtoint ptr %count61 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %count61, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %53, i64 %55)
  %cmp62 = icmp ult i64 %53, %55
  br i1 %tobool.i.not, label %if.else, label %if.then50

if.then50:                                        ; preds = %if.end47
  br i1 %cmp62, label %if.then56, label %if.then50.if.end66_crit_edge

if.then50.if.end66_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.then56:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xchk_fblock_set_warning(ptr noundef %1, i32 noundef 0, i64 noundef %conv) #5
  br label %if.end66

if.else:                                          ; preds = %if.end47
  br i1 %cmp62, label %if.then64, label %if.else.if.end66_crit_edge

if.else.if.end66_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.then64:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xchk_fblock_set_corrupt(ptr noundef %1, i32 noundef 0, i64 noundef %conv) #5
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.else.if.end66_crit_edge, %if.then56, %if.then50.if.end66_crit_edge
  %count68 = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 10, i32 1
  %56 = ptrtoint ptr %count68 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %count68, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %57, i64 %call.i)
  %cmp69 = icmp ugt i64 %57, %call.i
  br i1 %cmp69, label %if.end66.if.then77_crit_edge, label %lor.lhs.false

if.end66.if.then77_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then77

lor.lhs.false:                                    ; preds = %if.end66
  %count72 = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 11, i32 1
  %58 = ptrtoint ptr %count72 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %count72, align 8
  %60 = ptrtoint ptr %sb_rblocks to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %sb_rblocks, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %59, i64 %61)
  %cmp75 = icmp ugt i64 %59, %61
  br i1 %cmp75, label %lor.lhs.false.if.then77_crit_edge, label %lor.lhs.false.if.end78_crit_edge

lor.lhs.false.if.end78_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78

lor.lhs.false.if.then77_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then77

if.then77:                                        ; preds = %lor.lhs.false.if.then77_crit_edge, %if.end66.if.then77_crit_edge
  tail call void @xchk_fblock_set_corrupt(ptr noundef %1, i32 noundef 0, i64 noundef %conv) #5
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %lor.lhs.false.if.end78_crit_edge
  %62 = ptrtoint ptr %q_id to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %q_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp80 = icmp eq i32 %63, 0
  br i1 %cmp80, label %if.end78.out_crit_edge, label %if.end83

if.end78.out_crit_edge:                           ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end83:                                         ; preds = %if.end78
  %64 = ptrtoint ptr %hardlimit to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %hardlimit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %65)
  %cmp86.not = icmp eq i64 %65, 0
  br i1 %cmp86.not, label %if.end83.if.end96_crit_edge, label %land.lhs.true88

if.end83.if.end96_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end96

land.lhs.true88:                                  ; preds = %if.end83
  %count90 = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 9, i32 1
  %66 = ptrtoint ptr %count90 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %count90, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %67, i64 %65)
  %cmp93 = icmp ugt i64 %67, %65
  br i1 %cmp93, label %if.then95, label %land.lhs.true88.if.end96_crit_edge

land.lhs.true88.if.end96_crit_edge:               ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end96

if.then95:                                        ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xchk_fblock_set_warning(ptr noundef %1, i32 noundef 0, i64 noundef %conv) #5
  br label %if.end96

if.end96:                                         ; preds = %if.then95, %land.lhs.true88.if.end96_crit_edge, %if.end83.if.end96_crit_edge
  %68 = ptrtoint ptr %hardlimit21 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %hardlimit21, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %69)
  %cmp99.not = icmp eq i64 %69, 0
  br i1 %cmp99.not, label %if.end96.if.end109_crit_edge, label %land.lhs.true101

if.end96.if.end109_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end109

land.lhs.true101:                                 ; preds = %if.end96
  %70 = ptrtoint ptr %count68 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %count68, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %71, i64 %69)
  %cmp106 = icmp ugt i64 %71, %69
  br i1 %cmp106, label %if.then108, label %land.lhs.true101.if.end109_crit_edge

land.lhs.true101.if.end109_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end109

if.then108:                                       ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xchk_fblock_set_warning(ptr noundef %1, i32 noundef 0, i64 noundef %conv) #5
  br label %if.end109

if.end109:                                        ; preds = %if.then108, %land.lhs.true101.if.end109_crit_edge, %if.end96.if.end109_crit_edge
  %72 = ptrtoint ptr %hardlimit34 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %hardlimit34, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %73)
  %cmp112.not = icmp eq i64 %73, 0
  br i1 %cmp112.not, label %if.end109.out_crit_edge, label %land.lhs.true114

if.end109.out_crit_edge:                          ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

land.lhs.true114:                                 ; preds = %if.end109
  %count116 = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 11, i32 1
  %74 = ptrtoint ptr %count116 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %count116, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %75, i64 %73)
  %cmp119 = icmp ugt i64 %75, %73
  br i1 %cmp119, label %if.then121, label %land.lhs.true114.out_crit_edge

land.lhs.true114.out_crit_edge:                   ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then121:                                       ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xchk_fblock_set_warning(ptr noundef %1, i32 noundef 0, i64 noundef %conv) #5
  br label %out

out:                                              ; preds = %if.then121, %land.lhs.true114.out_crit_edge, %if.end109.out_crit_edge, %if.end78.out_crit_edge
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %1, i32 0, i32 1
  %76 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sm_flags, align 4
  %and = and i32 %79, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool123.not = icmp eq i32 %and, 0
  %. = select i1 %tobool123.not, i32 0, i32 -125
  br label %cleanup

cleanup:                                          ; preds = %out, %fatal_signal_pending.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %out ], [ -125, %fatal_signal_pending.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xchk_fblock_process_error(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_metadata_inode_forks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iext_first(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_iext_get_extent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_fblock_set_corrupt(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iext_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_fblock_set_warning(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.named.register.sp = !{!5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_qm.h", i32 103, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/scrub/common.h", i32 24, i32 2}
!5 = !{!"sp"}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"auto-init"}
