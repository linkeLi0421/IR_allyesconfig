; ModuleID = '/llk/IR_all_yes/mm/page_vma_mapped.c_pt.bc'
source_filename = "../mm/page_vma_mapped.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.page_vma_mapped_walk = type { ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.51, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { %struct.rb_node, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.anon.9 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.page = type { i32, %union.anon, %union.anon.75, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.47, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.anon.81 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }

@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"VM_BUG_ON_PAGE(PageKsm(page))\00", [34 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_ = private constant [24 x i8] c"../mm/page_vma_mapped.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 698, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"../mm/internal.h\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 470, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.2], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @page_vma_mapped_walk(ptr noundef %pvmw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vma = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 1
  %0 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vma, align 4
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_mm, align 4
  %pmd = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 3
  %4 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmd, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %pte = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 4
  %6 = ptrtoint ptr %pte to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pte, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.i.i, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i.i:                                       ; preds = %land.lhs.true
  %ptl.i.i = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 5
  %8 = ptrtoint ptr %ptl.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptl.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %9, null
  br i1 %tobool5.not.i.i, label %if.end.i.i.cleanup197_crit_edge, label %if.end.i.i.cleanup197.sink.split_crit_edge

if.end.i.i.cleanup197.sink.split_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup197.sink.split

if.end.i.i.cleanup197_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup197

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %address33 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 2
  %10 = ptrtoint ptr %address33 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %address33, align 4
  %add = add i32 %11, 4096
  %pte34 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 4
  %12 = ptrtoint ptr %pte34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pte34, align 4
  %tobool35.not = icmp eq ptr %13, null
  br i1 %tobool35.not, label %if.end.restart_crit_edge, label %if.end.next_pte_crit_edge

if.end.next_pte_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %next_pte

if.end.restart_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %restart

restart:                                          ; preds = %do.end160, %if.end.restart_crit_edge
  %pgd38 = getelementptr inbounds %struct.anon.9, ptr %3, i32 0, i32 8
  br label %do.body

do.body:                                          ; preds = %if.end130.do.body_crit_edge, %restart
  %14 = ptrtoint ptr %pgd38 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pgd38, align 4
  %16 = ptrtoint ptr %address33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %address33, align 4
  %shr.i = lshr i32 %17, 21
  %add.ptr.i = getelementptr [2 x i32], ptr %15, i32 %shr.i
  %18 = ptrtoint ptr %pmd to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.i, ptr %pmd, align 4
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool118.not = icmp eq i32 %20, 0
  br i1 %tobool118.not, label %if.end130, label %if.end132

if.end130:                                        ; preds = %do.body
  %add.i = add i32 %17, 2097152
  %and.i = and i32 %add.i, -2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 -1, i32 %and.i
  %21 = ptrtoint ptr %address33 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select.i, ptr %address33, align 4
  %cmp195 = icmp ult i32 %spec.select.i, %add
  br i1 %cmp195, label %if.end130.do.body_crit_edge, label %if.end130.cleanup197_crit_edge

if.end130.cleanup197_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup197

if.end130.do.body_crit_edge:                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.end132:                                        ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %22 = load ptr, ptr @mem_map, align 4
  %shr.i295 = lshr i32 %20, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %23 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %shr.i295, %23
  %add.ptr.i296 = getelementptr %struct.page, ptr %22, i32 %sub.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %24 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %24, 512
  %25 = tail call i32 @llvm.read_register.i32(metadata !8) #4
  %and.i.i.i.i.i.i297 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i.i297 to ptr
  %preempt_count.i.i.i.i.i298 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i.i298 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i.i298, align 4
  %add.i.i.i.i = add i32 %28, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i298, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !18
  %29 = tail call i32 @llvm.read_register.i32(metadata !8) #4
  %and.i.i.i1.i.i.i299 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i1.i.i.i299 to ptr
  %task.i.i.i.i.i300 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task.i.i.i.i.i300 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task.i.i.i.i.i300, align 8
  %pagefault_disabled.i.i.i.i.i301 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 213
  %33 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i301 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pagefault_disabled.i.i.i.i.i301, align 8
  %inc.i.i.i.i.i = add i32 %34, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i301, align 8
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !19
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i296, i32 noundef %or.i.i) #4
  %35 = ptrtoint ptr %address33 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %address33, align 4
  %shr.i.i = lshr i32 %36, 12
  %and.i.i = and i32 %shr.i.i, 511
  %add.ptr2.i = getelementptr i32, ptr %call.i.i.i, i32 %and.i.i
  %37 = ptrtoint ptr %pte34 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr2.i, ptr %pte34, align 4
  %flags.i = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 6
  %38 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i, align 4
  %and3.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i303 = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i303, label %if.then.i, label %if.end132.map_pte.exit_crit_edge

if.end132.map_pte.exit_crit_edge:                 ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #6
  br label %map_pte.exit

if.then.i:                                        ; preds = %if.end132
  %and5.i = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %40 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr2.i, align 4
  br i1 %tobool6.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i.i304 = icmp eq i32 %41, 0
  %and.i57.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i57.i)
  %tobool10.not61.i = icmp ne i32 %and.i57.i, 0
  %tobool10.not.i = or i1 %tobool.not.i.i304, %tobool10.not61.i
  br i1 %tobool10.not.i, label %if.then7.i.next_pte_crit_edge, label %if.then7.i.map_pte.exit_crit_edge

if.then7.i.map_pte.exit_crit_edge:                ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %map_pte.exit

if.then7.i.next_pte_crit_edge:                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %next_pte

if.else.i:                                        ; preds = %if.then.i
  %and.i59.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i59.i)
  %tobool14.not62.i = icmp eq i32 %and.i59.i, 0
  br i1 %tobool14.not62.i, label %if.else.i.next_pte_crit_edge, label %if.else.i.map_pte.exit_crit_edge

if.else.i.map_pte.exit_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %map_pte.exit

if.else.i.next_pte_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %next_pte

map_pte.exit:                                     ; preds = %if.else.i.map_pte.exit_crit_edge, %if.then7.i.map_pte.exit_crit_edge, %if.end132.map_pte.exit_crit_edge
  %42 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pmd, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %44 = load ptr, ptr @mem_map, align 4
  %45 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %43, align 4
  %shr.i60.i = lshr i32 %46, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %47 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i.i = sub i32 %shr.i60.i, %47
  %ptl.i.i.i = getelementptr %struct.page, ptr %44, i32 %sub.i.i, i32 1, i32 0, i32 3
  %48 = ptrtoint ptr %ptl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ptl.i.i.i, align 4
  %ptl.i = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 5
  %50 = ptrtoint ptr %ptl.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %ptl.i, align 4
  br label %this_pte.sink.split

this_pte.sink.split:                              ; preds = %if.then187, %map_pte.exit
  %.sink = phi ptr [ %49, %map_pte.exit ], [ %122, %if.then187 ]
  tail call void @_raw_spin_lock(ptr noundef %.sink) #4
  br label %this_pte

this_pte:                                         ; preds = %do.end184.this_pte_crit_edge, %this_pte.sink.split
  %flags.i305 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 6
  %51 = ptrtoint ptr %flags.i305 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags.i305, align 4
  %and.i306 = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i306)
  %tobool.not.i307 = icmp eq i32 %and.i306, 0
  %53 = ptrtoint ptr %pte34 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pte34, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  br i1 %tobool.not.i307, label %if.else.i311, label %if.then.i310

if.then.i310:                                     ; preds = %this_pte
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i.i308 = icmp eq i32 %56, 0
  %and.i.i309 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i309)
  %tobool2.not85.i = icmp ne i32 %and.i.i309, 0
  %tobool2.not.i = or i1 %tobool.not.i.i308, %tobool2.not85.i
  br i1 %tobool2.not.i, label %if.then.i310.next_pte_crit_edge, label %if.end.i

if.then.i310.next_pte_crit_edge:                  ; preds = %if.then.i310
  call void @__sanitizer_cov_trace_pc() #6
  br label %next_pte

if.end.i:                                         ; preds = %if.then.i310
  %shr3.i.i = lshr i32 %56, 7
  %57 = and i32 %56, 120
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %57)
  %.not.i = icmp eq i32 %57, 120
  br i1 %.not.i, label %if.end.i.check_pte.exit_crit_edge, label %if.end.i.next_pte_crit_edge

if.end.i.next_pte_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %next_pte

if.end.i.check_pte.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %check_pte.exit

if.else.i311:                                     ; preds = %this_pte
  %and.i79.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i79.i)
  %tobool17.not86.i = icmp eq i32 %and.i79.i, 0
  br i1 %tobool17.not86.i, label %if.else.i311.next_pte_crit_edge, label %if.end45.i

if.else.i311.next_pte_crit_edge:                  ; preds = %if.else.i311
  call void @__sanitizer_cov_trace_pc() #6
  br label %next_pte

if.end45.i:                                       ; preds = %if.else.i311
  call void @__sanitizer_cov_trace_pc() #6
  %shr.i312 = lshr i32 %56, 12
  br label %check_pte.exit

check_pte.exit:                                   ; preds = %if.end45.i, %if.end.i.check_pte.exit_crit_edge
  %pfn.2.i = phi i32 [ %shr.i312, %if.end45.i ], [ %shr3.i.i, %if.end.i.check_pte.exit_crit_edge ]
  %58 = ptrtoint ptr %pvmw to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pvmw, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %60 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %61 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %59 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %60 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 36
  %add.i.i = add i32 %sub.ptr.div.i.i, %61
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %pfn.2.i)
  %cmp.i.i = icmp eq i32 %add.i.i, %pfn.2.i
  br i1 %cmp.i.i, label %check_pte.exit.cleanup197_crit_edge, label %check_pte.exit.next_pte_crit_edge

check_pte.exit.next_pte_crit_edge:                ; preds = %check_pte.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %next_pte

check_pte.exit.cleanup197_crit_edge:              ; preds = %check_pte.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup197

next_pte:                                         ; preds = %check_pte.exit.next_pte_crit_edge, %if.else.i311.next_pte_crit_edge, %if.end.i.next_pte_crit_edge, %if.then.i310.next_pte_crit_edge, %if.else.i.next_pte_crit_edge, %if.then7.i.next_pte_crit_edge, %if.end.next_pte_crit_edge
  %flags167 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 6
  %ptl171 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 5
  br label %do.body139

do.body139:                                       ; preds = %do.cond179.do.body139_crit_edge, %next_pte
  %62 = ptrtoint ptr %address33 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %address33, align 4
  %add141 = add i32 %63, 4096
  store i32 %add141, ptr %address33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add141, i32 %add)
  %cmp143.not = icmp ult i32 %add141, %add
  br i1 %cmp143.not, label %if.end146, label %if.then144

if.then144:                                       ; preds = %do.body139
  %64 = ptrtoint ptr %pte34 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pte34, align 4
  %tobool.not.i.i314 = icmp eq ptr %65, null
  br i1 %tobool.not.i.i314, label %if.then144.if.end.i.i325_crit_edge, label %land.lhs.true.i.i322

if.then144.if.end.i.i325_crit_edge:               ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i325

land.lhs.true.i.i322:                             ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kunmap_local_indexed(ptr noundef nonnull %65) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !20
  %66 = tail call i32 @llvm.read_register.i32(metadata !8) #4
  %and.i.i.i1.i.i.i315 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i1.i.i.i315 to ptr
  %task.i.i.i.i.i316 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %task.i.i.i.i.i316 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %task.i.i.i.i.i316, align 8
  %pagefault_disabled.i.i.i.i.i317 = getelementptr inbounds %struct.task_struct, ptr %69, i32 0, i32 213
  %70 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i317 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pagefault_disabled.i.i.i.i.i317, align 8
  %dec.i.i.i.i.i318 = add i32 %71, -1
  store i32 %dec.i.i.i.i.i318, ptr %pagefault_disabled.i.i.i.i.i317, align 8
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !21
  %72 = tail call i32 @llvm.read_register.i32(metadata !8) #4
  %and.i.i.i.i.i.i319 = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i.i.i.i319 to ptr
  %preempt_count.i.i.i.i.i320 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %preempt_count.i.i.i.i.i320 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %preempt_count.i.i.i.i.i320, align 4
  %sub.i.i.i.i321 = add i32 %75, -1
  store volatile i32 %sub.i.i.i.i321, ptr %preempt_count.i.i.i.i.i320, align 4
  br label %if.end.i.i325

if.end.i.i325:                                    ; preds = %land.lhs.true.i.i322, %if.then144.if.end.i.i325_crit_edge
  %76 = ptrtoint ptr %ptl171 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ptl171, align 4
  %tobool5.not.i.i324 = icmp eq ptr %77, null
  br i1 %tobool5.not.i.i324, label %if.end.i.i325.cleanup197_crit_edge, label %if.end.i.i325.cleanup197.sink.split_crit_edge

if.end.i.i325.cleanup197.sink.split_crit_edge:    ; preds = %if.end.i.i325
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup197.sink.split

if.end.i.i325.cleanup197_crit_edge:               ; preds = %if.end.i.i325
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup197

if.end146:                                        ; preds = %do.body139
  %and148 = and i32 %add141, 2093056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %cmp149 = icmp eq i32 %and148, 0
  br i1 %cmp149, label %if.then150, label %if.end165

if.then150:                                       ; preds = %if.end146
  %78 = ptrtoint ptr %ptl171 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ptl171, align 4
  %tobool152.not = icmp eq ptr %79, null
  br i1 %tobool152.not, label %if.then150.do.end160_crit_edge, label %if.then153

if.then150.do.end160_crit_edge:                   ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end160

if.then153:                                       ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock(ptr noundef nonnull %79) #4
  %80 = ptrtoint ptr %ptl171 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %ptl171, align 4
  br label %do.end160

do.end160:                                        ; preds = %if.then153, %if.then150.do.end160_crit_edge
  %81 = ptrtoint ptr %pte34 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pte34, align 4
  tail call void @kunmap_local_indexed(ptr noundef %82) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !20
  %83 = tail call i32 @llvm.read_register.i32(metadata !8) #4
  %and.i.i.i1.i = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 213
  %87 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %88, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !21
  %89 = tail call i32 @llvm.read_register.i32(metadata !8) #4
  %and.i.i.i.i = and i32 %89, -16384
  %90 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i328 = add i32 %92, -1
  store volatile i32 %sub.i.i328, ptr %preempt_count.i.i.i, align 4
  %93 = ptrtoint ptr %pte34 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %pte34, align 4
  br label %restart

if.end165:                                        ; preds = %if.end146
  %94 = ptrtoint ptr %pte34 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pte34, align 4
  %incdec.ptr = getelementptr i32, ptr %95, i32 1
  store ptr %incdec.ptr, ptr %pte34, align 4
  %96 = ptrtoint ptr %flags167 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %flags167, align 4
  %and168 = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %tobool169.not = icmp eq i32 %and168, 0
  br i1 %tobool169.not, label %if.end165.do.cond179_crit_edge, label %land.lhs.true170

if.end165.do.cond179_crit_edge:                   ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.cond179

land.lhs.true170:                                 ; preds = %if.end165
  %98 = ptrtoint ptr %ptl171 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ptl171, align 4
  %tobool172.not = icmp eq ptr %99, null
  br i1 %tobool172.not, label %if.then173, label %land.lhs.true170.do.cond179_crit_edge

land.lhs.true170.do.cond179_crit_edge:            ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.cond179

if.then173:                                       ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #6
  %100 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pmd, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %102 = load ptr, ptr @mem_map, align 4
  %103 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %101, align 4
  %shr.i329 = lshr i32 %104, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %105 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i330 = sub i32 %shr.i329, %105
  %ptl.i.i331 = getelementptr %struct.page, ptr %102, i32 %sub.i330, i32 1, i32 0, i32 3
  %106 = ptrtoint ptr %ptl.i.i331 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ptl.i.i331, align 4
  %108 = ptrtoint ptr %ptl171 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %107, ptr %ptl171, align 4
  tail call void @_raw_spin_lock(ptr noundef %107) #4
  br label %do.cond179

do.cond179:                                       ; preds = %if.then173, %land.lhs.true170.do.cond179_crit_edge, %if.end165.do.cond179_crit_edge
  %109 = ptrtoint ptr %pte34 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pte34, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 4
  %tobool181.not = icmp eq i32 %112, 0
  br i1 %tobool181.not, label %do.cond179.do.body139_crit_edge, label %do.end184

do.cond179.do.body139_crit_edge:                  ; preds = %do.cond179
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body139

do.end184:                                        ; preds = %do.cond179
  %113 = ptrtoint ptr %ptl171 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ptl171, align 4
  %tobool186.not = icmp eq ptr %114, null
  br i1 %tobool186.not, label %if.then187, label %do.end184.this_pte_crit_edge

do.end184.this_pte_crit_edge:                     ; preds = %do.end184
  call void @__sanitizer_cov_trace_pc() #6
  br label %this_pte

if.then187:                                       ; preds = %do.end184
  call void @__sanitizer_cov_trace_pc() #6
  %115 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pmd, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %117 = load ptr, ptr @mem_map, align 4
  %118 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %116, align 4
  %shr.i332 = lshr i32 %119, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %120 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i333 = sub i32 %shr.i332, %120
  %ptl.i.i334 = getelementptr %struct.page, ptr %117, i32 %sub.i333, i32 1, i32 0, i32 3
  %121 = ptrtoint ptr %ptl.i.i334 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ptl.i.i334, align 4
  %123 = ptrtoint ptr %ptl171 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %122, ptr %ptl171, align 4
  br label %this_pte.sink.split

cleanup197.sink.split:                            ; preds = %if.end.i.i325.cleanup197.sink.split_crit_edge, %if.end.i.i.cleanup197.sink.split_crit_edge
  %.sink340 = phi ptr [ %9, %if.end.i.i.cleanup197.sink.split_crit_edge ], [ %77, %if.end.i.i325.cleanup197.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull %.sink340) #4
  br label %cleanup197

cleanup197:                                       ; preds = %cleanup197.sink.split, %if.end.i.i325.cleanup197_crit_edge, %check_pte.exit.cleanup197_crit_edge, %if.end130.cleanup197_crit_edge, %if.end.i.i.cleanup197_crit_edge
  %retval.1 = phi i1 [ true, %check_pte.exit.cleanup197_crit_edge ], [ false, %if.end.i.i.cleanup197_crit_edge ], [ false, %if.end.i.i325.cleanup197_crit_edge ], [ false, %cleanup197.sink.split ], [ false, %if.end130.cleanup197_crit_edge ]
  ret i1 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @page_mapped_in_vma(ptr noundef %page, ptr noundef %vma) local_unnamed_addr #0 align 64 {
entry:
  %pvmw = alloca %struct.page_vma_mapped_walk, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pvmw) #4
  %0 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 1
  %1 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 2
  %2 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 4
  %3 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 5
  %4 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 6
  %5 = ptrtoint ptr %pvmw to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %page, ptr %pvmw, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %vma, ptr %0, align 4
  %7 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 3
  %8 = call ptr @memset(ptr %7, i32 0, i32 12)
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %4, align 4
  %10 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i2.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !22

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i.i.i = add i32 %12, -1
  br label %PageKsm.exit.i

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %page to i32
  br label %PageKsm.exit.i

PageKsm.exit.i:                                   ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %13, %if.end.i.i.i ]
  %14 = inttoptr i32 %retval.0.i.i.i to ptr
  %mapping.i.i.i = getelementptr inbounds %struct.anon.81, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mapping.i.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  %and.i.i.i = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 3
  br i1 %cmp.i.i.i, label %if.then.i, label %do.end7.i, !prof !23

if.then.i:                                        ; preds = %PageKsm.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.2) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/internal.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 441, 0\0A.popsection", ""() #4, !srcloc !24
  unreachable

do.end7.i:                                        ; preds = %PageKsm.exit.i
  %index.i.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i.i.i, align 4
  %vm_pgoff.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %20 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vm_pgoff.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp.not.i = icmp ult i32 %19, %21
  br i1 %cmp.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %do.end7.i
  %22 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vma, align 4
  %sub.i = sub i32 %19, %21
  %shl.i = shl i32 %sub.i, 12
  %add.i = add i32 %23, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %23)
  %cmp12.i = icmp ult i32 %add.i, %23
  br i1 %cmp12.i, label %if.then9.i.cleanup_crit_edge, label %lor.lhs.false.i

if.then9.i.cleanup_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.then9.i
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %24 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vm_end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %25)
  %cmp13.not.i = icmp ult i32 %add.i, %25
  br i1 %cmp13.not.i, label %lor.lhs.false.i.vma_address.exit_crit_edge, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.i.vma_address.exit_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vma_address.exit

if.else.i:                                        ; preds = %do.end7.i
  %26 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp.i.not.i.i = icmp eq i32 %27, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %PageHead.exit.i, !prof !23

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #4, !srcloc !25
  unreachable

PageHead.exit.i:                                  ; preds = %if.else.i
  %28 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %page, align 4
  %30 = and i32 %29, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool17.not.i = icmp eq i32 %30, 0
  br i1 %tobool17.not.i, label %PageHead.exit.i.cleanup_crit_edge, label %land.lhs.true.i

PageHead.exit.i.cleanup_crit_edge:                ; preds = %PageHead.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.i:                                  ; preds = %PageHead.exit.i
  %31 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp.i.not.i.i.i = icmp eq i32 %32, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i42.i, label %PageHead.exit.i.i, !prof !23

if.then.i.i42.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #4, !srcloc !25
  unreachable

PageHead.exit.i.i:                                ; preds = %land.lhs.true.i
  %33 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %page, align 4
  %35 = and i32 %34, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i.i, label %PageHead.exit.i.i.compound_nr.exit.i_crit_edge, label %if.end.i.i

PageHead.exit.i.i.compound_nr.exit.i_crit_edge:   ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %compound_nr.exit.i

if.end.i.i:                                       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %compound_nr.i.i = getelementptr %struct.page, ptr %page, i32 1, i32 1, i32 0, i32 2
  %36 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %compound_nr.i.i, align 4
  br label %compound_nr.exit.i

compound_nr.exit.i:                               ; preds = %if.end.i.i, %PageHead.exit.i.i.compound_nr.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %37, %if.end.i.i ], [ 1, %PageHead.exit.i.i.compound_nr.exit.i_crit_edge ]
  %add19.i = add i32 %19, -1
  %sub20.i = add i32 %add19.i, %retval.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub20.i, i32 %21)
  %cmp22.not.i = icmp ult i32 %sub20.i, %21
  br i1 %cmp22.not.i, label %compound_nr.exit.i.cleanup_crit_edge, label %if.then23.i

compound_nr.exit.i.cleanup_crit_edge:             ; preds = %compound_nr.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then23.i:                                      ; preds = %compound_nr.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vma, align 4
  br label %vma_address.exit

vma_address.exit:                                 ; preds = %if.then23.i, %lor.lhs.false.i.vma_address.exit_crit_edge
  %address.0.i = phi i32 [ %add.i, %lor.lhs.false.i.vma_address.exit_crit_edge ], [ %39, %if.then23.i ]
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %address.0.i, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %address.0.i)
  %cmp = icmp eq i32 %address.0.i, -14
  br i1 %cmp, label %vma_address.exit.cleanup_crit_edge, label %if.end

vma_address.exit.cleanup_crit_edge:               ; preds = %vma_address.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %vma_address.exit
  %call5 = call zeroext i1 @page_vma_mapped_walk(ptr noundef nonnull %pvmw)
  br i1 %call5, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %2, align 4
  %tobool.not.i = icmp eq ptr %42, null
  br i1 %tobool.not.i, label %if.end7.if.end.i_crit_edge, label %land.lhs.true.i11

if.end7.if.end.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.lhs.true.i11:                                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  call void @kunmap_local_indexed(ptr noundef nonnull %42) #4
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !20
  %43 = call i32 @llvm.read_register.i32(metadata !8) #4
  %and.i.i.i1.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 213
  %47 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %48, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !21
  %49 = call i32 @llvm.read_register.i32(metadata !8) #4
  %and.i.i.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i10 = add i32 %52, -1
  store volatile i32 %sub.i.i.i10, ptr %preempt_count.i.i.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i11, %if.end7.if.end.i_crit_edge
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %3, align 4
  %tobool5.not.i = icmp eq ptr %54, null
  br i1 %tobool5.not.i, label %if.end.i.cleanup_crit_edge, label %if.then6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @_raw_spin_unlock(ptr noundef nonnull %54) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then6.i, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %vma_address.exit.cleanup_crit_edge, %compound_nr.exit.i.cleanup_crit_edge, %PageHead.exit.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.then9.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %vma_address.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.end.i.cleanup_crit_edge ], [ 1, %if.then6.i ], [ 0, %compound_nr.exit.i.cleanup_crit_edge ], [ 0, %PageHead.exit.i.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %if.then9.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pvmw) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.named.register.sp = !{!8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!2 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../include/linux/huge_mm.h", i32 347, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../mm/internal.h", i32 470, i32 2}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
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
!18 = !{i64 2154116603}
!19 = !{i64 2152735295}
!20 = !{i64 2152735502}
!21 = !{i64 2154119374}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i64 2154939707, i64 2154940185, i64 2154939744, i64 2154939800, i64 2154939834, i64 2154939858, i64 2154939899, i64 2154939920, i64 2154939948, i64 2154939982}
!25 = !{i64 2150994032, i64 2150994523, i64 2150994069, i64 2150994125, i64 2150994159, i64 2150994183, i64 2150994224, i64 2150994245, i64 2150994273, i64 2150994307}
