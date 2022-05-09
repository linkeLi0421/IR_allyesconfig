; ModuleID = '/llk/IR_all_yes/mm/hmm.c_pt.bc'
source_filename = "../mm/hmm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+hmm_range_fault\22, \22a\22\09"
module asm "\09.weak\09__crc_hmm_range_fault\09\09\09\09"
module asm "\09.long\09__crc_hmm_range_fault\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hmm_range_fault:\09\09\09\09\09"
module asm "\09.asciz \09\22hmm_range_fault\22\09\09\09\09\09"
module asm "__kstrtabns_hmm_range_fault:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mm_walk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.hmm_vma_walk = type { ptr, i32 }
%struct.hmm_range = type { ptr, i32, i32, i32, ptr, i32, i32, ptr }
%struct.mmu_interval_notifier = type { %struct.interval_tree_node, ptr, ptr, %struct.hlist_node, i32 }
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mm_walk = type { ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.page = type { i32, %union.anon.18, %union.anon.30, %struct.atomic_t, i32 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.30 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.56, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.56 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.82, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }

@hmm_walk_ops = internal constant { %struct.mm_walk_ops, [56 x i8] } { %struct.mm_walk_ops { ptr null, ptr null, ptr null, ptr @hmm_vma_walk_pmd, ptr null, ptr @hmm_vma_walk_hole, ptr null, ptr @hmm_vma_walk_test, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@__kstrtab_hmm_range_fault = external dso_local constant [0 x i8], align 1
@__kstrtabns_hmm_range_fault = external dso_local constant [0 x i8], align 1
@__ksymtab_hmm_range_fault = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hmm_range_fault to i32), ptr @__kstrtab_hmm_range_fault, ptr @__kstrtabns_hmm_range_fault }, section "___ksymtab+hmm_range_fault", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/mmap_lock.h\00", [38 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@zero_pfn = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.3 = private unnamed_addr constant [13 x i8] c"hmm_walk_ops\00", align 1
@___asan_gen_.4 = private constant [12 x i8] c"../mm/hmm.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.4, i32 549, i32 33 }
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [29 x i8] c"../include/linux/mmap_lock.h\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 155, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_hmm_range_fault, ptr @hmm_walk_ops, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmm_walk_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hmm_range_fault(ptr noundef %range) #0 align 64 {
entry:
  %hmm_vma_walk = alloca %struct.hmm_vma_walk, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hmm_vma_walk) #5
  %0 = getelementptr inbounds %struct.hmm_vma_walk, ptr %hmm_vma_walk, i32 0, i32 1
  %1 = ptrtoint ptr %hmm_vma_walk to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %range, ptr %hmm_vma_walk, align 4
  %start = getelementptr inbounds %struct.hmm_range, ptr %range, i32 0, i32 2
  %2 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %0, align 4
  %5 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %range, align 4
  %mm2 = getelementptr inbounds %struct.mmu_interval_notifier, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %mm2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mm2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %9 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 15, i32 6
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !21

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 155, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %mmap_lock25.i = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 15
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mmap_lock25.i, i32 noundef 4) #5
  %10 = ptrtoint ptr %mmap_lock25.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %mmap_lock25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.not.i = icmp eq i32 %11, 0
  br i1 %cmp.i.not.i, label %if.then36.i, label %do.body.preheader, !prof !21

do.body.preheader:                                ; preds = %if.end.i
  %notifier_seq = getelementptr inbounds %struct.hmm_range, ptr %range, i32 0, i32 1
  %end = getelementptr inbounds %struct.hmm_range, ptr %range, i32 0, i32 3
  br label %do.body

if.then36.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dump_mm(ptr noundef %8) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mmap_lock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 156, 0\0A.popsection", ""() #5, !srcloc !22
  unreachable

do.body:                                          ; preds = %if.end.do.body_crit_edge, %do.body.preheader
  %12 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %range, align 4
  %14 = ptrtoint ptr %notifier_seq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %notifier_seq, align 4
  %invalidate_seq.i = getelementptr inbounds %struct.mmu_interval_notifier, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %invalidate_seq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %invalidate_seq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp.i.not = icmp eq i32 %17, %15
  br i1 %cmp.i.not, label %if.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %do.body
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %0, align 4
  %20 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end, align 4
  %call5 = call i32 @walk_page_range(ptr noundef %8, i32 noundef %19, i32 noundef %21, ptr noundef nonnull @hmm_walk_ops, ptr noundef nonnull %hmm_vma_walk) #5
  %cmp = icmp eq i32 %call5, -16
  br i1 %cmp, label %if.end.do.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.body.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hmm_vma_walk) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @walk_page_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hmm_vma_walk_pmd(ptr noundef %pmdp, i32 noundef %start, i32 noundef %end, ptr nocapture noundef readonly %walk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %hmm_pfns2 = getelementptr inbounds %struct.hmm_range, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %hmm_pfns2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hmm_pfns2, align 4
  %start3 = getelementptr inbounds %struct.hmm_range, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %start3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %start3, align 4
  %sub = sub i32 %start, %7
  %shr = lshr i32 %sub, 12
  %arrayidx = getelementptr i32, ptr %5, i32 %shr
  %sub4 = sub i32 %end, %start
  %shr5 = lshr i32 %sub4, 12
  %8 = ptrtoint ptr %pmdp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %pmdp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @hmm_vma_walk_hole(i32 noundef %start, i32 noundef %end, i32 noundef -1, ptr noundef %walk)
  br label %cleanup65

if.end:                                           ; preds = %entry
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %if.end46, label %if.then40

if.then40:                                        ; preds = %if.end
  %default_flags.i = getelementptr inbounds %struct.hmm_range, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %default_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %default_flags.i, align 4
  %pfn_flags_mask.i = getelementptr inbounds %struct.hmm_range, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %pfn_flags_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pfn_flags_mask.i, align 4
  %or.i = or i32 %13, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool.not.i = icmp slt i32 %or.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %sub4)
  %cmp1.i = icmp ugt i32 %sub4, 4095
  %or.cond.i = and i1 %cmp1.i, %tobool.not.i
  br i1 %or.cond.i, label %if.then40.for.body.i_crit_edge, label %if.then40.if.end44_crit_edge

if.then40.if.end44_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then40.for.body.i_crit_edge:                   ; preds = %if.then40
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %shr5
  br i1 %exitcond.not.i, label %hmm_range_need_fault.exit, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then40.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.then40.for.body.i_crit_edge ]
  %required_fault.02.i = phi i32 [ %or2.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.then40.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %arrayidx, i32 %i.03.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %and.i.i = and i32 %15, %13
  %or.i.i = or i32 %and.i.i, %11
  %and3.i.i = and i32 %or.i.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.not.i = icmp eq i32 %and3.i.i, 0
  %spec.select.i = select i1 %tobool4.not.i.not.i, i32 1, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %tobool.not.i.inv.i = icmp slt i32 %or.i.i, 0
  %retval.0.i.i = select i1 %tobool.not.i.inv.i, i32 %spec.select.i, i32 0
  %or2.i = or i32 %retval.0.i.i, %required_fault.02.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %or2.i)
  %cmp3.i = icmp eq i32 %or2.i, 3
  br i1 %cmp3.i, label %for.body.i.cleanup65_crit_edge, label %for.cond.i

for.body.i.cleanup65_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup65

hmm_range_need_fault.exit:                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or2.i)
  %tobool42.not = icmp eq i32 %or2.i, 0
  br i1 %tobool42.not, label %hmm_range_need_fault.exit.if.end44_crit_edge, label %hmm_range_need_fault.exit.cleanup65_crit_edge

hmm_range_need_fault.exit.cleanup65_crit_edge:    ; preds = %hmm_range_need_fault.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup65

hmm_range_need_fault.exit.if.end44_crit_edge:     ; preds = %hmm_range_need_fault.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.end44:                                         ; preds = %hmm_range_need_fault.exit.if.end44_crit_edge, %if.then40.if.end44_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %end, i32 %start)
  %cmp1.i124 = icmp ugt i32 %end, %start
  br i1 %cmp1.i124, label %if.end44.for.body.i128_crit_edge, label %if.end44.cleanup65_crit_edge

if.end44.cleanup65_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup65

if.end44.for.body.i128_crit_edge:                 ; preds = %if.end44
  br label %for.body.i128

for.body.i128:                                    ; preds = %for.body.i128.for.body.i128_crit_edge, %if.end44.for.body.i128_crit_edge
  %i.03.i125 = phi i32 [ %inc.i127, %for.body.i128.for.body.i128_crit_edge ], [ %shr, %if.end44.for.body.i128_crit_edge ]
  %addr.addr.02.i = phi i32 [ %add.i, %for.body.i128.for.body.i128_crit_edge ], [ %start, %if.end44.for.body.i128_crit_edge ]
  %16 = ptrtoint ptr %hmm_pfns2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hmm_pfns2, align 4
  %arrayidx.i126 = getelementptr i32, ptr %17, i32 %i.03.i125
  %18 = ptrtoint ptr %arrayidx.i126 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 536870912, ptr %arrayidx.i126, align 4
  %add.i = add i32 %addr.addr.02.i, 4096
  %inc.i127 = add i32 %i.03.i125, 1
  %cmp.i = icmp ult i32 %add.i, %end
  br i1 %cmp.i, label %for.body.i128.for.body.i128_crit_edge, label %for.body.i128.cleanup65_crit_edge

for.body.i128.cleanup65_crit_edge:                ; preds = %for.body.i128
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup65

for.body.i128.for.body.i128_crit_edge:            ; preds = %for.body.i128
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i128

if.end46:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %19 = load ptr, ptr @mem_map, align 4
  %shr48 = lshr i32 %9, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %20 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub49 = sub i32 %shr48, %20
  %add.ptr = getelementptr %struct.page, ptr %19, i32 %sub49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %21 = load i32, ptr @pgprot_kernel, align 4
  %or.i129 = or i32 %21, 512
  %22 = tail call i32 @llvm.read_register.i32(metadata !11) #5
  %and.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %25, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !23
  %26 = tail call i32 @llvm.read_register.i32(metadata !11) #5
  %and.i.i.i1.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 213
  %30 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %31, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !24
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i129) #5
  %shr.i130 = lshr i32 %start, 12
  %and.i = and i32 %shr.i130, 511
  %add.ptr52 = getelementptr i32, ptr %call.i.i, i32 %and.i
  call void @__sanitizer_cov_trace_cmp4(i32 %end, i32 %start)
  %cmp180 = icmp ugt i32 %end, %start
  br i1 %cmp180, label %for.body.lr.ph, label %if.end46.do.end61_crit_edge

if.end46.do.end61_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end61

for.body.lr.ph:                                   ; preds = %if.end46
  %vma.i = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ptep.0187 = phi ptr [ %add.ptr52, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %addr.0184 = phi i32 [ %start, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %hmm_pfns.0181 = phi ptr [ %arrayidx, %for.body.lr.ph ], [ %incdec.ptr57, %for.inc.for.body_crit_edge ]
  %32 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %private, align 4
  %34 = ptrtoint ptr %ptep.0187 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ptep.0187, align 4
  %36 = ptrtoint ptr %hmm_pfns.0181 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hmm_pfns.0181, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i131 = icmp eq i32 %35, 0
  br i1 %tobool.not.i131, label %if.then.i, label %cond.true.i

if.then.i:                                        ; preds = %for.body
  %38 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %33, align 4
  %pfn_flags_mask.i.i = getelementptr inbounds %struct.hmm_range, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %pfn_flags_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pfn_flags_mask.i.i, align 4
  %and.i.i132 = and i32 %41, %37
  %default_flags.i.i = getelementptr inbounds %struct.hmm_range, ptr %39, i32 0, i32 5
  %42 = ptrtoint ptr %default_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %default_flags.i.i, align 4
  %or.i.i133 = or i32 %and.i.i132, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or.i.i133)
  %tobool.not.i.i = icmp sgt i32 %or.i.i133, -1
  br i1 %tobool.not.i.i, label %if.then.i.for.inc_crit_edge, label %if.end.i.i

if.then.i.for.inc_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %and3.i.i134 = and i32 %or.i.i133, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i134)
  %tobool4.not.i.not.i135 = icmp eq i32 %and3.i.i134, 0
  %spec.select.i136 = select i1 %tobool4.not.i.not.i135, i32 1, i32 3
  br label %if.end30.i.i

cond.true.i:                                      ; preds = %for.body
  %and.i137 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i137)
  %tobool6.not.i = icmp eq i32 %and.i137, 0
  br i1 %tobool6.not.i, label %if.then10.i, label %if.end52.i

if.then10.i:                                      ; preds = %cond.true.i
  %44 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %33, align 4
  %pfn_flags_mask.i153.i = getelementptr inbounds %struct.hmm_range, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %pfn_flags_mask.i153.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pfn_flags_mask.i153.i, align 4
  %and.i154.i = and i32 %47, %37
  %default_flags.i155.i = getelementptr inbounds %struct.hmm_range, ptr %45, i32 0, i32 5
  %48 = ptrtoint ptr %default_flags.i155.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %default_flags.i155.i, align 4
  %or.i156.i = or i32 %and.i154.i, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or.i156.i)
  %tobool.not.i157.i = icmp sgt i32 %or.i156.i, -1
  br i1 %tobool.not.i157.i, label %if.then10.i.for.inc_crit_edge, label %if.end.i160.i

if.then10.i.for.inc_crit_edge:                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end.i160.i:                                    ; preds = %if.then10.i
  %and3.i158.i = and i32 %or.i156.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i158.i)
  %tobool4.not.i159.not.i = icmp eq i32 %and3.i158.i, 0
  %spec.select223.i = select i1 %tobool4.not.i159.not.i, i32 1, i32 3
  %50 = and i32 %35, 120
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %50)
  %cmp.i.not.i = icmp eq i32 %50, 120
  br i1 %cmp.i.not.i, label %do.end.i, label %if.end.i160.i.if.end30.i.i_crit_edge

if.end.i160.i.if.end30.i.i_crit_edge:             ; preds = %if.end.i160.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.i.i

do.end.i:                                         ; preds = %if.end.i160.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kunmap_local_indexed(ptr noundef %ptep.0187) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !25
  %51 = tail call i32 @llvm.read_register.i32(metadata !11) #5
  %and.i.i.i1.i.i138 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i1.i.i138 to ptr
  %task.i.i.i.i139 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task.i.i.i.i139 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task.i.i.i.i139, align 8
  %pagefault_disabled.i.i.i.i140 = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 213
  %55 = ptrtoint ptr %pagefault_disabled.i.i.i.i140 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pagefault_disabled.i.i.i.i140, align 8
  %dec.i.i.i.i = add i32 %56, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i140, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !26
  %57 = tail call i32 @llvm.read_register.i32(metadata !11) #5
  %and.i.i.i.i.i141 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i141 to ptr
  %preempt_count.i.i.i.i142 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i.i142 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i.i142, align 4
  %sub.i.i.i = add i32 %60, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i142, align 4
  %last.i = getelementptr inbounds %struct.hmm_vma_walk, ptr %33, i32 0, i32 1
  %61 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %addr.0184, ptr %last.i, align 4
  %mm.i = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 1
  %62 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mm.i, align 4
  tail call void @migration_entry_wait(ptr noundef %63, ptr noundef %pmdp, i32 noundef %addr.0184) #5
  br label %cleanup65

if.end52.i:                                       ; preds = %cond.true.i
  %and7.i.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  %cond.i.i = select i1 %tobool8.not.i.i, i32 -1073741824, i32 -2147483648
  %64 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %33, align 4
  %pfn_flags_mask.i173.i = getelementptr inbounds %struct.hmm_range, ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %pfn_flags_mask.i173.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pfn_flags_mask.i173.i, align 4
  %and.i174.i = and i32 %67, %37
  %default_flags.i175.i = getelementptr inbounds %struct.hmm_range, ptr %65, i32 0, i32 5
  %68 = ptrtoint ptr %default_flags.i175.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %default_flags.i175.i, align 4
  %or.i176.i = or i32 %and.i174.i, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or.i176.i)
  %tobool.not.i177.i = icmp sgt i32 %or.i176.i, -1
  br i1 %tobool.not.i177.i, label %if.end52.i.if.end58.i_crit_edge, label %if.end.i180.i

if.end52.i.if.end58.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58.i

if.end.i180.i:                                    ; preds = %if.end52.i
  %and3.i178.i = and i32 %or.i176.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i178.i)
  %tobool4.not.i179.i = icmp ne i32 %and3.i178.i, 0
  %and5.i.i = and i32 %cond.i.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  %or.cond.i.i = and i1 %tobool6.not.i.i, %tobool4.not.i179.i
  br i1 %or.cond.i.i, label %if.end.i180.i.if.end30.i.i_crit_edge, label %if.end.i180.i.if.end58.i_crit_edge

if.end.i180.i.if.end58.i_crit_edge:               ; preds = %if.end.i180.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58.i

if.end.i180.i.if.end30.i.i_crit_edge:             ; preds = %if.end.i180.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.i.i

if.end58.i:                                       ; preds = %if.end.i180.i.if.end58.i_crit_edge, %if.end52.i.if.end58.i_crit_edge
  %70 = ptrtoint ptr %vma.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %vma.i, align 4
  %call59.i = tail call ptr @vm_normal_page(ptr noundef %71, i32 noundef %addr.0184, i32 noundef %35) #5
  %tobool60.not.i = icmp eq ptr %call59.i, null
  %shr.i143 = lshr i32 %35, 12
  br i1 %tobool60.not.i, label %land.lhs.true.i, label %if.end58.i.if.end79.i_crit_edge

if.end58.i.if.end79.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end79.i

land.lhs.true.i:                                  ; preds = %if.end58.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @zero_pfn to i32))
  %72 = load i32, ptr @zero_pfn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %shr.i143)
  %cmp.i184.not.i = icmp eq i32 %72, %shr.i143
  br i1 %cmp.i184.not.i, label %land.lhs.true.i.if.end79.i_crit_edge, label %if.then67.i

land.lhs.true.i.if.end79.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end79.i

if.then67.i:                                      ; preds = %land.lhs.true.i
  %73 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %33, align 4
  %pfn_flags_mask.i186.i = getelementptr inbounds %struct.hmm_range, ptr %74, i32 0, i32 6
  %75 = ptrtoint ptr %pfn_flags_mask.i186.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pfn_flags_mask.i186.i, align 4
  %and.i187.i = and i32 %76, %37
  %default_flags.i188.i = getelementptr inbounds %struct.hmm_range, ptr %74, i32 0, i32 5
  %77 = ptrtoint ptr %default_flags.i188.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %default_flags.i188.i, align 4
  %or.i189.i = or i32 %and.i187.i, %78
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or.i189.i)
  %tobool.not.i190.i = icmp sgt i32 %or.i189.i, -1
  br i1 %tobool.not.i190.i, label %if.then67.i.for.inc_crit_edge, label %do.end75.i

if.then67.i.for.inc_crit_edge:                    ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end75.i:                                       ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kunmap_local_indexed(ptr noundef %ptep.0187) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !25
  %79 = tail call i32 @llvm.read_register.i32(metadata !11) #5
  %and.i.i.i1.i145 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i1.i145 to ptr
  %task.i.i.i146 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %task.i.i.i146 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task.i.i.i146, align 8
  %pagefault_disabled.i.i.i147 = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 213
  %83 = ptrtoint ptr %pagefault_disabled.i.i.i147 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pagefault_disabled.i.i.i147, align 8
  %dec.i.i.i148 = add i32 %84, -1
  store i32 %dec.i.i.i148, ptr %pagefault_disabled.i.i.i147, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !26
  %85 = tail call i32 @llvm.read_register.i32(metadata !11) #5
  %and.i.i.i.i149 = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i.i.i149 to ptr
  %preempt_count.i.i.i150 = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %preempt_count.i.i.i150 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %preempt_count.i.i.i150, align 4
  %sub.i.i151 = add i32 %88, -1
  store volatile i32 %sub.i.i151, ptr %preempt_count.i.i.i150, align 4
  br label %cleanup65

if.end79.i:                                       ; preds = %land.lhs.true.i.if.end79.i_crit_edge, %if.end58.i.if.end79.i_crit_edge
  %or82.i = or i32 %cond.i.i, %shr.i143
  br label %for.inc

if.end30.i.i:                                     ; preds = %if.end.i180.i.if.end30.i.i_crit_edge, %if.end.i160.i.if.end30.i.i_crit_edge, %if.end.i.i
  %required_fault.1.i = phi i32 [ %spec.select223.i, %if.end.i160.i.if.end30.i.i_crit_edge ], [ %spec.select.i136, %if.end.i.i ], [ 3, %if.end.i180.i.if.end30.i.i_crit_edge ]
  tail call void @kunmap_local_indexed(ptr noundef %ptep.0187) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !25
  %89 = tail call i32 @llvm.read_register.i32(metadata !11) #5
  %and.i.i.i1.i197.i = and i32 %89, -16384
  %90 = inttoptr i32 %and.i.i.i1.i197.i to ptr
  %task.i.i.i198.i = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %task.i.i.i198.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %task.i.i.i198.i, align 8
  %pagefault_disabled.i.i.i199.i = getelementptr inbounds %struct.task_struct, ptr %92, i32 0, i32 213
  %93 = ptrtoint ptr %pagefault_disabled.i.i.i199.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pagefault_disabled.i.i.i199.i, align 8
  %dec.i.i.i200.i = add i32 %94, -1
  store i32 %dec.i.i.i200.i, ptr %pagefault_disabled.i.i.i199.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !26
  %95 = tail call i32 @llvm.read_register.i32(metadata !11) #5
  %and.i.i.i.i201.i = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i.i.i201.i to ptr
  %preempt_count.i.i.i202.i = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %preempt_count.i.i.i202.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %preempt_count.i.i.i202.i, align 4
  %sub.i.i203.i = add i32 %98, -1
  store volatile i32 %sub.i.i203.i, ptr %preempt_count.i.i.i202.i, align 4
  %99 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %private, align 4
  %101 = ptrtoint ptr %vma.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %vma.i, align 4
  %last.i.i = getelementptr inbounds %struct.hmm_vma_walk, ptr %100, i32 0, i32 1
  %103 = ptrtoint ptr %last.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %addr.0184, ptr %last.i.i, align 4
  %and.i205.i = and i32 %required_fault.1.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i205.i)
  %tobool38.not.i.i = icmp eq i32 %and.i205.i, 0
  br i1 %tobool38.not.i.i, label %if.end30.i.i.if.end44.i.i_crit_edge, label %if.then39.i.i

if.end30.i.i.if.end44.i.i_crit_edge:              ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44.i.i

if.then39.i.i:                                    ; preds = %if.end30.i.i
  %vm_flags.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %102, i32 0, i32 8
  %104 = ptrtoint ptr %vm_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %vm_flags.i.i, align 4
  %and40.i.i = and i32 %105, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i.i)
  %tobool41.not.i.i = icmp eq i32 %and40.i.i, 0
  br i1 %tobool41.not.i.i, label %if.then39.i.i.cleanup65_crit_edge, label %if.then39.i.i.if.end44.i.i_crit_edge

if.then39.i.i.if.end44.i.i_crit_edge:             ; preds = %if.then39.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44.i.i

if.then39.i.i.cleanup65_crit_edge:                ; preds = %if.then39.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup65

if.end44.i.i:                                     ; preds = %if.then39.i.i.if.end44.i.i_crit_edge, %if.end30.i.i.if.end44.i.i_crit_edge
  %fault_flags.0.i.i = phi i32 [ 128, %if.end30.i.i.if.end44.i.i_crit_edge ], [ 129, %if.then39.i.i.if.end44.i.i_crit_edge ]
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %add.i.i = add i32 %addr.addr.065.i.i, 4096
  %cmp.i206.i = icmp ult i32 %add.i.i, %end
  br i1 %cmp.i206.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.cleanup65_crit_edge

for.cond.i.i.cleanup65_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup65

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end44.i.i
  %addr.addr.065.i.i = phi i32 [ %add.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ %addr.0184, %if.end44.i.i ]
  %call.i.i144 = tail call i32 @handle_mm_fault(ptr noundef %102, i32 noundef %addr.addr.065.i.i, i32 noundef %fault_flags.0.i.i, ptr noundef null) #5
  %and45.i.i = and i32 %call.i.i144, 2163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i.i)
  %tobool46.not.i.i = icmp eq i32 %and45.i.i, 0
  br i1 %tobool46.not.i.i, label %for.cond.i.i, label %for.body.i.i.cleanup65_crit_edge

for.body.i.i.cleanup65_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup65

for.inc:                                          ; preds = %if.end79.i, %if.then67.i.for.inc_crit_edge, %if.then10.i.for.inc_crit_edge, %if.then.i.for.inc_crit_edge
  %or82.i.sink = phi i32 [ %or82.i, %if.end79.i ], [ 0, %if.then.i.for.inc_crit_edge ], [ 0, %if.then10.i.for.inc_crit_edge ], [ 536870912, %if.then67.i.for.inc_crit_edge ]
  %106 = ptrtoint ptr %hmm_pfns.0181 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %or82.i.sink, ptr %hmm_pfns.0181, align 4
  %add = add i32 %addr.0184, 4096
  %incdec.ptr = getelementptr i32, ptr %ptep.0187, i32 1
  %incdec.ptr57 = getelementptr i32, ptr %hmm_pfns.0181, i32 1
  %cmp = icmp ult i32 %add, %end
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.end61_crit_edge

for.inc.do.end61_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end61

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.end61:                                         ; preds = %for.inc.do.end61_crit_edge, %if.end46.do.end61_crit_edge
  %ptep.0.lcssa = phi ptr [ %add.ptr52, %if.end46.do.end61_crit_edge ], [ %incdec.ptr, %for.inc.do.end61_crit_edge ]
  %add.ptr62 = getelementptr i32, ptr %ptep.0.lcssa, i32 -1
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr62) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !25
  %107 = tail call i32 @llvm.read_register.i32(metadata !11) #5
  %and.i.i.i1.i = and i32 %107, -16384
  %108 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %110, i32 0, i32 213
  %111 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %112, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !26
  %113 = tail call i32 @llvm.read_register.i32(metadata !11) #5
  %and.i.i.i.i = and i32 %113, -16384
  %114 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %116, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %cleanup65

cleanup65:                                        ; preds = %do.end61, %for.body.i.i.cleanup65_crit_edge, %for.cond.i.i.cleanup65_crit_edge, %if.then39.i.i.cleanup65_crit_edge, %do.end75.i, %do.end.i, %for.body.i128.cleanup65_crit_edge, %if.end44.cleanup65_crit_edge, %hmm_range_need_fault.exit.cleanup65_crit_edge, %for.body.i.cleanup65_crit_edge, %if.then
  %retval.2 = phi i32 [ 0, %do.end61 ], [ %call, %if.then ], [ -14, %hmm_range_need_fault.exit.cleanup65_crit_edge ], [ 0, %if.end44.cleanup65_crit_edge ], [ -16, %do.end.i ], [ -1, %if.then39.i.i.cleanup65_crit_edge ], [ -14, %do.end75.i ], [ -16, %for.cond.i.i.cleanup65_crit_edge ], [ -14, %for.body.i.i.cleanup65_crit_edge ], [ 0, %for.body.i128.cleanup65_crit_edge ], [ -14, %for.body.i.cleanup65_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hmm_vma_walk_hole(i32 noundef %addr, i32 noundef %end, i32 noundef %depth, ptr nocapture noundef readonly %walk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %start = getelementptr inbounds %struct.hmm_range, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start, align 4
  %sub = sub i32 %addr, %5
  %shr = lshr i32 %sub, 12
  %sub2 = sub i32 %end, %addr
  %shr3 = lshr i32 %sub2, 12
  %hmm_pfns4 = getelementptr inbounds %struct.hmm_range, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %hmm_pfns4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hmm_pfns4, align 4
  %arrayidx = getelementptr i32, ptr %7, i32 %shr
  %default_flags.i = getelementptr inbounds %struct.hmm_range, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %default_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %default_flags.i, align 4
  %pfn_flags_mask.i = getelementptr inbounds %struct.hmm_range, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %pfn_flags_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pfn_flags_mask.i, align 4
  %or.i = or i32 %11, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool.not.i = icmp slt i32 %or.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %sub2)
  %cmp1.i = icmp ugt i32 %sub2, 4095
  %or.cond.i = and i1 %cmp1.i, %tobool.not.i
  br i1 %or.cond.i, label %entry.for.body.i_crit_edge, label %hmm_range_need_fault.exit.thread79

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %shr3
  br i1 %exitcond.not.i, label %hmm_range_need_fault.exit, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %required_fault.02.i = phi i32 [ %or2.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %arrayidx, i32 %i.03.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %and.i.i = and i32 %13, %11
  %or.i.i = or i32 %and.i.i, %9
  %and3.i.i = and i32 %or.i.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.not.i = icmp eq i32 %and3.i.i, 0
  %spec.select.i = select i1 %tobool4.not.i.not.i, i32 1, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %tobool.not.i.inv.i = icmp slt i32 %or.i.i, 0
  %retval.0.i.i = select i1 %tobool.not.i.inv.i, i32 %spec.select.i, i32 0
  %or2.i = or i32 %retval.0.i.i, %required_fault.02.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %or2.i)
  %cmp3.i = icmp eq i32 %or2.i, 3
  br i1 %cmp3.i, label %hmm_range_need_fault.exit.thread, label %for.cond.i

hmm_range_need_fault.exit:                        ; preds = %for.cond.i
  %vma = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 3
  %14 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vma, align 4
  %tobool.not = icmp eq ptr %15, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or2.i)
  %tobool5.not = icmp eq i32 %or2.i, 0
  br i1 %tobool.not, label %if.then, label %if.end8

hmm_range_need_fault.exit.thread79:               ; preds = %entry
  %vma81 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 3
  %16 = ptrtoint ptr %vma81 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vma81, align 4
  %tobool.not82 = icmp eq ptr %17, null
  br i1 %tobool.not82, label %hmm_range_need_fault.exit.thread79.if.end_crit_edge, label %hmm_range_need_fault.exit.thread79.if.end12_crit_edge

hmm_range_need_fault.exit.thread79.if.end12_crit_edge: ; preds = %hmm_range_need_fault.exit.thread79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

hmm_range_need_fault.exit.thread79.if.end_crit_edge: ; preds = %hmm_range_need_fault.exit.thread79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

hmm_range_need_fault.exit.thread:                 ; preds = %for.body.i
  %vma60 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 3
  %18 = ptrtoint ptr %vma60 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vma60, align 4
  %tobool.not61 = icmp eq ptr %19, null
  br i1 %tobool.not61, label %hmm_range_need_fault.exit.thread.cleanup_crit_edge, label %if.end30.i.thread

hmm_range_need_fault.exit.thread.cleanup_crit_edge: ; preds = %hmm_range_need_fault.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end30.i.thread:                                ; preds = %hmm_range_need_fault.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  %last.i70 = getelementptr inbounds %struct.hmm_vma_walk, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %last.i70 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %addr, ptr %last.i70, align 4
  br label %if.then39.i

if.then:                                          ; preds = %hmm_range_need_fault.exit
  br i1 %tobool5.not, label %if.then.if.end_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %if.then.if.end_crit_edge, %hmm_range_need_fault.exit.thread79.if.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %end, i32 %addr)
  %cmp1.i34 = icmp ugt i32 %end, %addr
  br i1 %cmp1.i34, label %if.end.for.body.i38_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.for.body.i38_crit_edge:                    ; preds = %if.end
  br label %for.body.i38

for.body.i38:                                     ; preds = %for.body.i38.for.body.i38_crit_edge, %if.end.for.body.i38_crit_edge
  %i.03.i35 = phi i32 [ %inc.i37, %for.body.i38.for.body.i38_crit_edge ], [ %shr, %if.end.for.body.i38_crit_edge ]
  %addr.addr.02.i = phi i32 [ %add.i, %for.body.i38.for.body.i38_crit_edge ], [ %addr, %if.end.for.body.i38_crit_edge ]
  %21 = ptrtoint ptr %hmm_pfns4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hmm_pfns4, align 4
  %arrayidx.i36 = getelementptr i32, ptr %22, i32 %i.03.i35
  %23 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 536870912, ptr %arrayidx.i36, align 4
  %add.i = add i32 %addr.addr.02.i, 4096
  %inc.i37 = add i32 %i.03.i35, 1
  %cmp.i = icmp ult i32 %add.i, %end
  br i1 %cmp.i, label %for.body.i38.for.body.i38_crit_edge, label %for.body.i38.cleanup_crit_edge

for.body.i38.cleanup_crit_edge:                   ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i38.for.body.i38_crit_edge:              ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i38

if.end8:                                          ; preds = %hmm_range_need_fault.exit
  br i1 %tobool5.not, label %if.end8.if.end12_crit_edge, label %if.end30.i

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end30.i:                                       ; preds = %if.end8
  %last.i = getelementptr inbounds %struct.hmm_vma_walk, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %addr, ptr %last.i, align 4
  %and.i = and i32 %or2.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool38.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool38.not.i, label %if.end30.i.if.end44.i_crit_edge, label %if.end30.i.if.then39.i_crit_edge

if.end30.i.if.then39.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39.i

if.end30.i.if.end44.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44.i

if.then39.i:                                      ; preds = %if.end30.i.if.then39.i_crit_edge, %if.end30.i.thread
  %25 = phi ptr [ %19, %if.end30.i.thread ], [ %15, %if.end30.i.if.then39.i_crit_edge ]
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vm_flags.i, align 4
  %and40.i = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %if.then39.i.cleanup_crit_edge, label %if.then39.i.if.end44.i_crit_edge

if.then39.i.if.end44.i_crit_edge:                 ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44.i

if.then39.i.cleanup_crit_edge:                    ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end44.i:                                       ; preds = %if.then39.i.if.end44.i_crit_edge, %if.end30.i.if.end44.i_crit_edge
  %28 = phi ptr [ %15, %if.end30.i.if.end44.i_crit_edge ], [ %25, %if.then39.i.if.end44.i_crit_edge ]
  %fault_flags.0.i = phi i32 [ 128, %if.end30.i.if.end44.i_crit_edge ], [ 129, %if.then39.i.if.end44.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %end, i32 %addr)
  %cmp64.i = icmp ugt i32 %end, %addr
  br i1 %cmp64.i, label %if.end44.i.for.body.i43_crit_edge, label %if.end44.i.cleanup_crit_edge

if.end44.i.cleanup_crit_edge:                     ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end44.i.for.body.i43_crit_edge:                ; preds = %if.end44.i
  br label %for.body.i43

for.cond.i42:                                     ; preds = %for.body.i43
  %add.i40 = add i32 %addr.addr.065.i, 4096
  %cmp.i41 = icmp ult i32 %add.i40, %end
  br i1 %cmp.i41, label %for.cond.i42.for.body.i43_crit_edge, label %for.cond.i42.cleanup_crit_edge

for.cond.i42.cleanup_crit_edge:                   ; preds = %for.cond.i42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.i42.for.body.i43_crit_edge:              ; preds = %for.cond.i42
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i43

for.body.i43:                                     ; preds = %for.cond.i42.for.body.i43_crit_edge, %if.end44.i.for.body.i43_crit_edge
  %addr.addr.065.i = phi i32 [ %add.i40, %for.cond.i42.for.body.i43_crit_edge ], [ %addr, %if.end44.i.for.body.i43_crit_edge ]
  %call.i = tail call i32 @handle_mm_fault(ptr noundef %28, i32 noundef %addr.addr.065.i, i32 noundef %fault_flags.0.i, ptr noundef null) #5
  %and45.i = and i32 %call.i, 2163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %for.cond.i42, label %for.body.i43.cleanup_crit_edge

for.body.i43.cleanup_crit_edge:                   ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end8.if.end12_crit_edge, %hmm_range_need_fault.exit.thread79.if.end12_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %end, i32 %addr)
  %cmp1.i45 = icmp ugt i32 %end, %addr
  br i1 %cmp1.i45, label %if.end12.for.body.i57_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12.for.body.i57_crit_edge:                  ; preds = %if.end12
  br label %for.body.i57

for.body.i57:                                     ; preds = %for.body.i57.for.body.i57_crit_edge, %if.end12.for.body.i57_crit_edge
  %i.03.i51 = phi i32 [ %inc.i55, %for.body.i57.for.body.i57_crit_edge ], [ %shr, %if.end12.for.body.i57_crit_edge ]
  %addr.addr.02.i52 = phi i32 [ %add.i54, %for.body.i57.for.body.i57_crit_edge ], [ %addr, %if.end12.for.body.i57_crit_edge ]
  %29 = ptrtoint ptr %hmm_pfns4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hmm_pfns4, align 4
  %arrayidx.i53 = getelementptr i32, ptr %30, i32 %i.03.i51
  %31 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %arrayidx.i53, align 4
  %add.i54 = add i32 %addr.addr.02.i52, 4096
  %inc.i55 = add i32 %i.03.i51, 1
  %cmp.i56 = icmp ult i32 %add.i54, %end
  br i1 %cmp.i56, label %for.body.i57.for.body.i57_crit_edge, label %for.body.i57.cleanup_crit_edge

for.body.i57.cleanup_crit_edge:                   ; preds = %for.body.i57
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i57.for.body.i57_crit_edge:              ; preds = %for.body.i57
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i57

cleanup:                                          ; preds = %for.body.i57.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %for.body.i43.cleanup_crit_edge, %for.cond.i42.cleanup_crit_edge, %if.end44.i.cleanup_crit_edge, %if.then39.i.cleanup_crit_edge, %for.body.i38.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge, %hmm_range_need_fault.exit.thread.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %if.then.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -1, %if.then39.i.cleanup_crit_edge ], [ -16, %if.end44.i.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ -14, %hmm_range_need_fault.exit.thread.cleanup_crit_edge ], [ -16, %for.cond.i42.cleanup_crit_edge ], [ -14, %for.body.i43.cleanup_crit_edge ], [ 0, %for.body.i38.cleanup_crit_edge ], [ 0, %for.body.i57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hmm_vma_walk_test(i32 noundef %start, i32 noundef %end, ptr nocapture noundef readonly %walk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vma2 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 3
  %0 = ptrtoint ptr %vma2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vma2, align 4
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_flags, align 4
  %4 = and i32 %3, 17409
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %private = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 6
  %5 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %hmm_pfns = getelementptr inbounds %struct.hmm_range, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %hmm_pfns to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hmm_pfns, align 4
  %start6 = getelementptr inbounds %struct.hmm_range, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %start6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %start6, align 4
  %sub = sub i32 %start, %12
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr i32, ptr %10, i32 %shr
  %sub7 = sub i32 %end, %start
  %shr8 = lshr i32 %sub7, 12
  %default_flags.i = getelementptr inbounds %struct.hmm_range, ptr %8, i32 0, i32 5
  %13 = ptrtoint ptr %default_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %default_flags.i, align 4
  %pfn_flags_mask.i = getelementptr inbounds %struct.hmm_range, ptr %8, i32 0, i32 6
  %15 = ptrtoint ptr %pfn_flags_mask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pfn_flags_mask.i, align 4
  %or.i = or i32 %16, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool.not.i = icmp slt i32 %or.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %sub7)
  %cmp1.i = icmp ugt i32 %sub7, 4095
  %or.cond.i = and i1 %cmp1.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end.for.body.i_crit_edge, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %shr8
  br i1 %exitcond.not.i, label %hmm_range_need_fault.exit, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %required_fault.02.i = phi i32 [ %or2.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %add.ptr, i32 %i.03.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %and.i.i = and i32 %18, %16
  %or.i.i = or i32 %and.i.i, %14
  %and3.i.i = and i32 %or.i.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.not.i = icmp eq i32 %and3.i.i, 0
  %spec.select.i = select i1 %tobool4.not.i.not.i, i32 1, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %tobool.not.i.inv.i = icmp slt i32 %or.i.i, 0
  %retval.0.i.i = select i1 %tobool.not.i.inv.i, i32 %spec.select.i, i32 0
  %or2.i = or i32 %retval.0.i.i, %required_fault.02.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %or2.i)
  %cmp3.i = icmp eq i32 %or2.i, 3
  br i1 %cmp3.i, label %for.body.i.cleanup_crit_edge, label %for.cond.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

hmm_range_need_fault.exit:                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or2.i)
  %tobool9.not = icmp eq i32 %or2.i, 0
  br i1 %tobool9.not, label %hmm_range_need_fault.exit.if.end11_crit_edge, label %hmm_range_need_fault.exit.cleanup_crit_edge

hmm_range_need_fault.exit.cleanup_crit_edge:      ; preds = %hmm_range_need_fault.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

hmm_range_need_fault.exit.if.end11_crit_edge:     ; preds = %hmm_range_need_fault.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.end11:                                         ; preds = %hmm_range_need_fault.exit.if.end11_crit_edge, %if.end.if.end11_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %end, i32 %start)
  %cmp1.i23 = icmp ugt i32 %end, %start
  br i1 %cmp1.i23, label %if.end11.for.body.i27_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11.for.body.i27_crit_edge:                  ; preds = %if.end11
  br label %for.body.i27

for.body.i27:                                     ; preds = %for.body.i27.for.body.i27_crit_edge, %if.end11.for.body.i27_crit_edge
  %i.03.i24 = phi i32 [ %inc.i26, %for.body.i27.for.body.i27_crit_edge ], [ %shr, %if.end11.for.body.i27_crit_edge ]
  %addr.addr.02.i = phi i32 [ %add.i, %for.body.i27.for.body.i27_crit_edge ], [ %start, %if.end11.for.body.i27_crit_edge ]
  %19 = ptrtoint ptr %hmm_pfns to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hmm_pfns, align 4
  %arrayidx.i25 = getelementptr i32, ptr %20, i32 %i.03.i24
  %21 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 536870912, ptr %arrayidx.i25, align 4
  %add.i = add i32 %addr.addr.02.i, 4096
  %inc.i26 = add i32 %i.03.i24, 1
  %cmp.i = icmp ult i32 %add.i, %end
  br i1 %cmp.i, label %for.body.i27.for.body.i27_crit_edge, label %for.body.i27.cleanup_crit_edge

for.body.i27.cleanup_crit_edge:                   ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i27.for.body.i27_crit_edge:              ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i27

cleanup:                                          ; preds = %for.body.i27.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %hmm_range_need_fault.exit.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -14, %hmm_range_need_fault.exit.cleanup_crit_edge ], [ 1, %if.end11.cleanup_crit_edge ], [ 1, %for.body.i27.cleanup_crit_edge ], [ -14, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @migration_entry_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vm_normal_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @handle_mm_fault(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.named.register.sp = !{!11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @__ksymtab_hmm_range_fault, !1, !"__ksymtab_hmm_range_fault", i1 false, i1 false}
!1 = !{!"../mm/hmm.c", i32 603, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../include/linux/mmap_lock.h", i32 155, i32 2}
!4 = !{ptr @hmm_walk_ops, !5, !"hmm_walk_ops", i1 false, i1 false}
!5 = !{!"../mm/hmm.c", i32 549, i32 33}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../mm/hmm.c", i32 70, i32 2}
!10 = distinct !{null, !9, !"<string literal>", i1 false, i1 false}
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
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 2151241606, i64 2151242096, i64 2151241643, i64 2151241699, i64 2151241733, i64 2151241757, i64 2151241798, i64 2151241819, i64 2151241847, i64 2151241881}
!23 = !{i64 2154038607}
!24 = !{i64 2152747623}
!25 = !{i64 2152747830}
!26 = !{i64 2154041378}
