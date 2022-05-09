; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/counters.c_pt.bc'
source_filename = "../drivers/infiniband/core/counters.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.173, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.173 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.164 }
%struct.anon.164 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ib_port_data = type { ptr, %struct.ib_port_immutable, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.ib_port_cache, ptr, %struct.hlist_node, %struct.rdma_port_counter, ptr }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }
%struct.ib_port_cache = type { i64, ptr, ptr, i8, i32 }
%struct.rdma_port_counter = type { %struct.rdma_counter_mode, ptr, i32, %struct.mutex }
%struct.rdma_counter_mode = type { i32, i32, %struct.auto_mode_param }
%struct.auto_mode_param = type { i32 }
%struct.rdma_hw_stats = type { %struct.mutex, i32, i32, ptr, ptr, i32, [0 x i64] }
%struct.rdma_stat_desc = type { ptr, i32, ptr }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.rdma_restrack_root = type { %struct.xarray, i32 }
%struct.rdma_counter = type { %struct.rdma_restrack_entry, ptr, i32, %struct.kref, %struct.rdma_counter_mode, %struct.mutex, ptr, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.111, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.rb_root = type { ptr }
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

@rdma_counter_set_auto_mode.__msg = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Modifying auto mode is not allowed when there is a bound QP\00", [36 x i8] zeroinitializer }, align 32
@rdma_counter_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&port_counter->lock\00", [44 x i8] zeroinitializer }, align 32
@alloc_and_bind.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&counter->lock\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.2 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 72, i32 3 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 638, i32 3 }
@___asan_gen_.11 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private constant [38 x i8] c"../drivers/infiniband/core/counters.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 189, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @rdma_counter_set_auto_mode.__msg, ptr @rdma_counter_init.__key, ptr @.str, ptr @alloc_and_bind.__key, ptr @.str.1], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdma_counter_set_auto_mode.__msg to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdma_counter_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_and_bind.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rdma_counter_set_auto_mode(ptr nocapture noundef readonly %dev, i32 noundef %port, i32 noundef %mask, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port_data = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %port_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_data, align 8
  %port_counter1 = getelementptr %struct.ib_port_data, ptr %1, i32 %port, i32 8
  %hstats = getelementptr %struct.ib_port_data, ptr %1, i32 %port, i32 8, i32 1
  %2 = ptrtoint ptr %hstats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hstats, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr %struct.ib_port_data, ptr %1, i32 %port, i32 8, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %tobool2.not = icmp eq i32 %mask, 0
  br i1 %tobool2.not, label %if.else, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %num_counters = getelementptr %struct.ib_port_data, ptr %1, i32 %port, i32 8, i32 2
  %4 = ptrtoint ptr %num_counters to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_counters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool4.not, i32 0, i32 2
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.end.if.end5_crit_edge
  %mode.0 = phi i32 [ %cond, %if.else ], [ 1, %if.end.if.end5_crit_edge ]
  %6 = ptrtoint ptr %port_counter1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_counter1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %mode.0)
  %cmp = icmp eq i32 %7, %mode.0
  br i1 %cmp, label %land.lhs.true, label %if.end5.if.end12_crit_edge

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end5
  %mask9 = getelementptr inbounds %struct.rdma_counter_mode, ptr %port_counter1, i32 0, i32 1
  %8 = ptrtoint ptr %mask9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %mask)
  %cmp10 = icmp eq i32 %9, %mask
  br i1 %cmp10, label %land.lhs.true.out.thread_crit_edge, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true.out.thread_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end5.if.end12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode.0)
  %cmp.i = icmp eq i32 %mode.0, 1
  br i1 %cmp.i, label %if.then.i, label %if.end12.if.end5.i_crit_edge

if.end12.if.end5.i_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mask)
  %tobool.not.i = icmp ult i32 %mask, 4
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i.out.thread_crit_edge

if.then.i.out.thread_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.end.i:                                         ; preds = %if.then.i
  %num_counters.i = getelementptr %struct.ib_port_data, ptr %1, i32 %port, i32 8, i32 2
  %10 = ptrtoint ptr %num_counters.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_counters.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not.i = icmp eq i32 %11, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %do.body

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i.if.end5.i_crit_edge, %if.end12.if.end5.i_crit_edge
  %12 = ptrtoint ptr %port_counter1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mode.0, ptr %port_counter1, align 4
  %mask.i = getelementptr inbounds %struct.rdma_counter_mode, ptr %port_counter1, i32 0, i32 1
  %13 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mask, ptr %mask.i, align 4
  br label %out.thread

out.thread:                                       ; preds = %if.end5.i, %if.then.i.out.thread_crit_edge, %land.lhs.true.out.thread_crit_edge
  %ret.0.ph = phi i32 [ -22, %if.then.i.out.thread_crit_edge ], [ 0, %if.end5.i ], [ 0, %land.lhs.true.out.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

do.body:                                          ; preds = %if.end.i
  tail call void @mutex_unlock(ptr noundef %lock) #7
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rdma_counter_set_auto_mode.__msg) #7
  %tobool16.not = icmp eq ptr %extack, null
  br i1 %tobool16.not, label %do.body.cleanup_crit_edge, label %if.then17

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @rdma_counter_set_auto_mode.__msg, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %do.body.cleanup_crit_edge, %out.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -16, %do.body.cleanup_crit_edge ], [ -16, %if.then17 ], [ %ret.0.ph, %out.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rdma_counter_modify(ptr noundef %dev, i32 noundef %port, i32 noundef %index, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %modify_hw_stat = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 1, i32 95
  %0 = ptrtoint ptr %modify_hw_stat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %modify_hw_stat, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @ib_get_hw_stats_port(ptr noundef %dev, i32 noundef %port) #7
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %num_counters = getelementptr inbounds %struct.rdma_hw_stats, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %num_counters to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_counters, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %index)
  %cmp.not = icmp ugt i32 %3, %index
  br i1 %cmp.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %descs = getelementptr inbounds %struct.rdma_hw_stats, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %descs, align 4
  %flags = getelementptr %struct.rdma_stat_desc, ptr %5, i32 %index, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %if.end5

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false2
  tail call void @mutex_lock_nested(ptr noundef nonnull %call, i32 noundef 0) #7
  %is_disabled = getelementptr inbounds %struct.rdma_hw_stats, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %is_disabled to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %is_disabled, align 8
  %div3.i = lshr i32 %index, 5
  %arrayidx.i = getelementptr i32, ptr %9, i32 %div3.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %index, 31
  %12 = shl nuw i32 1, %and.i
  %13 = and i32 %11, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp eq i32 %13, 0
  %cmp8.not = xor i1 %14, %enable
  br i1 %cmp8.not, label %if.end11, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end11:                                         ; preds = %if.end5
  %15 = ptrtoint ptr %modify_hw_stat to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %modify_hw_stat, align 4
  %call15 = tail call i32 %16(ptr noundef %dev, i32 noundef %port, i32 noundef %index, i1 noundef zeroext %enable) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end11.out_crit_edge

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end18:                                         ; preds = %if.end11
  %17 = ptrtoint ptr %is_disabled to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %is_disabled, align 8
  br i1 %enable, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef %index, ptr noundef %18) #7
  br label %out

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef %index, ptr noundef %18) #7
  br label %out

out:                                              ; preds = %if.else, %if.then20, %if.end11.out_crit_edge, %if.end5.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end5.out_crit_edge ], [ %call15, %if.end11.out_crit_edge ], [ 0, %if.then20 ], [ 0, %if.else ]
  tail call void @mutex_unlock(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -95, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_get_hw_stats_port(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rdma_counter_bind_qp_auto(ptr noundef %qp, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  %id.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 4
  %no_track.i = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 27, i32 1
  %2 = ptrtoint ptr %no_track.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %no_track.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %user.i = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 27, i32 7
  %3 = ptrtoint ptr %user.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %user.i, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i40 = icmp eq i8 %4, 0
  br i1 %tobool.not.i40, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %is_switch.i.i.i = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 19
  %5 = ptrtoint ptr %is_switch.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i.i.i = load i8, ptr %is_switch.i.i.i, align 4
  %6 = xor i8 %bf.load.i.i.i, -1
  %7 = lshr i8 %6, 7
  %.not.i.i = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %.not.i.i, i32 %port)
  %cmp.not.i = icmp ugt i32 %.not.i.i, %port
  br i1 %cmp.not.i, label %if.end.cleanup_crit_edge, label %land.rhs.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i.i)
  %tobool.i.i.i = icmp slt i8 %bf.load.i.i.i, 0
  br i1 %tobool.i.i.i, label %land.rhs.i.rdma_is_port_valid.exit_crit_edge, label %cond.false.i.i

land.rhs.i.rdma_is_port_valid.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdma_is_port_valid.exit

cond.false.i.i:                                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  %phys_port_cnt.i.i = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %phys_port_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phys_port_cnt.i.i, align 8
  br label %rdma_is_port_valid.exit

rdma_is_port_valid.exit:                          ; preds = %cond.false.i.i, %land.rhs.i.rdma_is_port_valid.exit_crit_edge
  %cond.i.i = phi i32 [ %9, %cond.false.i.i ], [ 0, %land.rhs.i.rdma_is_port_valid.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %port)
  %cmp2.i.not = icmp ult i32 %cond.i.i, %port
  br i1 %cmp2.i.not, label %rdma_is_port_valid.exit.cleanup_crit_edge, label %if.end5

rdma_is_port_valid.exit.cleanup_crit_edge:        ; preds = %rdma_is_port_valid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %rdma_is_port_valid.exit
  %port_data = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %port_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port_data, align 8
  %port_counter6 = getelementptr %struct.ib_port_data, ptr %11, i32 %port, i32 8
  %12 = ptrtoint ptr %port_counter6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_counter6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.not = icmp eq i32 %13, 1
  br i1 %cmp.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i) #7
  %res2.i = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 28
  %14 = ptrtoint ptr %res2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %res2.i, align 8
  %arrayidx3.i = getelementptr %struct.rdma_restrack_root, ptr %15, i32 6
  tail call void @_raw_spin_lock(ptr noundef %arrayidx3.i) #7
  %16 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %id.i, align 4
  %call.i = call ptr @xa_find(ptr noundef %arrayidx3.i, ptr noundef nonnull %id.i, i32 noundef -1, i32 noundef 8) #7
  %tobool.not38.i = icmp eq ptr %call.i, null
  br i1 %tobool.not38.i, label %if.end9.rdma_get_counter_auto_mode.exit.thread_crit_edge, label %for.body.lr.ph.i

if.end9.rdma_get_counter_auto_mode.exit.thread_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdma_get_counter_auto_mode.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end9
  %mask.i = getelementptr %struct.ib_port_data, ptr %11, i32 %port, i32 8, i32 0, i32 1
  %qp_type2.i.i = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 22
  %task11.i.i = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 27, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %next.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %res.039.i = phi ptr [ %call.i, %for.body.lr.ph.i ], [ %call13.i, %next.i.for.body.i_crit_edge ]
  %device5.i = getelementptr inbounds %struct.rdma_counter, ptr %res.039.i, i32 0, i32 1
  %17 = ptrtoint ptr %device5.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device5.i, align 4
  %19 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qp, align 4
  %cmp.not.i41 = icmp eq ptr %18, %20
  br i1 %cmp.not.i41, label %lor.lhs.false.i, label %for.body.i.next.i_crit_edge

for.body.i.next.i_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %next.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %port7.i = getelementptr inbounds %struct.rdma_counter, ptr %res.039.i, i32 0, i32 7
  %21 = ptrtoint ptr %port7.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %port)
  %cmp8.not.i = icmp eq i32 %22, %port
  br i1 %cmp8.not.i, label %if.end.i, label %lor.lhs.false.i.next.i_crit_edge

lor.lhs.false.i.next.i_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %next.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %23 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mask.i, align 4
  %and.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.thread.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end.i
  %param1.i.i = getelementptr inbounds %struct.rdma_counter, ptr %res.039.i, i32 0, i32 4, i32 2
  %25 = ptrtoint ptr %param1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %param1.i.i, align 4
  %27 = ptrtoint ptr %qp_type2.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qp_type2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp.i.i = icmp eq i32 %26, %28
  %and7.i.i = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool8.not.i.i, label %auto_mode_match.exit.i, label %if.end.i.i.if.then9.i.i_crit_edge

if.end.i.i.if.then9.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9.i.i

if.end.i.thread.i:                                ; preds = %if.end.i
  %and7.i42.i = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i42.i)
  %tobool8.not.i43.i = icmp eq i32 %and7.i42.i, 0
  br i1 %tobool8.not.i43.i, label %if.end.i.thread.i.land.lhs.true.i_crit_edge, label %if.end.i.thread.i.if.then9.i.i_crit_edge

if.end.i.thread.i.if.then9.i.i_crit_edge:         ; preds = %if.end.i.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9.i.i

if.end.i.thread.i.land.lhs.true.i_crit_edge:      ; preds = %if.end.i.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

if.then9.i.i:                                     ; preds = %if.end.i.thread.i.if.then9.i.i_crit_edge, %if.end.i.i.if.then9.i.i_crit_edge
  %match.0.off0.i44.i = phi i1 [ true, %if.end.i.thread.i.if.then9.i.i_crit_edge ], [ %cmp.i.i, %if.end.i.i.if.then9.i.i_crit_edge ]
  %task.i.i = getelementptr inbounds %struct.rdma_restrack_entry, ptr %res.039.i, i32 0, i32 4
  %29 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task.i.i, align 4
  %pid.i.i.i = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 68
  %31 = ptrtoint ptr %pid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pid.i.i.i, align 8
  %33 = ptrtoint ptr %task11.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task11.i.i, align 4
  %pid.i30.i.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 68
  %35 = ptrtoint ptr %pid.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pid.i30.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %36)
  %cmp13.i.i = icmp eq i32 %32, %36
  %and1729.i.i = and i1 %match.0.off0.i44.i, %cmp13.i.i
  br i1 %and1729.i.i, label %if.then9.i.i.land.lhs.true.i_crit_edge, label %if.then9.i.i.next.i_crit_edge

if.then9.i.i.next.i_crit_edge:                    ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %next.i

if.then9.i.i.land.lhs.true.i_crit_edge:           ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

auto_mode_match.exit.i:                           ; preds = %if.end.i.i
  br i1 %cmp.i.i, label %auto_mode_match.exit.i.land.lhs.true.i_crit_edge, label %auto_mode_match.exit.i.next.i_crit_edge

auto_mode_match.exit.i.next.i_crit_edge:          ; preds = %auto_mode_match.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %next.i

auto_mode_match.exit.i.land.lhs.true.i_crit_edge: ; preds = %auto_mode_match.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

next.i:                                           ; preds = %auto_mode_match.exit.i.next.i_crit_edge, %if.then9.i.i.next.i_crit_edge, %lor.lhs.false.i.next.i_crit_edge, %for.body.i.next.i_crit_edge
  %call13.i = call ptr @xa_find_after(ptr noundef %arrayidx3.i, ptr noundef nonnull %id.i, i32 noundef -1, i32 noundef 8) #7
  %tobool.not.i42 = icmp eq ptr %call13.i, null
  br i1 %tobool.not.i42, label %next.i.rdma_get_counter_auto_mode.exit.thread_crit_edge, label %next.i.for.body.i_crit_edge

next.i.for.body.i_crit_edge:                      ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

next.i.rdma_get_counter_auto_mode.exit.thread_crit_edge: ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdma_get_counter_auto_mode.exit.thread

land.lhs.true.i:                                  ; preds = %auto_mode_match.exit.i.land.lhs.true.i_crit_edge, %if.then9.i.i.land.lhs.true.i_crit_edge, %if.end.i.thread.i.land.lhs.true.i_crit_edge
  %kref.i = getelementptr inbounds %struct.rdma_counter, ptr %res.039.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #7
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #7
  %37 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %kref.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %land.lhs.true.i
  %39 = phi i32 [ %38, %land.lhs.true.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %40 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i.i.i.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %39, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #7
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #7
  %41 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %43 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 %42, i32 %add.i.i.i.i.i, ptr elementtype(i32) %kref.i) #7, !srcloc !18
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %43, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %43, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %42
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !19

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %44 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %45, 1
  %46 = or i32 %add5.i.i.i.i.i, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %.not.i.i.i.i.i = icmp sgt i32 %46, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !19

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 0) #7
  %47 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pr = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %48 = phi i32 [ %.pr, %if.then10.i.i.i.i.i ], [ %45, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %48, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #7
  br i1 %tobool12.i.i.i.i.not.i, label %kref_get_unless_zero.exit.i.rdma_get_counter_auto_mode.exit.thread_crit_edge, label %rdma_get_counter_auto_mode.exit

kref_get_unless_zero.exit.i.rdma_get_counter_auto_mode.exit.thread_crit_edge: ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdma_get_counter_auto_mode.exit.thread

rdma_get_counter_auto_mode.exit.thread:           ; preds = %kref_get_unless_zero.exit.i.rdma_get_counter_auto_mode.exit.thread_crit_edge, %next.i.rdma_get_counter_auto_mode.exit.thread_crit_edge, %if.end9.rdma_get_counter_auto_mode.exit.thread_crit_edge
  call void @_raw_spin_unlock(ptr noundef %arrayidx3.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #7
  br label %if.else

rdma_get_counter_auto_mode.exit:                  ; preds = %kref_get_unless_zero.exit.i
  call void @_raw_spin_unlock(ptr noundef %arrayidx3.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #7
  %tobool11.not = icmp eq ptr %res.039.i, null
  br i1 %tobool11.not, label %rdma_get_counter_auto_mode.exit.if.else_crit_edge, label %if.then12

rdma_get_counter_auto_mode.exit.if.else_crit_edge: ; preds = %rdma_get_counter_auto_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then12:                                        ; preds = %rdma_get_counter_auto_mode.exit
  %counter1.i = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 28
  %49 = ptrtoint ptr %counter1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %counter1.i, align 4
  %tobool.not.i43 = icmp eq ptr %50, null
  br i1 %tobool.not.i43, label %if.end.i44, label %if.then12.if.then15_crit_edge

if.then12.if.then15_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

if.end.i44:                                       ; preds = %if.then12
  %51 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %qp, align 4
  %counter_bind_qp.i = getelementptr inbounds %struct.ib_device, ptr %52, i32 0, i32 1, i32 113
  %53 = ptrtoint ptr %counter_bind_qp.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %counter_bind_qp.i, align 4
  %tobool2.not.i = icmp eq ptr %54, null
  br i1 %tobool2.not.i, label %if.end.i44.if.then15_crit_edge, label %__rdma_counter_bind_qp.exit

if.end.i44.if.then15_crit_edge:                   ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

__rdma_counter_bind_qp.exit:                      ; preds = %if.end.i44
  %lock.i = getelementptr inbounds %struct.rdma_counter, ptr %res.039.i, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %55 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %qp, align 4
  %counter_bind_qp7.i = getelementptr inbounds %struct.ib_device, ptr %56, i32 0, i32 1, i32 113
  %57 = ptrtoint ptr %counter_bind_qp7.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %counter_bind_qp7.i, align 4
  %call.i45 = call i32 %58(ptr noundef nonnull %res.039.i, ptr noundef %qp) #7
  call void @mutex_unlock(ptr noundef %lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %tobool14.not = icmp eq i32 %call.i45, 0
  br i1 %tobool14.not, label %__rdma_counter_bind_qp.exit.if.end22_crit_edge, label %__rdma_counter_bind_qp.exit.if.then15_crit_edge

__rdma_counter_bind_qp.exit.if.then15_crit_edge:  ; preds = %__rdma_counter_bind_qp.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

__rdma_counter_bind_qp.exit.if.end22_crit_edge:   ; preds = %__rdma_counter_bind_qp.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then15:                                        ; preds = %__rdma_counter_bind_qp.exit.if.then15_crit_edge, %if.end.i44.if.then15_crit_edge, %if.then12.if.then15_crit_edge
  %retval.0.i51 = phi i32 [ %call.i45, %__rdma_counter_bind_qp.exit.if.then15_crit_edge ], [ -95, %if.end.i44.if.then15_crit_edge ], [ -22, %if.then12.if.then15_crit_edge ]
  call fastcc void @kref_put(ptr noundef %kref.i)
  br label %cleanup

if.else:                                          ; preds = %rdma_get_counter_auto_mode.exit.if.else_crit_edge, %rdma_get_counter_auto_mode.exit.thread
  %call18 = call fastcc ptr @alloc_and_bind(ptr noundef %1, i32 noundef %port, ptr noundef %qp, i32 noundef 1)
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.else.cleanup_crit_edge, label %if.else.if.end22_crit_edge

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.else.if.end22_crit_edge, %__rdma_counter_bind_qp.exit.if.end22_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.else.cleanup_crit_edge, %if.then15, %if.end5.cleanup_crit_edge, %rdma_is_port_valid.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i51, %if.then15 ], [ 0, %if.end22 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -22, %rdma_is_port_valid.exit.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ -12, %if.else.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__rdma_counter_bind_qp(ptr noundef %counter, ptr noundef %qp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %counter1 = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 28
  %0 = ptrtoint ptr %counter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %counter1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp, align 4
  %counter_bind_qp = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 1, i32 113
  %4 = ptrtoint ptr %counter_bind_qp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %counter_bind_qp, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.rdma_counter, ptr %counter, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %6 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qp, align 4
  %counter_bind_qp7 = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 1, i32 113
  %8 = ptrtoint ptr %counter_bind_qp7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %counter_bind_qp7, align 4
  %call = tail call i32 %9(ptr noundef %counter, ptr noundef %qp) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_put(ptr noundef %kref) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !20
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #7, !srcloc !21
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !19

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #7
  br label %return

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !22
  %add.ptr.i = getelementptr i8, ptr %kref, i32 -92
  %device.i.i = getelementptr i8, ptr %kref, i32 -8
  %1 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device.i.i, align 4
  %port_data.i.i = getelementptr inbounds %struct.ib_device, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %port_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port_data.i.i, align 8
  %port.i.i = getelementptr i8, ptr %kref, i32 112
  %5 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port.i.i, align 4
  %hstats.i.i = getelementptr %struct.ib_port_data, ptr %4, i32 %6, i32 8, i32 1
  %7 = ptrtoint ptr %hstats.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hstats.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.then.counter_history_stat_update.exit.i_crit_edge, label %if.end.i.i

if.then.counter_history_stat_update.exit.i_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %counter_history_stat_update.exit.i

if.end.i.i:                                       ; preds = %if.then
  %counter_update_stats.i.i.i = getelementptr inbounds %struct.ib_device, ptr %2, i32 0, i32 1, i32 117
  %9 = ptrtoint ptr %counter_update_stats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %counter_update_stats.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.rdma_counter_query_stats.exit.i.i_crit_edge, label %if.end.i.i.i

if.end.i.i.rdma_counter_query_stats.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdma_counter_query_stats.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %lock.i.i.i = getelementptr i8, ptr %kref, i32 16
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i.i, i32 noundef 0) #7
  %11 = ptrtoint ptr %counter_update_stats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %counter_update_stats.i.i.i, align 4
  %call.i.i.i = tail call i32 %12(ptr noundef %add.ptr.i) #7
  tail call void @mutex_unlock(ptr noundef %lock.i.i.i) #7
  br label %rdma_counter_query_stats.exit.i.i

rdma_counter_query_stats.exit.i.i:                ; preds = %if.end.i.i.i, %if.end.i.i.rdma_counter_query_stats.exit.i.i_crit_edge
  %stats.i.i = getelementptr i8, ptr %kref, i32 108
  %13 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stats.i.i, align 4
  %num_counters17.i.i = getelementptr inbounds %struct.rdma_hw_stats, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %num_counters17.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_counters17.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp18.i.i = icmp sgt i32 %16, 0
  br i1 %cmp18.i.i, label %rdma_counter_query_stats.exit.i.i.for.body.i.i_crit_edge, label %rdma_counter_query_stats.exit.i.i.counter_history_stat_update.exit.i_crit_edge

rdma_counter_query_stats.exit.i.i.counter_history_stat_update.exit.i_crit_edge: ; preds = %rdma_counter_query_stats.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %counter_history_stat_update.exit.i

rdma_counter_query_stats.exit.i.i.for.body.i.i_crit_edge: ; preds = %rdma_counter_query_stats.exit.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %rdma_counter_query_stats.exit.i.i.for.body.i.i_crit_edge
  %17 = phi ptr [ %25, %for.body.i.i.for.body.i.i_crit_edge ], [ %14, %rdma_counter_query_stats.exit.i.i.for.body.i.i_crit_edge ]
  %i.019.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %rdma_counter_query_stats.exit.i.i.for.body.i.i_crit_edge ]
  %arrayidx3.i.i = getelementptr %struct.rdma_hw_stats, ptr %17, i32 0, i32 6, i32 %i.019.i.i
  %18 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx3.i.i, align 8
  %20 = ptrtoint ptr %hstats.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hstats.i.i, align 4
  %arrayidx6.i.i = getelementptr %struct.rdma_hw_stats, ptr %21, i32 0, i32 6, i32 %i.019.i.i
  %22 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx6.i.i, align 8
  %add.i.i = add i64 %23, %19
  store i64 %add.i.i, ptr %arrayidx6.i.i, align 8
  %inc.i.i = add nuw nsw i32 %i.019.i.i, 1
  %24 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stats.i.i, align 4
  %num_counters.i.i = getelementptr inbounds %struct.rdma_hw_stats, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %num_counters.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_counters.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %27
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.counter_history_stat_update.exit.i_crit_edge

for.body.i.i.counter_history_stat_update.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %counter_history_stat_update.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

counter_history_stat_update.exit.i:               ; preds = %for.body.i.i.counter_history_stat_update.exit.i_crit_edge, %rdma_counter_query_stats.exit.i.i.counter_history_stat_update.exit.i_crit_edge, %if.then.counter_history_stat_update.exit.i_crit_edge
  %28 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device.i.i, align 4
  %counter_dealloc.i = getelementptr inbounds %struct.ib_device, ptr %29, i32 0, i32 1, i32 115
  %30 = ptrtoint ptr %counter_dealloc.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %counter_dealloc.i, align 4
  %call.i = tail call i32 %31(ptr noundef %add.ptr.i) #7
  %32 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device.i.i, align 4
  %port_data.i5.i = getelementptr inbounds %struct.ib_device, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %port_data.i5.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %port_data.i5.i, align 8
  %36 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port.i.i, align 4
  %port_counter1.i.i = getelementptr %struct.ib_port_data, ptr %35, i32 %37, i32 8
  %lock.i.i = getelementptr %struct.ib_port_data, ptr %35, i32 %37, i32 8, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #7
  %num_counters.i7.i = getelementptr %struct.ib_port_data, ptr %35, i32 %37, i32 8, i32 2
  %38 = ptrtoint ptr %num_counters.i7.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_counters.i7.i, align 4
  %dec.i.i = add i32 %39, -1
  store i32 %dec.i.i, ptr %num_counters.i7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i8.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i8.i, label %land.lhs.true.i.i, label %counter_history_stat_update.exit.i.counter_release.exit_crit_edge

counter_history_stat_update.exit.i.counter_release.exit_crit_edge: ; preds = %counter_history_stat_update.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %counter_release.exit

land.lhs.true.i.i:                                ; preds = %counter_history_stat_update.exit.i
  %40 = ptrtoint ptr %port_counter1.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port_counter1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp.i9.i = icmp eq i32 %41, 2
  br i1 %cmp.i9.i, label %if.then.i.i, label %land.lhs.true.i.i.counter_release.exit_crit_edge

land.lhs.true.i.i.counter_release.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %counter_release.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %port_counter1.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %port_counter1.i.i, align 4
  %mask.i.i.i = getelementptr inbounds %struct.rdma_counter_mode, ptr %port_counter1.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %mask.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %mask.i.i.i, align 4
  br label %counter_release.exit

counter_release.exit:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.counter_release.exit_crit_edge, %counter_history_stat_update.exit.i.counter_release.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #7
  tail call void @rdma_restrack_del(ptr noundef %add.ptr.i) #7
  %stats.i10.i = getelementptr i8, ptr %kref, i32 108
  %44 = ptrtoint ptr %stats.i10.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stats.i10.i, align 4
  tail call void @rdma_free_hw_stats_struct(ptr noundef %45) #7
  tail call void @kfree(ptr noundef %add.ptr.i) #7
  br label %return

return:                                           ; preds = %counter_release.exit, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_and_bind(ptr noundef %dev, i32 noundef %port, ptr noundef %qp, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %counter_dealloc = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 1, i32 115
  %0 = ptrtoint ptr %counter_dealloc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %counter_dealloc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %counter_alloc_stats = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 1, i32 116
  %2 = ptrtoint ptr %counter_alloc_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %counter_alloc_stats, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 208) #10
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %device = getelementptr inbounds %struct.rdma_counter, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %device, align 4
  %port6 = getelementptr inbounds %struct.rdma_counter, ptr %call7.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %port6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %port, ptr %port6, align 4
  tail call void @rdma_restrack_new(ptr noundef nonnull %call7.i.i, i32 noundef 6) #7
  %7 = ptrtoint ptr %counter_alloc_stats to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %counter_alloc_stats, align 4
  %call9 = tail call ptr %8(ptr noundef nonnull %call7.i.i) #7
  %stats = getelementptr inbounds %struct.rdma_counter, ptr %call7.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9, ptr %stats, align 8
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %if.end5.err_stats_crit_edge, label %if.end13

if.end5.err_stats_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_stats

if.end13:                                         ; preds = %if.end5
  %port_data = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 11
  %10 = ptrtoint ptr %port_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port_data, align 8
  %port_counter14 = getelementptr %struct.ib_port_data, ptr %11, i32 %port, i32 8
  %lock = getelementptr %struct.ib_port_data, ptr %11, i32 %port, i32 8, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %12 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb20
  ]

sw.bb:                                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %port_counter14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %port_counter14, align 4
  %mask.i = getelementptr inbounds %struct.rdma_counter_mode, ptr %port_counter14, i32 0, i32 1
  %14 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %mask.i, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end13
  %mask = getelementptr inbounds %struct.rdma_counter_mode, ptr %port_counter14, i32 0, i32 1
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask, align 4
  %mode.i = getelementptr inbounds %struct.rdma_counter, ptr %call7.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %mode.i, align 8
  %mask.i71 = getelementptr inbounds %struct.rdma_counter, ptr %call7.i.i, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %mask.i71 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %mask.i71, align 4
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb20.sw.epilog_crit_edge, label %if.then.i

sw.bb20.sw.epilog_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  %param1.i = getelementptr inbounds %struct.rdma_counter, ptr %call7.i.i, i32 0, i32 4, i32 2
  %qp_type.i = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 22
  %19 = ptrtoint ptr %qp_type.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %qp_type.i, align 4
  %21 = ptrtoint ptr %param1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %param1.i, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %err_mode

sw.epilog:                                        ; preds = %if.then.i, %sw.bb20.sw.epilog_crit_edge, %sw.bb
  %num_counters = getelementptr %struct.ib_port_data, ptr %11, i32 %port, i32 8, i32 2
  %22 = ptrtoint ptr %num_counters to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_counters, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %num_counters, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %mode24 = getelementptr inbounds %struct.rdma_counter, ptr %call7.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %mode24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mode, ptr %mode24, align 8
  %kref = getelementptr inbounds %struct.rdma_counter, ptr %call7.i.i, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #7
  %25 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 1, ptr %kref, align 4
  %lock26 = getelementptr inbounds %struct.rdma_counter, ptr %call7.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock26, ptr noundef nonnull @.str.1, ptr noundef nonnull @alloc_and_bind.__key) #7
  %counter1.i = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 28
  %26 = ptrtoint ptr %counter1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %counter1.i, align 4
  %tobool.not.i72 = icmp eq ptr %27, null
  br i1 %tobool.not.i72, label %if.end.i, label %sw.epilog.err_mode_crit_edge

sw.epilog.err_mode_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_mode

if.end.i:                                         ; preds = %sw.epilog
  %28 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %qp, align 4
  %counter_bind_qp.i = getelementptr inbounds %struct.ib_device, ptr %29, i32 0, i32 1, i32 113
  %30 = ptrtoint ptr %counter_bind_qp.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %counter_bind_qp.i, align 4
  %tobool2.not.i = icmp eq ptr %31, null
  br i1 %tobool2.not.i, label %if.end.i.err_mode_crit_edge, label %__rdma_counter_bind_qp.exit

if.end.i.err_mode_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_mode

__rdma_counter_bind_qp.exit:                      ; preds = %if.end.i
  tail call void @mutex_lock_nested(ptr noundef %lock26, i32 noundef 0) #7
  %32 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %qp, align 4
  %counter_bind_qp7.i = getelementptr inbounds %struct.ib_device, ptr %33, i32 0, i32 1, i32 113
  %34 = ptrtoint ptr %counter_bind_qp7.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %counter_bind_qp7.i, align 4
  %call.i = tail call i32 %35(ptr noundef nonnull %call7.i.i, ptr noundef %qp) #7
  tail call void @mutex_unlock(ptr noundef %lock26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool28.not = icmp eq i32 %call.i, 0
  br i1 %tobool28.not, label %if.end30, label %__rdma_counter_bind_qp.exit.err_mode_crit_edge

__rdma_counter_bind_qp.exit.err_mode_crit_edge:   ; preds = %__rdma_counter_bind_qp.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_mode

if.end30:                                         ; preds = %__rdma_counter_bind_qp.exit
  call void @__sanitizer_cov_trace_pc() #9
  %res32 = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 27
  tail call void @rdma_restrack_parent_name(ptr noundef nonnull %call7.i.i, ptr noundef %res32) #7
  tail call void @rdma_restrack_add(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

err_mode:                                         ; preds = %__rdma_counter_bind_qp.exit.err_mode_crit_edge, %if.end.i.err_mode_crit_edge, %sw.epilog.err_mode_crit_edge, %sw.default
  %36 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %stats, align 8
  tail call void @rdma_free_hw_stats_struct(ptr noundef %37) #7
  br label %err_stats

err_stats:                                        ; preds = %err_mode, %if.end5.err_stats_crit_edge
  %call36 = tail call i32 @rdma_restrack_put(ptr noundef nonnull %call7.i.i) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_stats, %if.end30, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %err_stats ], [ %call7.i.i, %if.end30 ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rdma_counter_unbind_qp(ptr noundef %qp, i1 noundef zeroext %force) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %counter1 = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 28
  %0 = ptrtoint ptr %counter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %counter1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp, align 4
  %counter_unbind_qp.i = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 1, i32 114
  %4 = ptrtoint ptr %counter_unbind_qp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %counter_unbind_qp.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.__rdma_counter_unbind_qp.exit_crit_edge, label %if.end.i

if.end.__rdma_counter_unbind_qp.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %__rdma_counter_unbind_qp.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %lock.i = getelementptr inbounds %struct.rdma_counter, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %6 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qp, align 4
  %counter_unbind_qp4.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 1, i32 114
  %8 = ptrtoint ptr %counter_unbind_qp4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %counter_unbind_qp4.i, align 4
  %call.i = tail call i32 %9(ptr noundef %qp) #7
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  br label %__rdma_counter_unbind_qp.exit

__rdma_counter_unbind_qp.exit:                    ; preds = %if.end.i, %if.end.__rdma_counter_unbind_qp.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ -95, %if.end.__rdma_counter_unbind_qp.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool2.not = icmp eq i32 %retval.0.i, 0
  %brmerge = or i1 %tobool2.not, %force
  br i1 %brmerge, label %if.end5, label %__rdma_counter_unbind_qp.exit.cleanup_crit_edge

__rdma_counter_unbind_qp.exit.cleanup_crit_edge:  ; preds = %__rdma_counter_unbind_qp.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %__rdma_counter_unbind_qp.exit
  call void @__sanitizer_cov_trace_pc() #9
  %kref = getelementptr inbounds %struct.rdma_counter, ptr %1, i32 0, i32 3
  tail call fastcc void @kref_put(ptr noundef %kref)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %__rdma_counter_unbind_qp.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i, %__rdma_counter_unbind_qp.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rdma_counter_query_stats(ptr noundef %counter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.rdma_counter, ptr %counter, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %counter_update_stats = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 1, i32 117
  %2 = ptrtoint ptr %counter_update_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %counter_update_stats, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.rdma_counter, ptr %counter, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %4 = ptrtoint ptr %counter_update_stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %counter_update_stats, align 4
  %call = tail call i32 %5(ptr noundef %counter) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @rdma_counter_get_hwstat_value(ptr noundef readonly %dev, i32 noundef %port, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  %id.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port_data = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %port_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_data, align 8
  %hstats = getelementptr %struct.ib_port_data, ptr %1, i32 %port, i32 8, i32 1
  %2 = ptrtoint ptr %hstats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hstats, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i) #7
  %res1.i = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 28
  %4 = ptrtoint ptr %res1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %res1.i, align 8
  %arrayidx.i = getelementptr %struct.rdma_restrack_root, ptr %5, i32 6
  tail call void @_raw_spin_lock(ptr noundef %arrayidx.i) #7
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %id.i, align 4
  %call.i = call ptr @xa_find(ptr noundef %arrayidx.i, ptr noundef nonnull %id.i, i32 noundef -1, i32 noundef 8) #7
  %tobool.not37.i = icmp eq ptr %call.i, null
  br i1 %tobool.not37.i, label %if.end.get_running_counters_hwstat_sum.exit_crit_edge, label %for.body.preheader.i

if.end.get_running_counters_hwstat_sum.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_running_counters_hwstat_sum.exit

for.body.preheader.i:                             ; preds = %if.end
  %counter_update_stats.i.i = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 1, i32 117
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %res.039.i = phi ptr [ %call19.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %for.body.preheader.i ]
  %sum.038.i = phi i64 [ %sum.2.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %call3.i = call i32 @rdma_restrack_get(ptr noundef nonnull %res.039.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i) #7
  %device.i = getelementptr inbounds %struct.rdma_counter, ptr %res.039.i, i32 0, i32 1
  %7 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device.i, align 4
  %cmp.not.i = icmp eq ptr %8, %dev
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.i.next.i_crit_edge

if.end.i.next.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %next.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %port7.i = getelementptr inbounds %struct.rdma_counter, ptr %res.039.i, i32 0, i32 7
  %9 = ptrtoint ptr %port7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %port)
  %cmp8.not.i = icmp eq i32 %10, %port
  br i1 %cmp8.not.i, label %lor.lhs.false9.i, label %lor.lhs.false.i.next.i_crit_edge

lor.lhs.false.i.next.i_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %next.i

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false.i
  %11 = ptrtoint ptr %counter_update_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %counter_update_stats.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %lor.lhs.false9.i.next.i_crit_edge, label %rdma_counter_query_stats.exit.i

lor.lhs.false9.i.next.i_crit_edge:                ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %next.i

rdma_counter_query_stats.exit.i:                  ; preds = %lor.lhs.false9.i
  %lock.i.i = getelementptr inbounds %struct.rdma_counter, ptr %res.039.i, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #7
  %13 = ptrtoint ptr %counter_update_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %counter_update_stats.i.i, align 4
  %call.i.i = call i32 %14(ptr noundef nonnull %res.039.i) #7
  call void @mutex_unlock(ptr noundef %lock.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool11.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %rdma_counter_query_stats.exit.i.next.i_crit_edge

rdma_counter_query_stats.exit.i.next.i_crit_edge: ; preds = %rdma_counter_query_stats.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %next.i

if.end13.i:                                       ; preds = %rdma_counter_query_stats.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %stats.i = getelementptr inbounds %struct.rdma_counter, ptr %res.039.i, i32 0, i32 6
  %15 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stats.i, align 4
  %arrayidx14.i = getelementptr %struct.rdma_hw_stats, ptr %16, i32 0, i32 6, i32 %index
  %17 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx14.i, align 8
  %add.i = add i64 %18, %sum.038.i
  br label %next.i

next.i:                                           ; preds = %if.end13.i, %rdma_counter_query_stats.exit.i.next.i_crit_edge, %lor.lhs.false9.i.next.i_crit_edge, %lor.lhs.false.i.next.i_crit_edge, %if.end.i.next.i_crit_edge
  %sum.1.i = phi i64 [ %sum.038.i, %if.end.i.next.i_crit_edge ], [ %sum.038.i, %lor.lhs.false.i.next.i_crit_edge ], [ %sum.038.i, %rdma_counter_query_stats.exit.i.next.i_crit_edge ], [ %add.i, %if.end13.i ], [ %sum.038.i, %lor.lhs.false9.i.next.i_crit_edge ]
  call void @_raw_spin_lock(ptr noundef %arrayidx.i) #7
  %call17.i = call i32 @rdma_restrack_put(ptr noundef nonnull %res.039.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %next.i, %for.body.i.for.inc.i_crit_edge
  %sum.2.i = phi i64 [ %sum.1.i, %next.i ], [ %sum.038.i, %for.body.i.for.inc.i_crit_edge ]
  %call19.i = call ptr @xa_find_after(ptr noundef %arrayidx.i, ptr noundef nonnull %id.i, i32 noundef -1, i32 noundef 8) #7
  %tobool.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool.not.i, label %for.inc.i.get_running_counters_hwstat_sum.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.get_running_counters_hwstat_sum.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_running_counters_hwstat_sum.exit

get_running_counters_hwstat_sum.exit:             ; preds = %for.inc.i.get_running_counters_hwstat_sum.exit_crit_edge, %if.end.get_running_counters_hwstat_sum.exit_crit_edge
  %sum.0.lcssa.i = phi i64 [ 0, %if.end.get_running_counters_hwstat_sum.exit_crit_edge ], [ %sum.2.i, %for.inc.i.get_running_counters_hwstat_sum.exit_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #7
  %19 = ptrtoint ptr %hstats to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hstats, align 4
  %arrayidx3 = getelementptr %struct.rdma_hw_stats, ptr %20, i32 0, i32 6, i32 %index
  %21 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx3, align 8
  %add = add i64 %22, %sum.0.lcssa.i
  br label %cleanup

cleanup:                                          ; preds = %get_running_counters_hwstat_sum.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %add, %get_running_counters_hwstat_sum.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rdma_counter_bind_qpn(ptr noundef %dev, i32 noundef %port, i32 noundef %qp_num, i32 noundef %counter_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port_data = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %port_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_data, align 8
  %port_counter1 = getelementptr %struct.ib_port_data, ptr %1, i32 %port, i32 8
  %2 = ptrtoint ptr %port_counter1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_counter1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @rdma_restrack_get_byid(ptr noundef %dev, i32 noundef 2, i32 noundef %qp_num) #7
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 -164
  %qp_type.i = getelementptr i8, ptr %call.i, i32 -20
  %4 = ptrtoint ptr %qp_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qp_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp.i = icmp eq i32 %5, 8
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.rdma_counter_get_qp.exit_crit_edge

if.end.i.rdma_counter_get_qp.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdma_counter_get_qp.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %call2.i = tail call zeroext i1 @capable(i32 noundef 13) #7
  br i1 %call2.i, label %land.lhs.true.i.rdma_counter_get_qp.exit_crit_edge, label %land.lhs.true.i.cleanup.sink.split_crit_edge

land.lhs.true.i.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

land.lhs.true.i.rdma_counter_get_qp.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdma_counter_get_qp.exit

rdma_counter_get_qp.exit:                         ; preds = %land.lhs.true.i.rdma_counter_get_qp.exit_crit_edge, %if.end.i.rdma_counter_get_qp.exit_crit_edge
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %rdma_counter_get_qp.exit.cleanup_crit_edge, label %if.end4

rdma_counter_get_qp.exit.cleanup_crit_edge:       ; preds = %rdma_counter_get_qp.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %rdma_counter_get_qp.exit
  %call.i52 = tail call ptr @rdma_restrack_get_byid(ptr noundef %dev, i32 noundef 6, i32 noundef %counter_id) #7
  %cmp.i.i53 = icmp ugt ptr %call.i52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i53, label %if.end4.cleanup.sink.split_crit_edge, label %if.end.i54

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i54:                                       ; preds = %if.end4
  %kref.i = getelementptr inbounds %struct.rdma_counter, ptr %call.i52, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #7
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #7, !srcloc !23
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.i54.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !24

if.end.i54.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i54
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.rdma_get_counter_by_id.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !19

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.rdma_get_counter_by_id.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdma_get_counter_by_id.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.i54.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.i54.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #7
  br label %rdma_get_counter_by_id.exit

rdma_get_counter_by_id.exit:                      ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.rdma_get_counter_by_id.exit_crit_edge
  %call2.i55 = tail call i32 @rdma_restrack_put(ptr noundef %call.i52) #7
  %tobool6.not = icmp eq ptr %call.i52, null
  br i1 %tobool6.not, label %rdma_get_counter_by_id.exit.cleanup.sink.split_crit_edge, label %if.end8

rdma_get_counter_by_id.exit.cleanup.sink.split_crit_edge: ; preds = %rdma_get_counter_by_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end8:                                          ; preds = %rdma_get_counter_by_id.exit
  %user.i = getelementptr inbounds %struct.rdma_restrack_entry, ptr %call.i52, i32 0, i32 7
  %8 = ptrtoint ptr %user.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %user.i, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  %user.i57 = getelementptr inbounds %struct.rdma_restrack_entry, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %user.i57 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %user.i57, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i58 = icmp eq i8 %11, 0
  %12 = xor i1 %tobool.not.i, %tobool.not.i58
  br i1 %12, label %if.end8.err_task_crit_edge, label %if.end16

if.end8.err_task_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_task

if.end16:                                         ; preds = %if.end8
  %device = getelementptr inbounds %struct.rdma_counter, ptr %call.i52, i32 0, i32 1
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device, align 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 4
  %cmp18.not = icmp eq ptr %14, %16
  br i1 %cmp18.not, label %lor.lhs.false, label %if.end16.err_task_crit_edge

if.end16.err_task_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_task

lor.lhs.false:                                    ; preds = %if.end16
  %port20 = getelementptr inbounds %struct.rdma_counter, ptr %call.i52, i32 0, i32 7
  %17 = ptrtoint ptr %port20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port20, align 4
  %port21 = getelementptr i8, ptr %call.i, i32 -8
  %19 = ptrtoint ptr %port21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp22.not = icmp eq i32 %18, %20
  br i1 %cmp22.not, label %if.end25, label %lor.lhs.false.err_task_crit_edge

lor.lhs.false.err_task_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_task

if.end25:                                         ; preds = %lor.lhs.false
  %call26 = tail call fastcc i32 @__rdma_counter_bind_qp(ptr noundef nonnull %call.i52, ptr noundef nonnull %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end25.cleanup.sink.split_crit_edge, label %if.end25.err_task_crit_edge

if.end25.err_task_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_task

if.end25.cleanup.sink.split_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

err_task:                                         ; preds = %if.end25.err_task_crit_edge, %lor.lhs.false.err_task_crit_edge, %if.end16.err_task_crit_edge, %if.end8.err_task_crit_edge
  %ret.0 = phi i32 [ %call26, %if.end25.err_task_crit_edge ], [ -22, %if.end8.err_task_crit_edge ], [ -22, %lor.lhs.false.err_task_crit_edge ], [ -22, %if.end16.err_task_crit_edge ]
  tail call fastcc void @kref_put(ptr noundef %kref.i)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_task, %if.end25.cleanup.sink.split_crit_edge, %rdma_get_counter_by_id.exit.cleanup.sink.split_crit_edge, %if.end4.cleanup.sink.split_crit_edge, %land.lhs.true.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -2, %land.lhs.true.i.cleanup.sink.split_crit_edge ], [ 0, %if.end25.cleanup.sink.split_crit_edge ], [ %ret.0, %err_task ], [ -2, %rdma_get_counter_by_id.exit.cleanup.sink.split_crit_edge ], [ -2, %if.end4.cleanup.sink.split_crit_edge ]
  %call5.i = tail call i32 @rdma_restrack_put(ptr noundef %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %rdma_counter_get_qp.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -2, %rdma_counter_get_qp.exit.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_restrack_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rdma_counter_bind_qpn_alloc(ptr noundef %dev, i32 noundef %port, i32 noundef %qp_num, ptr noundef writeonly %counter_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %is_switch.i.i.i = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %is_switch.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i.i = load i8, ptr %is_switch.i.i.i, align 4
  %1 = xor i8 %bf.load.i.i.i, -1
  %2 = lshr i8 %1, 7
  %.not.i.i = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %.not.i.i, i32 %port)
  %cmp.not.i = icmp ugt i32 %.not.i.i, %port
  br i1 %cmp.not.i, label %entry.cleanup_crit_edge, label %land.rhs.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i.i)
  %tobool.i.i.i = icmp slt i8 %bf.load.i.i.i, 0
  br i1 %tobool.i.i.i, label %land.rhs.i.rdma_is_port_valid.exit_crit_edge, label %cond.false.i.i

land.rhs.i.rdma_is_port_valid.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdma_is_port_valid.exit

cond.false.i.i:                                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  %phys_port_cnt.i.i = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 21
  %3 = ptrtoint ptr %phys_port_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phys_port_cnt.i.i, align 8
  br label %rdma_is_port_valid.exit

rdma_is_port_valid.exit:                          ; preds = %cond.false.i.i, %land.rhs.i.rdma_is_port_valid.exit_crit_edge
  %cond.i.i = phi i32 [ %4, %cond.false.i.i ], [ 0, %land.rhs.i.rdma_is_port_valid.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %port)
  %cmp2.i.not = icmp ult i32 %cond.i.i, %port
  br i1 %cmp2.i.not, label %rdma_is_port_valid.exit.cleanup_crit_edge, label %if.end

rdma_is_port_valid.exit.cleanup_crit_edge:        ; preds = %rdma_is_port_valid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %rdma_is_port_valid.exit
  %port_data = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 11
  %5 = ptrtoint ptr %port_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port_data, align 8
  %hstats = getelementptr %struct.ib_port_data, ptr %6, i32 %port, i32 8, i32 1
  %7 = ptrtoint ptr %hstats to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hstats, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %port_counter1 = getelementptr %struct.ib_port_data, ptr %6, i32 %port, i32 8
  %9 = ptrtoint ptr %port_counter1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port_counter1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %call.i = tail call ptr @rdma_restrack_get_byid(ptr noundef %dev, i32 noundef 2, i32 noundef %qp_num) #7
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end7.cleanup_crit_edge, label %if.end.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end7
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 -164
  %qp_type.i = getelementptr i8, ptr %call.i, i32 -20
  %11 = ptrtoint ptr %qp_type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qp_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %cmp.i = icmp eq i32 %12, 8
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.rdma_counter_get_qp.exit_crit_edge

if.end.i.rdma_counter_get_qp.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdma_counter_get_qp.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %call2.i = tail call zeroext i1 @capable(i32 noundef 13) #7
  br i1 %call2.i, label %land.lhs.true.i.rdma_counter_get_qp.exit_crit_edge, label %land.lhs.true.i.cleanup.sink.split_crit_edge

land.lhs.true.i.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

land.lhs.true.i.rdma_counter_get_qp.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdma_counter_get_qp.exit

rdma_counter_get_qp.exit:                         ; preds = %land.lhs.true.i.rdma_counter_get_qp.exit_crit_edge, %if.end.i.rdma_counter_get_qp.exit_crit_edge
  %tobool9.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool9.not, label %rdma_counter_get_qp.exit.cleanup_crit_edge, label %if.end11

rdma_counter_get_qp.exit.cleanup_crit_edge:       ; preds = %rdma_counter_get_qp.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %rdma_counter_get_qp.exit
  %port12 = getelementptr i8, ptr %call.i, i32 -8
  %13 = ptrtoint ptr %port12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port12, align 4
  %15 = ptrtoint ptr %is_switch.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i.i.i48 = load i8, ptr %is_switch.i.i.i, align 4
  %16 = xor i8 %bf.load.i.i.i48, -1
  %17 = lshr i8 %16, 7
  %.not.i.i49 = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %.not.i.i49)
  %cmp.not.i50 = icmp ult i32 %14, %.not.i.i49
  br i1 %cmp.not.i50, label %if.end11.if.end18_crit_edge, label %land.rhs.i52

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

land.rhs.i52:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i.i48)
  %tobool.i.i.i51 = icmp slt i8 %bf.load.i.i.i48, 0
  br i1 %tobool.i.i.i51, label %land.rhs.i52.rdma_is_port_valid.exit59_crit_edge, label %cond.false.i.i54

land.rhs.i52.rdma_is_port_valid.exit59_crit_edge: ; preds = %land.rhs.i52
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdma_is_port_valid.exit59

cond.false.i.i54:                                 ; preds = %land.rhs.i52
  call void @__sanitizer_cov_trace_pc() #9
  %phys_port_cnt.i.i53 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 21
  %18 = ptrtoint ptr %phys_port_cnt.i.i53 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %phys_port_cnt.i.i53, align 8
  br label %rdma_is_port_valid.exit59

rdma_is_port_valid.exit59:                        ; preds = %cond.false.i.i54, %land.rhs.i52.rdma_is_port_valid.exit59_crit_edge
  %cond.i.i55 = phi i32 [ %19, %cond.false.i.i54 ], [ 0, %land.rhs.i52.rdma_is_port_valid.exit59_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i55, i32 %14)
  %cmp2.i56.not = icmp ult i32 %cond.i.i55, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %port)
  %cmp16.not = icmp eq i32 %14, %port
  %or.cond = or i1 %cmp16.not, %cmp2.i56.not
  br i1 %or.cond, label %rdma_is_port_valid.exit59.if.end18_crit_edge, label %rdma_is_port_valid.exit59.cleanup.sink.split_crit_edge

rdma_is_port_valid.exit59.cleanup.sink.split_crit_edge: ; preds = %rdma_is_port_valid.exit59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

rdma_is_port_valid.exit59.if.end18_crit_edge:     ; preds = %rdma_is_port_valid.exit59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end18:                                         ; preds = %rdma_is_port_valid.exit59.if.end18_crit_edge, %if.end11.if.end18_crit_edge
  %call19 = tail call fastcc ptr @alloc_and_bind(ptr noundef %dev, i32 noundef %port, ptr noundef nonnull %add.ptr.i, i32 noundef 2)
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end18.cleanup.sink.split_crit_edge, label %if.end22

if.end18.cleanup.sink.split_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end22:                                         ; preds = %if.end18
  %tobool23.not = icmp eq ptr %counter_id, null
  br i1 %tobool23.not, label %if.end22.cleanup.sink.split_crit_edge, label %if.then24

if.end22.cleanup.sink.split_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %id = getelementptr inbounds %struct.rdma_counter, ptr %call19, i32 0, i32 2
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 4
  %22 = ptrtoint ptr %counter_id to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %counter_id, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then24, %if.end22.cleanup.sink.split_crit_edge, %if.end18.cleanup.sink.split_crit_edge, %rdma_is_port_valid.exit59.cleanup.sink.split_crit_edge, %land.lhs.true.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -2, %land.lhs.true.i.cleanup.sink.split_crit_edge ], [ 0, %if.then24 ], [ 0, %if.end22.cleanup.sink.split_crit_edge ], [ -12, %if.end18.cleanup.sink.split_crit_edge ], [ -22, %rdma_is_port_valid.exit59.cleanup.sink.split_crit_edge ]
  %call5.i = tail call i32 @rdma_restrack_put(ptr noundef %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %rdma_counter_get_qp.exit.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %rdma_is_port_valid.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %rdma_is_port_valid.exit.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -2, %rdma_counter_get_qp.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end7.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rdma_counter_unbind_qpn(ptr noundef %dev, i32 noundef %port, i32 noundef %qp_num, i32 noundef %counter_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %is_switch.i.i.i = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %is_switch.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i.i = load i8, ptr %is_switch.i.i.i, align 4
  %1 = xor i8 %bf.load.i.i.i, -1
  %2 = lshr i8 %1, 7
  %.not.i.i = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %.not.i.i, i32 %port)
  %cmp.not.i = icmp ugt i32 %.not.i.i, %port
  br i1 %cmp.not.i, label %entry.cleanup_crit_edge, label %land.rhs.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i.i)
  %tobool.i.i.i = icmp slt i8 %bf.load.i.i.i, 0
  br i1 %tobool.i.i.i, label %land.rhs.i.rdma_is_port_valid.exit_crit_edge, label %cond.false.i.i

land.rhs.i.rdma_is_port_valid.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdma_is_port_valid.exit

cond.false.i.i:                                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  %phys_port_cnt.i.i = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 21
  %3 = ptrtoint ptr %phys_port_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phys_port_cnt.i.i, align 8
  br label %rdma_is_port_valid.exit

rdma_is_port_valid.exit:                          ; preds = %cond.false.i.i, %land.rhs.i.rdma_is_port_valid.exit_crit_edge
  %cond.i.i = phi i32 [ %4, %cond.false.i.i ], [ 0, %land.rhs.i.rdma_is_port_valid.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %port)
  %cmp2.i.not = icmp ult i32 %cond.i.i, %port
  br i1 %cmp2.i.not, label %rdma_is_port_valid.exit.cleanup_crit_edge, label %if.end

rdma_is_port_valid.exit.cleanup_crit_edge:        ; preds = %rdma_is_port_valid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %rdma_is_port_valid.exit
  %call.i = tail call ptr @rdma_restrack_get_byid(ptr noundef %dev, i32 noundef 2, i32 noundef %qp_num) #7
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 -164
  %qp_type.i = getelementptr i8, ptr %call.i, i32 -20
  %5 = ptrtoint ptr %qp_type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qp_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %cmp.i = icmp eq i32 %6, 8
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.rdma_counter_get_qp.exit_crit_edge

if.end.i.rdma_counter_get_qp.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdma_counter_get_qp.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %call2.i = tail call zeroext i1 @capable(i32 noundef 13) #7
  br i1 %call2.i, label %land.lhs.true.i.rdma_counter_get_qp.exit_crit_edge, label %land.lhs.true.i.cleanup.sink.split_crit_edge

land.lhs.true.i.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

land.lhs.true.i.rdma_counter_get_qp.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdma_counter_get_qp.exit

rdma_counter_get_qp.exit:                         ; preds = %land.lhs.true.i.rdma_counter_get_qp.exit_crit_edge, %if.end.i.rdma_counter_get_qp.exit_crit_edge
  %tobool2.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool2.not, label %rdma_counter_get_qp.exit.cleanup_crit_edge, label %if.end4

rdma_counter_get_qp.exit.cleanup_crit_edge:       ; preds = %rdma_counter_get_qp.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %rdma_counter_get_qp.exit
  %port5 = getelementptr i8, ptr %call.i, i32 -8
  %7 = ptrtoint ptr %port5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port5, align 4
  %9 = ptrtoint ptr %is_switch.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i.i.i36 = load i8, ptr %is_switch.i.i.i, align 4
  %10 = xor i8 %bf.load.i.i.i36, -1
  %11 = lshr i8 %10, 7
  %.not.i.i37 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %.not.i.i37)
  %cmp.not.i38 = icmp ult i32 %8, %.not.i.i37
  br i1 %cmp.not.i38, label %if.end4.if.end10_crit_edge, label %land.rhs.i40

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

land.rhs.i40:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i.i36)
  %tobool.i.i.i39 = icmp slt i8 %bf.load.i.i.i36, 0
  br i1 %tobool.i.i.i39, label %land.rhs.i40.rdma_is_port_valid.exit47_crit_edge, label %cond.false.i.i42

land.rhs.i40.rdma_is_port_valid.exit47_crit_edge: ; preds = %land.rhs.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdma_is_port_valid.exit47

cond.false.i.i42:                                 ; preds = %land.rhs.i40
  call void @__sanitizer_cov_trace_pc() #9
  %phys_port_cnt.i.i41 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 21
  %12 = ptrtoint ptr %phys_port_cnt.i.i41 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phys_port_cnt.i.i41, align 8
  br label %rdma_is_port_valid.exit47

rdma_is_port_valid.exit47:                        ; preds = %cond.false.i.i42, %land.rhs.i40.rdma_is_port_valid.exit47_crit_edge
  %cond.i.i43 = phi i32 [ %13, %cond.false.i.i42 ], [ 0, %land.rhs.i40.rdma_is_port_valid.exit47_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i43, i32 %8)
  %cmp2.i44.not = icmp ult i32 %cond.i.i43, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %port)
  %cmp.not = icmp eq i32 %8, %port
  %or.cond = or i1 %cmp.not, %cmp2.i44.not
  br i1 %or.cond, label %rdma_is_port_valid.exit47.if.end10_crit_edge, label %rdma_is_port_valid.exit47.cleanup.sink.split_crit_edge

rdma_is_port_valid.exit47.cleanup.sink.split_crit_edge: ; preds = %rdma_is_port_valid.exit47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

rdma_is_port_valid.exit47.if.end10_crit_edge:     ; preds = %rdma_is_port_valid.exit47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end10:                                         ; preds = %rdma_is_port_valid.exit47.if.end10_crit_edge, %if.end4.if.end10_crit_edge
  %port_data = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 11
  %14 = ptrtoint ptr %port_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port_data, align 8
  %port_counter11 = getelementptr %struct.ib_port_data, ptr %15, i32 %port, i32 8
  %counter = getelementptr i8, ptr %call.i, i32 84
  %16 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %counter, align 4
  %tobool12.not = icmp eq ptr %17, null
  br i1 %tobool12.not, label %if.end10.cleanup.sink.split_crit_edge, label %lor.lhs.false

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.end10
  %id = getelementptr inbounds %struct.rdma_counter, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %counter_id)
  %cmp14.not = icmp eq i32 %19, %counter_id
  br i1 %cmp14.not, label %lor.lhs.false15, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %20 = ptrtoint ptr %port_counter11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port_counter11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp17.not = icmp eq i32 %21, 2
  br i1 %cmp17.not, label %if.end.i48, label %lor.lhs.false15.cleanup.sink.split_crit_edge

lor.lhs.false15.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i48:                                       ; preds = %lor.lhs.false15
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 4
  %counter_unbind_qp.i.i = getelementptr inbounds %struct.ib_device, ptr %23, i32 0, i32 1, i32 114
  %24 = ptrtoint ptr %counter_unbind_qp.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %counter_unbind_qp.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.end.i48.cleanup.sink.split_crit_edge, label %__rdma_counter_unbind_qp.exit.i

if.end.i48.cleanup.sink.split_crit_edge:          ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

__rdma_counter_unbind_qp.exit.i:                  ; preds = %if.end.i48
  %lock.i.i = getelementptr inbounds %struct.rdma_counter, ptr %17, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #7
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 4
  %counter_unbind_qp4.i.i = getelementptr inbounds %struct.ib_device, ptr %27, i32 0, i32 1, i32 114
  %28 = ptrtoint ptr %counter_unbind_qp4.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %counter_unbind_qp4.i.i, align 4
  %call.i.i = tail call i32 %29(ptr noundef nonnull %add.ptr.i) #7
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.end5.i, label %__rdma_counter_unbind_qp.exit.i.cleanup.sink.split_crit_edge

__rdma_counter_unbind_qp.exit.i.cleanup.sink.split_crit_edge: ; preds = %__rdma_counter_unbind_qp.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end5.i:                                        ; preds = %__rdma_counter_unbind_qp.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %kref.i = getelementptr inbounds %struct.rdma_counter, ptr %17, i32 0, i32 3
  tail call fastcc void @kref_put(ptr noundef %kref.i) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end5.i, %__rdma_counter_unbind_qp.exit.i.cleanup.sink.split_crit_edge, %if.end.i48.cleanup.sink.split_crit_edge, %lor.lhs.false15.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.end10.cleanup.sink.split_crit_edge, %rdma_is_port_valid.exit47.cleanup.sink.split_crit_edge, %land.lhs.true.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -2, %land.lhs.true.i.cleanup.sink.split_crit_edge ], [ -22, %lor.lhs.false15.cleanup.sink.split_crit_edge ], [ -22, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ -22, %if.end10.cleanup.sink.split_crit_edge ], [ 0, %if.end5.i ], [ %call.i.i, %__rdma_counter_unbind_qp.exit.i.cleanup.sink.split_crit_edge ], [ -95, %if.end.i48.cleanup.sink.split_crit_edge ], [ -22, %rdma_is_port_valid.exit47.cleanup.sink.split_crit_edge ]
  %call5.i = tail call i32 @rdma_restrack_put(ptr noundef %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %rdma_counter_get_qp.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %rdma_is_port_valid.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %rdma_is_port_valid.exit.cleanup_crit_edge ], [ -2, %rdma_counter_get_qp.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rdma_counter_get_mode(ptr nocapture noundef readonly %dev, i32 noundef %port, ptr nocapture noundef writeonly %mode, ptr nocapture noundef writeonly %mask) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port_data = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %port_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_data, align 8
  %port_counter1 = getelementptr %struct.ib_port_data, ptr %1, i32 %port, i32 8
  %2 = ptrtoint ptr %port_counter1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_counter1, align 4
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %mode, align 4
  %mask5 = getelementptr inbounds %struct.rdma_counter_mode, ptr %port_counter1, i32 0, i32 1
  %5 = ptrtoint ptr %mask5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask5, align 4
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %mask, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rdma_counter_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port_data = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %port_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_switch.i.i = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %is_switch.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i.i = load i8, ptr %is_switch.i.i, align 4
  %3 = xor i8 %bf.load.i.i, -1
  %4 = lshr i8 %3, 7
  %.not.i = zext i8 %4 to i32
  %phys_port_cnt.i = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 21
  %alloc_hw_port_stats = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 1, i32 93
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %bf.load.i.i50 = phi i8 [ %bf.load.i.i50.pr, %for.inc ], [ %bf.load.i.i, %if.end ]
  %port.0 = phi i32 [ %inc, %for.inc ], [ %.not.i, %if.end ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i50)
  %tobool.i.i = icmp slt i8 %bf.load.i.i50, 0
  br i1 %tobool.i.i, label %for.cond.rdma_end_port.exit_crit_edge, label %cond.false.i

for.cond.rdma_end_port.exit_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdma_end_port.exit

cond.false.i:                                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %phys_port_cnt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %phys_port_cnt.i, align 8
  br label %rdma_end_port.exit

rdma_end_port.exit:                               ; preds = %cond.false.i, %for.cond.rdma_end_port.exit_crit_edge
  %cond.i = phi i32 [ %6, %cond.false.i ], [ 0, %for.cond.rdma_end_port.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %port.0, i32 %cond.i)
  %cmp.not = icmp ugt i32 %port.0, %cond.i
  br i1 %cmp.not, label %rdma_end_port.exit.cleanup_crit_edge, label %for.body

rdma_end_port.exit.cleanup_crit_edge:             ; preds = %rdma_end_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %rdma_end_port.exit
  %7 = ptrtoint ptr %port_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port_data, align 8
  %port_counter3 = getelementptr %struct.ib_port_data, ptr %8, i32 %port.0, i32 8
  %9 = ptrtoint ptr %port_counter3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %port_counter3, align 4
  %lock = getelementptr %struct.ib_port_data, ptr %8, i32 %port.0, i32 8, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @rdma_counter_init.__key) #7
  %10 = ptrtoint ptr %alloc_hw_port_stats to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %alloc_hw_port_stats, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %if.end7

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %call10 = tail call ptr %11(ptr noundef %dev, i32 noundef %port.0) #7
  %hstats = getelementptr %struct.ib_port_data, ptr %8, i32 %port.0, i32 8, i32 1
  %12 = ptrtoint ptr %hstats to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call10, ptr %hstats, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %for.cond15.preheader, label %if.end7.for.inc_crit_edge

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.cond15.preheader:                             ; preds = %if.end7
  %13 = ptrtoint ptr %is_switch.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i.i5256 = load i8, ptr %is_switch.i.i, align 4
  %14 = xor i8 %bf.load.i.i5256, -1
  %15 = lshr i8 %14, 7
  %.not.i5357 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %port.0, i32 %.not.i5357)
  %cmp17.not58 = icmp ult i32 %port.0, %.not.i5357
  br i1 %cmp17.not58, label %for.cond15.preheader.cleanup_crit_edge, label %for.cond15.preheader.for.body18_crit_edge

for.cond15.preheader.for.body18_crit_edge:        ; preds = %for.cond15.preheader
  br label %for.body18

for.cond15.preheader.cleanup_crit_edge:           ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %if.end7.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i32 %port.0, 1
  %16 = ptrtoint ptr %is_switch.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i.i50.pr = load i8, ptr %is_switch.i.i, align 4
  br label %for.cond

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.cond15.preheader.for.body18_crit_edge
  %i.059 = phi i32 [ %dec, %for.body18.for.body18_crit_edge ], [ %port.0, %for.cond15.preheader.for.body18_crit_edge ]
  %17 = ptrtoint ptr %port_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port_data, align 8
  %hstats22 = getelementptr %struct.ib_port_data, ptr %18, i32 %port.0, i32 8, i32 1
  %19 = ptrtoint ptr %hstats22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hstats22, align 4
  tail call void @rdma_free_hw_stats_struct(ptr noundef %20) #7
  %21 = ptrtoint ptr %hstats22 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %hstats22, align 4
  %lock24 = getelementptr %struct.ib_port_data, ptr %18, i32 %port.0, i32 8, i32 3
  tail call void @mutex_destroy(ptr noundef %lock24) #7
  %dec = add i32 %i.059, -1
  %22 = ptrtoint ptr %is_switch.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i.i52 = load i8, ptr %is_switch.i.i, align 4
  %23 = xor i8 %bf.load.i.i52, -1
  %24 = lshr i8 %23, 7
  %.not.i53 = zext i8 %24 to i32
  %cmp17.not = icmp ult i32 %dec, %.not.i53
  br i1 %cmp17.not, label %for.body18.cleanup_crit_edge, label %for.body18.for.body18_crit_edge

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body18

for.body18.cleanup_crit_edge:                     ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body18.cleanup_crit_edge, %for.cond15.preheader.cleanup_crit_edge, %rdma_end_port.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_free_hw_stats_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rdma_counter_release(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %is_switch.i.i = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %is_switch.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %is_switch.i.i, align 4
  %1 = xor i8 %bf.load.i.i, -1
  %2 = lshr i8 %1, 7
  %.not.i = zext i8 %2 to i32
  %phys_port_cnt.i = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 21
  %port_data = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 11
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %bf.load.i.i9 = phi i8 [ %bf.load.i.i9.pr, %for.body ], [ %bf.load.i.i, %entry ]
  %port.0 = phi i32 [ %inc, %for.body ], [ %.not.i, %entry ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i9)
  %tobool.i.i = icmp slt i8 %bf.load.i.i9, 0
  br i1 %tobool.i.i, label %for.cond.rdma_end_port.exit_crit_edge, label %cond.false.i

for.cond.rdma_end_port.exit_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdma_end_port.exit

cond.false.i:                                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %phys_port_cnt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phys_port_cnt.i, align 8
  br label %rdma_end_port.exit

rdma_end_port.exit:                               ; preds = %cond.false.i, %for.cond.rdma_end_port.exit_crit_edge
  %cond.i = phi i32 [ %4, %cond.false.i ], [ 0, %for.cond.rdma_end_port.exit_crit_edge ]
  %cmp.not = icmp ugt i32 %port.0, %cond.i
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %rdma_end_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %port_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port_data, align 8
  %hstats = getelementptr %struct.ib_port_data, ptr %6, i32 %port.0, i32 8, i32 1
  %7 = ptrtoint ptr %hstats to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hstats, align 4
  tail call void @rdma_free_hw_stats_struct(ptr noundef %8) #7
  %lock = getelementptr %struct.ib_port_data, ptr %6, i32 %port.0, i32 8, i32 3
  tail call void @mutex_destroy(ptr noundef %lock) #7
  %inc = add i32 %port.0, 1
  %9 = ptrtoint ptr %is_switch.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i.i9.pr = load i8, ptr %is_switch.i.i, align 4
  br label %for.cond

for.end:                                          ; preds = %rdma_end_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_restrack_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_restrack_new(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_restrack_parent_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_restrack_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_restrack_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_restrack_get_byid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @rdma_counter_set_auto_mode.__msg, !1, !"__msg", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/counters.c", i32 72, i32 3}
!2 = !{ptr @rdma_counter_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/core/counters.c", i32 638, i32 3}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @alloc_and_bind.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/infiniband/core/counters.c", i32 189, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i8 0, i8 2}
!18 = !{i64 858050, i64 858074, i64 858095, i64 858112, i64 858129}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2148463845}
!21 = !{i64 2148378309, i64 2148378341, i64 2148378370, i64 2148378404, i64 2148378435, i64 2148378458}
!22 = !{i64 2149629971}
!23 = !{i64 2148375844, i64 2148375876, i64 2148375905, i64 2148375939, i64 2148375970, i64 2148375993}
!24 = !{!"branch_weights", i32 1, i32 2000}
