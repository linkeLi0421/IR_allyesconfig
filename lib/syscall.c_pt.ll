; ModuleID = '/llk/IR_all_yes/lib/syscall.c_pt.bc'
source_filename = "../lib/syscall.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.60, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.39 }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.60 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.syscall_info = type { i64, %struct.seccomp_data }
%struct.seccomp_data = type { i32, i32, i64, [6 x i64] }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @task_current_syscall(ptr noundef %target, ptr noundef writeonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cmp = icmp eq ptr %3, %target
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %target, i32 0, i32 1
  %4 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stack.i.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %6 = call ptr @memset(ptr %info, i32 0, i32 72)
  %data.i = getelementptr inbounds %struct.syscall_info, ptr %info, i32 0, i32 1
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %data.i, align 8
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %add.ptr1.i = getelementptr i8, ptr %5, i32 16304
  %tobool2.not.i = icmp eq ptr %add.ptr1.i, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.end7.i, !prof !9

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx.i.i = getelementptr i8, ptr %5, i32 16356
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %conv.i = zext i32 %9 to i64
  %10 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv.i, ptr %info, align 8
  %arrayidx.i = getelementptr i8, ptr %5, i32 16364
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %conv9.i = zext i32 %12 to i64
  %data10.i = getelementptr inbounds %struct.syscall_info, ptr %info, i32 0, i32 1
  %instruction_pointer.i = getelementptr inbounds %struct.syscall_info, ptr %info, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %instruction_pointer.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv9.i, ptr %instruction_pointer.i, align 8
  %14 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stack.i.i, align 4
  %abi_syscall.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %abi_syscall.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %abi_syscall.i.i, align 4
  %and.i.i = and i32 %17, 1048575
  %18 = ptrtoint ptr %data10.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and.i.i, ptr %data10.i, align 8
  %arrayidx.i71.i = getelementptr i8, ptr %5, i32 16372
  %19 = ptrtoint ptr %arrayidx.i71.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i71.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 16308
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %args.sroa.5.4.copyload.i = load i32, ptr %add.ptr.i.i, align 4
  %args.sroa.7.4.add.ptr.i.sroa_idx.i = getelementptr i8, ptr %5, i32 16312
  %22 = ptrtoint ptr %args.sroa.7.4.add.ptr.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %args.sroa.7.4.copyload.i = load i32, ptr %args.sroa.7.4.add.ptr.i.sroa_idx.i, align 4
  %args.sroa.8.4.add.ptr.i.sroa_idx.i = getelementptr i8, ptr %5, i32 16316
  %23 = ptrtoint ptr %args.sroa.8.4.add.ptr.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %args.sroa.8.4.copyload.i = load i32, ptr %args.sroa.8.4.add.ptr.i.sroa_idx.i, align 4
  %args.sroa.9.4.add.ptr.i.sroa_idx.i = getelementptr i8, ptr %5, i32 16320
  %24 = ptrtoint ptr %args.sroa.9.4.add.ptr.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %args.sroa.9.4.copyload.i = load i32, ptr %args.sroa.9.4.add.ptr.i.sroa_idx.i, align 4
  %args.sroa.10.4.add.ptr.i.sroa_idx.i = getelementptr i8, ptr %5, i32 16324
  %25 = ptrtoint ptr %args.sroa.10.4.add.ptr.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %args.sroa.10.4.copyload.i = load i32, ptr %args.sroa.10.4.add.ptr.i.sroa_idx.i, align 4
  %conv20.i = zext i32 %20 to i64
  %args22.i = getelementptr inbounds %struct.syscall_info, ptr %info, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %args22.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv20.i, ptr %args22.i, align 8
  %conv25.i = zext i32 %args.sroa.5.4.copyload.i to i64
  %arrayidx28.i = getelementptr %struct.syscall_info, ptr %info, i32 0, i32 1, i32 3, i32 1
  %27 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv25.i, ptr %arrayidx28.i, align 8
  %conv30.i = zext i32 %args.sroa.7.4.copyload.i to i64
  %arrayidx33.i = getelementptr %struct.syscall_info, ptr %info, i32 0, i32 1, i32 3, i32 2
  %28 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv30.i, ptr %arrayidx33.i, align 8
  %conv35.i = zext i32 %args.sroa.8.4.copyload.i to i64
  %arrayidx38.i = getelementptr %struct.syscall_info, ptr %info, i32 0, i32 1, i32 3, i32 3
  %29 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv35.i, ptr %arrayidx38.i, align 8
  %conv40.i = zext i32 %args.sroa.9.4.copyload.i to i64
  %arrayidx43.i = getelementptr %struct.syscall_info, ptr %info, i32 0, i32 1, i32 3, i32 4
  %30 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv40.i, ptr %arrayidx43.i, align 8
  %conv45.i = zext i32 %args.sroa.10.4.copyload.i to i64
  %arrayidx48.i = getelementptr %struct.syscall_info, ptr %info, i32 0, i32 1, i32 3, i32 5
  %31 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv45.i, ptr %arrayidx48.i, align 8
  br label %cleanup

do.end:                                           ; preds = %entry
  %32 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %target, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not = icmp eq i32 %33, 0
  br i1 %tobool.not, label %do.end.cleanup_crit_edge, label %if.end6, !prof !9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %call7 = tail call i32 @wait_task_inactive(ptr noundef %target, i32 noundef %33) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %lor.lhs.false, !prof !9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end6
  %stack.i.i46 = getelementptr inbounds %struct.task_struct, ptr %target, i32 0, i32 1
  %34 = ptrtoint ptr %stack.i.i46 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %stack.i.i46, align 4
  %tobool.not.i47 = icmp eq ptr %35, null
  br i1 %tobool.not.i47, label %if.then.i49, label %if.end.i52

if.then.i49:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  %36 = call ptr @memset(ptr %info, i32 0, i32 72)
  %data.i48 = getelementptr inbounds %struct.syscall_info, ptr %info, i32 0, i32 1
  %37 = ptrtoint ptr %data.i48 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %data.i48, align 8
  br label %lor.lhs.false25

if.end.i52:                                       ; preds = %lor.lhs.false
  %add.ptr1.i50 = getelementptr i8, ptr %35, i32 16304
  %tobool2.not.i51 = icmp eq ptr %add.ptr1.i50, null
  br i1 %tobool2.not.i51, label %if.end.i52.cleanup_crit_edge, label %if.end7.i84, !prof !9

if.end.i52.cleanup_crit_edge:                     ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end7.i84:                                      ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx.i.i53 = getelementptr i8, ptr %35, i32 16356
  %38 = ptrtoint ptr %arrayidx.i.i53 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i.i53, align 4
  %conv.i54 = zext i32 %39 to i64
  %40 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv.i54, ptr %info, align 8
  %arrayidx.i55 = getelementptr i8, ptr %35, i32 16364
  %41 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i55, align 4
  %conv9.i56 = zext i32 %42 to i64
  %data10.i57 = getelementptr inbounds %struct.syscall_info, ptr %info, i32 0, i32 1
  %instruction_pointer.i58 = getelementptr inbounds %struct.syscall_info, ptr %info, i32 0, i32 1, i32 2
  %43 = ptrtoint ptr %instruction_pointer.i58 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %conv9.i56, ptr %instruction_pointer.i58, align 8
  %44 = ptrtoint ptr %stack.i.i46 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stack.i.i46, align 4
  %abi_syscall.i.i59 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %abi_syscall.i.i59 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %abi_syscall.i.i59, align 4
  %and.i.i60 = and i32 %47, 1048575
  %48 = ptrtoint ptr %data10.i57 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and.i.i60, ptr %data10.i57, align 8
  %arrayidx.i71.i61 = getelementptr i8, ptr %35, i32 16372
  %49 = ptrtoint ptr %arrayidx.i71.i61 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i71.i61, align 4
  %add.ptr.i.i62 = getelementptr i8, ptr %35, i32 16308
  %51 = ptrtoint ptr %add.ptr.i.i62 to i32
  call void @__asan_load4_noabort(i32 %51)
  %args.sroa.5.4.copyload.i63 = load i32, ptr %add.ptr.i.i62, align 4
  %args.sroa.7.4.add.ptr.i.sroa_idx.i64 = getelementptr i8, ptr %35, i32 16312
  %52 = ptrtoint ptr %args.sroa.7.4.add.ptr.i.sroa_idx.i64 to i32
  call void @__asan_load4_noabort(i32 %52)
  %args.sroa.7.4.copyload.i65 = load i32, ptr %args.sroa.7.4.add.ptr.i.sroa_idx.i64, align 4
  %args.sroa.8.4.add.ptr.i.sroa_idx.i66 = getelementptr i8, ptr %35, i32 16316
  %53 = ptrtoint ptr %args.sroa.8.4.add.ptr.i.sroa_idx.i66 to i32
  call void @__asan_load4_noabort(i32 %53)
  %args.sroa.8.4.copyload.i67 = load i32, ptr %args.sroa.8.4.add.ptr.i.sroa_idx.i66, align 4
  %args.sroa.9.4.add.ptr.i.sroa_idx.i68 = getelementptr i8, ptr %35, i32 16320
  %54 = ptrtoint ptr %args.sroa.9.4.add.ptr.i.sroa_idx.i68 to i32
  call void @__asan_load4_noabort(i32 %54)
  %args.sroa.9.4.copyload.i69 = load i32, ptr %args.sroa.9.4.add.ptr.i.sroa_idx.i68, align 4
  %args.sroa.10.4.add.ptr.i.sroa_idx.i70 = getelementptr i8, ptr %35, i32 16324
  %55 = ptrtoint ptr %args.sroa.10.4.add.ptr.i.sroa_idx.i70 to i32
  call void @__asan_load4_noabort(i32 %55)
  %args.sroa.10.4.copyload.i71 = load i32, ptr %args.sroa.10.4.add.ptr.i.sroa_idx.i70, align 4
  %conv20.i72 = zext i32 %50 to i64
  %args22.i73 = getelementptr inbounds %struct.syscall_info, ptr %info, i32 0, i32 1, i32 3
  %56 = ptrtoint ptr %args22.i73 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %conv20.i72, ptr %args22.i73, align 8
  %conv25.i74 = zext i32 %args.sroa.5.4.copyload.i63 to i64
  %arrayidx28.i75 = getelementptr %struct.syscall_info, ptr %info, i32 0, i32 1, i32 3, i32 1
  %57 = ptrtoint ptr %arrayidx28.i75 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %conv25.i74, ptr %arrayidx28.i75, align 8
  %conv30.i76 = zext i32 %args.sroa.7.4.copyload.i65 to i64
  %arrayidx33.i77 = getelementptr %struct.syscall_info, ptr %info, i32 0, i32 1, i32 3, i32 2
  %58 = ptrtoint ptr %arrayidx33.i77 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %conv30.i76, ptr %arrayidx33.i77, align 8
  %conv35.i78 = zext i32 %args.sroa.8.4.copyload.i67 to i64
  %arrayidx38.i79 = getelementptr %struct.syscall_info, ptr %info, i32 0, i32 1, i32 3, i32 3
  %59 = ptrtoint ptr %arrayidx38.i79 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %conv35.i78, ptr %arrayidx38.i79, align 8
  %conv40.i80 = zext i32 %args.sroa.9.4.copyload.i69 to i64
  %arrayidx43.i81 = getelementptr %struct.syscall_info, ptr %info, i32 0, i32 1, i32 3, i32 4
  %60 = ptrtoint ptr %arrayidx43.i81 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %conv40.i80, ptr %arrayidx43.i81, align 8
  %conv45.i82 = zext i32 %args.sroa.10.4.copyload.i71 to i64
  %arrayidx48.i83 = getelementptr %struct.syscall_info, ptr %info, i32 0, i32 1, i32 3, i32 5
  %61 = ptrtoint ptr %arrayidx48.i83 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %conv45.i82, ptr %arrayidx48.i83, align 8
  br label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %if.end7.i84, %if.then.i49
  %call26 = tail call i32 @wait_task_inactive(ptr noundef %target, i32 noundef %33) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call26, i32 %call7)
  %cmp27.not = icmp eq i32 %call26, %call7
  %spec.select = select i1 %cmp27.not, i32 0, i32 -11, !prof !10
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false25, %if.end.i52.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end7.i, %if.end.i.cleanup_crit_edge, %if.then.i
  %retval.0 = phi i32 [ -11, %do.end.cleanup_crit_edge ], [ -11, %if.end6.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false25 ], [ 0, %if.end7.i ], [ 0, %if.then.i ], [ -11, %if.end.i.cleanup_crit_edge ], [ -11, %if.end.i52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_task_inactive(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind readonly }
attributes #3 = { nounwind uwtable(sync) }
attributes #4 = { nomerge }
attributes #5 = { nounwind }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
