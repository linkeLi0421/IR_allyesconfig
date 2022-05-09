; ModuleID = '/llk/IR_all_yes/arch/arm/mm/copypage-v6.c_pt.bc'
source_filename = "../arch/arm/mm/copypage-v6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpu_user_fns = type { ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.47, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%union.anon.47 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.page = type { i32, %union.anon, %union.anon.63, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }

@v6_user_fns = dso_local local_unnamed_addr global %struct.cpu_user_fns { ptr @v6_clear_user_highpage_nonaliasing, ptr @v6_copy_user_highpage_nonaliasing }, section ".init.data", align 4
@__initcall__kmod_copypage_v6__237_137_v6_userpage_init1 = internal global ptr @v6_userpage_init, section ".initcall1.init", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@cpu_user = external dso_local local_unnamed_addr global %struct.cpu_user_fns, align 4
@cacheid = external dso_local local_unnamed_addr global i32, align 4
@v6_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"v6_lock\00", [24 x i8] zeroinitializer }, align 32
@top_pmd = external dso_local local_unnamed_addr global ptr, align 4
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [8 x i8] c"v6_lock\00", align 1
@___asan_gen_.7 = private constant [29 x i8] c"../arch/arm/mm/copypage-v6.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 24, i32 8 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 260, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @__initcall__kmod_copypage_v6__237_137_v6_userpage_init1, ptr @v6_lock, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v6_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @v6_clear_user_highpage_nonaliasing(ptr noundef %page, i32 noundef %vaddr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %0 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %0, 512
  %1 = tail call i32 @llvm.read_register.i32(metadata !11) #4
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !21
  %5 = tail call i32 @llvm.read_register.i32(metadata !11) #4
  %and.i.i.i1.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 213
  %9 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %10, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !22
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i) #4
  %11 = call ptr @memset(ptr %call.i.i, i32 0, i32 4096)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !23
  %12 = tail call i32 @llvm.read_register.i32(metadata !11) #4
  %and.i.i.i1.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 213
  %16 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %17, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !24
  %18 = tail call i32 @llvm.read_register.i32(metadata !11) #4
  %and.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @v6_copy_user_highpage_nonaliasing(ptr noundef %to, ptr noundef %from, i32 noundef %vaddr, ptr nocapture noundef readnone %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %0 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %0, 512
  %1 = tail call i32 @llvm.read_register.i32(metadata !11) #4
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !21
  %5 = tail call i32 @llvm.read_register.i32(metadata !11) #4
  %and.i.i.i1.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 213
  %9 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %10, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !22
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %from, i32 noundef %or.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %11 = load i32, ptr @pgprot_kernel, align 4
  %or.i13 = or i32 %11, 512
  %12 = tail call i32 @llvm.read_register.i32(metadata !11) #4
  %and.i.i.i.i.i14 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i14 to ptr
  %preempt_count.i.i.i.i15 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i15, align 4
  %add.i.i.i16 = add i32 %15, 1
  store volatile i32 %add.i.i.i16, ptr %preempt_count.i.i.i.i15, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !21
  %16 = tail call i32 @llvm.read_register.i32(metadata !11) #4
  %and.i.i.i1.i.i17 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i1.i.i17 to ptr
  %task.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i.i.i.i18, align 8
  %pagefault_disabled.i.i.i.i19 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 213
  %20 = ptrtoint ptr %pagefault_disabled.i.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pagefault_disabled.i.i.i.i19, align 8
  %inc.i.i.i.i20 = add i32 %21, 1
  store i32 %inc.i.i.i.i20, ptr %pagefault_disabled.i.i.i.i19, align 8
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !22
  %call.i.i21 = tail call ptr @__kmap_local_page_prot(ptr noundef %to, i32 noundef %or.i13) #4
  tail call void @copy_page(ptr noundef %call.i.i21, ptr noundef %call.i.i) #4
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i21) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !23
  %22 = tail call i32 @llvm.read_register.i32(metadata !11) #4
  %and.i.i.i1.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 213
  %26 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %27, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !24
  %28 = tail call i32 @llvm.read_register.i32(metadata !11) #4
  %and.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !23
  %32 = tail call i32 @llvm.read_register.i32(metadata !11) #4
  %and.i.i.i1.i22 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i1.i22 to ptr
  %task.i.i.i23 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task.i.i.i23, align 8
  %pagefault_disabled.i.i.i24 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 213
  %36 = ptrtoint ptr %pagefault_disabled.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pagefault_disabled.i.i.i24, align 8
  %dec.i.i.i25 = add i32 %37, -1
  store i32 %dec.i.i.i25, ptr %pagefault_disabled.i.i.i24, align 8
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !24
  %38 = tail call i32 @llvm.read_register.i32(metadata !11) #4
  %and.i.i.i.i26 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i26 to ptr
  %preempt_count.i.i.i27 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i27, align 4
  %sub.i.i28 = add i32 %41, -1
  store volatile i32 %sub.i.i28, ptr %preempt_count.i.i.i27, align 4
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @v6_userpage_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %0 = load i32, ptr @cacheid, align 4
  %and2.i = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not = icmp eq i32 %and2.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @cpu_user to i32))
  store ptr @v6_clear_user_highpage_aliasing, ptr @cpu_user, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_user_fns, ptr @cpu_user, i32 0, i32 1) to i32))
  store ptr @v6_copy_user_highpage_aliasing, ptr getelementptr inbounds (%struct.cpu_user_fns, ptr @cpu_user, i32 0, i32 1), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @v6_clear_user_highpage_aliasing(ptr noundef %page, i32 noundef %vaddr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = and i32 %vaddr, 12288
  %add = or i32 %shr, -16384
  %call = tail call ptr @page_address(ptr noundef %page) #4
  %0 = ptrtoint ptr %call to i32
  %sub.i = add i32 %0, 4095
  tail call void asm sideeffect "mcrr\09p15, 0, $1, $0, c6\09@ 0xec401f06", "r,r,~{cc}"(ptr %call, i32 %sub.i) #4, !srcloc !25
  tail call void @_raw_spin_lock(ptr noundef nonnull @v6_lock) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %1 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %2 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add1 = add i32 %sub.ptr.div, %2
  %shl2 = shl i32 %add1, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %3 = load i32, ptr @pgprot_kernel, align 4
  %or = or i32 %3, %shl2
  %or3 = or i32 %or, 512
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @top_pmd to i32))
  %4 = load ptr, ptr @top_pmd, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %and1.i.i.i = and i32 %6, -4096
  %7 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and1.i.i.i, i32 -2130706432, i32 8454144) #7, !srcloc !26
  %8 = inttoptr i32 %7 to ptr
  %shr.i.i.i = lshr exact i32 %add, 12
  %and.i.i.i = and i32 %shr.i.i.i, 511
  %add.ptr.i.i = getelementptr i32, ptr %8, i32 %and.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_vtable to i32))
  %9 = load ptr, ptr @cpu_vtable, align 4
  %set_pte_ext.i = getelementptr inbounds %struct.processor, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %set_pte_ext.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_pte_ext.i, align 4
  tail call void %11(ptr noundef %add.ptr.i.i, i32 noundef %or3, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %12 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %13 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %add, i32 %13, i32 16) #4, !srcloc !28
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 1", "r,r,Ir,~{cc}"(i32 %add, i32 %13, i32 32) #4, !srcloc !29
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 1", "r,r,Ir,~{cc}"(i32 %add, i32 %13, i32 64) #4, !srcloc !30
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %add, i32 %12, i32 1048576) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %14 = inttoptr i32 %add to ptr
  %15 = call ptr @memset(ptr %14, i32 0, i32 4096)
  tail call void @_raw_spin_unlock(ptr noundef nonnull @v6_lock) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @v6_copy_user_highpage_aliasing(ptr noundef %to, ptr noundef %from, i32 noundef %vaddr, ptr nocapture noundef readnone %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_test_and_set_bit(i32 noundef 11, ptr noundef %from) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %struct.page, ptr %from, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !34

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %from to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i, !prof !34

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.1) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #4, !srcloc !35
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %_compound_head.exit.i
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %4, align 4
  %10 = and i32 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.if.end.i_crit_edge, label %land.rhs.i.i

folio_test_swapbacked.exit.i.i.if.end.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %5, align 4
  %and.i.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_swapcache.exit.i, label %if.then.i.i.i, !prof !34

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.1) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #4, !srcloc !35
  unreachable

folio_test_swapcache.exit.i:                      ; preds = %land.rhs.i.i
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %4, align 4
  %15 = and i32 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i, label %folio_test_swapcache.exit.i.if.end.i_crit_edge, label %folio_test_swapcache.exit.i.page_mapping_file.exit_crit_edge, !prof !34

folio_test_swapcache.exit.i.page_mapping_file.exit_crit_edge: ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %page_mapping_file.exit

folio_test_swapcache.exit.i.if.end.i_crit_edge:   ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.end.i:                                         ; preds = %folio_test_swapcache.exit.i.if.end.i_crit_edge, %folio_test_swapbacked.exit.i.i.if.end.i_crit_edge
  %call3.i = tail call ptr @folio_mapping(ptr noundef %4) #4
  br label %page_mapping_file.exit

page_mapping_file.exit:                           ; preds = %if.end.i, %folio_test_swapcache.exit.i.page_mapping_file.exit_crit_edge
  %retval.0.i = phi ptr [ %call3.i, %if.end.i ], [ null, %folio_test_swapcache.exit.i.page_mapping_file.exit_crit_edge ]
  tail call void @__flush_dcache_page(ptr noundef %retval.0.i, ptr noundef %from) #4
  br label %if.end

if.end:                                           ; preds = %page_mapping_file.exit, %entry.if.end_crit_edge
  %shr = and i32 %vaddr, 12288
  %call2 = tail call ptr @page_address(ptr noundef %to) #4
  %16 = ptrtoint ptr %call2 to i32
  %sub.i = add i32 %16, 4095
  tail call void asm sideeffect "mcrr\09p15, 0, $1, $0, c6\09@ 0xec401f06", "r,r,~{cc}"(ptr %call2, i32 %sub.i) #4, !srcloc !25
  tail call void @_raw_spin_lock(ptr noundef nonnull @v6_lock) #4
  %add = or i32 %shr, -32768
  %add4 = or i32 %shr, -16384
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %17 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %from to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %17 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %18 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add5 = add i32 %sub.ptr.div, %18
  %shl6 = shl i32 %add5, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %19 = load i32, ptr @pgprot_kernel, align 4
  %or = or i32 %19, %shl6
  %or7 = or i32 %or, 512
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @top_pmd to i32))
  %20 = load ptr, ptr @top_pmd, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %and1.i.i.i = and i32 %22, -4096
  %23 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and1.i.i.i, i32 -2130706432, i32 8454144) #7, !srcloc !26
  %24 = inttoptr i32 %23 to ptr
  %shr.i.i.i = lshr exact i32 %add, 12
  %and.i.i.i = and i32 %shr.i.i.i, 507
  %add.ptr.i.i = getelementptr i32, ptr %24, i32 %and.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_vtable to i32))
  %25 = load ptr, ptr @cpu_vtable, align 4
  %set_pte_ext.i = getelementptr inbounds %struct.processor, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %set_pte_ext.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_pte_ext.i, align 4
  tail call void %27(ptr noundef %add.ptr.i.i, i32 noundef %or7, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %28 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %29 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %add, i32 %29, i32 16) #4, !srcloc !28
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 1", "r,r,Ir,~{cc}"(i32 %add, i32 %29, i32 32) #4, !srcloc !29
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 1", "r,r,Ir,~{cc}"(i32 %add, i32 %29, i32 64) #4, !srcloc !30
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %add, i32 %28, i32 1048576) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %30 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast8 = ptrtoint ptr %to to i32
  %sub.ptr.rhs.cast9 = ptrtoint ptr %30 to i32
  %sub.ptr.sub10 = sub i32 %sub.ptr.lhs.cast8, %sub.ptr.rhs.cast9
  %sub.ptr.div11 = sdiv exact i32 %sub.ptr.sub10, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %31 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add12 = add i32 %sub.ptr.div11, %31
  %shl13 = shl i32 %add12, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %32 = load i32, ptr @pgprot_kernel, align 4
  %or14 = or i32 %32, %shl13
  %or15 = or i32 %or14, 512
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @top_pmd to i32))
  %33 = load ptr, ptr @top_pmd, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %and1.i.i.i23 = and i32 %35, -4096
  %36 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and1.i.i.i23, i32 -2130706432, i32 8454144) #7, !srcloc !26
  %37 = inttoptr i32 %36 to ptr
  %shr.i.i.i24 = lshr exact i32 %add4, 12
  %and.i.i.i25 = and i32 %shr.i.i.i24, 511
  %add.ptr.i.i26 = getelementptr i32, ptr %37, i32 %and.i.i.i25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_vtable to i32))
  %38 = load ptr, ptr @cpu_vtable, align 4
  %set_pte_ext.i27 = getelementptr inbounds %struct.processor, ptr %38, i32 0, i32 9
  %39 = ptrtoint ptr %set_pte_ext.i27 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %set_pte_ext.i27, align 4
  tail call void %40(ptr noundef %add.ptr.i.i26, i32 noundef %or15, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %41 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %42 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %add4, i32 %42, i32 16) #4, !srcloc !28
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 1", "r,r,Ir,~{cc}"(i32 %add4, i32 %42, i32 32) #4, !srcloc !29
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 1", "r,r,Ir,~{cc}"(i32 %add4, i32 %42, i32 64) #4, !srcloc !30
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %add4, i32 %41, i32 1048576) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %43 = inttoptr i32 %add4 to ptr
  %44 = inttoptr i32 %add to ptr
  tail call void @copy_page(ptr noundef nonnull %43, ptr noundef nonnull %44) #4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @v6_lock) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__flush_dcache_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @folio_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9}
!llvm.named.register.sp = !{!11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @v6_user_fns, !1, !"v6_user_fns", i1 false, i1 false}
!1 = !{!"../arch/arm/mm/copypage-v6.c", i32 122, i32 21}
!2 = !{ptr @__initcall__kmod_copypage_v6__237_137_v6_userpage_init1, !3, !"__initcall__kmod_copypage_v6__237_137_v6_userpage_init1", i1 false, i1 false}
!3 = !{!"../arch/arm/mm/copypage-v6.c", i32 137, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mm/copypage-v6.c", i32 24, i32 8}
!6 = !{ptr @v6_lock, !5, !"v6_lock", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!9 = distinct !{null, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!11 = !{!"sp"}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 2153636602}
!22 = !{i64 2152729717}
!23 = !{i64 2152729924}
!24 = !{i64 2153639373}
!25 = !{i64 1355}
!26 = !{i64 2148887433, i64 2148887456, i64 2148887488, i64 2148887520, i64 2148887558, i64 2148887588}
!27 = !{i64 2152077364}
!28 = !{i64 2152068835, i64 2152068848}
!29 = !{i64 2152071056, i64 2152071069}
!30 = !{i64 2152073277, i64 2152073290}
!31 = !{i64 2152077661, i64 2152077674}
!32 = !{i64 2152081534}
!33 = !{i64 2152081619}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{i64 2150221668, i64 2150222159, i64 2150221705, i64 2150221761, i64 2150221795, i64 2150221819, i64 2150221860, i64 2150221881, i64 2150221909, i64 2150221943}
