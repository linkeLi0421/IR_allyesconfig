; ModuleID = '/llk/IR_all_yes/kernel/events/callchain.c_pt.bc'
source_filename = "../kernel/events/callchain.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.callchain_cpus_entries = type { %struct.callback_head, [0 x ptr] }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.perf_callchain_entry_ctx = type { ptr, i32, i32, i16, i8 }
%struct.perf_callchain_entry = type { i64, [0 x i64] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.89, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.46 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
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
%union.anon.89 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }

@sysctl_perf_event_max_stack = dso_local local_unnamed_addr global i32 127, section ".data..read_mostly", align 4
@sysctl_perf_event_max_contexts_per_stack = dso_local local_unnamed_addr global i32 8, section ".data..read_mostly", align 4
@callchain_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @callchain_mutex, i64 52), ptr getelementptr (i8, ptr @callchain_mutex, i64 52) }, ptr @callchain_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@nr_callchain_events = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@get_callchain_buffers.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kernel/events/callchain.c\00", [38 x i8] zeroinitializer }, align 32
@callchain_recursion = weak dso_local global [4 x i32] zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@callchain_cpus_entries = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@get_callchain_entry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__pcpu_unique_callchain_recursion = dso_local local_unnamed_addr global [4 x i8] zeroinitializer, section ".discard", align 1
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"callchain_mutex.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"callchain_mutex\00", [16 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@___asan_gen_.4 = private unnamed_addr constant [16 x i8] c"callchain_mutex\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [20 x i8] c"nr_callchain_events\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 33, i32 17 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 116, i32 6 }
@___asan_gen_.13 = private unnamed_addr constant [23 x i8] c"callchain_cpus_entries\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 35, i32 39 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 161, i32 12 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [29 x i8] c"../kernel/events/callchain.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 34, i32 8 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @callchain_mutex, ptr @nr_callchain_events, ptr @.str, ptr @callchain_cpus_entries, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @callchain_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_callchain_events to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @callchain_cpus_entries to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @perf_callchain_kernel(ptr noundef %entry1, ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @perf_callchain_user(ptr noundef %entry1, ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_callchain_buffers(i32 noundef %event_max_stack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @callchain_mutex, i32 noundef 0) #7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nr_callchain_events, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !31
  tail call void @llvm.prefetch.p0(ptr nonnull @nr_callchain_events, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nr_callchain_events, ptr nonnull @nr_callchain_events, i32 1, ptr nonnull elementtype(i32) @nr_callchain_events) #7, !srcloc !32
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp = icmp slt i32 %asmresult.i.i.i.i, 1
  br i1 %cmp, label %land.rhs, label %if.end37

land.rhs:                                         ; preds = %entry
  %.b52 = load i1, ptr @get_callchain_buffers.__already_done, align 1
  br i1 %.b52, label %land.rhs.if.then46_crit_edge, label %if.then, !prof !34

land.rhs.if.then46_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @get_callchain_buffers.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 116, i32 noundef 9, ptr noundef null) #7
  br label %if.then46

if.end37:                                         ; preds = %entry
  %1 = load i32, ptr @sysctl_perf_event_max_stack, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %event_max_stack)
  %cmp38 = icmp slt i32 %1, %event_max_stack
  br i1 %cmp38, label %if.end37.if.then46_crit_edge, label %if.end40

if.end37.if.then46_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46

if.end40:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp41 = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp41, label %if.end8.i.i.i, label %if.end40.if.end47_crit_edge

if.end40.if.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.end8.i.i.i:                                    ; preds = %if.end40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = shl i32 %2, 2
  %4 = add i32 %3, 8
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #10
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.i.if.then46_crit_edge, label %if.end.i

if.end8.i.i.i.if.then46_crit_edge:                ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46

if.end.i:                                         ; preds = %if.end8.i.i.i
  %5 = load i32, ptr @sysctl_perf_event_max_stack, align 4
  %6 = load i32, ptr @sysctl_perf_event_max_contexts_per_stack, align 4
  %add.i.i = add i32 %6, %5
  %mul.i.i = shl i32 %add.i.i, 5
  %mul.i = add i32 %mul.i.i, 32
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end5.i.i.for.cond.i_crit_edge, %if.end.i
  %cpu.0.i = phi i32 [ -1, %if.end.i ], [ %call2.i, %if.end5.i.i.for.cond.i_crit_edge ]
  %call2.i = tail call i32 @cpumask_next(i32 noundef %cpu.0.i, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %7)
  %cmp.i = icmp ult i32 %call2.i, %7
  br i1 %cmp.i, label %if.end5.i.i, label %do.body.i

if.end5.i.i:                                      ; preds = %for.cond.i
  %call.i2.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 3264) #10
  %arrayidx.i = getelementptr %struct.callchain_cpus_entries, ptr %call9.i.i.i, i32 0, i32 1, i32 %call2.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i2.i.i, ptr %arrayidx.i, align 4
  %tobool6.not.i = icmp eq ptr %call.i2.i.i, null
  br i1 %tobool6.not.i, label %for.cond42.preheader.i, label %if.end5.i.i.for.cond.i_crit_edge

if.end5.i.i.for.cond.i_crit_edge:                 ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

for.cond42.preheader.i:                           ; preds = %if.end5.i.i
  %call4369.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4369.i, i32 %9)
  %cmp4470.i = icmp ult i32 %call4369.i, %9
  br i1 %cmp4470.i, label %for.cond42.preheader.i.for.body45.i_crit_edge, label %for.cond42.preheader.i.for.end48.i_crit_edge

for.cond42.preheader.i.for.end48.i_crit_edge:     ; preds = %for.cond42.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end48.i

for.cond42.preheader.i.for.body45.i_crit_edge:    ; preds = %for.cond42.preheader.i
  br label %for.body45.i

do.body.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !35
  store volatile ptr %call9.i.i.i, ptr @callchain_cpus_entries, align 4
  br label %if.end47

for.body45.i:                                     ; preds = %for.body45.i.for.body45.i_crit_edge, %for.cond42.preheader.i.for.body45.i_crit_edge
  %call4371.i = phi i32 [ %call43.i, %for.body45.i.for.body45.i_crit_edge ], [ %call4369.i, %for.cond42.preheader.i.for.body45.i_crit_edge ]
  %arrayidx47.i = getelementptr %struct.callchain_cpus_entries, ptr %call9.i.i.i, i32 0, i32 1, i32 %call4371.i
  %10 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx47.i, align 4
  tail call void @kfree(ptr noundef %11) #7
  %call43.i = tail call i32 @cpumask_next(i32 noundef %call4371.i, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %cmp44.i = icmp ult i32 %call43.i, %12
  br i1 %cmp44.i, label %for.body45.i.for.body45.i_crit_edge, label %for.body45.i.for.end48.i_crit_edge

for.body45.i.for.end48.i_crit_edge:               ; preds = %for.body45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end48.i

for.body45.i.for.body45.i_crit_edge:              ; preds = %for.body45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body45.i

for.end48.i:                                      ; preds = %for.body45.i.for.end48.i_crit_edge, %for.cond42.preheader.i.for.end48.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #7
  br label %if.then46

if.then46:                                        ; preds = %for.end48.i, %if.end8.i.i.i.if.then46_crit_edge, %if.end37.if.then46_crit_edge, %if.then, %land.rhs.if.then46_crit_edge
  %err.0.ph = phi i32 [ -12, %if.end8.i.i.i.if.then46_crit_edge ], [ -12, %for.end48.i ], [ -22, %land.rhs.if.then46_crit_edge ], [ -75, %if.end37.if.then46_crit_edge ], [ -22, %if.then ]
  %call.i.i54 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nr_callchain_events, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr nonnull @nr_callchain_events, i32 1, i32 3, i32 1) #7
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nr_callchain_events, ptr nonnull @nr_callchain_events, i32 1, ptr nonnull elementtype(i32) @nr_callchain_events) #7, !srcloc !36
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %do.body.i, %if.end40.if.end47_crit_edge
  %err.058 = phi i32 [ %err.0.ph, %if.then46 ], [ 0, %if.end40.if.end47_crit_edge ], [ 0, %do.body.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @callchain_mutex) #7
  ret i32 %err.058
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @put_callchain_buffers() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @atomic_dec_and_mutex_lock(ptr noundef nonnull @nr_callchain_events, ptr noundef nonnull @callchain_mutex) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @callchain_cpus_entries, align 4
  store volatile ptr null, ptr @callchain_cpus_entries, align 4
  tail call void @call_rcu(ptr noundef %0, ptr noundef nonnull @release_callchain_buffers_rcu) #7
  tail call void @mutex_unlock(ptr noundef nonnull @callchain_mutex) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_dec_and_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_callchain_entry(ptr nocapture noundef %rctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !21) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu2, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @callchain_recursion to i32)
  %6 = inttoptr i32 %add to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %and.i.i = and i32 %8, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp ne i32 %and.i.i, 0
  %and3.i.i = and i32 %8, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.i.i = icmp ne i32 %and3.i.i, 0
  %lnot.ext8.i.i = zext i1 %tobool4.i.i to i32
  %conv9.i.i = zext i1 %tobool.i.i to i32
  %add10.i.i = add nuw nsw i32 %conv9.i.i, %lnot.ext8.i.i
  %and12.i.i = and i32 %8, 16711936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %tobool13.i.i = icmp ne i32 %and12.i.i, 0
  %lnot.ext17.i.i = zext i1 %tobool13.i.i to i32
  %add19.i.i = add nuw nsw i32 %add10.i.i, %lnot.ext17.i.i
  %arrayidx.i = getelementptr i32, ptr %6, i32 %add19.i.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.end, label %get_recursion_context.exit.thread

get_recursion_context.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %rctx, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !37
  %13 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add19.i.i, ptr %rctx, align 4
  %14 = load volatile ptr, ptr @callchain_cpus_entries, align 4
  %call9 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.do.end17_crit_edge

if.end.do.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

land.lhs.true:                                    ; preds = %if.end
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end17_crit_edge, label %land.lhs.true12

land.lhs.true.do.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

land.lhs.true12:                                  ; preds = %land.lhs.true
  %.b42 = load i1, ptr @get_callchain_entry.__warned, align 1
  br i1 %.b42, label %land.lhs.true12.do.end17_crit_edge, label %if.then14

land.lhs.true12.do.end17_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @get_callchain_entry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 161, ptr noundef nonnull @.str.1) #7
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %land.lhs.true12.do.end17_crit_edge, %land.lhs.true.do.end17_crit_edge, %if.end.do.end17_crit_edge
  %tobool19.not = icmp eq ptr %14, null
  %15 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu2, align 4
  br i1 %tobool19.not, label %do.body21, label %if.end32

do.body21:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx30 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx30, align 4
  %add31 = add i32 %18, ptrtoint (ptr @callchain_recursion to i32)
  %19 = inttoptr i32 %add31 to ptr
  %20 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rctx, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !38
  %arrayidx.i43 = getelementptr i32, ptr %19, i32 %21
  %22 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i43, align 4
  %dec.i = add i32 %23, -1
  store i32 %dec.i, ptr %arrayidx.i43, align 4
  br label %cleanup

if.end32:                                         ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx35 = getelementptr %struct.callchain_cpus_entries, ptr %14, i32 0, i32 1, i32 %16
  %24 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx35, align 4
  %26 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rctx, align 4
  %28 = load i32, ptr @sysctl_perf_event_max_stack, align 4
  %29 = load i32, ptr @sysctl_perf_event_max_contexts_per_stack, align 4
  %add.i = add i32 %29, %28
  %mul.i = shl i32 %add.i, 3
  %add1.i = add i32 %mul.i, 8
  %mul = mul i32 %add1.i, %27
  %add.ptr = getelementptr i8, ptr %25, i32 %mul
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.body21, %get_recursion_context.exit.thread
  %retval.0 = phi ptr [ %add.ptr, %if.end32 ], [ null, %do.body21 ], [ null, %get_recursion_context.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @put_callchain_entry(i32 noundef %rctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !21) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @callchain_recursion to i32)
  %6 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !38
  %arrayidx.i = getelementptr i32, ptr %6, i32 %rctx
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %dec.i = add i32 %8, -1
  store i32 %dec.i, ptr %arrayidx.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_perf_callchain(ptr noundef %regs, i32 noundef %init_nr, i1 noundef zeroext %kernel, i1 noundef zeroext %user, i32 noundef %max_stack, i1 noundef zeroext %crosstask, i1 noundef zeroext %add_mark) local_unnamed_addr #0 align 64 {
entry:
  %ctx = alloca %struct.perf_callchain_entry_ctx, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ctx) #7
  %0 = getelementptr inbounds i8, ptr %ctx, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %2 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rctx, align 4, !annotation !39
  %call = call ptr @get_callchain_entry(ptr noundef nonnull %rctx)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup45_crit_edge, label %if.end

entry.cleanup45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup45

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %ctx, align 4
  %max_stack6 = getelementptr inbounds %struct.perf_callchain_entry_ctx, ptr %ctx, i32 0, i32 1
  %4 = ptrtoint ptr %max_stack6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %max_stack, ptr %max_stack6, align 4
  %conv = zext i32 %init_nr to i64
  %5 = ptrtoint ptr %call to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %call, align 8
  %nr8 = getelementptr inbounds %struct.perf_callchain_entry_ctx, ptr %ctx, i32 0, i32 2
  %6 = ptrtoint ptr %nr8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %init_nr, ptr %nr8, align 4
  %contexts = getelementptr inbounds %struct.perf_callchain_entry_ctx, ptr %ctx, i32 0, i32 3
  %7 = ptrtoint ptr %contexts to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %contexts, align 4
  %contexts_maxed = getelementptr inbounds %struct.perf_callchain_entry_ctx, ptr %ctx, i32 0, i32 4
  %8 = ptrtoint ptr %contexts_maxed to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %contexts_maxed, align 2
  br i1 %kernel, label %land.lhs.true, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %and = and i32 %10, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.lhs.true.if.end17_crit_edge, label %if.then12

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then12:                                        ; preds = %land.lhs.true
  br i1 %add_mark, label %if.then14, label %if.then12.if.end16_crit_edge

if.then12.if.end16_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then14:                                        ; preds = %if.then12
  %11 = load i32, ptr @sysctl_perf_event_max_contexts_per_stack, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp sgt i32 %11, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %13, align 8
  %inc.i = add i64 %15, 1
  store i64 %inc.i, ptr %13, align 8
  %idxprom.i = trunc i64 %15 to i32
  %arrayidx.i = getelementptr %struct.perf_callchain_entry, ptr %13, i32 0, i32 1, i32 %idxprom.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -128, ptr %arrayidx.i, align 8
  %17 = ptrtoint ptr %contexts to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %contexts, align 4
  %inc6.i = add i16 %18, 1
  store i16 %inc6.i, ptr %contexts, align 4
  br label %if.end16

if.else.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %contexts_maxed to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %contexts_maxed, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.else.i, %if.then.i, %if.then12.if.end16_crit_edge
  call void @perf_callchain_kernel(ptr noundef nonnull %ctx, ptr noundef %regs)
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %land.lhs.true.if.end17_crit_edge, %if.end.if.end17_crit_edge
  br i1 %user, label %if.then19, label %if.end17.exit_put_crit_edge

if.end17.exit_put_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_put

if.then19:                                        ; preds = %if.end17
  %arrayidx21 = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %20 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx21, align 4
  %and22 = and i32 %21, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %cmp23 = icmp eq i32 %and22, 0
  br i1 %cmp23, label %if.then19.if.end33_crit_edge, label %if.then25

if.then19.if.end33_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then25:                                        ; preds = %if.then19
  %22 = call i32 @llvm.read_register.i32(metadata !21) #7
  %and.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 53
  %26 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mm, align 8
  %tobool27.not = icmp eq ptr %27, null
  br i1 %tobool27.not, label %if.then25.exit_put_crit_edge, label %if.then28

if.then25.exit_put_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_put

if.then28:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %stack = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %stack to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stack, align 4
  %add.ptr31 = getelementptr i8, ptr %29, i32 16304
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %if.then19.if.end33_crit_edge
  %regs.addr.0 = phi ptr [ %regs, %if.then19.if.end33_crit_edge ], [ %add.ptr31, %if.then28 ]
  %tobool34.not = icmp eq ptr %regs.addr.0, null
  %brmerge = or i1 %tobool34.not, %crosstask
  br i1 %brmerge, label %if.end33.exit_put_crit_edge, label %if.end38

if.end33.exit_put_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_put

if.end38:                                         ; preds = %if.end33
  br i1 %add_mark, label %if.then40, label %if.end38.if.end42_crit_edge

if.end38.if.end42_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then40:                                        ; preds = %if.end38
  %30 = ptrtoint ptr %contexts to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %contexts, align 4
  %conv.i57 = sext i16 %31 to i32
  %32 = load i32, ptr @sysctl_perf_event_max_contexts_per_stack, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %conv.i57)
  %cmp.i58 = icmp sgt i32 %32, %conv.i57
  br i1 %cmp.i58, label %if.then.i63, label %if.else.i65

if.then.i63:                                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctx, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %34, align 8
  %inc.i59 = add i64 %36, 1
  store i64 %inc.i59, ptr %34, align 8
  %idxprom.i60 = trunc i64 %36 to i32
  %arrayidx.i61 = getelementptr %struct.perf_callchain_entry, ptr %34, i32 0, i32 1, i32 %idxprom.i60
  %37 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 -512, ptr %arrayidx.i61, align 8
  %38 = ptrtoint ptr %contexts to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %contexts, align 4
  %inc6.i62 = add i16 %39, 1
  store i16 %inc6.i62, ptr %contexts, align 4
  br label %if.end42

if.else.i65:                                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %contexts_maxed to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %contexts_maxed, align 2
  br label %if.end42

if.end42:                                         ; preds = %if.else.i65, %if.then.i63, %if.end38.if.end42_crit_edge
  call void @perf_callchain_user(ptr noundef nonnull %ctx, ptr noundef nonnull %regs.addr.0)
  br label %exit_put

exit_put:                                         ; preds = %if.end42, %if.end33.exit_put_crit_edge, %if.then25.exit_put_crit_edge, %if.end17.exit_put_crit_edge
  %41 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rctx, align 4
  %43 = call i32 @llvm.read_register.i32(metadata !21) #7
  %and.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cpu.i, align 4
  %arrayidx.i67 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %46
  %47 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i67, align 4
  %add.i = add i32 %48, ptrtoint (ptr @callchain_recursion to i32)
  %49 = inttoptr i32 %add.i to ptr
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !38
  %arrayidx.i.i = getelementptr i32, ptr %49, i32 %42
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i, align 4
  %dec.i.i = add i32 %51, -1
  store i32 %dec.i.i, ptr %arrayidx.i.i, align 4
  br label %cleanup45

cleanup45:                                        ; preds = %exit_put, %entry.cleanup45_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctx) #7
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @perf_event_max_stack_handler(ptr nocapture noundef readonly %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) local_unnamed_addr #0 align 64 {
entry:
  %new_value = alloca i32, align 4
  %new_table = alloca %struct.ctl_table, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_value) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = ptrtoint ptr %new_value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %new_value, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %new_table) #7
  %5 = call ptr @memcpy(ptr %new_table, ptr %table, i32 36)
  %data1 = getelementptr inbounds %struct.ctl_table, ptr %new_table, i32 0, i32 1
  %6 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %new_value, ptr %data1, align 4
  %call = call i32 @proc_dointvec_minmax(ptr noundef nonnull %new_table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool2.not = icmp eq i32 %write, 0
  %or.cond = or i1 %tobool2.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @mutex_lock_nested(ptr noundef nonnull @callchain_mutex, i32 noundef 0) #7
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @nr_callchain_events, i32 noundef 4) #7
  %7 = load volatile i32, ptr @nr_callchain_events, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.else, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %new_value, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %1, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.end.if.end6_crit_edge
  %ret.0 = phi i32 [ 0, %if.else ], [ -16, %if.end.if.end6_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @callchain_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end6 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %new_table) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_value) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release_callchain_buffers_rcu(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call4 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %0)
  %cmp5 = icmp ult i32 %call4, %0
  br i1 %cmp5, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %call6 = phi i32 [ %call, %for.body.for.body_crit_edge ], [ %call4, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.callchain_cpus_entries, ptr %head, i32 0, i32 1, i32 %call6
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %2) #7
  %call = tail call i32 @cpumask_next(i32 noundef %call6, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %head) #7
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !17, !19, !20}
!llvm.named.register.sp = !{!21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @sysctl_perf_event_max_stack, !1, !"sysctl_perf_event_max_stack", i1 false, i1 false}
!1 = !{!"../kernel/events/callchain.c", i32 22, i32 5}
!2 = !{ptr @sysctl_perf_event_max_contexts_per_stack, !3, !"sysctl_perf_event_max_contexts_per_stack", i1 false, i1 false}
!3 = !{!"../kernel/events/callchain.c", i32 23, i32 5}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../kernel/events/callchain.c", i32 116, i32 6}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__warned", i1 false, i1 false}
!8 = !{!"../kernel/events/callchain.c", i32 161, i32 12}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__pcpu_unique_callchain_recursion, !11, !"__pcpu_unique_callchain_recursion", i1 false, i1 false}
!11 = !{!"../kernel/events/callchain.c", i32 32, i32 8}
!12 = !{ptr @callchain_recursion, !11, !"callchain_recursion", i1 false, i1 false}
!13 = !{ptr @nr_callchain_events, !14, !"nr_callchain_events", i1 false, i1 false}
!14 = !{!"../kernel/events/callchain.c", i32 33, i32 17}
!15 = !{ptr @callchain_cpus_entries, !16, !"callchain_cpus_entries", i1 false, i1 false}
!16 = !{!"../kernel/events/callchain.c", i32 35, i32 39}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../kernel/events/callchain.c", i32 34, i32 8}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @callchain_mutex, !18, !"callchain_mutex", i1 false, i1 false}
!21 = !{!"sp"}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 2148635091}
!32 = !{i64 2148550400, i64 2148550432, i64 2148550461, i64 2148550495, i64 2148550526, i64 2148550549}
!33 = !{i64 2148635320}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{i64 2154716239}
!36 = !{i64 2148552145, i64 2148552171, i64 2148552200, i64 2148552234, i64 2148552265, i64 2148552288}
!37 = !{i64 2154702487}
!38 = !{i64 2154702694}
!39 = !{!"auto-init"}
