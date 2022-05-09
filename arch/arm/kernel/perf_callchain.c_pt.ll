; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/perf_callchain.c_pt.bc'
source_filename = "../arch/arm/kernel/perf_callchain.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.frame_tail = type { ptr, i32, i32 }
%struct.perf_callchain_entry_ctx = type { ptr, i32, i32, i16, i8 }
%struct.perf_callchain_entry = type { i64, [0 x i64] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.87, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.87 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.stackframe = type { i32, i32, i32, i32, ptr, ptr }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @perf_callchain_user(ptr nocapture noundef %entry1, ptr nocapture noundef readonly %regs) local_unnamed_addr #0 align 64 {
entry:
  %buftail.i = alloca %struct.frame_tail, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %conv = zext i32 %1 to i64
  %nr.i = getelementptr inbounds %struct.perf_callchain_entry_ctx, ptr %entry1, i32 0, i32 2
  %2 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr.i, align 4
  %max_stack.i = getelementptr inbounds %struct.perf_callchain_entry_ctx, ptr %entry1, i32 0, i32 1
  %4 = ptrtoint ptr %max_stack.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_stack.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.i = icmp ult i32 %3, %5
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.perf_callchain_store.exit_crit_edge

entry.perf_callchain_store.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %perf_callchain_store.exit

land.lhs.true.i:                                  ; preds = %entry
  %contexts_maxed.i = getelementptr inbounds %struct.perf_callchain_entry_ctx, ptr %entry1, i32 0, i32 4
  %6 = ptrtoint ptr %contexts_maxed.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %contexts_maxed.i, align 2, !range !10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.perf_callchain_store.exit_crit_edge

land.lhs.true.i.perf_callchain_store.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %perf_callchain_store.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %entry1, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %9, align 8
  %inc.i = add i64 %11, 1
  store i64 %inc.i, ptr %9, align 8
  %idxprom.i = trunc i64 %11 to i32
  %arrayidx.i = getelementptr %struct.perf_callchain_entry, ptr %9, i32 0, i32 1, i32 %idxprom.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv, ptr %arrayidx.i, align 8
  %13 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr.i, align 4
  %inc6.i = add i32 %14, 1
  store i32 %inc6.i, ptr %nr.i, align 4
  br label %perf_callchain_store.exit

perf_callchain_store.exit:                        ; preds = %if.then.i, %land.lhs.true.i.perf_callchain_store.exit_crit_edge, %entry.perf_callchain_store.exit_crit_edge
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 53
  %19 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mm, align 8
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %perf_callchain_store.exit.cleanup_crit_edge, label %if.end

perf_callchain_store.exit.cleanup_crit_edge:      ; preds = %perf_callchain_store.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %perf_callchain_store.exit
  %arrayidx4 = getelementptr [18 x i32], ptr %regs, i32 0, i32 11
  %21 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx4, align 4
  %23 = inttoptr i32 %22 to ptr
  %add.ptr = getelementptr %struct.frame_tail, ptr %23, i32 -1
  %24 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr.i, align 4
  %26 = ptrtoint ptr %max_stack.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_stack.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp19 = icmp ult i32 %25, %27
  %tobool6.not20 = icmp ne ptr %add.ptr, null
  %or.cond21 = select i1 %cmp19, i1 %tobool6.not20, i1 false
  %28 = ptrtoint ptr %add.ptr to i32
  %and22 = and i32 %28, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool7.not23 = icmp eq i32 %and22, 0
  %or.cond1624 = select i1 %or.cond21, i1 %tobool7.not23, i1 false
  br i1 %or.cond1624, label %while.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end
  %29 = getelementptr inbounds %struct.frame_tail, ptr %buftail.i, i32 0, i32 1
  %30 = getelementptr inbounds %struct.frame_tail, ptr %buftail.i, i32 0, i32 2
  %contexts_maxed.i.i = getelementptr inbounds %struct.perf_callchain_entry_ctx, ptr %entry1, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %user_backtrace.exit.while.body_crit_edge, %while.body.lr.ph
  %tail.025 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %retval.0.i, %user_backtrace.exit.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buftail.i) #6
  %31 = ptrtoint ptr %buftail.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 -1 to ptr), ptr %buftail.i, align 4, !annotation !11
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %29, align 4, !annotation !11
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %30, align 4, !annotation !11
  %34 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %tail.025, i32 12, i32 -1226833920) #9, !srcloc !12
  %asmresult.i = extractvalue { i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp.i17 = icmp eq i32 %asmresult.i, 0
  br i1 %cmp.i17, label %if.end.i, label %while.body.user_backtrace.exit_crit_edge

while.body.user_backtrace.exit_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %user_backtrace.exit

if.end.i:                                         ; preds = %while.body
  %35 = call i32 @llvm.read_register.i32(metadata !0) #6
  %and.i.i.i15.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i15.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 213
  %39 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %inc.i.i.i = add i32 %40, 1
  store i32 %inc.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buftail.i, i32 noundef 12) #6
  %41 = call i32 @llvm.read_register.i32(metadata !0) #6
  %and.i.i.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 4
  %43 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !14
  %and.i.i.i.i = and i32 %43, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !15
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !16
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buftail.i, ptr noundef nonnull %tail.025, i32 noundef 12) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #6, !srcloc !15
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !17
  %44 = call i32 @llvm.read_register.i32(metadata !0) #6
  %and.i.i.i16.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i16.i to ptr
  %task.i.i17.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task.i.i17.i, align 8
  %pagefault_disabled.i.i18.i = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 213
  %48 = ptrtoint ptr %pagefault_disabled.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pagefault_disabled.i.i18.i, align 8
  %dec.i.i.i = add i32 %49, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i18.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i18 = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i18, label %if.end4.i, label %if.end.i.user_backtrace.exit_crit_edge

if.end.i.user_backtrace.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %user_backtrace.exit

if.end4.i:                                        ; preds = %if.end.i
  %50 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %30, align 4
  %conv.i = zext i32 %51 to i64
  %52 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nr.i, align 4
  %54 = ptrtoint ptr %max_stack.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max_stack.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp.i.i = icmp ult i32 %53, %55
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end4.i.perf_callchain_store.exit.i_crit_edge

if.end4.i.perf_callchain_store.exit.i_crit_edge:  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %perf_callchain_store.exit.i

land.lhs.true.i.i:                                ; preds = %if.end4.i
  %56 = ptrtoint ptr %contexts_maxed.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %contexts_maxed.i.i, align 2, !range !10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i.i = icmp eq i8 %57, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %land.lhs.true.i.i.perf_callchain_store.exit.i_crit_edge

land.lhs.true.i.i.perf_callchain_store.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %perf_callchain_store.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %entry1, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %59, align 8
  %inc.i.i = add i64 %61, 1
  store i64 %inc.i.i, ptr %59, align 8
  %idxprom.i.i = trunc i64 %61 to i32
  %arrayidx.i.i = getelementptr %struct.perf_callchain_entry, ptr %59, i32 0, i32 1, i32 %idxprom.i.i
  %62 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %conv.i, ptr %arrayidx.i.i, align 8
  %63 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nr.i, align 4
  %inc6.i.i = add i32 %64, 1
  store i32 %inc6.i.i, ptr %nr.i, align 4
  br label %perf_callchain_store.exit.i

perf_callchain_store.exit.i:                      ; preds = %if.then.i.i, %land.lhs.true.i.i.perf_callchain_store.exit.i_crit_edge, %if.end4.i.perf_callchain_store.exit.i_crit_edge
  %add.ptr.i = getelementptr %struct.frame_tail, ptr %tail.025, i32 1
  %65 = ptrtoint ptr %buftail.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %buftail.i, align 4
  %cmp6.not.i = icmp ult ptr %add.ptr.i, %66
  %add.ptr11.i = getelementptr %struct.frame_tail, ptr %66, i32 -1
  %spec.select.i = select i1 %cmp6.not.i, ptr %add.ptr11.i, ptr null
  br label %user_backtrace.exit

user_backtrace.exit:                              ; preds = %perf_callchain_store.exit.i, %if.end.i.user_backtrace.exit_crit_edge, %while.body.user_backtrace.exit_crit_edge
  %retval.0.i = phi ptr [ null, %while.body.user_backtrace.exit_crit_edge ], [ null, %if.end.i.user_backtrace.exit_crit_edge ], [ %spec.select.i, %perf_callchain_store.exit.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buftail.i) #6
  %67 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nr.i, align 4
  %69 = ptrtoint ptr %max_stack.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %max_stack.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp = icmp ult i32 %68, %70
  %tobool6.not = icmp ne ptr %retval.0.i, null
  %or.cond = select i1 %cmp, i1 %tobool6.not, i1 false
  %71 = ptrtoint ptr %retval.0.i to i32
  %and = and i32 %71, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %or.cond16 = select i1 %or.cond, i1 %tobool7.not, i1 false
  br i1 %or.cond16, label %user_backtrace.exit.while.body_crit_edge, label %user_backtrace.exit.cleanup_crit_edge

user_backtrace.exit.cleanup_crit_edge:            ; preds = %user_backtrace.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

user_backtrace.exit.while.body_crit_edge:         ; preds = %user_backtrace.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup:                                          ; preds = %user_backtrace.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %perf_callchain_store.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @perf_callchain_kernel(ptr noundef %entry1, ptr nocapture noundef readonly %regs) local_unnamed_addr #0 align 64 {
entry:
  %fr = alloca %struct.stackframe, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fr) #6
  %0 = getelementptr inbounds %struct.stackframe, ptr %fr, i32 0, i32 1
  %1 = getelementptr inbounds %struct.stackframe, ptr %fr, i32 0, i32 2
  %2 = getelementptr inbounds %struct.stackframe, ptr %fr, i32 0, i32 3
  %3 = getelementptr inbounds %struct.stackframe, ptr %fr, i32 0, i32 4
  %4 = getelementptr inbounds %struct.stackframe, ptr %fr, i32 0, i32 5
  %arrayidx.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 11
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %7 = ptrtoint ptr %fr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %fr, align 4
  %arrayidx2.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 13
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2.i, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %0, align 4
  %arrayidx4.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 14
  %11 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx4.i, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %1, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx6.i, align 4
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %2, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %3, align 4
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i, align 8
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %4, align 4
  call void @walk_stackframe(ptr noundef nonnull %fr, ptr noundef nonnull @callchain_trace, ptr noundef %entry1) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @walk_stackframe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @callchain_trace(ptr nocapture noundef readonly %fr, ptr nocapture noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pc = getelementptr inbounds %struct.stackframe, ptr %fr, i32 0, i32 3
  %0 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pc, align 4
  %conv = zext i32 %1 to i64
  %nr.i = getelementptr inbounds %struct.perf_callchain_entry_ctx, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr.i, align 4
  %max_stack.i = getelementptr inbounds %struct.perf_callchain_entry_ctx, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %max_stack.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_stack.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.i = icmp ult i32 %3, %5
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.perf_callchain_store.exit_crit_edge

entry.perf_callchain_store.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %perf_callchain_store.exit

land.lhs.true.i:                                  ; preds = %entry
  %contexts_maxed.i = getelementptr inbounds %struct.perf_callchain_entry_ctx, ptr %data, i32 0, i32 4
  %6 = ptrtoint ptr %contexts_maxed.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %contexts_maxed.i, align 2, !range !10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.perf_callchain_store.exit_crit_edge

land.lhs.true.i.perf_callchain_store.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %perf_callchain_store.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %9, align 8
  %inc.i = add i64 %11, 1
  store i64 %inc.i, ptr %9, align 8
  %idxprom.i = trunc i64 %11 to i32
  %arrayidx.i = getelementptr %struct.perf_callchain_entry, ptr %9, i32 0, i32 1, i32 %idxprom.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv, ptr %arrayidx.i, align 8
  %13 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr.i, align 4
  %inc6.i = add i32 %14, 1
  store i32 %inc6.i, ptr %nr.i, align 4
  br label %perf_callchain_store.exit

perf_callchain_store.exit:                        ; preds = %if.then.i, %land.lhs.true.i.perf_callchain_store.exit_crit_edge, %entry.perf_callchain_store.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @perf_instruction_pointer(ptr nocapture noundef readonly %regs) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @perf_misc_flags(ptr nocapture noundef readonly %regs) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %. = select i1 %cmp, i32 2, i32 1
  ret i32 %.
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!10 = !{i8 0, i8 2}
!11 = !{!"auto-init"}
!12 = !{i64 2154677658, i64 2154677683}
!13 = !{i64 2150669178}
!14 = !{i64 3157855}
!15 = !{i64 3158052}
!16 = !{i64 2150643285}
!17 = !{i64 2150669385}
