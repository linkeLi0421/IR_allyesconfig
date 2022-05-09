; ModuleID = '/llk/IR_all_yes/kernel/task_work.c_pt.bc'
source_filename = "../kernel/task_work.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.callback_head = type { ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.72, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.51 }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.72 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@work_exited = internal global { %struct.callback_head, [24 x i8] } zeroinitializer, align 32
@task_work_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kernel/task_work.c\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"work_exited\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 6, i32 29 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [22 x i8] c"../kernel/task_work.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 57, i32 3 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @work_exited, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @work_exited to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @task_work_add(ptr noundef %task, ptr noundef %work, i32 noundef %notify) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kasan_record_aux_stack(ptr noundef %work) #4
  %task_works = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 120
  %0 = ptrtoint ptr %work to i32
  br label %do.body

do.body:                                          ; preds = %__cmpxchg.exit.do.body_crit_edge, %entry
  %1 = ptrtoint ptr %task_works to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %task_works, align 4
  %cmp = icmp eq ptr %2, @work_exited
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %if.end, !prof !15

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %do.body
  %3 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %work, align 4
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %task_works, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !16
  %4 = ptrtoint ptr %2 to i32
  tail call void @llvm.prefetch.p0(ptr %task_works, i32 1, i32 3, i32 1) #4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end
  %5 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %task_works, i32 %4, i32 %0) #4, !srcloc !17
  %asmresult.i = extractvalue { i32, i32 } %5, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %5, 1
  %6 = inttoptr i32 %asmresult1.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !18
  %cmp23.not = icmp eq ptr %2, %6
  br i1 %cmp23.not, label %do.end24, label %__cmpxchg.exit.do.body_crit_edge

__cmpxchg.exit.do.body_crit_edge:                 ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end24:                                         ; preds = %__cmpxchg.exit
  %7 = zext i32 %notify to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %notify, label %land.end [
    i32 0, label %do.end24.cleanup_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb25
  ]

do.end24.cleanup_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %do.end24
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 1
  %8 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stack.i.i, align 4
  %call.i.i.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i82 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i82, label %if.then.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kick_process(ptr noundef %task) #4
  br label %cleanup

sw.bb25:                                          ; preds = %do.end24
  %stack.i.i83 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 1
  %10 = ptrtoint ptr %stack.i.i83 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stack.i.i83, align 4
  %call.i.i.i84 = tail call i32 @_test_and_set_bit(i32 noundef 8, ptr noundef %11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i84)
  %tobool.not.i85 = icmp eq i32 %call.i.i.i84, 0
  br i1 %tobool.not.i85, label %land.lhs.true.i, label %sw.bb25.cleanup_crit_edge

sw.bb25.cleanup_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.i:                                  ; preds = %sw.bb25
  %call1.i = tail call i32 @wake_up_state(ptr noundef %task, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then.i86, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i86:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kick_process(ptr noundef %task) #4
  br label %cleanup

land.end:                                         ; preds = %do.end24
  %.b81 = load i1, ptr @task_work_add.__already_done, align 1
  br i1 %.b81, label %land.end.cleanup_crit_edge, label %if.then36, !prof !19

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then36:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @task_work_add.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 57, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %land.end.cleanup_crit_edge, %if.then.i86, %land.lhs.true.i.cleanup_crit_edge, %sw.bb25.cleanup_crit_edge, %if.then.i, %sw.bb.cleanup_crit_edge, %do.end24.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.end.cleanup_crit_edge ], [ 0, %if.then36 ], [ %notify, %do.end24.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %sw.bb25.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.then.i86 ], [ -3, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kasan_record_aux_stack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @task_work_cancel_match(ptr noundef %task, ptr nocapture noundef readonly %match, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %task_works = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 120
  %0 = ptrtoint ptr %task_works to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task_works, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body, !prof !19

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  %pi_lock = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 128
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pi_lock) #4
  %2 = ptrtoint ptr %task_works to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %task_works, align 4
  %tobool9.not59 = icmp eq ptr %3, null
  br i1 %tobool9.not59, label %do.body.do.body37_crit_edge, label %do.body.while.body_crit_edge

do.body.while.body_crit_edge:                     ; preds = %do.body
  br label %while.body

do.body.do.body37_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body37

while.body:                                       ; preds = %if.end36.while.body_crit_edge, %do.body.while.body_crit_edge
  %4 = phi ptr [ %12, %if.end36.while.body_crit_edge ], [ %3, %do.body.while.body_crit_edge ]
  %pprev.060 = phi ptr [ %pprev.1, %if.end36.while.body_crit_edge ], [ %task_works, %do.body.while.body_crit_edge ]
  %call10 = tail call zeroext i1 %match(ptr noundef nonnull %4, ptr noundef %data) #4
  br i1 %call10, label %if.else, label %while.body.if.end36_crit_edge

while.body.if.end36_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.else:                                          ; preds = %while.body
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pprev.060, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !20
  %5 = ptrtoint ptr %4 to i32
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %4, align 4
  %8 = ptrtoint ptr %7 to i32
  tail call void @llvm.prefetch.p0(ptr %pprev.060, i32 1, i32 3, i32 1) #4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.else
  %9 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %pprev.060, i32 %5, i32 %8) #4, !srcloc !17
  %asmresult.i = extractvalue { i32, i32 } %9, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %9, 1
  %10 = inttoptr i32 %asmresult1.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !21
  %cmp32 = icmp eq ptr %4, %10
  br i1 %cmp32, label %__cmpxchg.exit.do.body37_crit_edge, label %__cmpxchg.exit.if.end36_crit_edge

__cmpxchg.exit.if.end36_crit_edge:                ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

__cmpxchg.exit.do.body37_crit_edge:               ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body37

if.end36:                                         ; preds = %__cmpxchg.exit.if.end36_crit_edge, %while.body.if.end36_crit_edge
  %pprev.1 = phi ptr [ %pprev.060, %__cmpxchg.exit.if.end36_crit_edge ], [ %4, %while.body.if.end36_crit_edge ]
  %11 = ptrtoint ptr %pprev.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %pprev.1, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %if.end36.do.body37_crit_edge, label %if.end36.while.body_crit_edge

if.end36.while.body_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end36.do.body37_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body37

do.body37:                                        ; preds = %if.end36.do.body37_crit_edge, %__cmpxchg.exit.do.body37_crit_edge, %do.body.do.body37_crit_edge
  %.lcssa58 = phi ptr [ null, %do.body.do.body37_crit_edge ], [ null, %if.end36.do.body37_crit_edge ], [ %4, %__cmpxchg.exit.do.body37_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pi_lock, i32 noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %do.body37, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %.lcssa58, %do.body37 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @task_work_cancel(ptr noundef %task, ptr noundef readnone %func) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %task_works.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 120
  %0 = ptrtoint ptr %task_works.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task_works.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.task_work_cancel_match.exit_crit_edge, label %do.body.i, !prof !19

entry.task_work_cancel_match.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %task_work_cancel_match.exit

do.body.i:                                        ; preds = %entry
  %pi_lock.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 128
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pi_lock.i) #4
  %2 = ptrtoint ptr %task_works.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %task_works.i, align 4
  %tobool9.not59.i = icmp eq ptr %3, null
  br i1 %tobool9.not59.i, label %do.body.i.do.body37.i_crit_edge, label %do.body.i.while.body.i_crit_edge

do.body.i.while.body.i_crit_edge:                 ; preds = %do.body.i
  br label %while.body.i

do.body.i.do.body37.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body37.i

while.body.i:                                     ; preds = %if.end36.i.while.body.i_crit_edge, %do.body.i.while.body.i_crit_edge
  %4 = phi ptr [ %14, %if.end36.i.while.body.i_crit_edge ], [ %3, %do.body.i.while.body.i_crit_edge ]
  %pprev.060.i = phi ptr [ %pprev.1.i, %if.end36.i.while.body.i_crit_edge ], [ %task_works.i, %do.body.i.while.body.i_crit_edge ]
  %func.i = getelementptr inbounds %struct.callback_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %func.i, align 4
  %cmp.i = icmp eq ptr %6, %func
  br i1 %cmp.i, label %if.else.i, label %while.body.i.if.end36.i_crit_edge

while.body.i.if.end36.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36.i

if.else.i:                                        ; preds = %while.body.i
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pprev.060.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !20
  %7 = ptrtoint ptr %4 to i32
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %4, align 4
  %10 = ptrtoint ptr %9 to i32
  tail call void @llvm.prefetch.p0(ptr %pprev.060.i, i32 1, i32 3, i32 1) #4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.else.i
  %11 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %pprev.060.i, i32 %7, i32 %10) #4, !srcloc !17
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %11, 1
  %12 = inttoptr i32 %asmresult1.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !21
  %cmp32.i = icmp eq ptr %4, %12
  br i1 %cmp32.i, label %__cmpxchg.exit.i.do.body37.i_crit_edge, label %__cmpxchg.exit.i.if.end36.i_crit_edge

__cmpxchg.exit.i.if.end36.i_crit_edge:            ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36.i

__cmpxchg.exit.i.do.body37.i_crit_edge:           ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body37.i

if.end36.i:                                       ; preds = %__cmpxchg.exit.i.if.end36.i_crit_edge, %while.body.i.if.end36.i_crit_edge
  %pprev.1.i = phi ptr [ %pprev.060.i, %__cmpxchg.exit.i.if.end36.i_crit_edge ], [ %4, %while.body.i.if.end36.i_crit_edge ]
  %13 = ptrtoint ptr %pprev.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %pprev.1.i, align 4
  %tobool9.not.i = icmp eq ptr %14, null
  br i1 %tobool9.not.i, label %if.end36.i.do.body37.i_crit_edge, label %if.end36.i.while.body.i_crit_edge

if.end36.i.while.body.i_crit_edge:                ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

if.end36.i.do.body37.i_crit_edge:                 ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body37.i

do.body37.i:                                      ; preds = %if.end36.i.do.body37.i_crit_edge, %__cmpxchg.exit.i.do.body37.i_crit_edge, %do.body.i.do.body37.i_crit_edge
  %.lcssa58.i = phi ptr [ null, %do.body.i.do.body37.i_crit_edge ], [ %4, %__cmpxchg.exit.i.do.body37.i_crit_edge ], [ null, %if.end36.i.do.body37.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pi_lock.i, i32 noundef %call.i) #4
  br label %task_work_cancel_match.exit

task_work_cancel_match.exit:                      ; preds = %do.body37.i, %entry.task_work_cancel_match.exit_crit_edge
  %retval.0.i = phi ptr [ %.lcssa58.i, %do.body37.i ], [ null, %entry.task_work_cancel_match.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @task_work_run() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !5) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task1, align 8
  %task_works = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 120
  %flags = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %pi_lock = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 128
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %entry
  %4 = ptrtoint ptr %task_works to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %task_works, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %do.body.do.cond6_crit_edge

do.body.do.cond6_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.cond6

if.then:                                          ; preds = %do.body
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then.for.end_crit_edge, label %if.then.do.cond6_crit_edge

if.then.do.cond6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.cond6

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

do.cond6:                                         ; preds = %if.then.do.cond6_crit_edge, %do.body.do.cond6_crit_edge
  %head.0 = phi i32 [ 0, %do.body.do.cond6_crit_edge ], [ ptrtoint (ptr @work_exited to i32), %if.then.do.cond6_crit_edge ]
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %task_works, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !22
  %8 = ptrtoint ptr %5 to i32
  tail call void @llvm.prefetch.p0(ptr %task_works, i32 1, i32 3, i32 1) #4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.cond6
  %9 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %task_works, i32 %8, i32 %head.0) #4, !srcloc !17
  %asmresult.i = extractvalue { i32, i32 } %9, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %9, 1
  %10 = inttoptr i32 %asmresult1.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !23
  %cmp.not = icmp eq ptr %5, %10
  br i1 %cmp.not, label %do.end27, label %__cmpxchg.exit.do.body.backedge_crit_edge

__cmpxchg.exit.do.body.backedge_crit_edge:        ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %do.body32.do.body.backedge_crit_edge, %__cmpxchg.exit.do.body.backedge_crit_edge
  br label %do.body

do.end27:                                         ; preds = %__cmpxchg.exit
  br i1 %tobool.not, label %do.end27.for.end_crit_edge, label %if.end30

do.end27.for.end_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end30:                                         ; preds = %do.end27
  tail call void @_raw_spin_lock_irq(ptr noundef %pi_lock) #4
  tail call void @_raw_spin_unlock_irq(ptr noundef %pi_lock) #4
  br label %do.body32

do.body32:                                        ; preds = %do.body32.do.body32_crit_edge, %if.end30
  %work.0 = phi ptr [ %5, %if.end30 ], [ %12, %do.body32.do.body32_crit_edge ]
  %11 = ptrtoint ptr %work.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %work.0, align 4
  %func = getelementptr inbounds %struct.callback_head, ptr %work.0, i32 0, i32 1
  %13 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %func, align 4
  tail call void %14(ptr noundef nonnull %work.0) #4
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 166, i32 noundef 0) #4
  %call.i51 = tail call i32 @__cond_resched() #4
  %tobool37.not = icmp eq ptr %12, null
  br i1 %tobool37.not, label %do.body32.do.body.backedge_crit_edge, label %do.body32.do.body32_crit_edge

do.body32.do.body32_crit_edge:                    ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body32

do.body32.do.body.backedge_crit_edge:             ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.backedge

for.end:                                          ; preds = %do.end27.for.end_crit_edge, %if.then.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kick_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.named.register.sp = !{!5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../kernel/task_work.c", i32 57, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @work_exited, !4, !"work_exited", i1 false, i1 false}
!4 = !{!"../kernel/task_work.c", i32 6, i32 29}
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
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2154893575}
!17 = !{i64 989565, i64 989586, i64 989609, i64 989628, i64 989647}
!18 = !{i64 2154893982}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2154898852}
!21 = !{i64 2154899265}
!22 = !{i64 2154903447}
!23 = !{i64 2154903854}
