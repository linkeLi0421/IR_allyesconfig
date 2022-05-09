; ModuleID = '/llk/IR_all_yes/drivers/tee/optee/call.c_pt.bc'
source_filename = "../drivers/tee/optee/call.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.52 }
%struct.atomic_t = type { i32 }
%union.anon.52 = type { i32 }
%struct.optee_call_waiter = type { %struct.list_head, %struct.completion }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.optee_call_queue = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.optee = type { ptr, ptr, ptr, ptr, %union.anon.73, %struct.optee_call_queue, %struct.optee_notif, %struct.optee_supp, ptr, i32, i8, ptr, %struct.work_struct }
%union.anon.73 = type { %struct.optee_ffa }
%struct.optee_ffa = type { ptr, ptr, %struct.mutex, %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.optee_notif = type { i32, %struct.spinlock, %struct.list_head, ptr }
%struct.optee_supp = type { %struct.mutex, ptr, i32, %struct.list_head, %struct.idr, %struct.completion }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optee_msg_arg = type { i32, i32, i32, i32, i32, i32, i32, i32, [0 x %struct.optee_msg_param] }
%struct.optee_msg_param = type { i64, %union.anon.71 }
%union.anon.71 = type { %struct.optee_msg_param_tmem }
%struct.optee_msg_param_tmem = type { i64, i64, i64 }
%struct.uuid_t = type { [16 x i8] }
%struct.tee_context = type { ptr, ptr, %struct.kref, i8, i8, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.tee_ioctl_open_session_arg = type { [16 x i8], [16 x i8], i32, i32, i32, i32, i32, i32, [0 x %struct.tee_ioctl_param] }
%struct.tee_ioctl_param = type { i64, i64, i64, i64 }
%struct.optee_ops = type { ptr, ptr, ptr }
%struct.optee_session = type { %struct.list_head, i32 }
%struct.optee_context_data = type { %struct.mutex, %struct.list_head }
%struct.tee_ioctl_invoke_arg = type { i32, i32, i32, i32, i32, i32, [0 x %struct.tee_ioctl_param] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.42, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.42 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.9 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.46, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }

@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@___asan_gen_ = private constant [28 x i8] c"../drivers/tee/optee/call.c\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 87, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @init_completion.__key, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @optee_cq_wait_init(ptr noundef %cq, ptr noundef %w) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef %cq, i32 noundef 0) #5
  %c = getelementptr inbounds %struct.optee_call_waiter, ptr %w, i32 0, i32 1
  %0 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %c, align 4
  %wait.i = getelementptr inbounds %struct.optee_call_waiter, ptr %w, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #5
  %waiters = getelementptr inbounds %struct.optee_call_queue, ptr %cq, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.optee_call_queue, ptr %cq, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %w, ptr noundef %2, ptr noundef %waiters) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %w, ptr %prev.i, align 4
  %4 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %waiters, ptr %w, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %w, i32 0, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev3.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %w, ptr %2, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %cq) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @optee_cq_wait_for_completion(ptr noundef %cq, ptr noundef %w) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %c = getelementptr inbounds %struct.optee_call_waiter, ptr %w, i32 0, i32 1
  tail call void @wait_for_completion(ptr noundef %c) #5
  tail call void @mutex_lock_nested(ptr noundef %cq, i32 noundef 0) #5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %w) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %w, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %w, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %w, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %w, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %8 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %c, align 4
  %waiters = getelementptr inbounds %struct.optee_call_queue, ptr %cq, i32 0, i32 1
  %prev.i9 = getelementptr inbounds %struct.optee_call_queue, ptr %cq, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i9, align 4
  %call.i.i10 = tail call zeroext i1 @__list_add_valid(ptr noundef %w, ptr noundef %10, ptr noundef %waiters) #5
  br i1 %call.i.i10, label %if.end.i.i11, label %list_del.exit.list_add_tail.exit_crit_edge

list_del.exit.list_add_tail.exit_crit_edge:       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i11:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %prev.i9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %w, ptr %prev.i9, align 4
  %12 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %waiters, ptr %w, align 4
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %w, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i11, %list_del.exit.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %cq) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @optee_cq_wait_final(ptr noundef %cq, ptr noundef %w) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef %cq, i32 noundef 0) #5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %w) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %w, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %w, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %w, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %w, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %waiters.i = getelementptr inbounds %struct.optee_call_queue, ptr %cq, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %list_del.exit
  %w.0.in.i = phi ptr [ %waiters.i, %list_del.exit ], [ %w.0.i, %for.body.i.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %w.0.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %w.0.i = load ptr, ptr %w.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %w.0.i, %waiters.i
  br i1 %cmp.not.i, label %for.cond.i.optee_cq_complete_one.exit_crit_edge, label %for.body.i

for.cond.i.optee_cq_complete_one.exit_crit_edge:  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %optee_cq_complete_one.exit

for.body.i:                                       ; preds = %for.cond.i
  %c.i = getelementptr inbounds %struct.optee_call_waiter, ptr %w.0.i, i32 0, i32 1
  %call.i = tail call zeroext i1 @completion_done(ptr noundef %c.i) #5
  br i1 %call.i, label %for.body.i.for.cond.i_crit_edge, label %if.then.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @complete(ptr noundef %c.i) #5
  br label %optee_cq_complete_one.exit

optee_cq_complete_one.exit:                       ; preds = %if.then.i, %for.cond.i.optee_cq_complete_one.exit_crit_edge
  %c = getelementptr inbounds %struct.optee_call_waiter, ptr %w, i32 0, i32 1
  %call = tail call zeroext i1 @completion_done(ptr noundef %c) #5
  br i1 %call, label %optee_cq_complete_one.exit.for.cond.i10_crit_edge, label %optee_cq_complete_one.exit.if.end_crit_edge

optee_cq_complete_one.exit.if.end_crit_edge:      ; preds = %optee_cq_complete_one.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

optee_cq_complete_one.exit.for.cond.i10_crit_edge: ; preds = %optee_cq_complete_one.exit
  br label %for.cond.i10

for.cond.i10:                                     ; preds = %for.body.i13.for.cond.i10_crit_edge, %optee_cq_complete_one.exit.for.cond.i10_crit_edge
  %w.0.in.i7 = phi ptr [ %w.0.i8, %for.body.i13.for.cond.i10_crit_edge ], [ %waiters.i, %optee_cq_complete_one.exit.for.cond.i10_crit_edge ]
  %9 = ptrtoint ptr %w.0.in.i7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %w.0.i8 = load ptr, ptr %w.0.in.i7, align 4
  %cmp.not.i9 = icmp eq ptr %w.0.i8, %waiters.i
  br i1 %cmp.not.i9, label %for.cond.i10.if.end_crit_edge, label %for.body.i13

for.cond.i10.if.end_crit_edge:                    ; preds = %for.cond.i10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.i13:                                     ; preds = %for.cond.i10
  %c.i11 = getelementptr inbounds %struct.optee_call_waiter, ptr %w.0.i8, i32 0, i32 1
  %call.i12 = tail call zeroext i1 @completion_done(ptr noundef %c.i11) #5
  br i1 %call.i12, label %for.body.i13.for.cond.i10_crit_edge, label %if.then.i14

for.body.i13.for.cond.i10_crit_edge:              ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i10

if.then.i14:                                      ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @complete(ptr noundef %c.i11) #5
  br label %if.end

if.end:                                           ; preds = %if.then.i14, %for.cond.i10.if.end_crit_edge, %optee_cq_complete_one.exit.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %cq) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @optee_get_msg_arg(ptr noundef %ctx, i32 noundef %num_params, ptr nocapture noundef writeonly %msg_arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %call = tail call ptr @tee_get_drvdata(ptr noundef %1) #5
  %mul = shl i32 %num_params, 5
  %add = add i32 %mul, 32
  %rpc_arg_count = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 9
  %2 = ptrtoint ptr %rpc_arg_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rpc_arg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %mul2 = shl i32 %3, 5
  %add3 = add i32 %mul2, 32
  %add4 = select i1 %tobool.not, i32 0, i32 %add3
  %sz.0 = add i32 %add4, %add
  %call5 = tail call ptr @tee_shm_alloc(ptr noundef %ctx, i32 noundef %sz.0, i32 noundef 129) #5
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end8

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %entry
  %call9 = tail call ptr @tee_shm_get_va(ptr noundef %call5, i32 noundef 0) #5
  %cmp.i32 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i32, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tee_shm_free(ptr noundef %call5) #5
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %4 = call ptr @memset(ptr %call9, i32 0, i32 %add)
  %num_params15 = getelementptr inbounds %struct.optee_msg_arg, ptr %call9, i32 0, i32 7
  %5 = ptrtoint ptr %num_params15 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %num_params, ptr %num_params15, align 4
  %6 = ptrtoint ptr %msg_arg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9, ptr %msg_arg, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9, %if.then11 ], [ %call5, %if.end12 ], [ %call5, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tee_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tee_shm_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tee_shm_get_va(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tee_shm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @optee_open_session(ptr noundef %ctx, ptr noundef %arg, ptr noundef %param) local_unnamed_addr #0 align 64 {
entry:
  %client_uuid = alloca %struct.uuid_t, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %call = tail call ptr @tee_get_drvdata(ptr noundef %1) #5
  %data = getelementptr inbounds %struct.tee_context, ptr %ctx, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %client_uuid) #5
  %num_params = getelementptr inbounds %struct.tee_ioctl_open_session_arg, ptr %arg, i32 0, i32 7
  %4 = call ptr @memset(ptr %client_uuid, i32 255, i32 16)
  %5 = ptrtoint ptr %num_params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_params, align 4
  %add = add i32 %6, 2
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx, align 4
  %call.i = tail call ptr @tee_get_drvdata(ptr noundef %8) #5
  %mul.i = shl i32 %add, 5
  %add.i = add i32 %mul.i, 32
  %rpc_arg_count.i = getelementptr inbounds %struct.optee, ptr %call.i, i32 0, i32 9
  %9 = ptrtoint ptr %rpc_arg_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rpc_arg_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  %mul2.i = shl i32 %10, 5
  %add3.i = add i32 %mul2.i, 32
  %add4.i = select i1 %tobool.not.i, i32 0, i32 %add3.i
  %sz.0.i = add i32 %add4.i, %add.i
  %call5.i = tail call ptr @tee_shm_alloc(ptr noundef %ctx, i32 noundef %sz.0.i, i32 noundef 129) #5
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.optee_get_msg_arg.exit_crit_edge, label %if.end8.i

entry.optee_get_msg_arg.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %optee_get_msg_arg.exit

if.end8.i:                                        ; preds = %entry
  %call9.i = tail call ptr @tee_shm_get_va(ptr noundef %call5.i, i32 noundef 0) #5
  %cmp.i32.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i32.i, label %if.then11.i, label %if.end12.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tee_shm_free(ptr noundef %call5.i) #5
  br label %optee_get_msg_arg.exit

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = call ptr @memset(ptr %call9.i, i32 0, i32 %add.i)
  %num_params15.i = getelementptr inbounds %struct.optee_msg_arg, ptr %call9.i, i32 0, i32 7
  %12 = ptrtoint ptr %num_params15.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %num_params15.i, align 4
  br label %optee_get_msg_arg.exit

optee_get_msg_arg.exit:                           ; preds = %if.end12.i, %if.then11.i, %entry.optee_get_msg_arg.exit_crit_edge
  %msg_arg.0 = phi ptr [ inttoptr (i32 -1 to ptr), %entry.optee_get_msg_arg.exit_crit_edge ], [ inttoptr (i32 -1 to ptr), %if.then11.i ], [ %call9.i, %if.end12.i ]
  %retval.0.i = phi ptr [ %call5.i, %entry.optee_get_msg_arg.exit_crit_edge ], [ %call9.i, %if.then11.i ], [ %call5.i, %if.end12.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %optee_get_msg_arg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end:                                           ; preds = %optee_get_msg_arg.exit
  %14 = ptrtoint ptr %msg_arg.0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %msg_arg.0, align 8
  %cancel_id = getelementptr inbounds %struct.tee_ioctl_open_session_arg, ptr %arg, i32 0, i32 3
  %15 = ptrtoint ptr %cancel_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cancel_id, align 4
  %cancel_id4 = getelementptr inbounds %struct.optee_msg_arg, ptr %msg_arg.0, i32 0, i32 3
  %17 = ptrtoint ptr %cancel_id4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %cancel_id4, align 4
  %params = getelementptr inbounds %struct.optee_msg_arg, ptr %msg_arg.0, i32 0, i32 8
  %18 = ptrtoint ptr %params to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 257, ptr %params, align 8
  %arrayidx6 = getelementptr %struct.optee_msg_arg, ptr %msg_arg.0, i32 2
  %19 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 257, ptr %arrayidx6, align 8
  %u = getelementptr inbounds %struct.optee_msg_arg, ptr %msg_arg.0, i32 1, i32 2
  %20 = call ptr @memcpy(ptr %u, ptr %arg, i32 16)
  %clnt_login = getelementptr inbounds %struct.tee_ioctl_open_session_arg, ptr %arg, i32 0, i32 2
  %21 = ptrtoint ptr %clnt_login to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %clnt_login, align 8
  %conv = zext i32 %22 to i64
  %c = getelementptr %struct.optee_msg_arg, ptr %msg_arg.0, i32 2, i32 6
  %23 = ptrtoint ptr %c to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv, ptr %c, align 8
  %24 = load i32, ptr %clnt_login, align 8
  %clnt_uuid = getelementptr inbounds %struct.tee_ioctl_open_session_arg, ptr %arg, i32 0, i32 1
  %call15 = call i32 @tee_session_calc_client_uuid(ptr noundef nonnull %client_uuid, i32 noundef %24, ptr noundef %clnt_uuid) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.end17, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end17:                                         ; preds = %if.end
  %u20 = getelementptr %struct.optee_msg_arg, ptr %msg_arg.0, i32 2, i32 2
  %25 = call ptr @memcpy(ptr %u20, ptr %client_uuid, i32 16)
  %ops = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 2
  %26 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops, align 4
  %to_msg_param = getelementptr inbounds %struct.optee_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %to_msg_param to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %to_msg_param, align 4
  %add.ptr = getelementptr %struct.optee_msg_arg, ptr %msg_arg.0, i32 3
  %30 = ptrtoint ptr %num_params to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_params, align 4
  %call25 = call i32 %29(ptr noundef %call, ptr noundef %add.ptr, i32 noundef %31, ptr noundef %param) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end17.out_crit_edge

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end28:                                         ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 12) #8
  %tobool30.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool30.not, label %if.end28.out_crit_edge, label %if.end32

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end32:                                         ; preds = %if.end28
  %33 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %call34 = call i32 %36(ptr noundef %ctx, ptr noundef %retval.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end32.if.end37_crit_edge, label %if.then36

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %ret = getelementptr inbounds %struct.optee_msg_arg, ptr %msg_arg.0, i32 0, i32 5
  %37 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -65522, ptr %ret, align 4
  %ret_origin = getelementptr inbounds %struct.optee_msg_arg, ptr %msg_arg.0, i32 0, i32 6
  %38 = ptrtoint ptr %ret_origin to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %ret_origin, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end32.if.end37_crit_edge
  %ret38 = getelementptr inbounds %struct.optee_msg_arg, ptr %msg_arg.0, i32 0, i32 5
  %39 = ptrtoint ptr %ret38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ret38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp = icmp eq i32 %40, 0
  br i1 %cmp, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.end37
  %session = getelementptr inbounds %struct.optee_msg_arg, ptr %msg_arg.0, i32 0, i32 2
  %41 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %session, align 8
  %session_id = getelementptr inbounds %struct.optee_session, ptr %call7.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %session_id to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %session_id, align 8
  call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #5
  %sess_list = getelementptr inbounds %struct.optee_context_data, ptr %3, i32 0, i32 1
  %44 = ptrtoint ptr %sess_list to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sess_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %sess_list, ptr noundef %45) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then40.list_add.exit_crit_edge

if.then40.list_add.exit_crit_edge:                ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %47 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %45, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %sess_list, ptr %prev3.i.i, align 4
  %49 = ptrtoint ptr %sess_list to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %call7.i.i, ptr %sess_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then40.list_add.exit_crit_edge
  call void @mutex_unlock(ptr noundef %3) #5
  br label %if.end42

if.else:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %if.end42

if.end42:                                         ; preds = %if.else, %list_add.exit
  %50 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops, align 4
  %from_msg_param = getelementptr inbounds %struct.optee_ops, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %from_msg_param to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %from_msg_param, align 4
  %54 = ptrtoint ptr %num_params to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_params, align 4
  %call48 = call i32 %53(ptr noundef %call, ptr noundef %param, i32 noundef %55, ptr noundef %add.ptr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.else55, label %if.then50

if.then50:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %ret51 = getelementptr inbounds %struct.tee_ioctl_open_session_arg, ptr %arg, i32 0, i32 5
  %56 = ptrtoint ptr %ret51 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -65522, ptr %ret51, align 4
  %ret_origin52 = getelementptr inbounds %struct.tee_ioctl_open_session_arg, ptr %arg, i32 0, i32 6
  %57 = ptrtoint ptr %ret_origin52 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %ret_origin52, align 8
  %session53 = getelementptr inbounds %struct.optee_msg_arg, ptr %msg_arg.0, i32 0, i32 2
  %58 = ptrtoint ptr %session53 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %session53, align 8
  %call54 = call i32 @optee_close_session(ptr noundef %ctx, i32 noundef %59)
  br label %out

if.else55:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %session56 = getelementptr inbounds %struct.optee_msg_arg, ptr %msg_arg.0, i32 0, i32 2
  %60 = ptrtoint ptr %session56 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %session56, align 8
  %session57 = getelementptr inbounds %struct.tee_ioctl_open_session_arg, ptr %arg, i32 0, i32 4
  %62 = ptrtoint ptr %session57 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %session57, align 8
  %63 = ptrtoint ptr %ret38 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ret38, align 4
  %ret59 = getelementptr inbounds %struct.tee_ioctl_open_session_arg, ptr %arg, i32 0, i32 5
  %65 = ptrtoint ptr %ret59 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %ret59, align 4
  %ret_origin60 = getelementptr inbounds %struct.optee_msg_arg, ptr %msg_arg.0, i32 0, i32 6
  %66 = ptrtoint ptr %ret_origin60 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ret_origin60, align 8
  %ret_origin61 = getelementptr inbounds %struct.tee_ioctl_open_session_arg, ptr %arg, i32 0, i32 6
  %68 = ptrtoint ptr %ret_origin61 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %ret_origin61, align 8
  br label %out

out:                                              ; preds = %if.else55, %if.then50, %if.end28.out_crit_edge, %if.end17.out_crit_edge, %if.end.out_crit_edge
  %rc.0 = phi i32 [ %call15, %if.end.out_crit_edge ], [ %call25, %if.end17.out_crit_edge ], [ 0, %if.then50 ], [ 0, %if.else55 ], [ -12, %if.end28.out_crit_edge ]
  call void @tee_shm_free(ptr noundef %retval.0.i) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %13, %if.then ], [ %rc.0, %out ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %client_uuid) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tee_session_calc_client_uuid(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @optee_close_session(ptr noundef %ctx, i32 noundef %session) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.tee_context, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #5
  %sess_list.i = getelementptr inbounds %struct.optee_context_data, ptr %1, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %sess.0.in.i = phi ptr [ %sess_list.i, %entry ], [ %sess.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %sess.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %sess.0.i = load ptr, ptr %sess.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %sess.0.i, %sess_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.then3.critedge_crit_edge, label %for.body.i

for.cond.i.if.then3.critedge_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3.critedge

for.body.i:                                       ; preds = %for.cond.i
  %session_id2.i = getelementptr inbounds %struct.optee_session, ptr %sess.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %session_id2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %session_id2.i, align 4
  %cmp3.i = icmp eq i32 %4, %session
  br i1 %cmp3.i, label %find_session.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

find_session.exit:                                ; preds = %for.body.i
  %tobool.not = icmp eq ptr %sess.0.i, null
  br i1 %tobool.not, label %find_session.exit.if.then3.critedge_crit_edge, label %if.then

find_session.exit.if.then3.critedge_crit_edge:    ; preds = %find_session.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3.critedge

if.then:                                          ; preds = %find_session.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %sess.0.i) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %sess.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %sess.0.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sess.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %11 = ptrtoint ptr %sess.0.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %sess.0.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %sess.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %1) #5
  tail call void @kfree(ptr noundef nonnull %sess.0.i) #5
  %call5 = tail call i32 @optee_close_session_helper(ptr noundef %ctx, i32 noundef %session)
  br label %cleanup

if.then3.critedge:                                ; preds = %find_session.exit.if.then3.critedge_crit_edge, %for.cond.i.if.then3.critedge_crit_edge
  tail call void @mutex_unlock(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then3.critedge, %list_del.exit
  %retval.0 = phi i32 [ %call5, %list_del.exit ], [ -22, %if.then3.critedge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @optee_close_session_helper(ptr noundef %ctx, i32 noundef %session) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %call = tail call ptr @tee_get_drvdata(ptr noundef %1) #5
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %call.i = tail call ptr @tee_get_drvdata(ptr noundef %3) #5
  %rpc_arg_count.i = getelementptr inbounds %struct.optee, ptr %call.i, i32 0, i32 9
  %4 = ptrtoint ptr %rpc_arg_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rpc_arg_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  %mul2.i = shl i32 %5, 5
  %add3.i.op = add i32 %mul2.i, 64
  %sz.0.i = select i1 %tobool.not.i, i32 32, i32 %add3.i.op
  %call5.i = tail call ptr @tee_shm_alloc(ptr noundef %ctx, i32 noundef %sz.0.i, i32 noundef 129) #5
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.optee_get_msg_arg.exit_crit_edge, label %if.end8.i

entry.optee_get_msg_arg.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %optee_get_msg_arg.exit

if.end8.i:                                        ; preds = %entry
  %call9.i = tail call ptr @tee_shm_get_va(ptr noundef %call5.i, i32 noundef 0) #5
  %cmp.i32.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i32.i, label %if.then11.i, label %if.end12.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tee_shm_free(ptr noundef %call5.i) #5
  br label %optee_get_msg_arg.exit

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %6 = call ptr @memset(ptr %call9.i, i32 0, i32 32)
  br label %optee_get_msg_arg.exit

optee_get_msg_arg.exit:                           ; preds = %if.end12.i, %if.then11.i, %entry.optee_get_msg_arg.exit_crit_edge
  %msg_arg.0 = phi ptr [ inttoptr (i32 -1 to ptr), %entry.optee_get_msg_arg.exit_crit_edge ], [ inttoptr (i32 -1 to ptr), %if.then11.i ], [ %call9.i, %if.end12.i ]
  %retval.0.i = phi ptr [ %call5.i, %entry.optee_get_msg_arg.exit_crit_edge ], [ %call9.i, %if.then11.i ], [ %call5.i, %if.end12.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %optee_get_msg_arg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end:                                           ; preds = %optee_get_msg_arg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %msg_arg.0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %msg_arg.0, align 8
  %session4 = getelementptr inbounds %struct.optee_msg_arg, ptr %msg_arg.0, i32 0, i32 2
  %9 = ptrtoint ptr %session4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %session, ptr %session4, align 8
  %ops = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call5 = tail call i32 %13(ptr noundef %ctx, ptr noundef %retval.0.i) #5
  tail call void @tee_shm_free(ptr noundef %retval.0.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %7, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @optee_invoke_func(ptr noundef %ctx, ptr nocapture noundef %arg, ptr noundef %param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %call = tail call ptr @tee_get_drvdata(ptr noundef %1) #5
  %data = getelementptr inbounds %struct.tee_context, ptr %ctx, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #5
  %session = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %arg, i32 0, i32 1
  %4 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %session, align 4
  %sess_list.i = getelementptr inbounds %struct.optee_context_data, ptr %3, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %sess.0.in.i = phi ptr [ %sess_list.i, %entry ], [ %sess.0.i, %for.body.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %sess.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %sess.0.i = load ptr, ptr %sess.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %sess.0.i, %sess_list.i
  br i1 %cmp.not.i, label %find_session.exit.thread, label %for.body.i

find_session.exit.thread:                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef %3) #5
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %session_id2.i = getelementptr inbounds %struct.optee_session, ptr %sess.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %session_id2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %session_id2.i, align 4
  %cmp3.i = icmp eq i32 %8, %5
  br i1 %cmp3.i, label %find_session.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

find_session.exit:                                ; preds = %for.body.i
  tail call void @mutex_unlock(ptr noundef %3) #5
  %tobool.not = icmp eq ptr %sess.0.i, null
  br i1 %tobool.not, label %find_session.exit.cleanup_crit_edge, label %if.end

find_session.exit.cleanup_crit_edge:              ; preds = %find_session.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %find_session.exit
  %num_params = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %arg, i32 0, i32 5
  %9 = ptrtoint ptr %num_params to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_params, align 4
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 4
  %call.i = tail call ptr @tee_get_drvdata(ptr noundef %12) #5
  %mul.i = shl i32 %10, 5
  %add.i = add i32 %mul.i, 32
  %rpc_arg_count.i = getelementptr inbounds %struct.optee, ptr %call.i, i32 0, i32 9
  %13 = ptrtoint ptr %rpc_arg_count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rpc_arg_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  %mul2.i = shl i32 %14, 5
  %add3.i = add i32 %mul2.i, 32
  %add4.i = select i1 %tobool.not.i, i32 0, i32 %add3.i
  %sz.0.i = add i32 %add4.i, %add.i
  %call5.i = tail call ptr @tee_shm_alloc(ptr noundef %ctx, i32 noundef %sz.0.i, i32 noundef 129) #5
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.optee_get_msg_arg.exit_crit_edge, label %if.end8.i

if.end.optee_get_msg_arg.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %optee_get_msg_arg.exit

if.end8.i:                                        ; preds = %if.end
  %call9.i = tail call ptr @tee_shm_get_va(ptr noundef %call5.i, i32 noundef 0) #5
  %cmp.i32.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i32.i, label %if.then11.i, label %if.end12.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tee_shm_free(ptr noundef %call5.i) #5
  br label %optee_get_msg_arg.exit

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = call ptr @memset(ptr %call9.i, i32 0, i32 %add.i)
  %num_params15.i = getelementptr inbounds %struct.optee_msg_arg, ptr %call9.i, i32 0, i32 7
  %16 = ptrtoint ptr %num_params15.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %10, ptr %num_params15.i, align 4
  br label %optee_get_msg_arg.exit

optee_get_msg_arg.exit:                           ; preds = %if.end12.i, %if.then11.i, %if.end.optee_get_msg_arg.exit_crit_edge
  %msg_arg.0 = phi ptr [ inttoptr (i32 -1 to ptr), %if.end.optee_get_msg_arg.exit_crit_edge ], [ inttoptr (i32 -1 to ptr), %if.then11.i ], [ %call9.i, %if.end12.i ]
  %retval.0.i63 = phi ptr [ %call5.i, %if.end.optee_get_msg_arg.exit_crit_edge ], [ %call9.i, %if.then11.i ], [ %call5.i, %if.end12.i ]
  %cmp.i = icmp ugt ptr %retval.0.i63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %optee_get_msg_arg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %retval.0.i63 to i32
  br label %cleanup

if.end7:                                          ; preds = %optee_get_msg_arg.exit
  %18 = ptrtoint ptr %msg_arg.0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %msg_arg.0, align 8
  %19 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arg, align 8
  %func8 = getelementptr inbounds %struct.optee_msg_arg, ptr %msg_arg.0, i32 0, i32 1
  %21 = ptrtoint ptr %func8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %func8, align 4
  %22 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %session, align 4
  %session10 = getelementptr inbounds %struct.optee_msg_arg, ptr %msg_arg.0, i32 0, i32 2
  %24 = ptrtoint ptr %session10 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %session10, align 8
  %cancel_id = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %arg, i32 0, i32 2
  %25 = ptrtoint ptr %cancel_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cancel_id, align 8
  %cancel_id11 = getelementptr inbounds %struct.optee_msg_arg, ptr %msg_arg.0, i32 0, i32 3
  %27 = ptrtoint ptr %cancel_id11 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %cancel_id11, align 4
  %ops = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 2
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops, align 4
  %to_msg_param = getelementptr inbounds %struct.optee_ops, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %to_msg_param to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %to_msg_param, align 4
  %params = getelementptr inbounds %struct.optee_msg_arg, ptr %msg_arg.0, i32 0, i32 8
  %32 = ptrtoint ptr %num_params to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_params, align 4
  %call13 = tail call i32 %31(ptr noundef %call, ptr noundef %params, i32 noundef %33, ptr noundef %param) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end16:                                         ; preds = %if.end7
  %34 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %call18 = tail call i32 %37(ptr noundef %ctx, ptr noundef %retval.0.i63) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end16.if.end21_crit_edge, label %if.then20

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %ret = getelementptr inbounds %struct.optee_msg_arg, ptr %msg_arg.0, i32 0, i32 5
  %38 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -65522, ptr %ret, align 4
  %ret_origin = getelementptr inbounds %struct.optee_msg_arg, ptr %msg_arg.0, i32 0, i32 6
  %39 = ptrtoint ptr %ret_origin to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %ret_origin, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end16.if.end21_crit_edge
  %40 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops, align 4
  %from_msg_param = getelementptr inbounds %struct.optee_ops, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %from_msg_param to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %from_msg_param, align 4
  %44 = ptrtoint ptr %num_params to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_params, align 4
  %call26 = tail call i32 %43(ptr noundef %call, ptr noundef %param, i32 noundef %45, ptr noundef %params) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end21.if.end31_crit_edge, label %if.then28

if.end21.if.end31_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then28:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %ret29 = getelementptr inbounds %struct.optee_msg_arg, ptr %msg_arg.0, i32 0, i32 5
  %46 = ptrtoint ptr %ret29 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -65522, ptr %ret29, align 4
  %ret_origin30 = getelementptr inbounds %struct.optee_msg_arg, ptr %msg_arg.0, i32 0, i32 6
  %47 = ptrtoint ptr %ret_origin30 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %ret_origin30, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end21.if.end31_crit_edge
  %ret32 = getelementptr inbounds %struct.optee_msg_arg, ptr %msg_arg.0, i32 0, i32 5
  %48 = ptrtoint ptr %ret32 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ret32, align 4
  %ret33 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %arg, i32 0, i32 3
  %50 = ptrtoint ptr %ret33 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %ret33, align 4
  %ret_origin34 = getelementptr inbounds %struct.optee_msg_arg, ptr %msg_arg.0, i32 0, i32 6
  %51 = ptrtoint ptr %ret_origin34 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ret_origin34, align 8
  %ret_origin35 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %arg, i32 0, i32 4
  %53 = ptrtoint ptr %ret_origin35 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %ret_origin35, align 8
  br label %out

out:                                              ; preds = %if.end31, %if.end7.out_crit_edge
  tail call void @tee_shm_free(ptr noundef %retval.0.i63) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then5, %find_session.exit.cleanup_crit_edge, %find_session.exit.thread
  %retval.0 = phi i32 [ %17, %if.then5 ], [ %call13, %out ], [ -22, %find_session.exit.cleanup_crit_edge ], [ -22, %find_session.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @optee_cancel_req(ptr noundef %ctx, i32 noundef %cancel_id, i32 noundef %session) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %call = tail call ptr @tee_get_drvdata(ptr noundef %1) #5
  %data = getelementptr inbounds %struct.tee_context, ptr %ctx, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #5
  %sess_list.i = getelementptr inbounds %struct.optee_context_data, ptr %3, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %sess.0.in.i = phi ptr [ %sess_list.i, %entry ], [ %sess.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %sess.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %sess.0.i = load ptr, ptr %sess.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %sess.0.i, %sess_list.i
  br i1 %cmp.not.i, label %find_session.exit.thread, label %for.body.i

find_session.exit.thread:                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef %3) #5
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %session_id2.i = getelementptr inbounds %struct.optee_session, ptr %sess.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %session_id2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %session_id2.i, align 4
  %cmp3.i = icmp eq i32 %6, %session
  br i1 %cmp3.i, label %find_session.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

find_session.exit:                                ; preds = %for.body.i
  tail call void @mutex_unlock(ptr noundef %3) #5
  %tobool.not = icmp eq ptr %sess.0.i, null
  br i1 %tobool.not, label %find_session.exit.cleanup_crit_edge, label %if.end

find_session.exit.cleanup_crit_edge:              ; preds = %find_session.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %find_session.exit
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx, align 4
  %call.i = tail call ptr @tee_get_drvdata(ptr noundef %8) #5
  %rpc_arg_count.i = getelementptr inbounds %struct.optee, ptr %call.i, i32 0, i32 9
  %9 = ptrtoint ptr %rpc_arg_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rpc_arg_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  %mul2.i = shl i32 %10, 5
  %add3.i.op = add i32 %mul2.i, 64
  %sz.0.i = select i1 %tobool.not.i, i32 32, i32 %add3.i.op
  %call5.i = tail call ptr @tee_shm_alloc(ptr noundef %ctx, i32 noundef %sz.0.i, i32 noundef 129) #5
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.optee_get_msg_arg.exit_crit_edge, label %if.end8.i

if.end.optee_get_msg_arg.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %optee_get_msg_arg.exit

if.end8.i:                                        ; preds = %if.end
  %call9.i = tail call ptr @tee_shm_get_va(ptr noundef %call5.i, i32 noundef 0) #5
  %cmp.i32.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i32.i, label %if.then11.i, label %if.end12.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tee_shm_free(ptr noundef %call5.i) #5
  br label %optee_get_msg_arg.exit

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = call ptr @memset(ptr %call9.i, i32 0, i32 32)
  br label %optee_get_msg_arg.exit

optee_get_msg_arg.exit:                           ; preds = %if.end12.i, %if.then11.i, %if.end.optee_get_msg_arg.exit_crit_edge
  %msg_arg.0 = phi ptr [ inttoptr (i32 -1 to ptr), %if.end.optee_get_msg_arg.exit_crit_edge ], [ inttoptr (i32 -1 to ptr), %if.then11.i ], [ %call9.i, %if.end12.i ]
  %retval.0.i24 = phi ptr [ %call5.i, %if.end.optee_get_msg_arg.exit_crit_edge ], [ %call9.i, %if.then11.i ], [ %call5.i, %if.end12.i ]
  %cmp.i = icmp ugt ptr %retval.0.i24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %optee_get_msg_arg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %retval.0.i24 to i32
  br label %cleanup

if.end7:                                          ; preds = %optee_get_msg_arg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %msg_arg.0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %msg_arg.0, align 8
  %session8 = getelementptr inbounds %struct.optee_msg_arg, ptr %msg_arg.0, i32 0, i32 2
  %14 = ptrtoint ptr %session8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %session, ptr %session8, align 8
  %cancel_id9 = getelementptr inbounds %struct.optee_msg_arg, ptr %msg_arg.0, i32 0, i32 3
  %15 = ptrtoint ptr %cancel_id9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cancel_id, ptr %cancel_id9, align 4
  %ops = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 2
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %call10 = tail call i32 %19(ptr noundef %ctx, ptr noundef %retval.0.i24) #5
  tail call void @tee_shm_free(ptr noundef %retval.0.i24) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %find_session.exit.cleanup_crit_edge, %find_session.exit.thread
  %retval.0 = phi i32 [ %12, %if.then5 ], [ 0, %if.end7 ], [ -22, %find_session.exit.cleanup_crit_edge ], [ -22, %find_session.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @optee_check_mem_type(i32 noundef %start, i32 noundef %num_pages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !3) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %start)
  %cmp = icmp ugt i32 %start, -1073741825
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %6 = load ptr, ptr @high_memory, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %start)
  %cmp2 = icmp ugt i32 %7, %start
  br i1 %cmp2, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sub = add nsw i32 %start, 1073741824
  %shr = lshr i32 %sub, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %8 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %8, %shr
  %call4 = tail call i32 @pfn_valid(i32 noundef %add) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true3.if.end_crit_edge, label %land.lhs.true3.cleanup_crit_edge

land.lhs.true3.cleanup_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@optee_check_mem_type, %if.then.i.i)) #5
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !13

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext false) #5
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end
  %mmap_lock.i = getelementptr inbounds %struct.anon.9, ptr %5, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@optee_check_mem_type, %if.then.i3.i)) #5
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !13

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext true) #5
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %call5 = tail call ptr @find_vma(ptr noundef %5, i32 noundef %start) #5
  %mul = shl i32 %num_pages, 12
  %add6 = add i32 %mul, %start
  %tobool.not4.i = icmp eq ptr %call5, null
  br i1 %tobool.not4.i, label %mmap_read_lock.exit.__check_mem_type.exit_crit_edge, label %mmap_read_lock.exit.land.rhs.i_crit_edge

mmap_read_lock.exit.land.rhs.i_crit_edge:         ; preds = %mmap_read_lock.exit
  br label %land.rhs.i

mmap_read_lock.exit.__check_mem_type.exit_crit_edge: ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %__check_mem_type.exit

land.rhs.i:                                       ; preds = %if.end.i.land.rhs.i_crit_edge, %mmap_read_lock.exit.land.rhs.i_crit_edge
  %vma.addr.05.i = phi ptr [ %16, %if.end.i.land.rhs.i_crit_edge ], [ %call5, %mmap_read_lock.exit.land.rhs.i_crit_edge ]
  %vm_page_prot.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.05.i, i32 0, i32 7
  %9 = ptrtoint ptr %vm_page_prot.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vm_page_prot.i, align 4
  %11 = and i32 %10, 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %11)
  %12 = icmp eq i32 %11, 12
  br i1 %12, label %while.body.i, label %land.rhs.i.__check_mem_type.exit_crit_edge

land.rhs.i.__check_mem_type.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__check_mem_type.exit

while.body.i:                                     ; preds = %land.rhs.i
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.05.i, i32 0, i32 1
  %13 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vm_end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %add6)
  %cmp.not.i = icmp ult i32 %14, %add6
  br i1 %cmp.not.i, label %if.end.i, label %while.body.i.__check_mem_type.exit_crit_edge

while.body.i.__check_mem_type.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__check_mem_type.exit

if.end.i:                                         ; preds = %while.body.i
  %vm_next.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.05.i, i32 0, i32 2
  %15 = ptrtoint ptr %vm_next.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vm_next.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i.__check_mem_type.exit_crit_edge, label %if.end.i.land.rhs.i_crit_edge

if.end.i.land.rhs.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

if.end.i.__check_mem_type.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__check_mem_type.exit

__check_mem_type.exit:                            ; preds = %if.end.i.__check_mem_type.exit_crit_edge, %while.body.i.__check_mem_type.exit_crit_edge, %land.rhs.i.__check_mem_type.exit_crit_edge, %mmap_read_lock.exit.__check_mem_type.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %mmap_read_lock.exit.__check_mem_type.exit_crit_edge ], [ 0, %while.body.i.__check_mem_type.exit_crit_edge ], [ -22, %if.end.i.__check_mem_type.exit_crit_edge ], [ -22, %land.rhs.i.__check_mem_type.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@optee_check_mem_type, %if.then.i.i15)) #5
          to label %mmap_read_unlock.exit [label %if.then.i.i15], !srcloc !13

if.then.i.i15:                                    ; preds = %__check_mem_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext false) #5
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i15, %__check_mem_type.exit
  tail call void @up_read(ptr noundef %mmap_lock.i) #5
  br label %cleanup

cleanup:                                          ; preds = %mmap_read_unlock.exit, %land.lhs.true3.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %mmap_read_unlock.exit ], [ 0, %land.lhs.true3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2}
!llvm.named.register.sp = !{!3}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @init_completion.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../include/linux/completion.h", i32 87, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{!"sp"}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 2148284981, i64 2148284986, i64 2148284999, i64 2148285043, i64 2148285077, i64 2148285098}
