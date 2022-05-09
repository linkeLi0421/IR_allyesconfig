; ModuleID = '/llk/IR_all_yes/sound/core/seq/oss/seq_oss_writeq.c_pt.bc'
source_filename = "../sound/core/seq/oss/seq_oss_writeq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_seq_client_pool = type { i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.seq_oss_writeq = type { ptr, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seq_oss_devinfo = type { i32, i32, i32, i32, %struct.snd_seq_addr, i32, i32, i32, i32, [16 x %struct.seq_oss_synthinfo], i32, ptr, ptr, ptr }
%struct.snd_seq_addr = type { i8, i8 }
%struct.seq_oss_synthinfo = type { %struct.snd_seq_oss_arg, ptr, ptr, i32, i32, i32, i32 }
%struct.snd_seq_oss_arg = type { i32, i32, i32, %struct.snd_seq_addr, ptr, i32 }
%struct.snd_seq_remove_events = type { i32, %union.snd_seq_timestamp, i8, %struct.snd_seq_addr, i8, i32, i8, [10 x i32] }
%union.snd_seq_timestamp = type { %struct.snd_seq_real_time }
%struct.snd_seq_real_time = type { i32, i32 }
%struct.snd_seq_event = type { i8, i8, i8, i8, %union.snd_seq_timestamp, %struct.snd_seq_addr, %struct.snd_seq_addr, %union.anon.2 }
%union.anon.2 = type { %struct.snd_seq_ev_ctrl }
%struct.snd_seq_ev_ctrl = type { i8, i8, i8, i8, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.seq_oss_timer = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.50, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.18 }
%struct.llist_node = type { ptr }
%union.anon.18 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.50 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@snd_seq_oss_writeq_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&q->sync_lock\00", [18 x i8] zeroinitializer }, align 32
@snd_seq_oss_writeq_new.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&q->sync_sleep\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sound/core/seq/oss/seq_oss_writeq.c\00", [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 35, i32 2 }
@___asan_gen_.10 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 38, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [39 x i8] c"../sound/core/seq/oss/seq_oss_writeq.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 110, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @snd_seq_oss_writeq_new.__key, ptr @.str, ptr @snd_seq_oss_writeq_new.__key.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_seq_oss_writeq_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_seq_oss_writeq_new.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_seq_oss_writeq_new(ptr noundef %dp, i32 noundef %maxlen) local_unnamed_addr #0 align 64 {
entry:
  %pool = alloca %struct.snd_seq_client_pool, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %pool) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 112) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dp, ptr %call7.i.i, align 8
  %maxlen2 = getelementptr inbounds %struct.seq_oss_writeq, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %maxlen2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %maxlen, ptr %maxlen2, align 4
  %sync_lock = getelementptr inbounds %struct.seq_oss_writeq, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %sync_lock, ptr noundef nonnull @.str, ptr noundef nonnull @snd_seq_oss_writeq_new.__key, i16 noundef signext 3) #5
  %sync_event_put = getelementptr inbounds %struct.seq_oss_writeq, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %sync_event_put to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %sync_event_put, align 4
  %sync_time = getelementptr inbounds %struct.seq_oss_writeq, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %sync_time to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %sync_time, align 8
  %sync_sleep = getelementptr inbounds %struct.seq_oss_writeq, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %sync_sleep, ptr noundef nonnull @.str.2, ptr noundef nonnull @snd_seq_oss_writeq_new.__key.1) #5
  %5 = getelementptr inbounds i8, ptr %pool, i32 8
  %6 = call ptr @memset(ptr %5, i32 0, i32 80)
  %cseq = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 1
  %7 = ptrtoint ptr %cseq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cseq, align 4
  %9 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %pool, align 4
  %output_pool = getelementptr inbounds %struct.snd_seq_client_pool, ptr %pool, i32 0, i32 1
  %10 = ptrtoint ptr %output_pool to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %maxlen, ptr %output_pool, align 4
  %div = sdiv i32 %maxlen, 2
  %output_room = getelementptr inbounds %struct.snd_seq_client_pool, ptr %pool, i32 0, i32 3
  %11 = ptrtoint ptr %output_room to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div, ptr %output_room, align 4
  %call.i = tail call zeroext i1 @snd_seq_client_ioctl_lock(i32 noundef %8) #5
  %12 = ptrtoint ptr %cseq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cseq, align 4
  %call2.i = call i32 @snd_seq_kernel_client_ctl(i32 noundef %13, i32 noundef 1079530316, ptr noundef nonnull %pool) #5
  %14 = ptrtoint ptr %cseq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cseq, align 4
  call void @snd_seq_client_ioctl_unlock(i32 noundef %15) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %pool) #5
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_oss_writeq_delete(ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  %reset.i = alloca %struct.snd_seq_remove_events, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %q, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %reset.i) #5
  %0 = getelementptr inbounds i8, ptr %reset.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 60)
  %2 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %reset.i, align 4
  %3 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %q, align 4
  %cseq.i.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %cseq.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cseq.i.i, align 4
  %call.i.i = tail call zeroext i1 @snd_seq_client_ioctl_lock(i32 noundef %6) #5
  %7 = ptrtoint ptr %cseq.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cseq.i.i, align 4
  %call2.i.i = call i32 @snd_seq_kernel_client_ctl(i32 noundef %8, i32 noundef 1077957454, ptr noundef nonnull %reset.i) #5
  %9 = ptrtoint ptr %cseq.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cseq.i.i, align 4
  call void @snd_seq_client_ioctl_unlock(i32 noundef %10) #5
  %sync_lock.i.i = getelementptr inbounds %struct.seq_oss_writeq, ptr %q, i32 0, i32 5
  %call2.i2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %sync_lock.i.i) #5
  %sync_time.i.i = getelementptr inbounds %struct.seq_oss_writeq, ptr %q, i32 0, i32 2
  %11 = ptrtoint ptr %sync_time.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %sync_time.i.i, align 4
  %sync_event_put.i.i = getelementptr inbounds %struct.seq_oss_writeq, ptr %q, i32 0, i32 3
  %12 = ptrtoint ptr %sync_event_put.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %sync_event_put.i.i, align 4
  %sync_sleep.i.i = getelementptr inbounds %struct.seq_oss_writeq, ptr %q, i32 0, i32 4
  call void @__wake_up(ptr noundef %sync_sleep.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  call void @_raw_spin_unlock_irqrestore(ptr noundef %sync_lock.i.i, i32 noundef %call2.i2.i) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %reset.i) #5
  call void @kfree(ptr noundef nonnull %q) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_oss_writeq_clear(ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  %reset = alloca %struct.snd_seq_remove_events, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %reset) #5
  %0 = getelementptr inbounds i8, ptr %reset, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 60)
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %reset, align 4
  %3 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %q, align 4
  %cseq.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %cseq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cseq.i, align 4
  %call.i = tail call zeroext i1 @snd_seq_client_ioctl_lock(i32 noundef %6) #5
  %7 = ptrtoint ptr %cseq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cseq.i, align 4
  %call2.i = call i32 @snd_seq_kernel_client_ctl(i32 noundef %8, i32 noundef 1077957454, ptr noundef nonnull %reset) #5
  %9 = ptrtoint ptr %cseq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cseq.i, align 4
  call void @snd_seq_client_ioctl_unlock(i32 noundef %10) #5
  %sync_lock.i = getelementptr inbounds %struct.seq_oss_writeq, ptr %q, i32 0, i32 5
  %call2.i2 = call i32 @_raw_spin_lock_irqsave(ptr noundef %sync_lock.i) #5
  %sync_time.i = getelementptr inbounds %struct.seq_oss_writeq, ptr %q, i32 0, i32 2
  %11 = ptrtoint ptr %sync_time.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %sync_time.i, align 4
  %sync_event_put.i = getelementptr inbounds %struct.seq_oss_writeq, ptr %q, i32 0, i32 3
  %12 = ptrtoint ptr %sync_event_put.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %sync_event_put.i, align 4
  %sync_sleep.i = getelementptr inbounds %struct.seq_oss_writeq, ptr %q, i32 0, i32 4
  call void @__wake_up(ptr noundef %sync_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  call void @_raw_spin_unlock_irqrestore(ptr noundef %sync_lock.i, i32 noundef %call2.i2) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %reset) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_oss_writeq_wakeup(ptr noundef %q, i32 noundef %time) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sync_lock = getelementptr inbounds %struct.seq_oss_writeq, ptr %q, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sync_lock) #5
  %sync_time = getelementptr inbounds %struct.seq_oss_writeq, ptr %q, i32 0, i32 2
  %0 = ptrtoint ptr %sync_time to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %time, ptr %sync_time, align 4
  %sync_event_put = getelementptr inbounds %struct.seq_oss_writeq, ptr %q, i32 0, i32 3
  %1 = ptrtoint ptr %sync_event_put to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %sync_event_put, align 4
  %sync_sleep = getelementptr inbounds %struct.seq_oss_writeq, ptr %q, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %sync_sleep, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sync_lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_writeq_sync(ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  %ev = alloca %struct.snd_seq_event, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 4
  %timer = getelementptr inbounds %struct.seq_oss_devinfo, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timer, align 4
  %cur_tick.i = getelementptr inbounds %struct.seq_oss_timer, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cur_tick.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_tick.i, align 4
  %sync_time = getelementptr inbounds %struct.seq_oss_writeq, ptr %q, i32 0, i32 2
  %6 = ptrtoint ptr %sync_time to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sync_time, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp.not = icmp ult i32 %7, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup71_crit_edge

entry.cleanup71_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup71

if.end:                                           ; preds = %entry
  %sync_event_put = getelementptr inbounds %struct.seq_oss_writeq, ptr %q, i32 0, i32 3
  %8 = ptrtoint ptr %sync_event_put to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sync_event_put, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then2, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ev) #5
  %10 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 3
  %11 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 4
  %12 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 5
  %13 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 6
  %14 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 6, i32 1
  %15 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7
  %16 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 4
  %17 = call ptr @memset(ptr %ev, i32 0, i32 28)
  %18 = ptrtoint ptr %ev to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 50, ptr %ev, align 4
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %5, ptr %11, align 4
  %addr = getelementptr inbounds %struct.seq_oss_devinfo, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %addr, align 4
  %port = getelementptr inbounds %struct.seq_oss_devinfo, ptr %1, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %port, align 1
  %queue.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %queue.i, align 4
  %conv.i = trunc i32 %25 to i8
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.i, ptr %10, align 1
  %27 = load i16, ptr %addr, align 4
  %28 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %12, align 4
  %29 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %21, ptr %13, align 2
  %30 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %23, ptr %14, align 1
  %31 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 4, ptr %15, align 4
  %32 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %5, ptr %16, align 4
  %33 = ptrtoint ptr %sync_event_put to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %sync_event_put, align 4
  %cseq = getelementptr inbounds %struct.seq_oss_devinfo, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %cseq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cseq, align 4
  %call8 = call i32 @snd_seq_kernel_client_enqueue(i32 noundef %35, ptr noundef nonnull %ev, ptr noundef null, i1 noundef zeroext true) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ev) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then2, %if.end.if.end9_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 110) #5
  %36 = ptrtoint ptr %sync_event_put to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sync_event_put, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool14.not = icmp eq i32 %37, 0
  br i1 %tobool14.not, label %if.end9.if.end56_crit_edge, label %if.then25

if.end9.if.end56_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.then25:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #5
  %38 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #5
  %sync_sleep = getelementptr inbounds %struct.seq_oss_writeq, ptr %q, i32 0, i32 4
  %call27109 = call i32 @prepare_to_wait_event(ptr noundef %sync_sleep, ptr noundef nonnull %__wq_entry, i32 noundef 1) #5
  %39 = ptrtoint ptr %sync_event_put to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sync_event_put, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool30.not110 = icmp eq i32 %40, 0
  br i1 %tobool30.not110, label %if.then25.for.end_crit_edge, label %if.then25.if.end49_crit_edge

if.then25.if.end49_crit_edge:                     ; preds = %if.then25
  br label %if.end49

if.then25.for.end_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end49:                                         ; preds = %cleanup.if.end49_crit_edge, %if.then25.if.end49_crit_edge
  %__ret26.1112 = phi i32 [ %__ret26.1, %cleanup.if.end49_crit_edge ], [ 100, %if.then25.if.end49_crit_edge ]
  %call27111 = phi i32 [ %call27, %cleanup.if.end49_crit_edge ], [ %call27109, %if.then25.if.end49_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27111)
  %tobool50.not = icmp eq i32 %call27111, 0
  br i1 %tobool50.not, label %cleanup, label %if.end49.__out_crit_edge

if.end49.__out_crit_edge:                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %__out

cleanup:                                          ; preds = %if.end49
  %call53 = call i32 @schedule_timeout(i32 noundef %__ret26.1112) #5
  %call27 = call i32 @prepare_to_wait_event(ptr noundef %sync_sleep, ptr noundef nonnull %__wq_entry, i32 noundef 1) #5
  %41 = ptrtoint ptr %sync_event_put to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sync_event_put, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool30.not = icmp eq i32 %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool36.not = icmp eq i32 %call53, 0
  %43 = select i1 %tobool30.not, i1 %tobool36.not, i1 false
  %__ret26.1 = select i1 %43, i32 1, i32 %call53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret26.1)
  %tobool43.not = icmp eq i32 %__ret26.1, 0
  %44 = select i1 %tobool30.not, i1 true, i1 %tobool43.not
  br i1 %44, label %cleanup.for.end_crit_edge, label %cleanup.if.end49_crit_edge

cleanup.if.end49_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then25.for.end_crit_edge
  call void @finish_wait(ptr noundef %sync_sleep, ptr noundef nonnull %__wq_entry) #5
  br label %__out

__out:                                            ; preds = %for.end, %if.end49.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  br label %if.end56

if.end56:                                         ; preds = %__out, %if.end9.if.end56_crit_edge
  %45 = call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %stack.i.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %50, align 4
  %53 = and i32 %52, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end56.if.end63.thread_crit_edge, !prof !18

if.end56.if.end63.thread_crit_edge:               ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63.thread

signal_pending.exit:                              ; preds = %if.end56
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %50, align 4
  %and1.i.i.i.i.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool60.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool60.not, label %if.end63, label %signal_pending.exit.if.end63.thread_crit_edge

signal_pending.exit.if.end63.thread_crit_edge:    ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63.thread

if.end63.thread:                                  ; preds = %signal_pending.exit.if.end63.thread_crit_edge, %if.end56.if.end63.thread_crit_edge
  %56 = ptrtoint ptr %sync_event_put to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %sync_event_put, align 4
  br label %cleanup71

if.end63:                                         ; preds = %signal_pending.exit
  %57 = ptrtoint ptr %sync_event_put to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pr = load i32, ptr %sync_event_put, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool65.not = icmp eq i32 %.pr, 0
  br i1 %tobool65.not, label %if.end63.cleanup71_crit_edge, label %lor.lhs.false

if.end63.cleanup71_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup71

lor.lhs.false:                                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %sync_time to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sync_time, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %5)
  %cmp67.not = icmp ult i32 %59, %5
  %spec.select = zext i1 %cmp67.not to i32
  br label %cleanup71

cleanup71:                                        ; preds = %lor.lhs.false, %if.end63.cleanup71_crit_edge, %if.end63.thread, %entry.cleanup71_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup71_crit_edge ], [ 0, %if.end63.cleanup71_crit_edge ], [ %spec.select, %lor.lhs.false ], [ 0, %if.end63.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_kernel_client_enqueue(i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_writeq_get_free_size(ptr nocapture noundef readonly %q) local_unnamed_addr #0 align 64 {
entry:
  %pool = alloca %struct.snd_seq_client_pool, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %pool) #5
  %0 = getelementptr inbounds i8, ptr %pool, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 84)
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q, align 4
  %cseq = getelementptr inbounds %struct.seq_oss_devinfo, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cseq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cseq, align 4
  %6 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %pool, align 4
  %call.i = tail call zeroext i1 @snd_seq_client_ioctl_lock(i32 noundef %5) #5
  %7 = ptrtoint ptr %cseq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cseq, align 4
  %call2.i = call i32 @snd_seq_kernel_client_ctl(i32 noundef %8, i32 noundef -1067953333, ptr noundef nonnull %pool) #5
  %9 = ptrtoint ptr %cseq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cseq, align 4
  call void @snd_seq_client_ioctl_unlock(i32 noundef %10) #5
  %output_free = getelementptr inbounds %struct.snd_seq_client_pool, ptr %pool, i32 0, i32 4
  %11 = ptrtoint ptr %output_free to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %output_free, align 4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %pool) #5
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_oss_writeq_set_output(ptr nocapture noundef readonly %q, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %pool = alloca %struct.snd_seq_client_pool, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %pool) #5
  %0 = getelementptr inbounds i8, ptr %pool, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 84)
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q, align 4
  %cseq = getelementptr inbounds %struct.seq_oss_devinfo, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cseq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cseq, align 4
  %6 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %pool, align 4
  %call.i = tail call zeroext i1 @snd_seq_client_ioctl_lock(i32 noundef %5) #5
  %7 = ptrtoint ptr %cseq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cseq, align 4
  %call2.i = call i32 @snd_seq_kernel_client_ctl(i32 noundef %8, i32 noundef -1067953333, ptr noundef nonnull %pool) #5
  %9 = ptrtoint ptr %cseq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cseq, align 4
  call void @snd_seq_client_ioctl_unlock(i32 noundef %10) #5
  %output_room = getelementptr inbounds %struct.snd_seq_client_pool, ptr %pool, i32 0, i32 3
  %11 = ptrtoint ptr %output_room to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %val, ptr %output_room, align 4
  %12 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %q, align 4
  %cseq.i6 = getelementptr inbounds %struct.seq_oss_devinfo, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %cseq.i6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cseq.i6, align 4
  %call.i7 = call zeroext i1 @snd_seq_client_ioctl_lock(i32 noundef %15) #5
  %16 = ptrtoint ptr %cseq.i6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cseq.i6, align 4
  %call2.i8 = call i32 @snd_seq_kernel_client_ctl(i32 noundef %17, i32 noundef 1079530316, ptr noundef nonnull %pool) #5
  %18 = ptrtoint ptr %cseq.i6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cseq.i6, align 4
  call void @snd_seq_client_ioctl_unlock(i32 noundef %19) #5
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %pool) #5
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_seq_client_ioctl_lock(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_kernel_client_ctl(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_client_ioctl_unlock(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6}
!llvm.named.register.sp = !{!8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @snd_seq_oss_writeq_new.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../sound/core/seq/oss/seq_oss_writeq.c", i32 35, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @snd_seq_oss_writeq_new.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../sound/core/seq/oss/seq_oss_writeq.c", i32 38, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/core/seq/oss/seq_oss_writeq.c", i32 110, i32 2}
!8 = !{!"sp"}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{!"branch_weights", i32 2000, i32 1}
