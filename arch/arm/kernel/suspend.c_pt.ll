; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/suspend.c_pt.bc'
source_filename = "../arch/arm/kernel/suspend.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sleep_save_sp = type { ptr, i32 }
%struct.mpidr_hash = type { i32, [3 x i32], i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.50, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.26 }
%struct.llist_node = type { ptr }
%union.anon.26 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
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
%union.anon.50 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@idmap_pgd = external dso_local local_unnamed_addr global ptr, align 4
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@__initcall__kmod_suspend__237_122_cpu_suspend_alloc_spearly = internal global ptr @cpu_suspend_alloc_sp, section ".initcallearly.init", align 4
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"arch/arm/kernel/suspend.c\00", [38 x i8] zeroinitializer }, align 32
@sleep_save_sp = external dso_local global %struct.sleep_save_sp, align 4
@mpidr_hash = external dso_local local_unnamed_addr global %struct.mpidr_hash, align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [29 x i8] c"../arch/arm/kernel/suspend.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 115, i32 6 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_suspend__237_122_cpu_suspend_alloc_spearly, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpu_suspend(i32 noundef %arg, ptr noundef %fn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !4) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %active_mm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %active_mm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %active_mm, align 4
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @idmap_pgd to i32))
  %6 = load ptr, ptr @idmap_pgd, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %call2 = tail call i32 @__cpu_suspend(i32 noundef %arg, ptr noundef %fn, i32 noundef %10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu, align 4
  %arrayidx6 = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx6, align 4
  %switch_mm = getelementptr inbounds %struct.processor, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %switch_mm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %switch_mm, align 4
  %pgd = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 8
  %17 = ptrtoint ptr %pgd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pgd, align 4
  %19 = ptrtoint ptr %18 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %19) #5
  tail call void %16(i32 noundef %call.i, ptr noundef %5) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %20 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  %and1.i.i = and i32 %20, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i.i, label %if.then3.__local_flush_bp_all.exit.i_crit_edge, label %if.then.i.i

if.then3.__local_flush_bp_all.exit.i_crit_edge:   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %__local_flush_bp_all.exit.i

if.then.i.i:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 6", "r"(i32 0) #5, !srcloc !14
  br label %__local_flush_bp_all.exit.i

__local_flush_bp_all.exit.i:                      ; preds = %if.then.i.i, %if.then3.__local_flush_bp_all.exit.i_crit_edge
  %and1.i = and i32 %20, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %__local_flush_bp_all.exit.i.local_flush_bp_all.exit_crit_edge, label %if.then.i

__local_flush_bp_all.exit.i.local_flush_bp_all.exit_crit_edge: ; preds = %__local_flush_bp_all.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %local_flush_bp_all.exit

if.then.i:                                        ; preds = %__local_flush_bp_all.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 6", "r"(i32 0) #5, !srcloc !15
  br label %local_flush_bp_all.exit

local_flush_bp_all.exit:                          ; preds = %if.then.i, %__local_flush_bp_all.exit.i.local_flush_bp_all.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %21 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %22 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %22, i32 4608) #5, !srcloc !17
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 0", "r,r,Ir,~{cc}"(i32 0, i32 %22, i32 9216) #5, !srcloc !18
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 0", "r,r,Ir,~{cc}"(i32 0, i32 %22, i32 18432) #5, !srcloc !19
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %21, i32 2097152) #5, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @check_other_bugs() #5
  br label %cleanup

cleanup:                                          ; preds = %local_flush_bp_all.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %local_flush_bp_all.exit ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpu_suspend(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @check_other_bugs() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__cpu_suspend_save(ptr noundef %ptr, i32 noundef %ptrsz, i32 noundef %sp, ptr noundef %save_ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %0) #5
  %1 = ptrtoint ptr %save_ptr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call.i, ptr %save_ptr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @idmap_pgd to i32))
  %2 = load ptr, ptr @idmap_pgd, align 4
  %3 = ptrtoint ptr %2 to i32
  %call.i23 = tail call i32 @__virt_to_phys(i32 noundef %3) #5
  %incdec.ptr = getelementptr i32, ptr %ptr, i32 1
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call.i23, ptr %ptr, align 4
  %incdec.ptr2 = getelementptr i32, ptr %ptr, i32 2
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sp, ptr %incdec.ptr, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !4) #5
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %do_resume = getelementptr inbounds %struct.processor, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %do_resume to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %do_resume, align 4
  %14 = ptrtoint ptr %13 to i32
  %call.i24 = tail call i32 @__virt_to_phys(i32 noundef %14) #5
  %incdec.ptr5 = getelementptr i32, ptr %ptr, i32 3
  %15 = ptrtoint ptr %incdec.ptr2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call.i24, ptr %incdec.ptr2, align 4
  %16 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu, align 4
  %arrayidx8 = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx8, align 4
  %do_suspend = getelementptr inbounds %struct.processor, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %do_suspend to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %do_suspend, align 4
  tail call void %21(ptr noundef %incdec.ptr5) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 2) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 2), align 4
  tail call void %22() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %23(ptr noundef %ptr, i32 noundef %ptrsz) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %24(ptr noundef %save_ptr, i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %entry.outer_clean_range.exit_crit_edge, label %if.then.i

entry.outer_clean_range.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %outer_clean_range.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %save_ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %save_ptr, align 4
  %add = add i32 %27, %ptrsz
  tail call void %25(i32 noundef %27, i32 noundef %add) #5
  br label %outer_clean_range.exit

outer_clean_range.exit:                           ; preds = %if.then.i, %entry.outer_clean_range.exit_crit_edge
  %28 = ptrtoint ptr %save_ptr to i32
  %call.i25 = tail call i32 @__virt_to_phys(i32 noundef %28) #5
  %call.i26 = tail call i32 @__virt_to_phys(i32 noundef %28) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i27 = icmp eq ptr %29, null
  br i1 %tobool.not.i27, label %outer_clean_range.exit.outer_clean_range.exit29_crit_edge, label %if.then.i28

outer_clean_range.exit.outer_clean_range.exit29_crit_edge: ; preds = %outer_clean_range.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %outer_clean_range.exit29

if.then.i28:                                      ; preds = %outer_clean_range.exit
  call void @__sanitizer_cov_trace_pc() #7
  %add11 = add i32 %call.i26, 4
  tail call void %29(i32 noundef %call.i25, i32 noundef %add11) #5
  br label %outer_clean_range.exit29

outer_clean_range.exit29:                         ; preds = %if.then.i28, %outer_clean_range.exit.outer_clean_range.exit29_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu_suspend_alloc_sp() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.mpidr_hash, ptr @mpidr_hash, i32 0, i32 2) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.mpidr_hash, ptr @mpidr_hash, i32 0, i32 2), align 4
  %shl.i = shl nuw i32 1, %0
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shl.i, i32 4) #5
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %entry.do.end_crit_edge, label %if.end7.i.i, !prof !23

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end7.i.i:                                      ; preds = %entry
  %3 = extractvalue { i32, i1 } %1, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.do.end_crit_edge, label %if.end24, !prof !23

if.end7.i.i.do.end_crit_edge:                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %if.end7.i.i.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 115, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end24:                                         ; preds = %if.end7.i.i
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @sleep_save_sp to i32))
  store ptr %call8.i.i, ptr @sleep_save_sp, align 4
  %4 = ptrtoint ptr %call8.i.i to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %4) #5
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sleep_save_sp, ptr @sleep_save_sp, i32 0, i32 1) to i32))
  store i32 %call.i, ptr getelementptr inbounds (%struct.sleep_save_sp, ptr @sleep_save_sp, i32 0, i32 1), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %5(ptr noundef nonnull @sleep_save_sp, i32 noundef 8) #5
  %call.i29 = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @sleep_save_sp to i32)) #5
  %call1.i = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr getelementptr inbounds (%struct.sleep_save_sp, ptr @sleep_save_sp, i32 1, i32 0) to i32)) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end24.cleanup_crit_edge, label %if.then.i.i

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %6(i32 noundef %call.i29, i32 noundef %call1.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end24.cleanup_crit_edge ], [ 0, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind readonly }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2}
!llvm.named.register.sp = !{!4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @__initcall__kmod_suspend__237_122_cpu_suspend_alloc_spearly, !1, !"__initcall__kmod_suspend__237_122_cpu_suspend_alloc_spearly", i1 false, i1 false}
!1 = !{!"../arch/arm/kernel/suspend.c", i32 122, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/kernel/suspend.c", i32 115, i32 6}
!4 = !{!"sp"}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{i64 4554570}
!15 = !{i64 4554797}
!16 = !{i64 2152052429}
!17 = !{i64 2152043776, i64 2152043789}
!18 = !{i64 2152046054, i64 2152046067}
!19 = !{i64 2152048335, i64 2152048348}
!20 = !{i64 2152052725, i64 2152052738}
!21 = !{i64 2152056596}
!22 = !{i64 2152056681}
!23 = !{!"branch_weights", i32 1, i32 2000}
