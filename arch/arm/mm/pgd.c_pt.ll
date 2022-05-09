; ModuleID = '/llk/IR_all_yes/arch/arm/mm/pgd.c_pt.bc'
source_filename = "../arch/arm/mm/pgd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mm_struct = type { %struct.anon, [0 x i32] }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.page = type { i32, %union.anon.3, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.47, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.23 }
%struct.llist_node = type { ptr }
%union.anon.23 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.25 }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.47 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@init_mm = external dso_local local_unnamed_addr global %struct.mm_struct, align 8
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"VM_BUG_ON_PAGE(!PageTable(page))\00", [63 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [21 x i8] c"../arch/arm/mm/pgd.c\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 912, i32 1 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pgd_alloc(ptr noundef %mm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 2) #4
  %0 = inttoptr i32 %call to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = call ptr @memset(ptr %0, i32 0, i32 11704)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %add.ptr = getelementptr [2 x i32], ptr %0, i32 1463
  %add.ptr2 = getelementptr [2 x i32], ptr %2, i32 1463
  %3 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr2, i32 4680)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_vtable to i32))
  %4 = load ptr, ptr @cpu_vtable, align 4
  %dcache_clean_area = getelementptr inbounds %struct.processor, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %dcache_clean_area to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dcache_clean_area, align 4
  tail call void %6(ptr noundef nonnull %0, i32 noundef 16384) #4
  %7 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 0\09@ get CR", "=r,~{cc}"() #7, !srcloc !12
  %and = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool18.not = icmp eq i32 %9, 0
  br i1 %tobool18.not, label %land.lhs.true, label %if.end17.cond.end_crit_edge, !prof !13

if.end17.cond.end_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

land.lhs.true:                                    ; preds = %if.end17
  %call22 = tail call i32 @__pte_alloc(ptr noundef %mm, ptr noundef nonnull %0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true.cond.end_crit_edge, label %land.lhs.true.no_p4d_crit_edge

land.lhs.true.no_p4d_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %no_p4d

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true.cond.end_crit_edge, %if.end17.cond.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %10 = load ptr, ptr @mem_map, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 4
  %shr = lshr i32 %12, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %shr, %13
  %add.ptr25 = getelementptr %struct.page, ptr %10, i32 %sub
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %14 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %14, 512
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !14
  %19 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i1.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 213
  %23 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %24, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !15
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr25, i32 noundef %or.i) #4
  %tobool29.not = icmp eq ptr %call.i.i, null
  br i1 %tobool29.not, label %cond.end.no_p4d_crit_edge, label %if.end31

cond.end.no_p4d_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %no_p4d

if.end31:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %0, align 4
  %and32 = and i32 %26, -481
  %or = or i32 %and32, 96
  store i32 %or, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %27 = load ptr, ptr @mem_map, align 4
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %2, align 4
  %shr37 = lshr i32 %29, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %30 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub38 = sub i32 %shr37, %30
  %add.ptr39 = getelementptr %struct.page, ptr %27, i32 %sub38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %31 = load i32, ptr @pgprot_kernel, align 4
  %or.i98 = or i32 %31, 512
  %32 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i.i.i99 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i99 to ptr
  %preempt_count.i.i.i.i100 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i100, align 4
  %add.i.i.i101 = add i32 %35, 1
  store volatile i32 %add.i.i.i101, ptr %preempt_count.i.i.i.i100, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !14
  %36 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i1.i.i102 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i1.i.i102 to ptr
  %task.i.i.i.i103 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task.i.i.i.i103 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task.i.i.i.i103, align 8
  %pagefault_disabled.i.i.i.i104 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 213
  %40 = ptrtoint ptr %pagefault_disabled.i.i.i.i104 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pagefault_disabled.i.i.i.i104, align 8
  %inc.i.i.i.i105 = add i32 %41, 1
  store i32 %inc.i.i.i.i105, ptr %pagefault_disabled.i.i.i.i104, align 8
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !15
  %call.i.i106 = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr39, i32 noundef %or.i98) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_vtable to i32))
  %42 = load ptr, ptr @cpu_vtable, align 4
  %set_pte_ext = getelementptr inbounds %struct.processor, ptr %42, i32 0, i32 9
  %43 = ptrtoint ptr %set_pte_ext to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %set_pte_ext, align 4
  %45 = ptrtoint ptr %call.i.i106 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %call.i.i106, align 4
  tail call void %44(ptr noundef nonnull %call.i.i, i32 noundef %46, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_vtable to i32))
  %47 = load ptr, ptr @cpu_vtable, align 4
  %set_pte_ext44 = getelementptr inbounds %struct.processor, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %set_pte_ext44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %set_pte_ext44, align 4
  %add.ptr45 = getelementptr i32, ptr %call.i.i, i32 1
  %arrayidx46 = getelementptr i32, ptr %call.i.i106, i32 1
  %50 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx46, align 4
  tail call void %49(ptr noundef %add.ptr45, i32 noundef %51, i32 noundef 0) #4
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i106) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !16
  %52 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i1.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 213
  %56 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %57, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !17
  %58 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %61, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @kunmap_local_indexed(ptr noundef nonnull %call.i.i) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !16
  %62 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i1.i107 = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i1.i107 to ptr
  %task.i.i.i108 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %task.i.i.i108 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %task.i.i.i108, align 8
  %pagefault_disabled.i.i.i109 = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 213
  %66 = ptrtoint ptr %pagefault_disabled.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pagefault_disabled.i.i.i109, align 8
  %dec.i.i.i110 = add i32 %67, -1
  store i32 %dec.i.i.i110, ptr %pagefault_disabled.i.i.i109, align 8
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !17
  %68 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i.i111 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i111 to ptr
  %preempt_count.i.i.i112 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i.i112 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i.i112, align 4
  %sub.i.i113 = add i32 %71, -1
  store volatile i32 %sub.i.i113, ptr %preempt_count.i.i.i112, align 4
  br label %cleanup

no_p4d:                                           ; preds = %cond.end.no_p4d_crit_edge, %land.lhs.true.no_p4d_crit_edge
  tail call void @free_pages(i32 noundef %call, i32 noundef 2) #4
  br label %cleanup

cleanup:                                          ; preds = %no_p4d, %if.end31, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %0, %if.end31 ], [ %0, %if.end.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %no_p4d ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pte_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pgd_free(ptr noundef %mm, ptr noundef %pgd_base) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pgd_base, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %pgd_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pgd_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.end.no_pmd_crit_edge, label %if.end.i

if.end.no_pmd_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %no_pmd

if.end.i:                                         ; preds = %if.end
  %and.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end18, label %if.then4.i, !prof !18

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @pmd_clear_bad(ptr noundef nonnull %pgd_base) #4
  br label %no_pmd

if.end18:                                         ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %2 = load ptr, ptr @mem_map, align 4
  %3 = ptrtoint ptr %pgd_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pgd_base, align 4
  %shr = lshr i32 %4, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %5 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %shr, %5
  %add.ptr19 = getelementptr %struct.page, ptr %2, i32 %sub
  store i32 0, ptr %pgd_base, align 4
  %arrayidx20 = getelementptr i32, ptr %pgd_base, i32 1
  %6 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx20, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %7 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr nonnull %pgd_base, i32 %7, i32 1073741824) #4, !srcloc !19
  tail call void @ptlock_free(ptr noundef %add.ptr19) #4
  %8 = getelementptr %struct.page, ptr %2, i32 %sub, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %and.i.i.i.i = and i32 %10, -268434944
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435456, i32 %and.i.i.i.i)
  %cmp.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, -268435456
  br i1 %cmp.i.not.i.i.i, label %__ClearPageTable.exit.i.i, label %if.then.i.i.i, !prof !18

if.then.i.i.i:                                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dump_page(ptr noundef %add.ptr19, ptr noundef nonnull @.str) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 912, 0\0A.popsection", ""() #4, !srcloc !20
  unreachable

__ClearPageTable.exit.i.i:                        ; preds = %if.end18
  %or.i.i.i = or i32 %10, 512
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i.i.i, ptr %8, align 4
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #4, !srcloc !21
  %and.i.i.i.i.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then21.i.i.i.i, label %do.end11.i.i.i.i

do.end11.i.i.i.i:                                 ; preds = %__ClearPageTable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__mod_lruvec_page_state(ptr noundef %add.ptr19, i32 noundef 38, i32 noundef -1) #4
  br label %do.body23.i.i.i.i

if.then21.i.i.i.i:                                ; preds = %__ClearPageTable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @trace_hardirqs_off() #4
  tail call void @__mod_lruvec_page_state(ptr noundef %add.ptr19, i32 noundef 38, i32 noundef -1) #4
  tail call void @trace_hardirqs_on() #4
  br label %do.body23.i.i.i.i

do.body23.i.i.i.i:                                ; preds = %if.then21.i.i.i.i, %do.end11.i.i.i.i
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #4, !srcloc !22
  %and.i.i.i.i.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool32.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i.i, label %if.then36.i.i.i.i, label %do.body23.i.i.i.i.pte_free.exit_crit_edge, !prof !13

do.body23.i.i.i.i.pte_free.exit_crit_edge:        ; preds = %do.body23.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pte_free.exit

if.then36.i.i.i.i:                                ; preds = %do.body23.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @warn_bogus_irq_restore() #4
  br label %pte_free.exit

pte_free.exit:                                    ; preds = %if.then36.i.i.i.i, %do.body23.i.i.i.i.pte_free.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #4, !srcloc !23
  tail call void @__free_pages(ptr noundef %add.ptr19, i32 noundef 0) #4
  %pgtables_bytes.i = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pgtables_bytes.i, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %pgtables_bytes.i, i32 1, i32 3, i32 1) #4
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pgtables_bytes.i, ptr %pgtables_bytes.i, i32 2048, ptr elementtype(i32) %pgtables_bytes.i) #4, !srcloc !24
  br label %no_pmd

no_pmd:                                           ; preds = %pte_free.exit, %if.then4.i, %if.end.no_pmd_crit_edge
  %15 = ptrtoint ptr %pgd_base to i32
  tail call void @free_pages(i32 noundef %15, i32 noundef 2) #4
  br label %cleanup

cleanup:                                          ; preds = %no_pmd, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pmd_clear_bad(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptlock_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_lruvec_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind readonly }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.named.register.sp = !{!0}
!llvm.asan.globals = !{!1}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{!"sp"}
!1 = !{ptr @.str, !2, !"<string literal>", i1 false, i1 false}
!2 = !{!"../include/linux/page-flags.h", i32 912, i32 1}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{i64 6196423}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2153637812}
!15 = !{i64 2152730927}
!16 = !{i64 2152731134}
!17 = !{i64 2153640583}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2152102537, i64 2152102550}
!20 = !{i64 2151030547, i64 2151031038, i64 2151030584, i64 2151030640, i64 2151030674, i64 2151030698, i64 2151030739, i64 2151030760, i64 2151030788, i64 2151030822}
!21 = !{i64 1072560, i64 1072621}
!22 = !{i64 1075292}
!23 = !{i64 1075577}
!24 = !{i64 2148670345, i64 2148670371, i64 2148670400, i64 2148670434, i64 2148670465, i64 2148670488}
