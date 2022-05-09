; ModuleID = '/llk/IR_all_yes/arch/arm/mm/mmap.c_pt.bc'
source_filename = "../arch/arm/mm/mmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vm_unmapped_area_info = type { i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.14 }
%struct.llist_node = type { ptr }
%union.anon.14 = type { i32 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
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
%union.anon.54 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.17, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.anon.16 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@cacheid = external dso_local local_unnamed_addr global i32, align 4
@stack_guard_gap = external dso_local local_unnamed_addr global i32, align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arch_get_unmapped_area(ptr noundef readnone %filp, i32 noundef %addr, i32 noundef %len, i32 noundef %pgoff, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.vm_unmapped_area_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #6
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %6 = load i32, ptr @cacheid, align 4
  %and2.i = and i32 %6, 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %info) #6
  %7 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %info, i32 0, i32 1
  %8 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %info, i32 0, i32 2
  %9 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %info, i32 0, i32 3
  %10 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %info, i32 0, i32 4
  %11 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %info, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not = icmp eq i32 %and2.i, 0
  %tobool3.not = icmp eq ptr %filp, null
  %and = and i32 %flags, 1
  %spec.select = select i1 %tobool3.not, i32 %and, i32 1
  %do_align.0 = select i1 %tobool.not, i32 0, i32 %spec.select
  %and5 = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end16, label %if.then7

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool10.not, %tobool.not
  br i1 %or.cond, label %if.then7.if.end15_crit_edge, label %land.lhs.true11

if.then7.if.end15_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.lhs.true11:                                  ; preds = %if.then7
  %shl.neg = mul i32 %pgoff, 12288
  %sub = add i32 %shl.neg, %addr
  %and12 = and i32 %sub, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %land.lhs.true11.if.end15_crit_edge, label %land.lhs.true11.cleanup_crit_edge

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true11.if.end15_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true11.if.end15_crit_edge, %if.then7.if.end15_crit_edge
  br label %cleanup

if.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833920, i32 %len)
  %cmp = icmp ugt i32 %len, -1226833920
  br i1 %cmp, label %if.end16.cleanup_crit_edge, label %if.end18

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addr)
  %tobool19.not = icmp eq i32 %addr, 0
  br i1 %tobool19.not, label %if.end18.if.end41_crit_edge, label %if.then20

if.end18.if.end41_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_align.0)
  %tobool21.not = icmp eq i32 %do_align.0, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %sub23 = add i32 %addr, 16383
  %and24 = and i32 %sub23, -16384
  %shl25 = shl i32 %pgoff, 12
  %and26 = and i32 %shl25, 12288
  %add27 = or i32 %and26, %and24
  br label %if.end30

if.else:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %add28 = add i32 %addr, 4095
  %and29 = and i32 %add28, -4096
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then22
  %addr.addr.0 = phi i32 [ %add27, %if.then22 ], [ %and29, %if.else ]
  %call31 = tail call ptr @find_vma(ptr noundef %5, i32 noundef %addr.addr.0) #6
  %sub32 = sub nuw i32 -1226833920, %len
  call void @__sanitizer_cov_trace_cmp4(i32 %sub32, i32 %addr.addr.0)
  %cmp33.not = icmp ult i32 %sub32, %addr.addr.0
  br i1 %cmp33.not, label %if.end30.if.end41_crit_edge, label %land.lhs.true34

if.end30.if.end41_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

land.lhs.true34:                                  ; preds = %if.end30
  %tobool35.not = icmp eq ptr %call31, null
  br i1 %tobool35.not, label %land.lhs.true34.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true34.cleanup_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true34
  %add36 = add i32 %addr.addr.0, %len
  %12 = ptrtoint ptr %call31 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call31, align 4
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %call31, i32 0, i32 8
  %14 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vm_flags.i, align 4
  %and.i69 = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i69)
  %tobool.not.i = icmp eq i32 %and.i69, 0
  br i1 %tobool.not.i, label %lor.lhs.false.vm_start_gap.exit_crit_edge, label %if.then.i

lor.lhs.false.vm_start_gap.exit_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %vm_start_gap.exit

if.then.i:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stack_guard_gap to i32))
  %16 = load i32, ptr @stack_guard_gap, align 4
  %17 = tail call i32 @llvm.usub.sat.i32(i32 %13, i32 %16) #6
  br label %vm_start_gap.exit

vm_start_gap.exit:                                ; preds = %if.then.i, %lor.lhs.false.vm_start_gap.exit_crit_edge
  %vm_start.0.i = phi i32 [ %17, %if.then.i ], [ %13, %lor.lhs.false.vm_start_gap.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add36, i32 %vm_start.0.i)
  %cmp38.not = icmp ugt i32 %add36, %vm_start.0.i
  br i1 %cmp38.not, label %vm_start_gap.exit.if.end41_crit_edge, label %vm_start_gap.exit.cleanup_crit_edge

vm_start_gap.exit.cleanup_crit_edge:              ; preds = %vm_start_gap.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

vm_start_gap.exit.if.end41_crit_edge:             ; preds = %vm_start_gap.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.end41:                                         ; preds = %vm_start_gap.exit.if.end41_crit_edge, %if.end30.if.end41_crit_edge, %if.end18.if.end41_crit_edge
  %18 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %info, align 4
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %len, ptr %7, align 4
  %mmap_base = getelementptr inbounds %struct.anon.16, ptr %5, i32 0, i32 4
  %20 = ptrtoint ptr %mmap_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mmap_base, align 4
  %22 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %8, align 4
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1226833920, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_align.0)
  %tobool43.not = icmp eq i32 %do_align.0, 0
  %cond = select i1 %tobool43.not, i32 0, i32 12288
  %24 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond, ptr %10, align 4
  %shl44 = shl i32 %pgoff, 12
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shl44, ptr %11, align 4
  %call45 = call i32 @vm_unmapped_area(ptr noundef nonnull %info) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %vm_start_gap.exit.cleanup_crit_edge, %land.lhs.true34.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end15, %land.lhs.true11.cleanup_crit_edge
  %retval.0 = phi i32 [ %addr, %if.end15 ], [ %call45, %if.end41 ], [ -22, %land.lhs.true11.cleanup_crit_edge ], [ -12, %if.end16.cleanup_crit_edge ], [ %addr.addr.0, %vm_start_gap.exit.cleanup_crit_edge ], [ %addr.addr.0, %land.lhs.true34.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %info) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_unmapped_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arch_get_unmapped_area_topdown(ptr noundef readnone %filp, i32 noundef %addr0, i32 noundef %len, i32 noundef %pgoff, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.vm_unmapped_area_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #6
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %6 = load i32, ptr @cacheid, align 4
  %and2.i = and i32 %6, 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %info) #6
  %7 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %info, i32 0, i32 1
  %8 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %info, i32 0, i32 2
  %9 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %info, i32 0, i32 3
  %10 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %info, i32 0, i32 4
  %11 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %info, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not = icmp eq i32 %and2.i, 0
  %tobool3.not = icmp eq ptr %filp, null
  %and = and i32 %flags, 1
  %spec.select = select i1 %tobool3.not, i32 %and, i32 1
  %do_align.0 = select i1 %tobool.not, i32 0, i32 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833920, i32 %len)
  %cmp = icmp ugt i32 %len, -1226833920
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %entry
  %and7 = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end18, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool12.not, %tobool.not
  br i1 %or.cond, label %if.then9.if.end17_crit_edge, label %land.lhs.true13

if.then9.if.end17_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

land.lhs.true13:                                  ; preds = %if.then9
  %shl.neg = mul i32 %pgoff, 12288
  %sub = add i32 %shl.neg, %addr0
  %and14 = and i32 %sub, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %land.lhs.true13.if.end17_crit_edge, label %land.lhs.true13.cleanup_crit_edge

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true13.if.end17_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true13.if.end17_crit_edge, %if.then9.if.end17_crit_edge
  br label %cleanup

if.end18:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addr0)
  %tobool19.not = icmp eq i32 %addr0, 0
  br i1 %tobool19.not, label %if.end18.if.end41_crit_edge, label %if.then20

if.end18.if.end41_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_align.0)
  %tobool21.not = icmp eq i32 %do_align.0, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %sub23 = add i32 %addr0, 16383
  %and24 = and i32 %sub23, -16384
  %shl25 = shl i32 %pgoff, 12
  %and26 = and i32 %shl25, 12288
  %add27 = or i32 %and26, %and24
  br label %if.end30

if.else:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %add28 = add i32 %addr0, 4095
  %and29 = and i32 %add28, -4096
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then22
  %addr.0 = phi i32 [ %add27, %if.then22 ], [ %and29, %if.else ]
  %call31 = tail call ptr @find_vma(ptr noundef %5, i32 noundef %addr.0) #6
  %sub32 = sub nuw i32 -1226833920, %len
  call void @__sanitizer_cov_trace_cmp4(i32 %sub32, i32 %addr.0)
  %cmp33.not = icmp ult i32 %sub32, %addr.0
  br i1 %cmp33.not, label %if.end30.if.end41_crit_edge, label %land.lhs.true34

if.end30.if.end41_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

land.lhs.true34:                                  ; preds = %if.end30
  %tobool35.not = icmp eq ptr %call31, null
  br i1 %tobool35.not, label %land.lhs.true34.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true34.cleanup_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true34
  %add36 = add i32 %addr.0, %len
  %12 = ptrtoint ptr %call31 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call31, align 4
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %call31, i32 0, i32 8
  %14 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vm_flags.i, align 4
  %and.i94 = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i94)
  %tobool.not.i = icmp eq i32 %and.i94, 0
  br i1 %tobool.not.i, label %lor.lhs.false.vm_start_gap.exit_crit_edge, label %if.then.i

lor.lhs.false.vm_start_gap.exit_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %vm_start_gap.exit

if.then.i:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stack_guard_gap to i32))
  %16 = load i32, ptr @stack_guard_gap, align 4
  %17 = tail call i32 @llvm.usub.sat.i32(i32 %13, i32 %16) #6
  br label %vm_start_gap.exit

vm_start_gap.exit:                                ; preds = %if.then.i, %lor.lhs.false.vm_start_gap.exit_crit_edge
  %vm_start.0.i = phi i32 [ %17, %if.then.i ], [ %13, %lor.lhs.false.vm_start_gap.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add36, i32 %vm_start.0.i)
  %cmp38.not = icmp ugt i32 %add36, %vm_start.0.i
  br i1 %cmp38.not, label %vm_start_gap.exit.if.end41_crit_edge, label %vm_start_gap.exit.cleanup_crit_edge

vm_start_gap.exit.cleanup_crit_edge:              ; preds = %vm_start_gap.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

vm_start_gap.exit.if.end41_crit_edge:             ; preds = %vm_start_gap.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.end41:                                         ; preds = %vm_start_gap.exit.if.end41_crit_edge, %if.end30.if.end41_crit_edge, %if.end18.if.end41_crit_edge
  %18 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %info, align 4
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %len, ptr %7, align 4
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8192, ptr %8, align 4
  %mmap_base = getelementptr inbounds %struct.anon.16, ptr %5, i32 0, i32 4
  %21 = ptrtoint ptr %mmap_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mmap_base, align 4
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_align.0)
  %tobool43.not = icmp eq i32 %do_align.0, 0
  %cond = select i1 %tobool43.not, i32 0, i32 12288
  %24 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond, ptr %10, align 4
  %shl44 = shl i32 %pgoff, 12
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shl44, ptr %11, align 4
  %call45 = call i32 @vm_unmapped_area(ptr noundef nonnull %info) #6
  %and46 = and i32 %call45, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end41.cleanup_crit_edge, label %do.body

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call45)
  %cmp49.not = icmp eq i32 %call45, -12
  br i1 %cmp49.not, label %do.end59, label %do.body53, !prof !10

do.body53:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/mmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 137, 0\0A.popsection", ""() #6, !srcloc !11
  unreachable

do.end59:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %info, align 4
  %27 = ptrtoint ptr %mmap_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mmap_base, align 4
  %29 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %8, align 4
  %30 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1226833920, ptr %9, align 4
  %call64 = call i32 @vm_unmapped_area(ptr noundef nonnull %info) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %if.end41.cleanup_crit_edge, %vm_start_gap.exit.cleanup_crit_edge, %land.lhs.true34.cleanup_crit_edge, %if.end17, %land.lhs.true13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %addr0, %if.end17 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true13.cleanup_crit_edge ], [ %addr.0, %vm_start_gap.exit.cleanup_crit_edge ], [ %addr.0, %land.lhs.true34.cleanup_crit_edge ], [ %call64, %do.end59 ], [ %call45, %if.end41.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %info) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @valid_phys_addr_range(i32 noundef %addr, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %0 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %shl = shl i32 %0, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %addr)
  %cmp = icmp ugt i32 %shl, %addr
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %size, %addr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %1 = load ptr, ptr @high_memory, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -1
  %2 = ptrtoint ptr %add.ptr to i32
  %call = tail call i32 @__virt_to_phys(i32 noundef %2) #6
  %add1 = add i32 %call, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add1)
  %cmp2 = icmp ule i32 %add, %add1
  %. = zext i1 %cmp2 to i32
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @valid_mmap_phys_addr_range(i32 noundef %pfn, i32 noundef %size) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %size, 12
  %add = add i32 %shr, %pfn
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048577, i32 %add)
  %cmp = icmp ult i32 %add, 1048577
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

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
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2153507949, i64 2153508432, i64 2153507986, i64 2153508042, i64 2153508076, i64 2153508100, i64 2153508141, i64 2153508162, i64 2153508190, i64 2153508224}
