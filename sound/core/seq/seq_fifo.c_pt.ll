; ModuleID = '/llk/IR_all_yes/sound/core/seq/seq_fifo.c_pt.bc'
source_filename = "../sound/core/seq/seq_fifo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.3 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_seq_fifo = type { ptr, ptr, ptr, i32, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic_t }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.snd_seq_event_cell = type { %struct.snd_seq_event, ptr, ptr }
%struct.snd_seq_event = type { i8, i8, i8, i8, %union.snd_seq_timestamp, %struct.snd_seq_addr, %struct.snd_seq_addr, %union.anon }
%union.snd_seq_timestamp = type { %struct.snd_seq_real_time }
%struct.snd_seq_real_time = type { i32, i32 }
%struct.snd_seq_addr = type { i8, i8 }
%union.anon = type { %struct.snd_seq_ev_ctrl }
%struct.snd_seq_ev_ctrl = type { i8, i8, i8, i8, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.50, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.snd_seq_pool = type { ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }

@snd_seq_fifo_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&f->lock\00", [23 x i8] zeroinitializer }, align 32
@snd_seq_fifo_new.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&f->input_sleep\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/core/seq/seq_fifo.c\00", [38 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 37, i32 2 }
@___asan_gen_.10 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 39, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [29 x i8] c"../sound/core/seq/seq_fifo.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 53, i32 6 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @snd_seq_fifo_new.__key, ptr @.str, ptr @snd_seq_fifo_new.__key.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_seq_fifo_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_seq_fifo_new.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_seq_fifo_new(i32 noundef %poolsize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 120) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @snd_seq_pool_new(i32 noundef %poolsize) #6
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %call7.i.i, align 8
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call6 = tail call i32 @snd_seq_pool_init(ptr noundef nonnull %call1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %do.body

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 @snd_seq_pool_delete(ptr noundef nonnull %call7.i.i) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

do.body:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %lock = getelementptr inbounds %struct.snd_seq_fifo, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @snd_seq_fifo_new.__key, i16 noundef signext 3) #6
  %use_lock = getelementptr inbounds %struct.snd_seq_fifo, ptr %call7.i.i, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock, i32 noundef 4) #6
  %2 = ptrtoint ptr %use_lock to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %use_lock, align 4
  %input_sleep = getelementptr inbounds %struct.snd_seq_fifo, ptr %call7.i.i, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %input_sleep, ptr noundef nonnull @.str.2, ptr noundef nonnull @snd_seq_fifo_new.__key.1) #6
  %overflow = getelementptr inbounds %struct.snd_seq_fifo, ptr %call7.i.i, i32 0, i32 7
  %call.i.i30 = tail call zeroext i1 @__kasan_check_write(ptr noundef %overflow, i32 noundef 4) #6
  %3 = ptrtoint ptr %overflow to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %overflow, align 4
  %head = getelementptr inbounds %struct.snd_seq_fifo, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %head, align 4
  %tail = getelementptr inbounds %struct.snd_seq_fifo, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %tail, align 8
  %cells = getelementptr inbounds %struct.snd_seq_fifo, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %cells to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %cells, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then8, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then3 ], [ null, %if.then8 ], [ %call7.i.i, %do.body ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_seq_pool_new(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_pool_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_pool_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_fifo_delete(ptr noundef %fifo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fifo, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !20

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 53, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  %0 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo, align 4
  %tobool25.not = icmp eq ptr %1, null
  br i1 %tobool25.not, label %do.end43, label %if.end59, !prof !20

do.end43:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 56, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end59:                                         ; preds = %if.end23
  %2 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fifo, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %tobool60.not = icmp eq ptr %4, null
  br i1 %tobool60.not, label %if.end59.if.end63_crit_edge, label %if.then61

if.end59.if.end63_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_seq_pool_mark_closing(ptr noundef nonnull %4) #6
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.end59.if.end63_crit_edge
  tail call void @snd_seq_fifo_clear(ptr noundef nonnull %1)
  %head.i = getelementptr inbounds %struct.snd_seq_fifo, ptr %1, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %6, %head.i
  br i1 %cmp.i.i.not, label %if.end63.if.end67_crit_edge, label %if.then65

if.end63.if.end67_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.then65:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  %input_sleep = getelementptr inbounds %struct.snd_seq_fifo, ptr %1, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %input_sleep, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end63.if.end67_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %tobool69.not = icmp eq ptr %8, null
  br i1 %tobool69.not, label %if.end67.if.end75_crit_edge, label %if.then70

if.end67.if.end75_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  %call72 = tail call i32 @snd_seq_pool_done(ptr noundef nonnull %8) #6
  %call74 = tail call i32 @snd_seq_pool_delete(ptr noundef nonnull %1) #6
  br label %if.end75

if.end75:                                         ; preds = %if.then70, %if.end67.if.end75_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %do.end43, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_pool_mark_closing(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_fifo_clear(ptr noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %overflow = getelementptr inbounds %struct.snd_seq_fifo, ptr %f, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %overflow, i32 noundef 4) #6
  %0 = ptrtoint ptr %overflow to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %overflow, align 4
  %use_lock = getelementptr inbounds %struct.snd_seq_fifo, ptr %f, i32 0, i32 5
  tail call void @snd_use_lock_sync_helper(ptr noundef %use_lock, ptr noundef nonnull @.str.3, i32 noundef 90) #6
  %lock = getelementptr inbounds %struct.snd_seq_fifo, ptr %f, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #6
  %head.i = getelementptr inbounds %struct.snd_seq_fifo, ptr %f, i32 0, i32 1
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head.i, align 4
  %tobool.not.i6 = icmp eq ptr %2, null
  br i1 %tobool.not.i6, label %entry.while.end_crit_edge, label %if.then.i.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.then.i.lr.ph:                                  ; preds = %entry
  %tail.i = getelementptr inbounds %struct.snd_seq_fifo, ptr %f, i32 0, i32 2
  %cells.i = getelementptr inbounds %struct.snd_seq_fifo, ptr %f, i32 0, i32 3
  br label %if.then.i

if.then.i:                                        ; preds = %while.body.if.then.i_crit_edge, %if.then.i.lr.ph
  %3 = phi ptr [ %2, %if.then.i.lr.ph ], [ %14, %while.body.if.then.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.snd_seq_event_cell, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next.i, align 4
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %head.i, align 4
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i, align 4
  %cmp.i = icmp eq ptr %8, %3
  br i1 %cmp.i, label %if.then2.i, label %if.then.i.while.body_crit_edge

if.then.i.while.body_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %tail.i, align 4
  br label %while.body

while.body:                                       ; preds = %if.then2.i, %if.then.i.while.body_crit_edge
  %10 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %next.i, align 4
  %11 = ptrtoint ptr %cells.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cells.i, align 4
  %dec.i = add i32 %12, -1
  store i32 %dec.i, ptr %cells.i, align 4
  tail call void @snd_seq_cell_free(ptr noundef nonnull %3) #6
  %13 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %while.body.while.end_crit_edge, label %while.body.if.then.i_crit_edge

while.body.if.then.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_pool_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_use_lock_sync_helper(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_cell_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_fifo_event_in(ptr noundef %f, ptr noundef %event) local_unnamed_addr #0 align 64 {
entry:
  %cell = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cell) #6
  %0 = ptrtoint ptr %cell to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cell, align 4, !annotation !21
  %tobool.not = icmp eq ptr %f, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !20

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  %use_lock = getelementptr inbounds %struct.snd_seq_fifo, ptr %f, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %use_lock, i32 1, i32 3, i32 1) #6
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock, ptr %use_lock, i32 1, ptr elementtype(i32) %use_lock) #6, !srcloc !22
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f, align 4
  %call = call i32 @snd_seq_event_dup(ptr noundef %3, ptr noundef %event, ptr noundef nonnull %cell, i32 noundef 1, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then24, label %do.body32

if.then24:                                        ; preds = %if.end23
  %4 = and i32 %call, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %4)
  %switch = icmp eq i32 %4, -12
  br i1 %switch, label %if.then27, label %if.then24.if.end28_crit_edge

if.then24.if.end28_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  %overflow = getelementptr inbounds %struct.snd_seq_fifo, ptr %f, i32 0, i32 7
  %call.i.i81 = call zeroext i1 @__kasan_check_write(ptr noundef %overflow, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %overflow, i32 1, i32 3, i32 1) #6
  %5 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %overflow, ptr %overflow, i32 1, ptr elementtype(i32) %overflow) #6, !srcloc !22
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.then24.if.end28_crit_edge
  %call.i.i82 = call zeroext i1 @__kasan_check_write(ptr noundef %use_lock, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %use_lock, i32 1, i32 3, i32 1) #6
  %6 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock, ptr %use_lock, i32 1, ptr elementtype(i32) %use_lock) #6, !srcloc !23
  br label %cleanup

do.body32:                                        ; preds = %if.end23
  %lock = getelementptr inbounds %struct.snd_seq_fifo, ptr %f, i32 0, i32 4
  %call36 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %tail = getelementptr inbounds %struct.snd_seq_fifo, ptr %f, i32 0, i32 2
  %7 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail, align 4
  %cmp41.not = icmp eq ptr %8, null
  br i1 %cmp41.not, label %do.body32.if.end45_crit_edge, label %if.then43

do.body32.if.end45_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then43:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cell, align 4
  %next = getelementptr inbounds %struct.snd_seq_event_cell, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %next, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %do.body32.if.end45_crit_edge
  %12 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cell, align 4
  %14 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %tail, align 4
  %head = getelementptr inbounds %struct.snd_seq_fifo, ptr %f, i32 0, i32 1
  %15 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head, align 4
  %cmp47 = icmp eq ptr %16, null
  br i1 %cmp47, label %if.then49, label %if.end45.if.end51_crit_edge

if.end45.if.end51_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %13, ptr %head, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end45.if.end51_crit_edge
  %next52 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %13, i32 0, i32 2
  %18 = ptrtoint ptr %next52 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %next52, align 4
  %cells = getelementptr inbounds %struct.snd_seq_fifo, ptr %f, i32 0, i32 3
  %19 = ptrtoint ptr %cells to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cells, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %cells, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call36) #6
  %head.i = getelementptr inbounds %struct.snd_seq_fifo, ptr %f, i32 0, i32 6, i32 1
  %21 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %22, %head.i
  br i1 %cmp.i.i.not, label %if.end51.if.end58_crit_edge, label %if.then56

if.end51.if.end58_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %input_sleep = getelementptr inbounds %struct.snd_seq_fifo, ptr %f, i32 0, i32 6
  call void @__wake_up(ptr noundef %input_sleep, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end51.if.end58_crit_edge
  %call.i.i83 = call zeroext i1 @__kasan_check_write(ptr noundef %use_lock, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %use_lock, i32 1, i32 3, i32 1) #6
  %23 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock, ptr %use_lock, i32 1, ptr elementtype(i32) %use_lock) #6, !srcloc !23
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.end28, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %if.end28 ], [ 0, %if.end58 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cell) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_event_dup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_fifo_cell_out(ptr noundef %f, ptr nocapture noundef writeonly %cellp, i32 noundef %nonblock) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #6
  %tobool.not = icmp eq ptr %f, null
  %0 = getelementptr inbounds i8, ptr %wait, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 -1, ptr %0, align 4
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !20

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %4 = ptrtoint ptr %cellp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %cellp, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !10) #6
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %wait, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %3, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @default_wake_function, ptr %2, align 4
  %lock = getelementptr inbounds %struct.snd_seq_fifo, ptr %f, i32 0, i32 4
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %head.i = getelementptr inbounds %struct.snd_seq_fifo, ptr %f, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nonblock)
  %tobool36.not = icmp eq i32 %nonblock, 0
  %input_sleep = getelementptr inbounds %struct.snd_seq_fifo, ptr %f, i32 0, i32 6
  br label %while.cond

while.cond:                                       ; preds = %signal_pending.exit.while.cond_crit_edge, %if.end23
  %flags.0 = phi i32 [ %call28, %if.end23 ], [ %call125, %signal_pending.exit.while.cond_crit_edge ]
  %12 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %while.body, label %if.then.i

if.then.i:                                        ; preds = %while.cond
  %next.i = getelementptr inbounds %struct.snd_seq_event_cell, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %next.i, align 4
  %16 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.snd_seq_fifo, ptr %f, i32 0, i32 2
  %17 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail.i, align 4
  %cmp.i = icmp eq ptr %18, %13
  br i1 %cmp.i, label %if.then2.i, label %if.then.i.while.end_crit_edge

if.then.i.while.end_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %tail.i, align 4
  br label %while.end

while.body:                                       ; preds = %while.cond
  br i1 %tobool36.not, label %__here, label %if.then37

if.then37:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call28) #6
  br label %cleanup

__here:                                           ; preds = %while.body
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 212
  %22 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 ptrtoint (ptr blockaddress(@snd_seq_fifo_cell_out, %__here) to i32), ptr %task_state_change, align 4
  %23 = load ptr, ptr %task, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 1, ptr %23, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !24
  call void @add_wait_queue(ptr noundef %input_sleep, ptr noundef nonnull %wait) #6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0) #6
  call void @schedule() #6
  %call125 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  call void @remove_wait_queue(ptr noundef %input_sleep, ptr noundef nonnull %wait) #6
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %stack.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  %31 = and i32 %30, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i157 = icmp eq i32 %31, 0
  br i1 %tobool.not.i157, label %signal_pending.exit, label %__here.if.then135_crit_edge, !prof !25

__here.if.then135_crit_edge:                      ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then135

signal_pending.exit:                              ; preds = %__here
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %28, align 4
  %and1.i.i.i.i.i = and i32 %33, 1
  %tobool134.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool134.not, label %signal_pending.exit.while.cond_crit_edge, label %signal_pending.exit.if.then135_crit_edge

signal_pending.exit.if.then135_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then135

signal_pending.exit.while.cond_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

if.then135:                                       ; preds = %signal_pending.exit.if.then135_crit_edge, %__here.if.then135_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call125) #6
  br label %cleanup

while.end:                                        ; preds = %if.then2.i, %if.then.i.while.end_crit_edge
  %34 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %next.i, align 4
  %cells.i = getelementptr inbounds %struct.snd_seq_fifo, ptr %f, i32 0, i32 3
  %35 = ptrtoint ptr %cells.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cells.i, align 4
  %dec.i = add i32 %36, -1
  store i32 %dec.i, ptr %cells.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0) #6
  %37 = ptrtoint ptr %cellp to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %13, ptr %cellp, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then135, %if.then37, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -11, %if.then37 ], [ -512, %if.then135 ], [ 0, %while.end ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_fifo_cell_putback(ptr noundef %f, ptr noundef %cell) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cell, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %do.body1

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.snd_seq_fifo, ptr %f, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %head = getelementptr inbounds %struct.snd_seq_fifo, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 4
  %next = getelementptr inbounds %struct.snd_seq_event_cell, ptr %cell, i32 0, i32 2
  %2 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %next, align 4
  store ptr %cell, ptr %head, align 4
  %tail = getelementptr inbounds %struct.snd_seq_fifo, ptr %f, i32 0, i32 2
  %3 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail, align 4
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %if.then7, label %do.body1.if.end_crit_edge

do.body1.if.end_crit_edge:                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cell, ptr %tail, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %do.body1.if.end_crit_edge
  %cells = getelementptr inbounds %struct.snd_seq_fifo, ptr %f, i32 0, i32 3
  %6 = ptrtoint ptr %cells to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cells, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %cells, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_fifo_poll_wait(ptr noundef %f, ptr noundef %file, ptr noundef %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %input_sleep = getelementptr inbounds %struct.snd_seq_fifo, ptr %f, i32 0, i32 6
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  %tobool3.not.i = icmp eq ptr %input_sleep, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %1(ptr noundef %file, ptr noundef nonnull %input_sleep, ptr noundef nonnull %wait) #6
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %cells = getelementptr inbounds %struct.snd_seq_fifo, ptr %f, i32 0, i32 3
  %2 = ptrtoint ptr %cells to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cells, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_fifo_resize(ptr noundef %f, i32 noundef %poolsize) local_unnamed_addr #0 align 64 {
entry:
  %newpool = alloca ptr, align 4
  %oldpool = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %newpool) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oldpool) #6
  %tobool.not = icmp eq ptr %f, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.rhs.do.end_crit_edge, label %if.end24, !prof !20

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %lor.rhs
  %call = tail call ptr @snd_seq_pool_new(i32 noundef %poolsize) #6
  %2 = ptrtoint ptr %newpool to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %newpool, align 4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.end24.cleanup_crit_edge, label %if.end26

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.end24
  %call27 = tail call i32 @snd_seq_pool_init(ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %call30 = call i32 @snd_seq_pool_delete(ptr noundef nonnull %newpool) #6
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %lock = getelementptr inbounds %struct.snd_seq_fifo, ptr %f, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #6
  %3 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f, align 4
  %5 = ptrtoint ptr %oldpool to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %oldpool, align 4
  %head = getelementptr inbounds %struct.snd_seq_fifo, ptr %f, i32 0, i32 1
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head, align 4
  %8 = ptrtoint ptr %newpool to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %newpool, align 4
  store ptr %9, ptr %f, align 4
  store ptr null, ptr %head, align 4
  %tail = getelementptr inbounds %struct.snd_seq_fifo, ptr %f, i32 0, i32 2
  %10 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %tail, align 4
  %cells = getelementptr inbounds %struct.snd_seq_fifo, ptr %f, i32 0, i32 3
  %11 = ptrtoint ptr %cells to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %cells, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  tail call void @snd_seq_pool_mark_closing(ptr noundef %4) #6
  %use_lock = getelementptr inbounds %struct.snd_seq_fifo, ptr %f, i32 0, i32 5
  tail call void @snd_use_lock_sync_helper(ptr noundef %use_lock, ptr noundef nonnull @.str.3, i32 noundef 256) #6
  %tobool36.not56 = icmp eq ptr %7, null
  br i1 %tobool36.not56, label %if.end31.for.end_crit_edge, label %if.end31.for.body_crit_edge

if.end31.for.body_crit_edge:                      ; preds = %if.end31
  br label %for.body

if.end31.for.end_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end31.for.body_crit_edge
  %cell.057 = phi ptr [ %13, %for.body.for.body_crit_edge ], [ %7, %if.end31.for.body_crit_edge ]
  %next37 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %cell.057, i32 0, i32 2
  %12 = ptrtoint ptr %next37 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %next37, align 4
  tail call void @snd_seq_cell_free(ptr noundef nonnull %cell.057) #6
  %tobool36.not = icmp eq ptr %13, null
  br i1 %tobool36.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end31.for.end_crit_edge
  %call38 = call i32 @snd_seq_pool_delete(ptr noundef nonnull %oldpool) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then29, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %if.then29 ], [ 0, %for.end ], [ -12, %if.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oldpool) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %newpool) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_fifo_unused_cells(ptr noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %f, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %use_lock = getelementptr inbounds %struct.snd_seq_fifo, ptr %f, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %use_lock, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock, ptr %use_lock, i32 1, ptr elementtype(i32) %use_lock) #6, !srcloc !22
  %lock = getelementptr inbounds %struct.snd_seq_fifo, ptr %f, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %1 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.snd_seq_unused_cells.exit_crit_edge, label %cond.true.i

if.end.snd_seq_unused_cells.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_seq_unused_cells.exit

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %total_elements.i = getelementptr inbounds %struct.snd_seq_pool, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %total_elements.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %total_elements.i, align 4
  %counter.i = getelementptr inbounds %struct.snd_seq_pool, ptr %2, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %counter.i, i32 noundef 4) #6
  %5 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %counter.i, align 4
  %sub.i = sub i32 %4, %6
  br label %snd_seq_unused_cells.exit

snd_seq_unused_cells.exit:                        ; preds = %cond.true.i, %if.end.snd_seq_unused_cells.exit_crit_edge
  %cond.i = phi i32 [ %sub.i, %cond.true.i ], [ 0, %if.end.snd_seq_unused_cells.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  %call.i.i14 = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %use_lock, i32 1, i32 3, i32 1) #6
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock, ptr %use_lock, i32 1, ptr elementtype(i32) %use_lock) #6, !srcloc !23
  br label %cleanup

cleanup:                                          ; preds = %snd_seq_unused_cells.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond.i, %snd_seq_unused_cells.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8}
!llvm.named.register.sp = !{!10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @snd_seq_fifo_new.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../sound/core/seq/seq_fifo.c", i32 37, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @snd_seq_fifo_new.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../sound/core/seq/seq_fifo.c", i32 39, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/core/seq/seq_fifo.c", i32 53, i32 6}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../sound/core/seq/seq_fifo.c", i32 181, i32 3}
!10 = !{!"sp"}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{!"auto-init"}
!22 = !{i64 2148483545, i64 2148483571, i64 2148483600, i64 2148483634, i64 2148483665, i64 2148483688}
!23 = !{i64 2148486010, i64 2148486036, i64 2148486065, i64 2148486099, i64 2148486130, i64 2148486153}
!24 = !{i64 2153520651}
!25 = !{!"branch_weights", i32 2000, i32 1}
