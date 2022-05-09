; ModuleID = '/llk/IR_all_yes/arch/arm/mm/flush.c_pt.bc'
source_filename = "../arch/arm/mm/flush.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+arm_heavy_mb\22, \22a\22\09"
module asm "\09.weak\09__crc_arm_heavy_mb\09\09\09\09"
module asm "\09.long\09__crc_arm_heavy_mb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arm_heavy_mb:\09\09\09\09\09"
module asm "\09.asciz \09\22arm_heavy_mb\22\09\09\09\09\09"
module asm "__kstrtabns_arm_heavy_mb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flush_dcache_page\22, \22a\22\09"
module asm "\09.weak\09__crc_flush_dcache_page\09\09\09\09"
module asm "\09.long\09__crc_flush_dcache_page\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flush_dcache_page:\09\09\09\09\09"
module asm "\09.asciz \09\22flush_dcache_page\22\09\09\09\09\09"
module asm "__kstrtabns_flush_dcache_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.rb_node, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mm_struct = type { %struct.anon, [0 x i32] }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.page = type { i32, %union.anon.3, %union.anon.70, %struct.atomic_t, i32 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.70 = type { %struct.atomic_t }
%struct.anon.64 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@soc_mb = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_arm_heavy_mb = external dso_local constant [0 x i8], align 1
@__kstrtabns_arm_heavy_mb = external dso_local constant [0 x i8], align 1
@__ksymtab_arm_heavy_mb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arm_heavy_mb to i32), ptr @__kstrtab_arm_heavy_mb, ptr @__kstrtabns_arm_heavy_mb }, section "___ksymtab+arm_heavy_mb", align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@empty_zero_page = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_flush_dcache_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_flush_dcache_page = external dso_local constant [0 x i8], align 1
@__ksymtab_flush_dcache_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flush_dcache_page to i32), ptr @__kstrtab_flush_dcache_page, ptr @__kstrtabns_flush_dcache_page }, section "___ksymtab+flush_dcache_page", align 4
@cacheid = external dso_local local_unnamed_addr global i32, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@top_pmd = external dso_local local_unnamed_addr global ptr, align 4
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@smp_on_up = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.4 = private unnamed_addr constant [7 x i8] c"soc_mb\00", align 1
@___asan_gen_.5 = private constant [23 x i8] c"../arch/arm/mm/flush.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 22, i32 8 }
@___asan_gen_.8 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 108, i32 2 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 698, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 260, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_arm_heavy_mb, ptr @__ksymtab_flush_dcache_page, ptr @soc_mb, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_mb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arm_heavy_mb() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 5) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 5), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %0() #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load ptr, ptr @soc_mb, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %1() #4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flush_cache_mm(ptr noundef %mm) local_unnamed_addr #0 align 64 {
if.end:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %0 = load i32, ptr @cacheid, align 4
  %and2.i = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool2.not = icmp eq i32 %and2.i, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr\09p15, 0, $0, c7, c14, 0\0A\09mcr\09p15, 0, $0, c7, c10, 4", "r,~{cc}"(i32 0) #4, !srcloc !25
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flush_cache_range(ptr nocapture noundef readonly %vma, i32 noundef %start, i32 noundef %end) local_unnamed_addr #0 align 64 {
if.end:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %0 = load i32, ptr @cacheid, align 4
  %and2.i = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool2.not = icmp eq i32 %and2.i, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr\09p15, 0, $0, c7, c14, 0\0A\09mcr\09p15, 0, $0, c7, c10, 4", "r,~{cc}"(i32 0) #4, !srcloc !26
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %1 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vm_flags, align 4
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end4.if.end7_crit_edge, label %if.then6

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_cache to i32))
  %3 = load ptr, ptr @cpu_cache, align 4
  tail call void %3() #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flush_cache_page(ptr nocapture noundef readonly %vma, i32 noundef %user_addr, i32 noundef %pfn) local_unnamed_addr #0 align 64 {
if.end:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %0 = load i32, ptr @cacheid, align 4
  %and2.i = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool2.not = icmp eq i32 %and2.i, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %shr.i = and i32 %user_addr, 12288
  %add.i13 = or i32 %shr.i, -49152
  %shl1.i = shl i32 %pfn, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %1 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %shl1.i, %1
  %or2.i = or i32 %or.i, 512
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @top_pmd to i32))
  %2 = load ptr, ptr @top_pmd, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %and1.i.i.i.i = and i32 %4, -4096
  %5 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and1.i.i.i.i, i32 -2130706432, i32 8454144) #7, !srcloc !28
  %6 = inttoptr i32 %5 to ptr
  %shr.i.i.i.i = lshr exact i32 %add.i13, 12
  %and.i.i.i.i = and i32 %shr.i.i.i.i, 503
  %add.ptr.i.i.i = getelementptr i32, ptr %6, i32 %and.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_vtable to i32))
  %7 = load ptr, ptr @cpu_vtable, align 4
  %set_pte_ext.i.i = getelementptr inbounds %struct.processor, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %set_pte_ext.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_pte_ext.i.i, align 4
  tail call void %9(ptr noundef %add.ptr.i.i.i, i32 noundef %or2.i, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %10 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %11 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %add.i13, i32 %11, i32 16) #4, !srcloc !30
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 1", "r,r,Ir,~{cc}"(i32 %add.i13, i32 %11, i32 32) #4, !srcloc !31
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 1", "r,r,Ir,~{cc}"(i32 %add.i13, i32 %11, i32 64) #4, !srcloc !32
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %add.i13, i32 %10, i32 1048576) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %sub.i = or i32 %shr.i, -45057
  tail call void asm sideeffect "mcrr\09p15, 0, $1, $0, c14\0A\09mcr\09p15, 0, $2, c7, c10, 4", "r,r,r,~{cc}"(i32 %add.i13, i32 %sub.i, i32 0) #4, !srcloc !36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_cache to i32))
  %12 = load ptr, ptr @cpu_cache, align 4
  tail call void %12() #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %13 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vm_flags, align 4
  %and = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end4.if.end9_crit_edge, label %land.lhs.true

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %15 = load i32, ptr @cacheid, align 4
  %and2.i14 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i14)
  %tobool7.not = icmp eq i32 %and2.i14, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end9_crit_edge, label %if.then8

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_cache to i32))
  %16 = load ptr, ptr @cpu_cache, align 4
  tail call void %16() #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %land.lhs.true.if.end9_crit_edge, %if.end4.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flush_uprobe_xol_access(ptr noundef %page, i32 noundef %uaddr, ptr noundef %kaddr, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__flush_ptrace_access(ptr noundef %page, i32 noundef %uaddr, ptr noundef %kaddr, i32 noundef %len, i32 noundef 3)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__flush_ptrace_access(ptr noundef %page, i32 noundef %uaddr, ptr noundef %kaddr, i32 noundef %len, i32 noundef %flags) unnamed_addr #1 align 64 {
if.end3:
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %0 = load i32, ptr @cacheid, align 4
  %and2.i = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool5.not = icmp eq i32 %and2.i, 0
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %1 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %2 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add7 = add i32 %sub.ptr.div, %2
  %shr.i = and i32 %uaddr, 12288
  %add.i = or i32 %shr.i, -49152
  %shl1.i = shl i32 %add7, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %3 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %3, %shl1.i
  %or2.i = or i32 %or.i, 512
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @top_pmd to i32))
  %4 = load ptr, ptr @top_pmd, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %and1.i.i.i.i = and i32 %6, -4096
  %7 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and1.i.i.i.i, i32 -2130706432, i32 8454144) #7, !srcloc !28
  %8 = inttoptr i32 %7 to ptr
  %shr.i.i.i.i = lshr exact i32 %add.i, 12
  %and.i.i.i.i = and i32 %shr.i.i.i.i, 503
  %add.ptr.i.i.i = getelementptr i32, ptr %8, i32 %and.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_vtable to i32))
  %9 = load ptr, ptr @cpu_vtable, align 4
  %set_pte_ext.i.i = getelementptr inbounds %struct.processor, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %set_pte_ext.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_pte_ext.i.i, align 4
  tail call void %11(ptr noundef %add.ptr.i.i.i, i32 noundef %or2.i, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %12 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %13 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %add.i, i32 %13, i32 16) #4, !srcloc !30
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 1", "r,r,Ir,~{cc}"(i32 %add.i, i32 %13, i32 32) #4, !srcloc !31
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 1", "r,r,Ir,~{cc}"(i32 %add.i, i32 %13, i32 64) #4, !srcloc !32
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %add.i, i32 %12, i32 1048576) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %sub.i = or i32 %shr.i, -45057
  tail call void asm sideeffect "mcrr\09p15, 0, $1, $0, c14\0A\09mcr\09p15, 0, $2, c7, c10, 4", "r,r,r,~{cc}"(i32 %add.i, i32 %sub.i, i32 0) #4, !srcloc !36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_cache to i32))
  %14 = load ptr, ptr @cpu_cache, align 4
  tail call void %14() #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  br label %if.end27

if.end8:                                          ; preds = %if.end3
  %and9 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end27_crit_edge, label %if.then11

if.end8.if.end27_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then11:                                        ; preds = %if.end8
  %and2.i36 = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i36)
  %tobool14.not = icmp eq i32 %and2.i36, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %15 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast16 = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast17 = ptrtoint ptr %15 to i32
  %sub.ptr.sub18 = sub i32 %sub.ptr.lhs.cast16, %sub.ptr.rhs.cast17
  %sub.ptr.div19 = sdiv exact i32 %sub.ptr.sub18, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %16 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add20 = add i32 %sub.ptr.div19, %16
  %shr.i37 = and i32 %uaddr, 12288
  %add.i38 = or i32 %shr.i37, -49152
  %and1.i = and i32 %uaddr, 4095
  %shl2.i = shl i32 %add20, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %17 = load i32, ptr @pgprot_kernel, align 4
  %or.i39 = or i32 %17, %shl2.i
  %or3.i = or i32 %or.i39, 512
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @top_pmd to i32))
  %18 = load ptr, ptr @top_pmd, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %and1.i.i.i.i40 = and i32 %20, -4096
  %21 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and1.i.i.i.i40, i32 -2130706432, i32 8454144) #7, !srcloc !28
  %22 = inttoptr i32 %21 to ptr
  %shr.i.i.i.i41 = lshr exact i32 %add.i38, 12
  %and.i.i.i.i42 = and i32 %shr.i.i.i.i41, 503
  %add.ptr.i.i.i43 = getelementptr i32, ptr %22, i32 %and.i.i.i.i42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_vtable to i32))
  %23 = load ptr, ptr @cpu_vtable, align 4
  %set_pte_ext.i.i44 = getelementptr inbounds %struct.processor, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %set_pte_ext.i.i44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_pte_ext.i.i44, align 4
  tail call void %25(ptr noundef %add.ptr.i.i.i43, i32 noundef %or3.i, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %26 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %27 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %add.i38, i32 %27, i32 16) #4, !srcloc !30
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 1", "r,r,Ir,~{cc}"(i32 %add.i38, i32 %27, i32 32) #4, !srcloc !31
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 1", "r,r,Ir,~{cc}"(i32 %add.i38, i32 %27, i32 64) #4, !srcloc !32
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %add.i38, i32 %26, i32 1048576) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %add4.i = or i32 %add.i38, %and1.i
  br label %if.end22

if.else:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %kaddr to i32
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then15
  %.sink48 = phi i32 [ %28, %if.else ], [ %add4.i, %if.then15 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %add21 = add i32 %.sink48, %len
  tail call void %29(i32 noundef %.sink48, i32 noundef %add21) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smp_on_up to i32))
  %30 = load i32, ptr @smp_on_up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.i.not.i = icmp eq i32 %30, 0
  br i1 %tobool.i.not.i, label %if.end22.if.end27_crit_edge, label %cache_ops_need_broadcast.exit

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

cache_ops_need_broadcast.exit:                    ; preds = %if.end22
  %31 = tail call i32 asm "mrc\09p15, 0, $0, c0, c1, 7", "=r,~{memory}"() #4, !srcloc !37
  %32 = and i32 %31, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.not = icmp eq i32 %32, 0
  br i1 %cmp.i.not, label %if.then25, label %cache_ops_need_broadcast.exit.if.end27_crit_edge

cache_ops_need_broadcast.exit.if.end27_crit_edge: ; preds = %cache_ops_need_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then25:                                        ; preds = %cache_ops_need_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @smp_call_function(ptr noundef nonnull @flush_ptrace_access_other, ptr noundef null, i32 noundef 1) #4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %cache_ops_need_broadcast.exit.if.end27_crit_edge, %if.end22.if.end27_crit_edge, %if.end8.if.end27_crit_edge, %if.then6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @copy_to_user_page(ptr nocapture noundef readonly %vma, ptr noundef %page, i32 noundef %uaddr, ptr noundef %dst, ptr nocapture noundef readonly %src, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !15) #4
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !38
  %4 = call ptr @memcpy(ptr %dst, ptr %src, i32 %len)
  %5 = tail call i32 @llvm.read_register.i32(metadata !15) #4
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %vm_mm.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %9 = ptrtoint ptr %vm_mm.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vm_mm.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %8)
  %cmp.not.i.i.i.i = icmp ugt i32 %11, %8
  br i1 %cmp.not.i.i.i.i, label %entry.flush_ptrace_access.exit_crit_edge, label %land.rhs.i.i.i.i

entry.flush_ptrace_access.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %flush_ptrace_access.exit

land.rhs.i.i.i.i:                                 ; preds = %entry
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.flush_ptrace_access.exit_crit_edge, label %if.then.i.i.i.i, !prof !39

land.rhs.i.i.i.i.flush_ptrace_access.exit_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %flush_ptrace_access.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %flush_ptrace_access.exit

flush_ptrace_access.exit:                         ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.flush_ptrace_access.exit_crit_edge, %entry.flush_ptrace_access.exit_crit_edge
  %cpu_bitmap.i.i = getelementptr inbounds %struct.mm_struct, ptr %10, i32 0, i32 1
  %div3.i.i.i = lshr i32 %8, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %cpu_bitmap.i.i, i32 %div3.i.i.i
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i7 = and i32 %8, 31
  %14 = shl nuw i32 1, %and.i.i.i7
  %15 = and i32 %13, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 2
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %16 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vm_flags.i, align 4
  %and.i = lshr i32 %17, 2
  %18 = and i32 %and.i, 1
  %19 = or i32 %18, %spec.select.i
  tail call fastcc void @__flush_ptrace_access(ptr noundef %page, i32 noundef %uaddr, ptr noundef %dst, i32 noundef %len, i32 noundef %19) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !40
  %20 = tail call i32 @llvm.read_register.i32(metadata !15) #4
  %and.i.i.i5 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i5 to ptr
  %preempt_count.i.i6 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i6, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__flush_dcache_page(ptr noundef readnone %mapping, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i, label %entry.if.then_crit_edge [
    i32 2, label %entry.if.else_crit_edge
    i32 3, label %is_highmem_idx.exit
  ]

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

is_highmem_idx.exit:                              ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not = icmp eq i32 %3, 2
  br i1 %cmp2.i.not, label %is_highmem_idx.exit.if.else_crit_edge, label %is_highmem_idx.exit.if.then_crit_edge

is_highmem_idx.exit.if.then_crit_edge:            ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

is_highmem_idx.exit.if.else_crit_edge:            ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then:                                          ; preds = %is_highmem_idx.exit.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  %call2 = tail call ptr @page_address(ptr noundef %page) #4
  %5 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i.not.i.i.i = icmp eq i32 %6, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %PageHead.exit.i.i, !prof !41

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.1) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #4, !srcloc !42
  unreachable

PageHead.exit.i.i:                                ; preds = %if.then
  %7 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %page, align 4
  %9 = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %PageHead.exit.i.i.page_size.exit_crit_edge, label %if.end.i.i

PageHead.exit.i.i.page_size.exit_crit_edge:       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %page_size.exit

if.end.i.i:                                       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %10 = getelementptr %struct.page, ptr %page, i32 1, i32 1
  %compound_order.i.i = getelementptr inbounds %struct.anon.64, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %compound_order.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %compound_order.i.i, align 1
  %conv.i.i = zext i8 %12 to i32
  br label %page_size.exit

page_size.exit:                                   ; preds = %if.end.i.i, %PageHead.exit.i.i.page_size.exit_crit_edge
  %retval.0.i.i = phi i32 [ %conv.i.i, %if.end.i.i ], [ 0, %PageHead.exit.i.i.page_size.exit_crit_edge ]
  %shl.i = shl i32 4096, %retval.0.i.i
  tail call void %4(ptr noundef %call2, i32 noundef %shl.i) #4
  br label %if.end27

if.else:                                          ; preds = %is_highmem_idx.exit.if.else_crit_edge, %entry.if.else_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %13 = load i32, ptr @cacheid, align 4
  %and2.i = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool5.not = icmp eq i32 %and2.i, 0
  %14 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i.not.i.i5068 = icmp eq i32 %15, -1
  br i1 %tobool5.not, label %for.cond13.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else
  br i1 %cmp.i.not.i.i5068, label %for.cond.preheader.if.then.i.i_crit_edge, label %PageHead.exit.i.lr.ph, !prof !41

for.cond.preheader.if.then.i.i_crit_edge:         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i

PageHead.exit.i.lr.ph:                            ; preds = %for.cond.preheader
  %compound_nr.i = getelementptr %struct.page, ptr %page, i32 1, i32 1, i32 0, i32 2
  br label %PageHead.exit.i

for.cond13.preheader:                             ; preds = %if.else
  br i1 %cmp.i.not.i.i5068, label %for.cond13.preheader.if.then.i.i51_crit_edge, label %PageHead.exit.i53.lr.ph, !prof !41

for.cond13.preheader.if.then.i.i51_crit_edge:     ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i51

PageHead.exit.i53.lr.ph:                          ; preds = %for.cond13.preheader
  %compound_nr.i54 = getelementptr %struct.page, ptr %page, i32 1, i32 1, i32 0, i32 2
  br label %PageHead.exit.i53

if.then.i.i:                                      ; preds = %for.body.if.then.i.i_crit_edge, %for.cond.preheader.if.then.i.i_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.1) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #4, !srcloc !42
  unreachable

PageHead.exit.i:                                  ; preds = %for.body.PageHead.exit.i_crit_edge, %PageHead.exit.i.lr.ph
  %i.067 = phi i32 [ 0, %PageHead.exit.i.lr.ph ], [ %inc, %for.body.PageHead.exit.i_crit_edge ]
  %16 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %page, align 4
  %18 = and i32 %17, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %PageHead.exit.i.compound_nr.exit_crit_edge, label %if.end.i

PageHead.exit.i.compound_nr.exit_crit_edge:       ; preds = %PageHead.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %compound_nr.exit

if.end.i:                                         ; preds = %PageHead.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %compound_nr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %compound_nr.i, align 4
  br label %compound_nr.exit

compound_nr.exit:                                 ; preds = %if.end.i, %PageHead.exit.i.compound_nr.exit_crit_edge
  %retval.0.i = phi i32 [ %20, %if.end.i ], [ 1, %PageHead.exit.i.compound_nr.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.067, i32 %retval.0.i)
  %cmp = icmp ult i32 %i.067, %retval.0.i
  br i1 %cmp, label %for.body, label %compound_nr.exit.if.end27_crit_edge

compound_nr.exit.if.end27_crit_edge:              ; preds = %compound_nr.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

for.body:                                         ; preds = %compound_nr.exit
  %add.ptr = getelementptr %struct.page, ptr %page, i32 %i.067
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %21 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %21, 512
  %22 = tail call i32 @llvm.read_register.i32(metadata !15) #4
  %and.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %25, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !43
  %26 = tail call i32 @llvm.read_register.i32(metadata !15) #4
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
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !44
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %32(ptr noundef %call.i.i, i32 noundef 4096) #4
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !45
  %33 = tail call i32 @llvm.read_register.i32(metadata !15) #4
  %and.i.i.i1.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 213
  %37 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %38, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !46
  %39 = tail call i32 @llvm.read_register.i32(metadata !15) #4
  %and.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %42, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %inc = add nuw i32 %i.067, 1
  %43 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %page, align 4
  %cmp.i.not.i.i = icmp eq i32 %44, -1
  br i1 %cmp.i.not.i.i, label %for.body.if.then.i.i_crit_edge, label %for.body.PageHead.exit.i_crit_edge, !prof !41

for.body.PageHead.exit.i_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %PageHead.exit.i

for.body.if.then.i.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i

for.cond13:                                       ; preds = %compound_nr.exit57
  %inc24 = add nuw i32 %i.169, 1
  %45 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %page, align 4
  %cmp.i.not.i.i50 = icmp eq i32 %46, -1
  br i1 %cmp.i.not.i.i50, label %for.cond13.if.then.i.i51_crit_edge, label %for.cond13.PageHead.exit.i53_crit_edge, !prof !41

for.cond13.PageHead.exit.i53_crit_edge:           ; preds = %for.cond13
  call void @__sanitizer_cov_trace_pc() #6
  br label %PageHead.exit.i53

for.cond13.if.then.i.i51_crit_edge:               ; preds = %for.cond13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i51

if.then.i.i51:                                    ; preds = %for.cond13.if.then.i.i51_crit_edge, %for.cond13.preheader.if.then.i.i51_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.1) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #4, !srcloc !42
  unreachable

PageHead.exit.i53:                                ; preds = %for.cond13.PageHead.exit.i53_crit_edge, %PageHead.exit.i53.lr.ph
  %i.169 = phi i32 [ 0, %PageHead.exit.i53.lr.ph ], [ %inc24, %for.cond13.PageHead.exit.i53_crit_edge ]
  %47 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %page, align 4
  %49 = and i32 %48, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i52 = icmp eq i32 %49, 0
  br i1 %tobool.not.i52, label %PageHead.exit.i53.compound_nr.exit57_crit_edge, label %if.end.i55

PageHead.exit.i53.compound_nr.exit57_crit_edge:   ; preds = %PageHead.exit.i53
  call void @__sanitizer_cov_trace_pc() #6
  br label %compound_nr.exit57

if.end.i55:                                       ; preds = %PageHead.exit.i53
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %compound_nr.i54 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %compound_nr.i54, align 4
  br label %compound_nr.exit57

compound_nr.exit57:                               ; preds = %if.end.i55, %PageHead.exit.i53.compound_nr.exit57_crit_edge
  %retval.0.i56 = phi i32 [ %51, %if.end.i55 ], [ 1, %PageHead.exit.i53.compound_nr.exit57_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.169, i32 %retval.0.i56)
  %cmp15 = icmp ult i32 %i.169, %retval.0.i56
  br i1 %cmp15, label %for.cond13, label %compound_nr.exit57.if.end27_crit_edge

compound_nr.exit57.if.end27_crit_edge:            ; preds = %compound_nr.exit57
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.end27:                                         ; preds = %compound_nr.exit57.if.end27_crit_edge, %compound_nr.exit.if.end27_crit_edge, %page_size.exit
  %tobool28.not = icmp eq ptr %mapping, null
  br i1 %tobool28.not, label %if.end27.if.end32_crit_edge, label %land.lhs.true

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %52 = load i32, ptr @cacheid, align 4
  %and2.i58 = and i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i58)
  %tobool30.not = icmp eq i32 %and2.i58, 0
  br i1 %tobool30.not, label %land.lhs.true.if.end32_crit_edge, label %if.then31

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %53 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %53 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %54 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %54
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %55 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %index, align 4
  %shl = shl i32 %56, 12
  %shr.i59 = and i32 %shl, 12288
  %add.i = or i32 %shr.i59, -49152
  %shl1.i = shl i32 %add, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %57 = load i32, ptr @pgprot_kernel, align 4
  %or.i60 = or i32 %57, %shl1.i
  %or2.i = or i32 %or.i60, 512
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @top_pmd to i32))
  %58 = load ptr, ptr @top_pmd, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %and1.i.i.i.i = and i32 %60, -4096
  %61 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and1.i.i.i.i, i32 -2130706432, i32 8454144) #7, !srcloc !28
  %62 = inttoptr i32 %61 to ptr
  %shr.i.i.i.i = lshr exact i32 %add.i, 12
  %and.i.i.i.i61 = and i32 %shr.i.i.i.i, 503
  %add.ptr.i.i.i = getelementptr i32, ptr %62, i32 %and.i.i.i.i61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_vtable to i32))
  %63 = load ptr, ptr @cpu_vtable, align 4
  %set_pte_ext.i.i = getelementptr inbounds %struct.processor, ptr %63, i32 0, i32 9
  %64 = ptrtoint ptr %set_pte_ext.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %set_pte_ext.i.i, align 4
  tail call void %65(ptr noundef %add.ptr.i.i.i, i32 noundef %or2.i, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %66 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %67 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %add.i, i32 %67, i32 16) #4, !srcloc !30
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 1", "r,r,Ir,~{cc}"(i32 %add.i, i32 %67, i32 32) #4, !srcloc !31
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 1", "r,r,Ir,~{cc}"(i32 %add.i, i32 %67, i32 64) #4, !srcloc !32
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %add.i, i32 %66, i32 1048576) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %sub.i = or i32 %shr.i59, -45057
  tail call void asm sideeffect "mcrr\09p15, 0, $1, $0, c14\0A\09mcr\09p15, 0, $2, c7, c10, 4", "r,r,r,~{cc}"(i32 %add.i, i32 %sub.i, i32 0) #4, !srcloc !36
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %land.lhs.true.if.end32_crit_edge, %if.end27.if.end32_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__sync_icache_dcache(i32 noundef %pteval) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %0 = load i32, ptr @cacheid, align 4
  %and2.i = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not = icmp eq i32 %and2.i, 0
  %and = and i32 %pteval, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i32 %pteval, 12
  %call3 = tail call i32 @pfn_valid(i32 noundef %shr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %1 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %2 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %shr, %2
  %add.ptr = getelementptr %struct.page, ptr %1, i32 %sub
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %3 = load i32, ptr @cacheid, align 4
  %and2.i27 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i27)
  %tobool8.not = icmp eq i32 %and2.i27, 0
  br i1 %tobool8.not, label %if.end6.if.end11_crit_edge, label %if.then9

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  %4 = getelementptr %struct.page, ptr %1, i32 %sub, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !39

if.then.i.i:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %add.ptr to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %9 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i, !prof !39

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.2) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #4, !srcloc !47
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %_compound_head.exit.i
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %8, align 4
  %14 = and i32 %13, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.if.end.i_crit_edge, label %land.rhs.i.i

folio_test_swapbacked.exit.i.i.if.end.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %9, align 4
  %and.i.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_swapcache.exit.i, label %if.then.i.i.i, !prof !39

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.2) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #4, !srcloc !47
  unreachable

folio_test_swapcache.exit.i:                      ; preds = %land.rhs.i.i
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %8, align 4
  %19 = and i32 %18, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not.i = icmp eq i32 %19, 0
  br i1 %tobool.i.not.i, label %folio_test_swapcache.exit.i.if.end.i_crit_edge, label %folio_test_swapcache.exit.i.if.end11_crit_edge, !prof !39

folio_test_swapcache.exit.i.if.end11_crit_edge:   ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

folio_test_swapcache.exit.i.if.end.i_crit_edge:   ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.end.i:                                         ; preds = %folio_test_swapcache.exit.i.if.end.i_crit_edge, %folio_test_swapbacked.exit.i.i.if.end.i_crit_edge
  %call3.i = tail call ptr @folio_mapping(ptr noundef %8) #4
  br label %if.end11

if.end11:                                         ; preds = %if.end.i, %folio_test_swapcache.exit.i.if.end11_crit_edge, %if.end6.if.end11_crit_edge
  %mapping.0 = phi ptr [ null, %if.end6.if.end11_crit_edge ], [ %call3.i, %if.end.i ], [ null, %folio_test_swapcache.exit.i.if.end11_crit_edge ]
  %call12 = tail call i32 @_test_and_set_bit(i32 noundef 11, ptr noundef %add.ptr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end11.if.end15_crit_edge

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__flush_dcache_page(ptr noundef %mapping.0, ptr noundef %add.ptr)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end11.if.end15_crit_edge
  br i1 %tobool1.not, label %if.then18, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_cache to i32))
  %20 = load ptr, ptr @cpu_cache, align 4
  tail call void %20() #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flush_dcache_page(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @empty_zero_page to i32))
  %0 = load ptr, ptr @empty_zero_page, align 4
  %cmp = icmp eq ptr %0, %page
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smp_on_up to i32))
  %1 = load i32, ptr @smp_on_up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i, label %if.end.land.lhs.true_crit_edge, label %cache_ops_need_broadcast.exit

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

cache_ops_need_broadcast.exit:                    ; preds = %if.end
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c0, c1, 7", "=r,~{memory}"() #4, !srcloc !37
  %3 = and i32 %2, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %cache_ops_need_broadcast.exit.if.end9_crit_edge, label %cache_ops_need_broadcast.exit.land.lhs.true_crit_edge

cache_ops_need_broadcast.exit.land.lhs.true_crit_edge: ; preds = %cache_ops_need_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

cache_ops_need_broadcast.exit.if.end9_crit_edge:  ; preds = %cache_ops_need_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

land.lhs.true:                                    ; preds = %cache_ops_need_broadcast.exit.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %4 = load i32, ptr @cacheid, align 4
  %and2.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool2.not = icmp eq i32 %and2.i, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end9_crit_edge, label %if.then3

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then3:                                         ; preds = %land.lhs.true
  %5 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %page, align 4
  %7 = and i32 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %if.then3.cleanup_crit_edge, label %if.then6

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %page) #4
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %cache_ops_need_broadcast.exit.if.end9_crit_edge
  %8 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !39

if.then.i.i:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i.i = add i32 %10, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %11, %if.end.i.i ]
  %12 = inttoptr i32 %retval.0.i.i to ptr
  %13 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and.i.i.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i, !prof !39

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dump_page(ptr noundef %12, ptr noundef nonnull @.str.2) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #4, !srcloc !47
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %_compound_head.exit.i
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %12, align 4
  %18 = and i32 %17, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.if.end.i45_crit_edge, label %land.rhs.i.i

folio_test_swapbacked.exit.i.i.if.end.i45_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i45

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %13, align 4
  %and.i.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_swapcache.exit.i, label %if.then.i.i.i, !prof !39

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dump_page(ptr noundef %12, ptr noundef nonnull @.str.2) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #4, !srcloc !47
  unreachable

folio_test_swapcache.exit.i:                      ; preds = %land.rhs.i.i
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %12, align 4
  %23 = and i32 %22, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i.not.i44 = icmp eq i32 %23, 0
  br i1 %tobool.i.not.i44, label %folio_test_swapcache.exit.i.if.end.i45_crit_edge, label %folio_test_swapcache.exit.i.page_mapping_file.exit_crit_edge, !prof !39

folio_test_swapcache.exit.i.page_mapping_file.exit_crit_edge: ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %page_mapping_file.exit

folio_test_swapcache.exit.i.if.end.i45_crit_edge: ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i45

if.end.i45:                                       ; preds = %folio_test_swapcache.exit.i.if.end.i45_crit_edge, %folio_test_swapbacked.exit.i.i.if.end.i45_crit_edge
  %call3.i = tail call ptr @folio_mapping(ptr noundef %12) #4
  br label %page_mapping_file.exit

page_mapping_file.exit:                           ; preds = %if.end.i45, %folio_test_swapcache.exit.i.page_mapping_file.exit_crit_edge
  %retval.0.i46 = phi ptr [ %call3.i, %if.end.i45 ], [ null, %folio_test_swapcache.exit.i.page_mapping_file.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smp_on_up to i32))
  %24 = load i32, ptr @smp_on_up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not.i47 = icmp eq i32 %24, 0
  br i1 %tobool.i.not.i47, label %page_mapping_file.exit.cache_ops_need_broadcast.exit52_crit_edge, label %if.end.i50

page_mapping_file.exit.cache_ops_need_broadcast.exit52_crit_edge: ; preds = %page_mapping_file.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cache_ops_need_broadcast.exit52

if.end.i50:                                       ; preds = %page_mapping_file.exit
  call void @__sanitizer_cov_trace_pc() #6
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c0, c1, 7", "=r,~{memory}"() #4, !srcloc !37
  %26 = and i32 %25, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i48 = icmp eq i32 %26, 0
  br label %cache_ops_need_broadcast.exit52

cache_ops_need_broadcast.exit52:                  ; preds = %if.end.i50, %page_mapping_file.exit.cache_ops_need_broadcast.exit52_crit_edge
  %retval.0.i51 = phi i1 [ %cmp.i48, %if.end.i50 ], [ false, %page_mapping_file.exit.cache_ops_need_broadcast.exit52_crit_edge ]
  %tobool14.not = icmp eq ptr %retval.0.i46, null
  %or.cond = select i1 %retval.0.i51, i1 true, i1 %tobool14.not
  br i1 %or.cond, label %cache_ops_need_broadcast.exit52.if.else_crit_edge, label %land.lhs.true15

cache_ops_need_broadcast.exit52.if.else_crit_edge: ; preds = %cache_ops_need_broadcast.exit52
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true15:                                  ; preds = %cache_ops_need_broadcast.exit52
  %27 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %page, align 4
  %29 = and i32 %28, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i53 = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i53, label %PageCompound.exit.i, label %land.lhs.true15.if.then.i_crit_edge

land.lhs.true15.if.then.i_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

PageCompound.exit.i:                              ; preds = %land.lhs.true15
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %8, align 4
  %and.i.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i55, label %PageCompound.exit.i.if.then.i_crit_edge, !prof !39

PageCompound.exit.i.if.then.i_crit_edge:          ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

if.then.i:                                        ; preds = %PageCompound.exit.i.if.then.i_crit_edge, %land.lhs.true15.if.then.i_crit_edge
  %call3.i54 = tail call i32 @__page_mapcount(ptr noundef %page) #4
  br label %page_mapcount.exit

if.end.i55:                                       ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %32 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %32, i32 noundef 4) #4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %add.i = add i32 %34, 1
  br label %page_mapcount.exit

page_mapcount.exit:                               ; preds = %if.end.i55, %if.then.i
  %retval.0.i56 = phi i32 [ %call3.i54, %if.then.i ], [ %add.i, %if.end.i55 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i56)
  %tobool17.not = icmp eq i32 %retval.0.i56, 0
  br i1 %tobool17.not, label %if.then18, label %page_mapcount.exit.if.else_crit_edge

page_mapcount.exit.if.else_crit_edge:             ; preds = %page_mapcount.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then18:                                        ; preds = %page_mapcount.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %page) #4
  br label %cleanup

if.else:                                          ; preds = %page_mapcount.exit.if.else_crit_edge, %cache_ops_need_broadcast.exit52.if.else_crit_edge
  tail call void @__flush_dcache_page(ptr noundef %retval.0.i46, ptr noundef %page)
  br i1 %tobool14.not, label %if.else.if.end29_crit_edge, label %if.then27.critedge

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.then27.critedge:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_cache to i32))
  %35 = load ptr, ptr @cpu_cache, align 4
  tail call void %35() #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  br label %if.end29

if.end29:                                         ; preds = %if.then27.critedge, %if.else.if.end29_crit_edge
  tail call void @_set_bit(i32 noundef 11, ptr noundef %page) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then18, %if.then6, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__flush_anon_page(ptr nocapture noundef readonly %vma, ptr noundef %page, i32 noundef %vmaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %0 = load i32, ptr @cacheid, align 4
  %and2.i = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not = icmp eq i32 %and2.i, 0
  br i1 %tobool.not, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %1 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %2 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %2
  %shr.i = and i32 %vmaddr, 12288
  %add.i = or i32 %shr.i, -49152
  %shl1.i = shl i32 %add, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %3 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %3, %shl1.i
  %or2.i = or i32 %or.i, 512
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @top_pmd to i32))
  %4 = load ptr, ptr @top_pmd, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %and1.i.i.i.i = and i32 %6, -4096
  %7 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and1.i.i.i.i, i32 -2130706432, i32 8454144) #7, !srcloc !28
  %8 = inttoptr i32 %7 to ptr
  %shr.i.i.i.i = lshr exact i32 %add.i, 12
  %and.i.i.i.i = and i32 %shr.i.i.i.i, 503
  %add.ptr.i.i.i = getelementptr i32, ptr %8, i32 %and.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_vtable to i32))
  %9 = load ptr, ptr @cpu_vtable, align 4
  %set_pte_ext.i.i = getelementptr inbounds %struct.processor, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %set_pte_ext.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_pte_ext.i.i, align 4
  tail call void %11(ptr noundef %add.ptr.i.i.i, i32 noundef %or2.i, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %12 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %13 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %add.i, i32 %13, i32 16) #4, !srcloc !30
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 1", "r,r,Ir,~{cc}"(i32 %add.i, i32 %13, i32 32) #4, !srcloc !31
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 1", "r,r,Ir,~{cc}"(i32 %add.i, i32 %13, i32 64) #4, !srcloc !32
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %add.i, i32 %12, i32 1048576) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %sub.i = or i32 %shr.i, -45057
  tail call void asm sideeffect "mcrr\09p15, 0, $1, $0, c14\0A\09mcr\09p15, 0, $2, c7, c10, 4", "r,r,r,~{cc}"(i32 %add.i, i32 %sub.i, i32 0) #4, !srcloc !36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_cache to i32))
  %14 = load ptr, ptr @cpu_cache, align 4
  tail call void %14() #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  %call5 = tail call ptr @page_address(ptr noundef %page) #4
  tail call void %15(ptr noundef %call5, i32 noundef 4096) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_call_function(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flush_ptrace_access_other(ptr nocapture noundef readnone %args) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_cache to i32))
  %0 = load ptr, ptr @cpu_cache, align 4
  tail call void %0() #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @folio_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_mapcount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13}
!llvm.named.register.sp = !{!15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__ksymtab_arm_heavy_mb, !1, !"__ksymtab_arm_heavy_mb", i1 false, i1 false}
!1 = !{!"../arch/arm/mm/flush.c", i32 33, i32 1}
!2 = !{ptr @__ksymtab_flush_dcache_page, !3, !"__ksymtab_flush_dcache_page", i1 false, i1 false}
!3 = !{!"../arch/arm/mm/flush.c", i32 346, i32 1}
!4 = !{ptr @soc_mb, !5, !"soc_mb", i1 false, i1 false}
!5 = !{!"../arch/arm/mm/flush.c", i32 22, i32 8}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!13 = distinct !{null, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!15 = !{!"sp"}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 1505, i64 1539}
!26 = !{i64 1827, i64 1861}
!27 = !{i64 2153540341}
!28 = !{i64 2149084878, i64 2149084901, i64 2149084933, i64 2149084965, i64 2149085003, i64 2149085033}
!29 = !{i64 2152455367}
!30 = !{i64 2152446838, i64 2152446851}
!31 = !{i64 2152449059, i64 2152449072}
!32 = !{i64 2152451280, i64 2152451293}
!33 = !{i64 2152455664, i64 2152455677}
!34 = !{i64 2152459537}
!35 = !{i64 2152459622}
!36 = !{i64 878, i64 909}
!37 = !{i64 2154144641}
!38 = !{i64 2154587824}
!39 = !{!"branch_weights", i32 2000, i32 1}
!40 = !{i64 2154587921}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{i64 2150936584, i64 2150937075, i64 2150936621, i64 2150936677, i64 2150936711, i64 2150936735, i64 2150936776, i64 2150936797, i64 2150936825, i64 2150936859}
!43 = !{i64 2153803900}
!44 = !{i64 2152973606}
!45 = !{i64 2152973813}
!46 = !{i64 2153806671}
!47 = !{i64 2150169798, i64 2150170289, i64 2150169835, i64 2150169891, i64 2150169925, i64 2150169949, i64 2150169990, i64 2150170011, i64 2150170039, i64 2150170073}
