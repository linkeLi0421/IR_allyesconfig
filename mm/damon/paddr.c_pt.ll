; ModuleID = '/llk/IR_all_yes/mm/damon/paddr.c_pt.bc'
source_filename = "../mm/damon/paddr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rmap_walk_control = type { ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.18 }
%struct.atomic_t = type { i32 }
%union.anon.18 = type { i32 }
%struct.damon_ctx = type { i32, i32, i32, %struct.timespec64, %struct.timespec64, ptr, %struct.mutex, %struct.damon_primitive, %struct.damon_callback, i32, i32, %struct.list_head, %struct.list_head }
%struct.timespec64 = type { i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.damon_primitive = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.damon_callback = type { ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.damos = type { i32, i32, i32, i32, i32, i32, i32, %struct.damos_quota, %struct.damos_watermarks, %struct.damos_stat, %struct.list_head }
%struct.damos_quota = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, [100 x i32], i32 }
%struct.damos_watermarks = type { i32, i32, i32, i32, i32, i8 }
%struct.damos_stat = type { i32, i32, i32, i32, i32 }
%struct.damon_addr_range = type { i32, i32 }
%struct.page = type { i32, %union.anon.7, %union.anon.49, %struct.atomic_t, i32 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.49 = type { %struct.atomic_t }
%struct.anon.83 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.page_vma_mapped_walk = type { ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.3, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.damon_pa_access_chk_result = type { i32, i8 }
%struct.anon.2 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.72, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.50 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__const.damon_pa_mkold.rwc = private unnamed_addr constant %struct.rmap_walk_control { ptr null, ptr @__damon_pa_mkold, ptr null, ptr @page_lock_anon_vma_read, ptr null }, align 4
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__damon_pa_check_access.last_addr = internal unnamed_addr global i32 0, align 4
@__damon_pa_check_access.last_page_sz = internal unnamed_addr global i32 4096, align 4
@__damon_pa_check_access.last_accessed = internal unnamed_addr global i8 0, align 1
@__damon_pa_young.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mm/damon/paddr.c\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 260, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 717, i32 2 }
@___asan_gen_.12 = private constant [20 x i8] c"../mm/damon/paddr.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 117, i32 4 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 417, i32 1 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @damon_pa_target_valid(ptr nocapture readnone %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @damon_pa_set_primitives(ptr nocapture noundef writeonly %ctx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %primitive = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 7
  %0 = ptrtoint ptr %primitive to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %primitive, align 8
  %update = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %update to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %update, align 4
  %prepare_access_checks = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %prepare_access_checks to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @damon_pa_prepare_access_checks, ptr %prepare_access_checks, align 8
  %check_accesses = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 7, i32 3
  %3 = ptrtoint ptr %check_accesses to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @damon_pa_check_accesses, ptr %check_accesses, align 4
  %reset_aggregated = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 7, i32 4
  %4 = ptrtoint ptr %reset_aggregated to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %reset_aggregated, align 8
  %target_valid = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 7, i32 7
  %5 = ptrtoint ptr %target_valid to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @damon_pa_target_valid, ptr %target_valid, align 4
  %cleanup = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 7, i32 8
  %6 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %cleanup, align 8
  %apply_scheme = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 7, i32 6
  %7 = ptrtoint ptr %apply_scheme to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @damon_pa_apply_scheme, ptr %apply_scheme, align 8
  %get_scheme_score = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 7, i32 5
  %8 = ptrtoint ptr %get_scheme_score to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @damon_pa_scheme_score, ptr %get_scheme_score, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @damon_pa_prepare_access_checks(ptr noundef readonly %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adaptive_targets = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 11
  %0 = ptrtoint ptr %adaptive_targets to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn35 = load ptr, ptr %adaptive_targets, align 4
  %cmp.not36 = icmp eq ptr %.pn35, %adaptive_targets
  br i1 %cmp.not36, label %entry.for.end23_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end23

for.cond.loopexit:                                ; preds = %for.body11.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %1 = ptrtoint ptr %.pn37 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn37, align 4
  %cmp.not = icmp eq ptr %.pn, %adaptive_targets
  br i1 %cmp.not, label %for.cond.loopexit.for.end23_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.loopexit.for.end23_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end23

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn37 = phi ptr [ %.pn, %for.cond.loopexit.for.body_crit_edge ], [ %.pn35, %entry.for.body_crit_edge ]
  %regions_list = getelementptr i8, ptr %.pn37, i32 -8
  %2 = ptrtoint ptr %regions_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn3132 = load ptr, ptr %regions_list, align 4
  %cmp9.not33 = icmp eq ptr %.pn3132, %regions_list
  br i1 %cmp9.not33, label %for.body.for.cond.loopexit_crit_edge, label %for.body.for.body11_crit_edge

for.body.for.body11_crit_edge:                    ; preds = %for.body
  br label %for.body11

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %for.body.for.body11_crit_edge
  %.pn3134 = phi ptr [ %.pn31, %for.body11.for.body11_crit_edge ], [ %.pn3132, %for.body.for.body11_crit_edge ]
  %r.0 = getelementptr i8, ptr %.pn3134, i32 -16
  %3 = ptrtoint ptr %r.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %r.0, align 4
  %end.i = getelementptr i8, ptr %.pn3134, i32 -12
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end.i, align 4
  %sub.i.i = sub i32 %6, %4
  %call.i.i.i = tail call i32 @prandom_u32() #8
  %conv.i.i.i = zext i32 %call.i.i.i to i64
  %conv1.i.i.i = zext i32 %sub.i.i to i64
  %mul.i.i.i = mul nuw i64 %conv.i.i.i, %conv1.i.i.i
  %shr.i.i.i = lshr i64 %mul.i.i.i, 32
  %conv2.i.i.i = trunc i64 %shr.i.i.i to i32
  %add.i.i = add i32 %4, %conv2.i.i.i
  %sampling_addr.i = getelementptr i8, ptr %.pn3134, i32 -8
  %7 = ptrtoint ptr %sampling_addr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add.i.i, ptr %sampling_addr.i, align 4
  tail call fastcc void @damon_pa_mkold(i32 noundef %add.i.i) #8
  %8 = ptrtoint ptr %.pn3134 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn31 = load ptr, ptr %.pn3134, align 4
  %cmp9.not = icmp eq ptr %.pn31, %regions_list
  br i1 %cmp9.not, label %for.body11.for.cond.loopexit_crit_edge, label %for.body11.for.body11_crit_edge

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body11

for.body11.for.cond.loopexit_crit_edge:           ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit

for.end23:                                        ; preds = %for.cond.loopexit.for.end23_crit_edge, %entry.for.end23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @damon_pa_check_accesses(ptr noundef readonly %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adaptive_targets = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 11
  %0 = ptrtoint ptr %adaptive_targets to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn42 = load ptr, ptr %adaptive_targets, align 4
  %cmp.not43 = icmp eq ptr %.pn42, %adaptive_targets
  br i1 %cmp.not43, label %entry.for.end25_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end25

for.cond.loopexit:                                ; preds = %__damon_pa_check_access.exit.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %max_nr_accesses.1.lcssa = phi i32 [ %max_nr_accesses.044, %for.body.for.cond.loopexit_crit_edge ], [ %18, %__damon_pa_check_access.exit.for.cond.loopexit_crit_edge ]
  %1 = ptrtoint ptr %.pn45 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn45, align 4
  %cmp.not = icmp eq ptr %.pn, %adaptive_targets
  br i1 %cmp.not, label %for.cond.loopexit.for.end25_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.loopexit.for.end25_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end25

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn45 = phi ptr [ %.pn, %for.cond.loopexit.for.body_crit_edge ], [ %.pn42, %entry.for.body_crit_edge ]
  %max_nr_accesses.044 = phi i32 [ %max_nr_accesses.1.lcssa, %for.cond.loopexit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %regions_list = getelementptr i8, ptr %.pn45, i32 -8
  %2 = ptrtoint ptr %regions_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn3738 = load ptr, ptr %regions_list, align 4
  %cmp9.not39 = icmp eq ptr %.pn3738, %regions_list
  br i1 %cmp9.not39, label %for.body.for.cond.loopexit_crit_edge, label %for.body.for.body11_crit_edge

for.body.for.body11_crit_edge:                    ; preds = %for.body
  br label %for.body11

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit

for.body11:                                       ; preds = %__damon_pa_check_access.exit.for.body11_crit_edge, %for.body.for.body11_crit_edge
  %.pn3741 = phi ptr [ %.pn37, %__damon_pa_check_access.exit.for.body11_crit_edge ], [ %.pn3738, %for.body.for.body11_crit_edge ]
  %max_nr_accesses.140 = phi i32 [ %18, %__damon_pa_check_access.exit.for.body11_crit_edge ], [ %max_nr_accesses.044, %for.body.for.body11_crit_edge ]
  %3 = load i32, ptr @__damon_pa_check_access.last_addr, align 4
  %4 = load i32, ptr @__damon_pa_check_access.last_page_sz, align 4
  %neg.i = sub i32 0, %4
  %sampling_addr.i = getelementptr i8, ptr %.pn3741, i32 -8
  %5 = ptrtoint ptr %sampling_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sampling_addr.i, align 4
  %7 = xor i32 %6, %3
  %8 = and i32 %7, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.then.i, label %if.end12.i

if.then.i:                                        ; preds = %for.body11
  %9 = load i8, ptr @__damon_pa_check_access.last_accessed, align 1, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then.i.__damon_pa_check_access.exit_crit_edge, label %if.then11.i

if.then.i.__damon_pa_check_access.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__damon_pa_check_access.exit

if.then11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %nr_accesses.i = getelementptr i8, ptr %.pn3741, i32 -4
  %10 = ptrtoint ptr %nr_accesses.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_accesses.i, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %nr_accesses.i, align 4
  br label %__damon_pa_check_access.exit

if.end12.i:                                       ; preds = %for.body11
  %call.i = tail call fastcc zeroext i1 @damon_pa_young(i32 noundef %6) #8
  %frombool.i = zext i1 %call.i to i8
  store i8 %frombool.i, ptr @__damon_pa_check_access.last_accessed, align 1
  br i1 %call.i, label %if.then15.i, label %if.end12.i.if.end18.i_crit_edge

if.end12.i.if.end18.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %nr_accesses16.i = getelementptr i8, ptr %.pn3741, i32 -4
  %12 = ptrtoint ptr %nr_accesses16.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_accesses16.i, align 4
  %inc17.i = add i32 %13, 1
  store i32 %inc17.i, ptr %nr_accesses16.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %if.end12.i.if.end18.i_crit_edge
  %14 = ptrtoint ptr %sampling_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sampling_addr.i, align 4
  store i32 %15, ptr @__damon_pa_check_access.last_addr, align 4
  br label %__damon_pa_check_access.exit

__damon_pa_check_access.exit:                     ; preds = %if.end18.i, %if.then11.i, %if.then.i.__damon_pa_check_access.exit_crit_edge
  %nr_accesses = getelementptr i8, ptr %.pn3741, i32 -4
  %16 = ptrtoint ptr %nr_accesses to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_accesses, align 4
  %18 = tail call i32 @llvm.umax.i32(i32 %17, i32 %max_nr_accesses.140)
  %19 = ptrtoint ptr %.pn3741 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn37 = load ptr, ptr %.pn3741, align 4
  %cmp9.not = icmp eq ptr %.pn37, %regions_list
  br i1 %cmp9.not, label %__damon_pa_check_access.exit.for.cond.loopexit_crit_edge, label %__damon_pa_check_access.exit.for.body11_crit_edge

__damon_pa_check_access.exit.for.body11_crit_edge: ; preds = %__damon_pa_check_access.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body11

__damon_pa_check_access.exit.for.cond.loopexit_crit_edge: ; preds = %__damon_pa_check_access.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit

for.end25:                                        ; preds = %for.cond.loopexit.for.end25_crit_edge, %entry.for.end25_crit_edge
  %max_nr_accesses.0.lcssa = phi i32 [ 0, %entry.for.end25_crit_edge ], [ %max_nr_accesses.1.lcssa, %for.cond.loopexit.for.end25_crit_edge ]
  ret i32 %max_nr_accesses.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @damon_pa_apply_scheme(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readnone %t, ptr nocapture noundef readonly %r, ptr nocapture noundef readonly %scheme) #2 align 64 {
entry:
  %page_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %page_list) #8
  %0 = getelementptr inbounds %struct.list_head, ptr %page_list, i32 0, i32 1
  %1 = ptrtoint ptr %page_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %page_list, ptr %page_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %page_list, ptr %0, align 4
  %action = getelementptr inbounds %struct.damos, ptr %scheme, i32 0, i32 6
  %3 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %action, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.not = icmp eq i32 %4, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup16_crit_edge

entry.cleanup16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup16

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %r, align 4
  %end = getelementptr inbounds %struct.damon_addr_range, ptr %r, i32 0, i32 1
  %7 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp290 = icmp ult i32 %6, %8
  br i1 %cmp290, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end.for.body_crit_edge
  %addr.091 = phi i32 [ %add, %cleanup.for.body_crit_edge ], [ %6, %if.end.for.body_crit_edge ]
  %shr = lshr i32 %addr.091, 12
  %call = call ptr @damon_get_page(i32 noundef %shr) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end4

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %for.body
  %9 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !28

if.then.i.i:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %11, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %12, %if.end.i.i ]
  %13 = inttoptr i32 %retval.0.i.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i.not.i = icmp eq i32 %15, -1
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %9, align 4
  %and.i12.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool.not.i13.i = icmp eq i32 %and.i12.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !29

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i13.i, label %if.end.i16.i, label %if.then.i15.i, !prof !28

if.then.i15.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i14.i = add i32 %17, -1
  br label %_compound_head.exit18.i

if.end.i16.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %call to i32
  br label %_compound_head.exit18.i

_compound_head.exit18.i:                          ; preds = %if.end.i16.i, %if.then.i15.i
  %retval.0.i17.i = phi i32 [ %sub.i14.i, %if.then.i15.i ], [ %18, %if.end.i16.i ]
  %19 = inttoptr i32 %retval.0.i17.i to ptr
  call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str.4) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 417, 0\0A.popsection", ""() #8, !srcloc !30
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i13.i, label %if.end.i23.i, label %if.then.i22.i, !prof !28

if.then.i22.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i21.i = add i32 %17, -1
  br label %ClearPageReferenced.exit

if.end.i23.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %call to i32
  br label %ClearPageReferenced.exit

ClearPageReferenced.exit:                         ; preds = %if.end.i23.i, %if.then.i22.i
  %retval.0.i24.i = phi i32 [ %sub.i21.i, %if.then.i22.i ], [ %20, %if.end.i23.i ]
  %21 = inttoptr i32 %retval.0.i24.i to ptr
  call void @_clear_bit(i32 noundef 1, ptr noundef %21) #8
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %9, align 4
  %and.i.i40 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i40)
  %tobool.not.i.i41 = icmp eq i32 %and.i.i40, 0
  br i1 %tobool.not.i.i41, label %if.end.i.i44, label %if.then.i.i43, !prof !28

if.then.i.i43:                                    ; preds = %ClearPageReferenced.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i42 = add i32 %23, -1
  br label %_compound_head.exit.i46

if.end.i.i44:                                     ; preds = %ClearPageReferenced.exit
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i46

_compound_head.exit.i46:                          ; preds = %if.end.i.i44, %if.then.i.i43
  %retval.0.i.i45 = phi i32 [ %sub.i.i42, %if.then.i.i43 ], [ %24, %if.end.i.i44 ]
  %25 = inttoptr i32 %retval.0.i.i45 to ptr
  %call.i.i = call ptr @lookup_page_ext(ptr noundef %25) #8
  %tobool.not.i1.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i1.i, label %_compound_head.exit.i46.test_and_clear_page_young.exit_crit_edge, label %if.end.i2.i, !prof !29

_compound_head.exit.i46.test_and_clear_page_young.exit_crit_edge: ; preds = %_compound_head.exit.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %test_and_clear_page_young.exit

if.end.i2.i:                                      ; preds = %_compound_head.exit.i46
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i = call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef nonnull %call.i.i) #8
  br label %test_and_clear_page_young.exit

test_and_clear_page_young.exit:                   ; preds = %if.end.i2.i, %_compound_head.exit.i46.test_and_clear_page_young.exit_crit_edge
  %call6 = call i32 @isolate_lru_page(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  %26 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %9, align 4
  %and.i.i30 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i30)
  %tobool.not.i.i31 = icmp eq i32 %and.i.i30, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %test_and_clear_page_young.exit
  br i1 %tobool.not.i.i31, label %if.end.i.i51, label %if.then.i.i50, !prof !28

if.then.i.i50:                                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i49 = add i32 %27, -1
  br label %_compound_head.exit.i53

if.end.i.i51:                                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i53

_compound_head.exit.i53:                          ; preds = %if.end.i.i51, %if.then.i.i50
  %retval.0.i.i52 = phi i32 [ %sub.i.i49, %if.then.i.i50 ], [ %28, %if.end.i.i51 ]
  %29 = inttoptr i32 %retval.0.i.i52 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %30 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.i.i.i = icmp eq i32 %31, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !29

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i53
  call void @__sanitizer_cov_trace_pc() #10
  %32 = inttoptr i32 %retval.0.i.i52 to ptr
  call void @dump_page(ptr noundef %32, ptr noundef nonnull @.str.2) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !31
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i53
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !32
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %33 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !33
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %33, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@damon_pa_apply_scheme, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !35

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %29, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %29) #8
  br label %cleanup

if.end9:                                          ; preds = %test_and_clear_page_young.exit
  br i1 %tobool.not.i.i31, label %if.end.i.i34, label %if.then.i.i33, !prof !28

if.then.i.i33:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i32 = add i32 %27, -1
  br label %_compound_head.exit.i37

if.end.i.i34:                                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i37

_compound_head.exit.i37:                          ; preds = %if.end.i.i34, %if.then.i.i33
  %retval.0.i.i35 = phi i32 [ %sub.i.i32, %if.then.i.i33 ], [ %34, %if.end.i.i34 ]
  %35 = inttoptr i32 %retval.0.i.i35 to ptr
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp.i.not.i36 = icmp eq i32 %37, -1
  %38 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %9, align 4
  %and.i13.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i36, label %if.then.i38, label %do.end8.i39, !prof !29

if.then.i38:                                      ; preds = %_compound_head.exit.i37
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !28

if.then.i16.i:                                    ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i15.i = add i32 %39, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %call to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %40, %if.end.i17.i ]
  %41 = inttoptr i32 %retval.0.i18.i to ptr
  call void @dump_page(ptr noundef %41, ptr noundef nonnull @.str.4) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 499, 0\0A.popsection", ""() #8, !srcloc !36
  unreachable

do.end8.i39:                                      ; preds = %_compound_head.exit.i37
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !28

if.then.i23.i:                                    ; preds = %do.end8.i39
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i22.i = add i32 %39, -1
  br label %PageUnevictable.exit

if.end.i24.i:                                     ; preds = %do.end8.i39
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %call to i32
  br label %PageUnevictable.exit

PageUnevictable.exit:                             ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %42, %if.end.i24.i ]
  %43 = inttoptr i32 %retval.0.i25.i to ptr
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  %46 = and i32 %45, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool11.not = icmp eq i32 %46, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %PageUnevictable.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @putback_lru_page(ptr noundef nonnull %call) #8
  br label %cleanup

if.else:                                          ; preds = %PageUnevictable.exit
  %47 = ptrtoint ptr %page_list to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %page_list, align 4
  %call.i.i54 = call zeroext i1 @__list_add_valid(ptr noundef %9, ptr noundef nonnull %page_list, ptr noundef %48) #8
  br i1 %call.i.i54, label %if.end.i.i55, label %if.else.list_add.exit_crit_edge

if.else.list_add.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i55:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %9, ptr %prev1.i.i, align 4
  %50 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %48, ptr %9, align 4
  %prev3.i.i = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1, i32 0, i32 0, i32 1
  %51 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %page_list, ptr %prev3.i.i, align 4
  %52 = ptrtoint ptr %page_list to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %9, ptr %page_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i55, %if.else.list_add.exit_crit_edge
  %53 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %9, align 4
  %and.i.i56 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i56)
  %tobool.not.i.i57 = icmp eq i32 %and.i.i56, 0
  br i1 %tobool.not.i.i57, label %if.end.i.i60, label %if.then.i.i59, !prof !28

if.then.i.i59:                                    ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i58 = add i32 %54, -1
  br label %_compound_head.exit.i65

if.end.i.i60:                                     ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i65

_compound_head.exit.i65:                          ; preds = %if.end.i.i60, %if.then.i.i59
  %retval.0.i.i61 = phi i32 [ %sub.i.i58, %if.then.i.i59 ], [ %55, %if.end.i.i60 ]
  %56 = inttoptr i32 %retval.0.i.i61 to ptr
  %_refcount.i.i.i.i.i62 = getelementptr inbounds %struct.page, ptr %56, i32 0, i32 3
  %call.i.i.i.i.i.i.i63 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i62, i32 noundef 4) #8
  %57 = ptrtoint ptr %_refcount.i.i.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %_refcount.i.i.i.i.i62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.i.i.i.i64 = icmp eq i32 %58, 0
  br i1 %cmp.i.i.i.i64, label %if.then.i.i.i.i66, label %do.end5.i.i.i.i70, !prof !29

if.then.i.i.i.i66:                                ; preds = %_compound_head.exit.i65
  call void @__sanitizer_cov_trace_pc() #10
  %59 = inttoptr i32 %retval.0.i.i61 to ptr
  call void @dump_page(ptr noundef %59, ptr noundef nonnull @.str.2) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !31
  unreachable

do.end5.i.i.i.i70:                                ; preds = %_compound_head.exit.i65
  %call.i.i.i10.i.i.i.i67 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i62, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !32
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i62, i32 1, i32 3, i32 1) #8
  %60 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i62, ptr %_refcount.i.i.i.i.i62, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i62) #8, !srcloc !33
  %asmresult.i.i.i.i.i.i.i.i.i.i68 = extractvalue { i32, i32 } %60, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i68)
  %cmp.i.i.i.i.i.i.i69 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i68, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@damon_pa_apply_scheme, %if.then.i.i.i.i.i72)) #8
          to label %folio_put_testzero.exit.i.i73 [label %if.then.i.i.i.i.i72], !srcloc !35

if.then.i.i.i.i.i72:                              ; preds = %do.end5.i.i.i.i70
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i71 = zext i1 %cmp.i.i.i.i.i.i.i69 to i32
  call void @__page_ref_mod_and_test(ptr noundef %56, i32 noundef -1, i32 noundef %conv.i.i.i.i.i71) #8
  br label %folio_put_testzero.exit.i.i73

folio_put_testzero.exit.i.i73:                    ; preds = %if.then.i.i.i.i.i72, %do.end5.i.i.i.i70
  br i1 %cmp.i.i.i.i.i.i.i69, label %if.then.i4.i74, label %folio_put_testzero.exit.i.i73.cleanup_crit_edge

folio_put_testzero.exit.i.i73.cleanup_crit_edge:  ; preds = %folio_put_testzero.exit.i.i73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i4.i74:                                   ; preds = %folio_put_testzero.exit.i.i73
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %56) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i74, %folio_put_testzero.exit.i.i73.cleanup_crit_edge, %if.then12, %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %add = add i32 %addr.091, 4096
  %61 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %end, align 4
  %cmp2 = icmp ult i32 %add, %62
  br i1 %cmp2, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  %call14 = call i32 @reclaim_pages(ptr noundef nonnull %page_list) #8
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 246, i32 noundef 0) #8
  %call.i = call i32 @__cond_resched() #8
  %mul = shl i32 %call14, 12
  br label %cleanup16

cleanup16:                                        ; preds = %for.end, %entry.cleanup16_crit_edge
  %retval.0 = phi i32 [ %mul, %for.end ], [ 0, %entry.cleanup16_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %page_list) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @damon_pa_scheme_score(ptr noundef %context, ptr nocapture noundef readnone %t, ptr noundef %r, ptr noundef %scheme) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %action = getelementptr inbounds %struct.damos, ptr %scheme, i32 0, i32 6
  %0 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %action, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cond = icmp eq i32 %1, 2
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @damon_pageout_score(ptr noundef %context, ptr noundef %r, ptr noundef %scheme) #8
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb ], [ 99, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @damon_pa_mkold(i32 noundef %paddr) unnamed_addr #2 align 64 {
entry:
  %rwc = alloca %struct.rmap_walk_control, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %paddr, 12
  %call = tail call ptr @damon_get_page(i32 noundef %shr) #8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rwc) #8
  %0 = call ptr @memcpy(ptr %rwc, ptr @__const.damon_pa_mkold.rwc, i32 20)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i1 @page_mapped(ptr noundef nonnull %call) #8
  br i1 %call1, label %lor.lhs.false, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %call2 = tail call ptr @page_rmapping(ptr noundef nonnull %call) #8
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %lor.lhs.false.if.then4_crit_edge, label %if.end5

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %1 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  %and.i.i37 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i37)
  %tobool.not.i.i38 = icmp eq i32 %and.i.i37, 0
  br i1 %tobool.not.i.i38, label %if.end.i.i41, label %if.then.i.i40, !prof !28

if.then.i.i40:                                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i39 = add i32 %3, -1
  br label %_compound_head.exit.i

if.end.i.i41:                                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i41, %if.then.i.i40
  %retval.0.i.i42 = phi i32 [ %sub.i.i39, %if.then.i.i40 ], [ %4, %if.end.i.i41 ]
  %5 = inttoptr i32 %retval.0.i.i42 to ptr
  %call.i.i = tail call ptr @lookup_page_ext(ptr noundef %5) #8
  %tobool.not.i1.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i1.i, label %_compound_head.exit.i.out_crit_edge, label %if.end.i2.i, !prof !29

_compound_head.exit.i.out_crit_edge:              ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i2.i:                                      ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 3, ptr noundef nonnull %call.i.i) #8
  br label %out

if.end5:                                          ; preds = %lor.lhs.false
  %6 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i2.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !28

if.then.i.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %8, -1
  br label %PageAnon.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call to i32
  br label %PageAnon.exit

PageAnon.exit:                                    ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %9, %if.end.i.i ]
  %10 = inttoptr i32 %retval.0.i.i to ptr
  %mapping.i.i = getelementptr inbounds %struct.anon.83, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mapping.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i.not, label %PageAnon.exit.land.lhs.true_crit_edge, label %lor.rhs

PageAnon.exit.land.lhs.true_crit_edge:            ; preds = %PageAnon.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

lor.rhs:                                          ; preds = %PageAnon.exit
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %6, align 4
  %and.i2.i28 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i28)
  %tobool.not.i.i29 = icmp eq i32 %and.i2.i28, 0
  br i1 %tobool.not.i.i29, label %if.end.i.i32, label %if.then.i.i31, !prof !28

if.then.i.i31:                                    ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i30 = add i32 %15, -1
  br label %PageKsm.exit

if.end.i.i32:                                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %call to i32
  br label %PageKsm.exit

PageKsm.exit:                                     ; preds = %if.end.i.i32, %if.then.i.i31
  %retval.0.i.i33 = phi i32 [ %sub.i.i30, %if.then.i.i31 ], [ %16, %if.end.i.i32 ]
  %17 = inttoptr i32 %retval.0.i.i33 to ptr
  %mapping.i.i34 = getelementptr inbounds %struct.anon.83, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %mapping.i.i34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mapping.i.i34, align 4
  %20 = ptrtoint ptr %19 to i32
  %and.i.i35 = and i32 %20, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i35)
  %cmp.i.i36 = icmp eq i32 %and.i.i35, 3
  br i1 %cmp.i.i36, label %PageKsm.exit.land.lhs.true_crit_edge, label %out.critedge

PageKsm.exit.land.lhs.true_crit_edge:             ; preds = %PageKsm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %PageKsm.exit.land.lhs.true_crit_edge, %PageAnon.exit.land.lhs.true_crit_edge
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %6, align 4
  %and.i.i43 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i43)
  %tobool.not.i.i44 = icmp eq i32 %and.i.i43, 0
  br i1 %tobool.not.i.i44, label %if.end.i.i47, label %if.then.i.i46, !prof !28

if.then.i.i46:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i45 = add i32 %22, -1
  br label %_compound_head.exit.i49

if.end.i.i47:                                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i49

_compound_head.exit.i49:                          ; preds = %if.end.i.i47, %if.then.i.i46
  %retval.0.i.i48 = phi i32 [ %sub.i.i45, %if.then.i.i46 ], [ %23, %if.end.i.i47 ]
  %24 = inttoptr i32 %retval.0.i.i48 to ptr
  %25 = getelementptr inbounds %struct.page, ptr %24, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and.i.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !28

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i49
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %24, ptr noundef nonnull @.str) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !37
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i49
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %24, i32 noundef 4) #8
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %24, align 4
  %and.i.i4.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_page.exit, label %folio_flags.exit.i.i.out_crit_edge

folio_flags.exit.i.i.out_crit_edge:               ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

trylock_page.exit:                                ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %24, i32 1, i32 3, i32 1) #8
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #8, !srcloc !38
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !39
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool10.not.not = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool10.not.not, label %if.then14.critedge, label %trylock_page.exit.out_crit_edge

trylock_page.exit.out_crit_edge:                  ; preds = %trylock_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then14.critedge:                               ; preds = %trylock_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @rmap_walk(ptr noundef nonnull %call, ptr noundef nonnull %rwc) #8
  call void @unlock_page(ptr noundef nonnull %call) #8
  br label %out

out.critedge:                                     ; preds = %PageKsm.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @rmap_walk(ptr noundef nonnull %call, ptr noundef nonnull %rwc) #8
  br label %out

out:                                              ; preds = %out.critedge, %if.then14.critedge, %trylock_page.exit.out_crit_edge, %folio_flags.exit.i.i.out_crit_edge, %if.end.i2.i, %_compound_head.exit.i.out_crit_edge
  %31 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %and.i.i50 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i50)
  %tobool.not.i.i51 = icmp eq i32 %and.i.i50, 0
  br i1 %tobool.not.i.i51, label %if.end.i.i54, label %if.then.i.i53, !prof !28

if.then.i.i53:                                    ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i52 = add i32 %33, -1
  br label %_compound_head.exit.i56

if.end.i.i54:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i56

_compound_head.exit.i56:                          ; preds = %if.end.i.i54, %if.then.i.i53
  %retval.0.i.i55 = phi i32 [ %sub.i.i52, %if.then.i.i53 ], [ %34, %if.end.i.i54 ]
  %35 = inttoptr i32 %retval.0.i.i55 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %35, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %36 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i.i.i.i = icmp eq i32 %37, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !29

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i56
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %35, ptr noundef nonnull @.str.2) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !31
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i56
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !32
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %38 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !33
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %38, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@damon_pa_mkold, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !35

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %35, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %35) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rwc) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @damon_get_page(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @__damon_pa_mkold(ptr noundef %page, ptr noundef %vma, i32 noundef %addr, ptr nocapture noundef readnone %arg) #2 align 64 {
entry:
  %pvmw = alloca %struct.page_vma_mapped_walk, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pvmw) #8
  %0 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 1
  %1 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 2
  %2 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 3
  %3 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 4
  %4 = ptrtoint ptr %pvmw to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %page, ptr %pvmw, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %vma, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %addr, ptr %1, align 4
  %7 = call ptr @memset(ptr %2, i32 0, i32 16)
  %call12 = call zeroext i1 @page_vma_mapped_walk(ptr noundef nonnull %pvmw) #8
  br i1 %call12, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vm_mm, align 4
  call void @damon_ptep_mkold(ptr noundef nonnull %11, ptr noundef %13, i32 noundef %9) #8
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %2, align 4
  %16 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vm_mm, align 4
  call void @damon_pmdp_mkold(ptr noundef %15, ptr noundef %17, i32 noundef %9) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call = call zeroext i1 @page_vma_mapped_walk(ptr noundef nonnull %pvmw) #8
  br i1 %call, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pvmw) #8
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_lock_anon_vma_read(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_mapped(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_rmapping(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmap_walk(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_vma_mapped_walk(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @damon_ptep_mkold(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @damon_pmdp_mkold(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_page_ext(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @damon_pa_young(i32 noundef %paddr) unnamed_addr #2 align 64 {
entry:
  %result = alloca %struct.damon_pa_access_chk_result, align 8
  %rwc = alloca %struct.rmap_walk_control, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %paddr, 12
  %call = tail call ptr @damon_get_page(i32 noundef %shr) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result) #8
  %0 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 17592186044416, ptr %result, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rwc) #8
  %1 = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 1
  %2 = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 2
  %3 = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 3
  %4 = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 4
  %5 = ptrtoint ptr %rwc to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %result, ptr %rwc, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @__damon_pa_young, ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @page_lock_anon_vma_read, ptr %3, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %4, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call zeroext i1 @page_mapped(ptr noundef nonnull %call) #8
  br i1 %call1, label %lor.lhs.false, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %call2 = call ptr @page_rmapping(ptr noundef nonnull %call) #8
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %lor.lhs.false.if.then4_crit_edge, label %if.end9

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %10 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i10 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i10)
  %tobool.not.i.i11 = icmp eq i32 %and.i.i10, 0
  br i1 %tobool.not.i.i11, label %if.end.i.i14, label %if.then.i.i13, !prof !28

if.then.i.i13:                                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i12 = add i32 %12, -1
  br label %_compound_head.exit.i

if.end.i.i14:                                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i14, %if.then.i.i13
  %retval.0.i.i15 = phi i32 [ %sub.i.i12, %if.then.i.i13 ], [ %13, %if.end.i.i14 ]
  %14 = inttoptr i32 %retval.0.i.i15 to ptr
  %call.i.i = call ptr @lookup_page_ext(ptr noundef %14) #8
  %tobool.not.i2.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i2.i, label %_compound_head.exit.i.if.else_crit_edge, label %page_is_idle.exit, !prof !29

_compound_head.exit.i.if.else_crit_edge:          ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

page_is_idle.exit:                                ; preds = %_compound_head.exit.i
  %15 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %call.i.i, align 4
  %17 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool5.i.i.not = icmp eq i32 %17, 0
  br i1 %tobool5.i.i.not, label %page_is_idle.exit.if.else_crit_edge, label %page_is_idle.exit.if.end8_crit_edge

page_is_idle.exit.if.end8_crit_edge:              ; preds = %page_is_idle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

page_is_idle.exit.if.else_crit_edge:              ; preds = %page_is_idle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.else:                                          ; preds = %page_is_idle.exit.if.else_crit_edge, %_compound_head.exit.i.if.else_crit_edge
  br label %if.end8

if.end8:                                          ; preds = %if.else, %page_is_idle.exit.if.end8_crit_edge
  %.sink = phi i8 [ 1, %if.else ], [ 0, %page_is_idle.exit.if.end8_crit_edge ]
  %accessed7 = getelementptr inbounds %struct.damon_pa_access_chk_result, ptr %result, i32 0, i32 1
  %18 = ptrtoint ptr %accessed7 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.sink, ptr %accessed7, align 4
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %10, align 4
  %and.i.i16 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i16)
  %tobool.not.i.i17 = icmp eq i32 %and.i.i16, 0
  br i1 %tobool.not.i.i17, label %if.end.i.i20, label %if.then.i.i19, !prof !28

if.then.i.i19:                                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i18 = add i32 %20, -1
  br label %_compound_head.exit.i22

if.end.i.i20:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i22

_compound_head.exit.i22:                          ; preds = %if.end.i.i20, %if.then.i.i19
  %retval.0.i.i21 = phi i32 [ %sub.i.i18, %if.then.i.i19 ], [ %21, %if.end.i.i20 ]
  %22 = inttoptr i32 %retval.0.i.i21 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %22, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %23 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i.i.i.i = icmp eq i32 %24, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !29

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i22
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %22, ptr noundef nonnull @.str.2) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !31
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i22
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !32
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %25 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !33
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %25, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@damon_pa_young, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !35

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %22, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %folio_put_testzero.exit.i.i.out.sink.split_crit_edge, label %folio_put_testzero.exit.i.i.out_crit_edge

folio_put_testzero.exit.i.i.out_crit_edge:        ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

folio_put_testzero.exit.i.i.out.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split

if.end9:                                          ; preds = %lor.lhs.false
  %26 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %and.i2.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !28

if.then.i.i:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %28, -1
  br label %PageAnon.exit

if.end.i.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %call to i32
  br label %PageAnon.exit

PageAnon.exit:                                    ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %29, %if.end.i.i ]
  %30 = inttoptr i32 %retval.0.i.i to ptr
  %mapping.i.i = getelementptr inbounds %struct.anon.83, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mapping.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %and.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i.not, label %PageAnon.exit.land.lhs.true_crit_edge, label %lor.rhs

PageAnon.exit.land.lhs.true_crit_edge:            ; preds = %PageAnon.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

lor.rhs:                                          ; preds = %PageAnon.exit
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %26, align 4
  %and.i2.i1 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i1)
  %tobool.not.i.i2 = icmp eq i32 %and.i2.i1, 0
  br i1 %tobool.not.i.i2, label %if.end.i.i5, label %if.then.i.i4, !prof !28

if.then.i.i4:                                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i3 = add i32 %35, -1
  br label %PageKsm.exit

if.end.i.i5:                                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %call to i32
  br label %PageKsm.exit

PageKsm.exit:                                     ; preds = %if.end.i.i5, %if.then.i.i4
  %retval.0.i.i6 = phi i32 [ %sub.i.i3, %if.then.i.i4 ], [ %36, %if.end.i.i5 ]
  %37 = inttoptr i32 %retval.0.i.i6 to ptr
  %mapping.i.i7 = getelementptr inbounds %struct.anon.83, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %mapping.i.i7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mapping.i.i7, align 4
  %40 = ptrtoint ptr %39 to i32
  %and.i.i8 = and i32 %40, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i8)
  %cmp.i.i9 = icmp eq i32 %and.i.i8, 3
  br i1 %cmp.i.i9, label %PageKsm.exit.land.lhs.true_crit_edge, label %if.end19.critedge

PageKsm.exit.land.lhs.true_crit_edge:             ; preds = %PageKsm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %PageKsm.exit.land.lhs.true_crit_edge, %PageAnon.exit.land.lhs.true_crit_edge
  %41 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %26, align 4
  %and.i.i23 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i23)
  %tobool.not.i.i24 = icmp eq i32 %and.i.i23, 0
  br i1 %tobool.not.i.i24, label %if.end.i.i27, label %if.then.i.i26, !prof !28

if.then.i.i26:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i25 = add i32 %42, -1
  br label %_compound_head.exit.i29

if.end.i.i27:                                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i29

_compound_head.exit.i29:                          ; preds = %if.end.i.i27, %if.then.i.i26
  %retval.0.i.i28 = phi i32 [ %sub.i.i25, %if.then.i.i26 ], [ %43, %if.end.i.i27 ]
  %44 = inttoptr i32 %retval.0.i.i28 to ptr
  %45 = getelementptr inbounds %struct.page, ptr %44, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  %and.i.i.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !28

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i29
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %44, ptr noundef nonnull @.str) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !37
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i29
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %44, i32 noundef 4) #8
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %44, align 4
  %and.i.i4.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_page.exit, label %folio_flags.exit.i.i.if.then15_crit_edge

folio_flags.exit.i.i.if.then15_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

trylock_page.exit:                                ; preds = %folio_flags.exit.i.i
  call void @llvm.prefetch.p0(ptr %44, i32 1, i32 3, i32 1) #8
  %50 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #8, !srcloc !38
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %50, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !39
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool14.not.not = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool14.not.not, label %if.then18.critedge, label %trylock_page.exit.if.then15_crit_edge

trylock_page.exit.if.then15_crit_edge:            ; preds = %trylock_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

if.then15:                                        ; preds = %trylock_page.exit.if.then15_crit_edge, %folio_flags.exit.i.i.if.then15_crit_edge
  %51 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %26, align 4
  %and.i.i30 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i30)
  %tobool.not.i.i31 = icmp eq i32 %and.i.i30, 0
  br i1 %tobool.not.i.i31, label %if.end.i.i34, label %if.then.i.i33, !prof !28

if.then.i.i33:                                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i32 = add i32 %52, -1
  br label %_compound_head.exit.i39

if.end.i.i34:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i39

_compound_head.exit.i39:                          ; preds = %if.end.i.i34, %if.then.i.i33
  %retval.0.i.i35 = phi i32 [ %sub.i.i32, %if.then.i.i33 ], [ %53, %if.end.i.i34 ]
  %54 = inttoptr i32 %retval.0.i.i35 to ptr
  %_refcount.i.i.i.i.i36 = getelementptr inbounds %struct.page, ptr %54, i32 0, i32 3
  %call.i.i.i.i.i.i.i37 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i36, i32 noundef 4) #8
  %55 = ptrtoint ptr %_refcount.i.i.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %_refcount.i.i.i.i.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i.i.i.i38 = icmp eq i32 %56, 0
  br i1 %cmp.i.i.i.i38, label %if.then.i.i.i.i40, label %do.end5.i.i.i.i44, !prof !29

if.then.i.i.i.i40:                                ; preds = %_compound_head.exit.i39
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %54, ptr noundef nonnull @.str.2) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !31
  unreachable

do.end5.i.i.i.i44:                                ; preds = %_compound_head.exit.i39
  %call.i.i.i10.i.i.i.i41 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i36, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !32
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i36, i32 1, i32 3, i32 1) #8
  %57 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i36, ptr %_refcount.i.i.i.i.i36, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i36) #8, !srcloc !33
  %asmresult.i.i.i.i.i.i.i.i.i.i42 = extractvalue { i32, i32 } %57, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i42)
  %cmp.i.i.i.i.i.i.i43 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i42, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@damon_pa_young, %if.then.i.i.i.i.i46)) #8
          to label %folio_put_testzero.exit.i.i47 [label %if.then.i.i.i.i.i46], !srcloc !35

if.then.i.i.i.i.i46:                              ; preds = %do.end5.i.i.i.i44
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i45 = zext i1 %cmp.i.i.i.i.i.i.i43 to i32
  call void @__page_ref_mod_and_test(ptr noundef %54, i32 noundef -1, i32 noundef %conv.i.i.i.i.i45) #8
  br label %folio_put_testzero.exit.i.i47

folio_put_testzero.exit.i.i47:                    ; preds = %if.then.i.i.i.i.i46, %do.end5.i.i.i.i44
  br i1 %cmp.i.i.i.i.i.i.i43, label %if.then.i4.i48, label %folio_put_testzero.exit.i.i47.cleanup_crit_edge

folio_put_testzero.exit.i.i47.cleanup_crit_edge:  ; preds = %folio_put_testzero.exit.i.i47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i4.i48:                                   ; preds = %folio_put_testzero.exit.i.i47
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %54) #8
  br label %cleanup

if.then18.critedge:                               ; preds = %trylock_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @rmap_walk(ptr noundef nonnull %call, ptr noundef nonnull %rwc) #8
  call void @unlock_page(ptr noundef nonnull %call) #8
  br label %if.end19

if.end19.critedge:                                ; preds = %PageKsm.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @rmap_walk(ptr noundef nonnull %call, ptr noundef nonnull %rwc) #8
  br label %if.end19

if.end19:                                         ; preds = %if.end19.critedge, %if.then18.critedge
  %58 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %26, align 4
  %and.i.i50 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i50)
  %tobool.not.i.i51 = icmp eq i32 %and.i.i50, 0
  br i1 %tobool.not.i.i51, label %if.end.i.i54, label %if.then.i.i53, !prof !28

if.then.i.i53:                                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i52 = add i32 %59, -1
  br label %_compound_head.exit.i59

if.end.i.i54:                                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i59

_compound_head.exit.i59:                          ; preds = %if.end.i.i54, %if.then.i.i53
  %retval.0.i.i55 = phi i32 [ %sub.i.i52, %if.then.i.i53 ], [ %60, %if.end.i.i54 ]
  %61 = inttoptr i32 %retval.0.i.i55 to ptr
  %_refcount.i.i.i.i.i56 = getelementptr inbounds %struct.page, ptr %61, i32 0, i32 3
  %call.i.i.i.i.i.i.i57 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i56, i32 noundef 4) #8
  %62 = ptrtoint ptr %_refcount.i.i.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %_refcount.i.i.i.i.i56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.i.i.i.i58 = icmp eq i32 %63, 0
  br i1 %cmp.i.i.i.i58, label %if.then.i.i.i.i60, label %do.end5.i.i.i.i64, !prof !29

if.then.i.i.i.i60:                                ; preds = %_compound_head.exit.i59
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %61, ptr noundef nonnull @.str.2) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !31
  unreachable

do.end5.i.i.i.i64:                                ; preds = %_compound_head.exit.i59
  %call.i.i.i10.i.i.i.i61 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i56, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !32
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i56, i32 1, i32 3, i32 1) #8
  %64 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i56, ptr %_refcount.i.i.i.i.i56, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i56) #8, !srcloc !33
  %asmresult.i.i.i.i.i.i.i.i.i.i62 = extractvalue { i32, i32 } %64, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i62)
  %cmp.i.i.i.i.i.i.i63 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i62, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@damon_pa_young, %if.then.i.i.i.i.i66)) #8
          to label %folio_put_testzero.exit.i.i67 [label %if.then.i.i.i.i.i66], !srcloc !35

if.then.i.i.i.i.i66:                              ; preds = %do.end5.i.i.i.i64
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i65 = zext i1 %cmp.i.i.i.i.i.i.i63 to i32
  call void @__page_ref_mod_and_test(ptr noundef %61, i32 noundef -1, i32 noundef %conv.i.i.i.i.i65) #8
  br label %folio_put_testzero.exit.i.i67

folio_put_testzero.exit.i.i67:                    ; preds = %if.then.i.i.i.i.i66, %do.end5.i.i.i.i64
  br i1 %cmp.i.i.i.i.i.i.i63, label %folio_put_testzero.exit.i.i67.out.sink.split_crit_edge, label %folio_put_testzero.exit.i.i67.out_crit_edge

folio_put_testzero.exit.i.i67.out_crit_edge:      ; preds = %folio_put_testzero.exit.i.i67
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

folio_put_testzero.exit.i.i67.out.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i67
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split

out.sink.split:                                   ; preds = %folio_put_testzero.exit.i.i67.out.sink.split_crit_edge, %folio_put_testzero.exit.i.i.out.sink.split_crit_edge
  %.sink73 = phi ptr [ %22, %folio_put_testzero.exit.i.i.out.sink.split_crit_edge ], [ %61, %folio_put_testzero.exit.i.i67.out.sink.split_crit_edge ]
  call void @__put_page(ptr noundef %.sink73) #8
  br label %out

out:                                              ; preds = %out.sink.split, %folio_put_testzero.exit.i.i67.out_crit_edge, %folio_put_testzero.exit.i.i.out_crit_edge
  %65 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %result, align 8
  store i32 %66, ptr @__damon_pa_check_access.last_page_sz, align 4
  %accessed21 = getelementptr inbounds %struct.damon_pa_access_chk_result, ptr %result, i32 0, i32 1
  %67 = ptrtoint ptr %accessed21 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %accessed21, align 4, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool22 = icmp ne i8 %68, 0
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then.i4.i48, %folio_put_testzero.exit.i.i47.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool22, %out ], [ false, %entry.cleanup_crit_edge ], [ false, %folio_put_testzero.exit.i.i47.cleanup_crit_edge ], [ false, %if.then.i4.i48 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rwc) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result) #8
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @__damon_pa_young(ptr noundef %page, ptr noundef %vma, i32 noundef %addr, ptr nocapture noundef %arg) #2 align 64 {
entry:
  %pvmw = alloca %struct.page_vma_mapped_walk, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pvmw) #8
  %0 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 1
  %1 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 2
  %2 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 3
  %3 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 4
  %4 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 5
  %5 = ptrtoint ptr %pvmw to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %page, ptr %pvmw, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %vma, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %addr, ptr %1, align 4
  %accessed = getelementptr inbounds %struct.damon_pa_access_chk_result, ptr %arg, i32 0, i32 1
  %8 = call ptr @memset(ptr %2, i32 0, i32 16)
  %9 = ptrtoint ptr %accessed to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %accessed, align 4
  %10 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4096, ptr %arg, align 4
  %11 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %12 = ptrtoint ptr %page to i32
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  br label %while.cond

while.cond:                                       ; preds = %if.end50.while.cond_crit_edge, %entry
  %call = call zeroext i1 @page_vma_mapped_walk(ptr noundef nonnull %pvmw) #8
  br i1 %call, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.cond
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %land.end, label %cond.true

cond.true:                                        ; preds = %while.body
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %and = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %cond.true.lor.end_crit_edge

cond.true.lor.end_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.lhs.false:                                    ; preds = %cond.true
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %11, align 4
  %and.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !28

lor.lhs.false._compound_head.exit.i_crit_edge:    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %20, -1
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %lor.lhs.false._compound_head.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %12, %lor.lhs.false._compound_head.exit.i_crit_edge ]
  %21 = inttoptr i32 %retval.0.i.i to ptr
  %call.i.i = call ptr @lookup_page_ext(ptr noundef %21) #8
  %tobool.not.i2.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i2.i, label %_compound_head.exit.i.lor.end_crit_edge, label %page_is_idle.exit, !prof !29

_compound_head.exit.i.lor.end_crit_edge:          ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

page_is_idle.exit:                                ; preds = %_compound_head.exit.i
  %22 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %call.i.i, align 4
  %24 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool5.i.i.not = icmp eq i32 %24, 0
  br i1 %tobool5.i.i.not, label %page_is_idle.exit.lor.end_crit_edge, label %lor.rhs

page_is_idle.exit.lor.end_crit_edge:              ; preds = %page_is_idle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %page_is_idle.exit
  %25 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vm_mm, align 4
  %notifier_subscriptions.i.i = getelementptr inbounds %struct.anon.2, ptr %26, i32 0, i32 49
  %27 = ptrtoint ptr %notifier_subscriptions.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %notifier_subscriptions.i.i, align 8
  %tobool.i.not.i = icmp eq ptr %28, null
  br i1 %tobool.i.not.i, label %lor.rhs.mmu_notifier_test_young.exit_crit_edge, label %if.then.i

lor.rhs.mmu_notifier_test_young.exit_crit_edge:   ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmu_notifier_test_young.exit

if.then.i:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = call i32 @__mmu_notifier_test_young(ptr noundef %26, i32 noundef %14) #8
  br label %mmu_notifier_test_young.exit

mmu_notifier_test_young.exit:                     ; preds = %if.then.i, %lor.rhs.mmu_notifier_test_young.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.then.i ], [ 0, %lor.rhs.mmu_notifier_test_young.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool13 = icmp ne i32 %retval.0.i, 0
  br label %lor.end

lor.end:                                          ; preds = %mmu_notifier_test_young.exit, %page_is_idle.exit.lor.end_crit_edge, %_compound_head.exit.i.lor.end_crit_edge, %cond.true.lor.end_crit_edge
  %29 = phi i1 [ true, %page_is_idle.exit.lor.end_crit_edge ], [ true, %cond.true.lor.end_crit_edge ], [ %tobool13, %mmu_notifier_test_young.exit ], [ true, %_compound_head.exit.i.lor.end_crit_edge ]
  %frombool = zext i1 %29 to i8
  %30 = ptrtoint ptr %accessed to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %frombool, ptr %accessed, align 4
  br label %if.end50

land.end:                                         ; preds = %while.body
  %.b68 = load i1, ptr @__damon_pa_young.__already_done, align 1
  br i1 %.b68, label %land.end.if.end50thread-pre-split_crit_edge, label %if.then21, !prof !28

land.end.if.end50thread-pre-split_crit_edge:      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50thread-pre-split

if.then21:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__damon_pa_young.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 117, i32 noundef 9, ptr noundef null) #8
  br label %if.end50thread-pre-split

if.end50thread-pre-split:                         ; preds = %if.then21, %land.end.if.end50thread-pre-split_crit_edge
  %31 = ptrtoint ptr %accessed to i32
  call void @__asan_load1_noabort(i32 %31)
  %.pr = load i8, ptr %accessed, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end50thread-pre-split, %lor.end
  %32 = phi i8 [ %.pr, %if.end50thread-pre-split ], [ %frombool, %lor.end ]
  %tobool52.not = icmp eq i8 %32, 0
  br i1 %tobool52.not, label %if.end50.while.cond_crit_edge, label %if.then53

if.end50.while.cond_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.then53:                                        ; preds = %if.end50
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %if.then53.if.end.i_crit_edge, label %land.lhs.true.i

if.then53.if.end.i_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  call void @kunmap_local_indexed(ptr noundef nonnull %34) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !40
  %35 = call i32 @llvm.read_register.i32(metadata !17) #8
  %and.i.i.i1.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 213
  %39 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %40, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !41
  %41 = call i32 @llvm.read_register.i32(metadata !17) #8
  %and.i.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %44, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %if.then53.if.end.i_crit_edge
  %45 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %4, align 4
  %tobool5.not.i = icmp eq ptr %46, null
  br i1 %tobool5.not.i, label %if.end.i.while.end_crit_edge, label %if.then6.i

if.end.i.while.end_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock(ptr noundef nonnull %46) #8
  br label %while.end

while.end:                                        ; preds = %if.then6.i, %if.end.i.while.end_crit_edge, %while.cond.while.end_crit_edge
  %47 = ptrtoint ptr %accessed to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %accessed, align 4, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool56.not = icmp eq i8 %48, 0
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pvmw) #8
  ret i1 %tobool56.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmu_notifier_test_young(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @isolate_lru_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @putback_lru_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reclaim_pages(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @damon_pageout_score(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15}
!llvm.named.register.sp = !{!17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!2 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../include/linux/mm.h", i32 717, i32 2}
!6 = !{ptr @__damon_pa_check_access.last_addr, !7, !"last_addr", i1 false, i1 false}
!7 = !{!"../mm/damon/paddr.c", i32 176, i32 23}
!8 = !{ptr @__damon_pa_check_access.last_page_sz, !9, !"last_page_sz", i1 false, i1 false}
!9 = !{!"../mm/damon/paddr.c", i32 177, i32 23}
!10 = !{ptr @__damon_pa_check_access.last_accessed, !11, !"last_accessed", i1 false, i1 false}
!11 = !{!"../mm/damon/paddr.c", i32 178, i32 14}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../mm/damon/paddr.c", i32 117, i32 4}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/page-flags.h", i32 417, i32 1}
!17 = !{!"sp"}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i8 0, i8 2}
!28 = !{!"branch_weights", i32 2000, i32 1}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i64 2150195440, i64 2150195613, i64 2150195628, i64 2150195680, i64 2150195739, i64 2150195763, i64 2150195804, i64 2150195825, i64 2150195853, i64 2150195885}
!31 = !{i64 2153197124, i64 2153197607, i64 2153197161, i64 2153197217, i64 2153197251, i64 2153197275, i64 2153197316, i64 2153197337, i64 2153197365, i64 2153197399}
!32 = !{i64 2148595171}
!33 = !{i64 2148509880, i64 2148509912, i64 2148509941, i64 2148509975, i64 2148510006, i64 2148510029}
!34 = !{i64 2148595400}
!35 = !{i64 2148331293, i64 2148331298, i64 2148331311, i64 2148331355, i64 2148331389, i64 2148331410}
!36 = !{i64 2150749674, i64 2150750165, i64 2150749711, i64 2150749767, i64 2150749801, i64 2150749825, i64 2150749866, i64 2150749887, i64 2150749915, i64 2150749949}
!37 = !{i64 2150097035, i64 2150097526, i64 2150097072, i64 2150097128, i64 2150097162, i64 2150097186, i64 2150097227, i64 2150097248, i64 2150097276, i64 2150097310}
!38 = !{i64 2148515553, i64 2148515585, i64 2148515614, i64 2148515648, i64 2148515679, i64 2148515702}
!39 = !{i64 2148604658}
!40 = !{i64 2152814291}
!41 = !{i64 2153723922}
