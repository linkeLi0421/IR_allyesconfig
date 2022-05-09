; ModuleID = '/llk/IR_all_yes/arch/arm/mm/context.c_pt.bc'
source_filename = "../arch/arm/mm/context.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.atomic64_t = type { i64 }
%struct.mm_struct = type { %struct.anon, [0 x i32] }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.50, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.50 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@cpu_asid_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@active_asids = weak dso_local global %struct.atomic64_t zeroinitializer, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@reserved_asids = weak dso_local global i64 0, section ".data..percpu", align 8
@__initcall__kmod_context__227_133_contextidr_notifier_init3 = internal global ptr @contextidr_notifier_init, section ".initcall3.init", align 4
@init_mm = external dso_local local_unnamed_addr global %struct.mm_struct, align 8
@asid_generation = internal global { %struct.atomic64_t, [24 x i8] } { %struct.atomic64_t { i64 256 }, [24 x i8] zeroinitializer }, align 32
@tlb_flush_pending = internal global { %struct.cpumask, [28 x i8] } zeroinitializer, align 32
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@__pcpu_unique_active_asids = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_reserved_asids = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cpu_asid_lock\00", [18 x i8] zeroinitializer }, align 32
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@contextidr_notifier_block = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @contextidr_notifier, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@thread_notify_head = external dso_local global %struct.atomic_notifier_head, align 4
@new_context.cur_idx = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@asid_map = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@cacheid = external dso_local local_unnamed_addr global i32, align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@___asan_gen_.2 = private unnamed_addr constant [14 x i8] c"cpu_asid_lock\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [16 x i8] c"asid_generation\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 43, i32 19 }
@___asan_gen_.8 = private unnamed_addr constant [18 x i8] c"tlb_flush_pending\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 48, i32 18 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 42, i32 8 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 108, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [26 x i8] c"contextidr_notifier_block\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 125, i32 30 }
@___asan_gen_.20 = private unnamed_addr constant [8 x i8] c"cur_idx\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 191, i32 13 }
@___asan_gen_.23 = private unnamed_addr constant [9 x i8] c"asid_map\00", align 1
@___asan_gen_.24 = private constant [25 x i8] c"../arch/arm/mm/context.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 44, i32 8 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__initcall__kmod_context__227_133_contextidr_notifier_init3, ptr @cpu_asid_lock, ptr @asid_generation, ptr @tlb_flush_pending, ptr @.str, ptr @.str.1, ptr @contextidr_notifier_block, ptr @new_context.cur_idx, ptr @asid_map], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_asid_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asid_generation to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlb_flush_pending to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @contextidr_notifier_block to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_context.cur_idx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asid_map to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @a15_erratum_get_cpumask(i32 noundef %this_cpu, ptr nocapture noundef readonly %mm, ptr noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @cpu_asid_lock) #5
  %context = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 42
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %context, align 8
  %call143 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call143, i32 %2)
  %cmp244 = icmp ult i32 %call143, %2
  br i1 %cmp244, label %entry.for.body_crit_edge, label %entry.do.body29_crit_edge

entry.do.body29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body29

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %entry.for.body_crit_edge
  %call145 = phi i32 [ %call1, %for.cond.backedge.for.body_crit_edge ], [ %call143, %entry.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call145, i32 %this_cpu)
  %cmp4 = icmp eq i32 %call145, %this_cpu
  br i1 %cmp4, label %for.body.for.cond.backedge_crit_edge, label %do.body6

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.backedge

do.body6:                                         ; preds = %for.body
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call145
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %add = add i32 %4, ptrtoint (ptr @active_asids to i32)
  %5 = inttoptr i32 %add to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp12 = icmp eq i64 %7, 0
  br i1 %cmp12, label %do.body15, label %do.body6.if.end24_crit_edge

do.body6.if.end24_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

do.body15:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  %add23 = add i32 %4, ptrtoint (ptr @reserved_asids to i32)
  %8 = inttoptr i32 %add23 to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %8, align 8
  br label %if.end24

if.end24:                                         ; preds = %do.body15, %do.body6.if.end24_crit_edge
  %asid.0 = phi i64 [ %10, %do.body15 ], [ %7, %do.body6.if.end24_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %asid.0)
  %cmp25 = icmp eq i64 %1, %asid.0
  br i1 %cmp25, label %cpumask_set_cpu.exit, label %if.end24.for.cond.backedge_crit_edge

if.end24.for.cond.backedge_crit_edge:             ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.backedge

cpumask_set_cpu.exit:                             ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_set_bit(i32 noundef %call145, ptr noundef %mask) #5
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %cpumask_set_cpu.exit, %if.end24.for.cond.backedge_crit_edge, %for.body.for.cond.backedge_crit_edge
  %call1 = tail call i32 @cpumask_next(i32 noundef %call145, ptr noundef nonnull @__cpu_online_mask) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %cmp2 = icmp ult i32 %call1, %11
  br i1 %cmp2, label %for.cond.backedge.for.body_crit_edge, label %for.cond.backedge.do.body29_crit_edge

for.cond.backedge.do.body29_crit_edge:            ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body29

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.body29:                                        ; preds = %for.cond.backedge.do.body29_crit_edge, %entry.do.body29_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @cpu_asid_lock, i32 noundef %call) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @contextidr_notifier_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @atomic_notifier_chain_register(ptr noundef nonnull @thread_notify_head, ptr noundef nonnull @contextidr_notifier_block) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @check_and_switch_context(ptr noundef %mm, ptr nocapture noundef readnone %tsk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !24) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  %context = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 42
  %vmalloc_seq = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 42, i32 1
  %4 = ptrtoint ptr %vmalloc_seq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vmalloc_seq, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 42, i32 1) to i32))
  %6 = load i32, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 42, i32 1), align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %6)
  %cmp.not = icmp eq i32 %5, %6
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then, !prof !34

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__check_vmalloc_seq(ptr noundef %mm) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = tail call i32 asm sideeffect "\09mrc\09p15, 0, $0, c2, c0, 1\09\09@ read TTBR1\0A\09mcr\09p15, 0, $0, c2, c0, 0\09\09@ set TTBR0\0A", "=r"() #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %context, i32 noundef 8) #5
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %context) #5
  %call.i.i72 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @asid_generation, i32 noundef 8) #5
  %call.i73 = tail call i64 @generic_atomic64_read(ptr noundef nonnull @asid_generation) #5
  %xor = xor i64 %call.i73, %call.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %xor)
  %tobool6.not = icmp ult i64 %xor, 256
  br i1 %tobool6.not, label %do.body, label %if.end.do.body12_crit_edge

if.end.do.body12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body12

do.body:                                          ; preds = %if.end
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, ptrtoint (ptr @active_asids to i32)
  %10 = inttoptr i32 %add to ptr
  %call.i.i74 = tail call zeroext i1 @__kasan_check_write(ptr noundef %10, i32 noundef 8) #5
  %call.i75 = tail call i64 @generic_atomic64_xchg(ptr noundef %10, i64 noundef %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i75)
  %tobool9.not = icmp eq i64 %call.i75, 0
  br i1 %tobool9.not, label %do.body.do.body12_crit_edge, label %do.body.switch_mm_fastpath_crit_edge

do.body.switch_mm_fastpath_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %switch_mm_fastpath

do.body.do.body12_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body12

do.body12:                                        ; preds = %do.body.do.body12_crit_edge, %if.end.do.body12_crit_edge
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @cpu_asid_lock) #5
  %call.i.i76 = tail call zeroext i1 @__kasan_check_read(ptr noundef %context, i32 noundef 8) #5
  %call.i77 = tail call i64 @generic_atomic64_read(ptr noundef %context) #5
  %call.i.i78 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @asid_generation, i32 noundef 8) #5
  %call.i79 = tail call i64 @generic_atomic64_read(ptr noundef nonnull @asid_generation) #5
  %xor22 = xor i64 %call.i79, %call.i77
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %xor22)
  %tobool24.not = icmp ult i64 %xor22, 256
  br i1 %tobool24.not, label %do.body12.if.end29_crit_edge, label %if.then25

do.body12.if.end29_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then25:                                        ; preds = %do.body12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %context, i32 noundef 8) #5
  %call.i.i82 = tail call i64 @generic_atomic64_read(ptr noundef %context) #5
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @asid_generation, i32 noundef 8) #5
  %call.i2.i = tail call i64 @generic_atomic64_read(ptr noundef nonnull @asid_generation) #5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i82)
  %cmp.not.i = icmp eq i64 %call.i.i82, 0
  br i1 %cmp.not.i, label %if.then25.if.end8.i_crit_edge, label %if.then.i

if.then25.if.end8.i_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.then.i:                                        ; preds = %if.then25
  %and.i83 = and i64 %call.i.i82, 255
  %or.i = or i64 %call.i2.i, %and.i83
  %call16.i.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call16.i.i, i32 %11)
  %cmp17.i.i = icmp ult i32 %call16.i.i, %11
  br i1 %cmp17.i.i, label %if.then.i.do.body.i.outer.i_crit_edge, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i.do.body.i.outer.i_crit_edge:            ; preds = %if.then.i
  br label %do.body.i.outer.i

do.body.i.outer.i:                                ; preds = %if.end.i.thread.i.do.body.i.outer.i_crit_edge, %if.then.i.do.body.i.outer.i_crit_edge
  %call19.i.ph.i = phi i32 [ %call.i1021.i, %if.end.i.thread.i.do.body.i.outer.i_crit_edge ], [ %call16.i.i, %if.then.i.do.body.i.outer.i_crit_edge ]
  %hit.0.off018.i.ph.i = phi i1 [ true, %if.end.i.thread.i.do.body.i.outer.i_crit_edge ], [ false, %if.then.i.do.body.i.outer.i_crit_edge ]
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %do.body.i.outer.i
  %call19.i.i = phi i32 [ %call.i10.i, %if.end.i.i.do.body.i.i_crit_edge ], [ %call19.i.ph.i, %do.body.i.outer.i ]
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call19.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %13, ptrtoint (ptr @reserved_asids to i32)
  %14 = inttoptr i32 %add.i.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %14, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %call.i.i82)
  %cmp2.i.i = icmp eq i64 %16, %call.i.i82
  br i1 %cmp2.i.i, label %if.end.i.thread.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body.i.i
  %call.i10.i = tail call i32 @cpumask_next(i32 noundef %call19.i.i, ptr noundef nonnull @__cpu_possible_mask) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i.i = icmp ult i32 %call.i10.i, %17
  br i1 %cmp.i.i, label %if.end.i.i.do.body.i.i_crit_edge, label %check_update_reserved_asid.exit.i

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

if.end.i.thread.i:                                ; preds = %do.body.i.i
  %18 = inttoptr i32 %add.i.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %or.i, ptr %18, align 8
  %call.i1021.i = tail call i32 @cpumask_next(i32 noundef %call19.i.i, ptr noundef nonnull @__cpu_possible_mask) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i22.i = icmp ult i32 %call.i1021.i, %20
  br i1 %cmp.i22.i, label %if.end.i.thread.i.do.body.i.outer.i_crit_edge, label %if.end.i.thread.i.new_context.exit_crit_edge

if.end.i.thread.i.new_context.exit_crit_edge:     ; preds = %if.end.i.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %new_context.exit

if.end.i.thread.i.do.body.i.outer.i_crit_edge:    ; preds = %if.end.i.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.outer.i

check_update_reserved_asid.exit.i:                ; preds = %if.end.i.i
  br i1 %hit.0.off018.i.ph.i, label %check_update_reserved_asid.exit.i.new_context.exit_crit_edge, label %check_update_reserved_asid.exit.i.if.end.i_crit_edge

check_update_reserved_asid.exit.i.if.end.i_crit_edge: ; preds = %check_update_reserved_asid.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

check_update_reserved_asid.exit.i.new_context.exit_crit_edge: ; preds = %check_update_reserved_asid.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %new_context.exit

if.end.i:                                         ; preds = %check_update_reserved_asid.exit.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %conv.i = trunc i64 %and.i83 to i32
  %rem.i.i = and i32 %conv.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div1.i.i = lshr i32 %conv.i, 5
  %add.ptr.i.i = getelementptr i32, ptr @asid_map, i32 %div1.i.i
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %22, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %23 = and i32 %22, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.not.i, label %if.end.i.new_context.exit_crit_edge, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.end.i.new_context.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %new_context.exit

if.end8.i:                                        ; preds = %if.end.i.if.end8.i_crit_edge, %if.then25.if.end8.i_crit_edge
  %24 = load i32, ptr @new_context.cur_idx, align 4
  %call9.i = tail call i32 @_find_next_zero_bit_be(ptr noundef nonnull @asid_map, i32 noundef 256, i32 noundef %24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call9.i)
  %cmp11.i = icmp eq i32 %call9.i, 256
  br i1 %cmp11.i, label %if.then13.i, label %if.end8.i.if.end17.i_crit_edge

if.end8.i.if.end17.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

if.then13.i:                                      ; preds = %if.end8.i
  %call.i.i3.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @asid_generation, i32 noundef 8) #5
  %call.i4.i = tail call i64 @generic_atomic64_add_return(i64 noundef 256, ptr noundef nonnull @asid_generation) #5
  %25 = call ptr @memset(ptr @asid_map, i32 0, i32 32)
  %call1.i.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %26 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i.i, i32 %26)
  %cmp2.i11.i = icmp ult i32 %call1.i.i, %26
  br i1 %cmp2.i11.i, label %if.then13.i.do.body.i15.i_crit_edge, label %if.then13.i.for.end.i.i_crit_edge

if.then13.i.for.end.i.i_crit_edge:                ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i

if.then13.i.do.body.i15.i_crit_edge:              ; preds = %if.then13.i
  br label %do.body.i15.i

do.body.i15.i:                                    ; preds = %if.end.i18.i.do.body.i15.i_crit_edge, %if.then13.i.do.body.i15.i_crit_edge
  %call3.i.i = phi i32 [ %call.i16.i, %if.end.i18.i.do.body.i15.i_crit_edge ], [ %call1.i.i, %if.then13.i.do.body.i15.i_crit_edge ]
  %arrayidx.i12.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call3.i.i
  %27 = ptrtoint ptr %arrayidx.i12.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i12.i, align 4
  %add.i13.i = add i32 %28, ptrtoint (ptr @active_asids to i32)
  %29 = inttoptr i32 %add.i13.i to ptr
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %29, i32 noundef 8) #5
  %call.i.i14.i = tail call i64 @generic_atomic64_xchg(ptr noundef %29, i64 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i14.i)
  %cmp3.i.i = icmp eq i64 %call.i.i14.i, 0
  br i1 %cmp3.i.i, label %do.body4.i.i, label %do.body.i15.i.if.end.i18.i_crit_edge

do.body.i15.i.if.end.i18.i_crit_edge:             ; preds = %do.body.i15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i18.i

do.body4.i.i:                                     ; preds = %do.body.i15.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %arrayidx.i12.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i12.i, align 4
  %add12.i.i = add i32 %31, ptrtoint (ptr @reserved_asids to i32)
  %32 = inttoptr i32 %add12.i.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %32, align 8
  br label %if.end.i18.i

if.end.i18.i:                                     ; preds = %do.body4.i.i, %do.body.i15.i.if.end.i18.i_crit_edge
  %asid.0.i.i = phi i64 [ %34, %do.body4.i.i ], [ %call.i.i14.i, %do.body.i15.i.if.end.i18.i_crit_edge ]
  %35 = trunc i64 %asid.0.i.i to i32
  %rem.i.i.i = and i32 %35, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %conv.i.i = lshr i32 %35, 5
  %div1.i.i.i = and i32 %conv.i.i, 7
  %add.ptr.i.i.i = getelementptr i32, ptr @asid_map, i32 %div1.i.i.i
  %36 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i.i.i, align 4
  %or.i.i.i = or i32 %shl.i.i.i, %37
  store i32 %or.i.i.i, ptr %add.ptr.i.i.i, align 4
  %38 = ptrtoint ptr %arrayidx.i12.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i12.i, align 4
  %add21.i.i = add i32 %39, ptrtoint (ptr @reserved_asids to i32)
  %40 = inttoptr i32 %add21.i.i to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %asid.0.i.i, ptr %40, align 8
  %call.i16.i = tail call i32 @cpumask_next(i32 noundef %call3.i.i, ptr noundef nonnull @__cpu_possible_mask) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %42 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i17.i = icmp ult i32 %call.i16.i, %42
  br i1 %cmp.i17.i, label %if.end.i18.i.do.body.i15.i_crit_edge, label %if.end.i18.i.for.end.i.i_crit_edge

if.end.i18.i.for.end.i.i_crit_edge:               ; preds = %if.end.i18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i

if.end.i18.i.do.body.i15.i_crit_edge:             ; preds = %if.end.i18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i15.i

for.end.i.i:                                      ; preds = %if.end.i18.i.for.end.i.i_crit_edge, %if.then13.i.for.end.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %26, %if.then13.i.for.end.i.i_crit_edge ], [ %42, %if.end.i18.i.for.end.i.i_crit_edge ]
  %sub.i.i.i.i = add i32 %.lcssa.i.i, 31
  %43 = lshr i32 %sub.i.i.i.i, 3
  %mul.i.i.i.i = and i32 %43, 536870908
  %44 = call ptr @memset(ptr @tlb_flush_pending, i32 255, i32 %mul.i.i.i.i)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %45 = load i32, ptr @cacheid, align 4
  %and2.i.i.i = and i32 %45, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i, label %for.end.i.i.flush_context.exit.i_crit_edge, label %if.then23.i.i

for.end.i.i.flush_context.exit.i_crit_edge:       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %flush_context.exit.i

if.then23.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_cache to i32))
  %46 = load ptr, ptr @cpu_cache, align 4
  tail call void %46() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  br label %flush_context.exit.i

flush_context.exit.i:                             ; preds = %if.then23.i.i, %for.end.i.i.flush_context.exit.i_crit_edge
  %call15.i = tail call i32 @_find_next_zero_bit_be(ptr noundef nonnull @asid_map, i32 noundef 256, i32 noundef 1) #5
  br label %if.end17.i

if.end17.i:                                       ; preds = %flush_context.exit.i, %if.end8.i.if.end17.i_crit_edge
  %asid.0.in.i = phi i32 [ %call15.i, %flush_context.exit.i ], [ %call9.i, %if.end8.i.if.end17.i_crit_edge ]
  %generation.0.i = phi i64 [ %call.i4.i, %flush_context.exit.i ], [ %call.i2.i, %if.end8.i.if.end17.i_crit_edge ]
  %asid.0.i = sext i32 %asid.0.in.i to i64
  %rem.i5.i = and i32 %asid.0.in.i, 31
  %shl.i6.i = shl nuw i32 1, %rem.i5.i
  %div1.i7.i = lshr i32 %asid.0.in.i, 5
  %add.ptr.i8.i = getelementptr i32, ptr @asid_map, i32 %div1.i7.i
  %47 = ptrtoint ptr %add.ptr.i8.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i8.i, align 4
  %or.i9.i = or i32 %48, %shl.i6.i
  store i32 %or.i9.i, ptr %add.ptr.i8.i, align 4
  store i32 %asid.0.in.i, ptr @new_context.cur_idx, align 4
  %cpu_bitmap.i.i = getelementptr inbounds %struct.mm_struct, ptr %mm, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %49 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i.i = add i32 %49, 31
  %50 = lshr i32 %sub.i.i.i, 3
  %mul.i.i.i = and i32 %50, 536870908
  %51 = call ptr @memset(ptr %cpu_bitmap.i.i, i32 0, i32 %mul.i.i.i)
  %or21.i = or i64 %generation.0.i, %asid.0.i
  br label %new_context.exit

new_context.exit:                                 ; preds = %if.end17.i, %if.end.i.new_context.exit_crit_edge, %check_update_reserved_asid.exit.i.new_context.exit_crit_edge, %if.end.i.thread.i.new_context.exit_crit_edge
  %retval.1.i = phi i64 [ %or21.i, %if.end17.i ], [ %or.i, %if.end.i.new_context.exit_crit_edge ], [ %or.i, %check_update_reserved_asid.exit.i.new_context.exit_crit_edge ], [ %or.i, %if.end.i.thread.i.new_context.exit_crit_edge ]
  %call.i.i80 = tail call zeroext i1 @__kasan_check_write(ptr noundef %context, i32 noundef 8) #5
  tail call void @generic_atomic64_set(ptr noundef %context, i64 noundef %retval.1.i) #5
  br label %if.end29

if.end29:                                         ; preds = %new_context.exit, %do.body12.if.end29_crit_edge
  %asid.0 = phi i64 [ %retval.1.i, %new_context.exit ], [ %call.i77, %do.body12.if.end29_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %52 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %3)
  %cmp.not.i.i.i = icmp ugt i32 %52, %3
  br i1 %cmp.not.i.i.i, label %if.end29.cpumask_test_and_clear_cpu.exit_crit_edge, label %land.rhs.i.i.i

if.end29.cpumask_test_and_clear_cpu.exit_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpumask_test_and_clear_cpu.exit

land.rhs.i.i.i:                                   ; preds = %if.end29
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_and_clear_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !34

land.rhs.i.i.i.cpumask_test_and_clear_cpu.exit_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpumask_test_and_clear_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %cpumask_test_and_clear_cpu.exit

cpumask_test_and_clear_cpu.exit:                  ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_and_clear_cpu.exit_crit_edge, %if.end29.cpumask_test_and_clear_cpu.exit_crit_edge
  %call1.i = tail call i32 @_test_and_clear_bit(i32 noundef %3, ptr noundef nonnull @tlb_flush_pending) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool31.not = icmp eq i32 %call1.i, 0
  br i1 %tobool31.not, label %cpumask_test_and_clear_cpu.exit.do.body34_crit_edge, label %if.then32

cpumask_test_and_clear_cpu.exit.do.body34_crit_edge: ; preds = %cpumask_test_and_clear_cpu.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body34

if.then32:                                        ; preds = %cpumask_test_and_clear_cpu.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %53 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  %and1.i.i = and i32 %53, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i.i84 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i.i84, label %if.then32.__local_flush_bp_all.exit.i_crit_edge, label %if.then.i.i

if.then32.__local_flush_bp_all.exit.i_crit_edge:  ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %__local_flush_bp_all.exit.i

if.then.i.i:                                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 6", "r"(i32 0) #5, !srcloc !38
  br label %__local_flush_bp_all.exit.i

__local_flush_bp_all.exit.i:                      ; preds = %if.then.i.i, %if.then32.__local_flush_bp_all.exit.i_crit_edge
  %and1.i = and i32 %53, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %__local_flush_bp_all.exit.i.local_flush_bp_all.exit_crit_edge, label %if.then.i85

__local_flush_bp_all.exit.i.local_flush_bp_all.exit_crit_edge: ; preds = %__local_flush_bp_all.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %local_flush_bp_all.exit

if.then.i85:                                      ; preds = %__local_flush_bp_all.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 6", "r"(i32 0) #5, !srcloc !39
  br label %local_flush_bp_all.exit

local_flush_bp_all.exit:                          ; preds = %if.then.i85, %__local_flush_bp_all.exit.i.local_flush_bp_all.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %54 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %55 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %55, i32 4608) #5, !srcloc !41
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 0", "r,r,Ir,~{cc}"(i32 0, i32 %55, i32 9216) #5, !srcloc !42
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 0", "r,r,Ir,~{cc}"(i32 0, i32 %55, i32 18432) #5, !srcloc !43
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %54, i32 2097152) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  br label %do.body34

do.body34:                                        ; preds = %local_flush_bp_all.exit, %cpumask_test_and_clear_cpu.exit.do.body34_crit_edge
  %arrayidx41 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %56 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx41, align 4
  %add42 = add i32 %57, ptrtoint (ptr @active_asids to i32)
  %58 = inttoptr i32 %add42 to ptr
  %call.i.i81 = tail call zeroext i1 @__kasan_check_write(ptr noundef %58, i32 noundef 8) #5
  tail call void @generic_atomic64_set(ptr noundef %58, i64 noundef %asid.0) #5
  %cpu_bitmap.i = getelementptr inbounds %struct.mm_struct, ptr %mm, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %59 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %3)
  %cmp.not.i.i.i87 = icmp ugt i32 %59, %3
  br i1 %cmp.not.i.i.i87, label %do.body34.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i89

do.body34.cpumask_set_cpu.exit_crit_edge:         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i89:                                 ; preds = %do.body34
  %.b37.i.i.i88 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i88, label %land.rhs.i.i.i89.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i90, !prof !34

land.rhs.i.i.i89.cpumask_set_cpu.exit_crit_edge:  ; preds = %land.rhs.i.i.i89
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpumask_set_cpu.exit

if.then.i.i.i90:                                  ; preds = %land.rhs.i.i.i89
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i90, %land.rhs.i.i.i89.cpumask_set_cpu.exit_crit_edge, %do.body34.cpumask_set_cpu.exit_crit_edge
  tail call void @_set_bit(i32 noundef %3, ptr noundef %cpu_bitmap.i) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @cpu_asid_lock, i32 noundef %call15) #5
  br label %switch_mm_fastpath

switch_mm_fastpath:                               ; preds = %cpumask_set_cpu.exit, %do.body.switch_mm_fastpath_crit_edge
  %60 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cpu1, align 4
  %arrayidx54 = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %61
  %62 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx54, align 4
  %switch_mm = getelementptr inbounds %struct.processor, ptr %63, i32 0, i32 8
  %64 = ptrtoint ptr %switch_mm to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %switch_mm, align 4
  %pgd = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 8
  %66 = ptrtoint ptr %pgd to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pgd, align 4
  %68 = ptrtoint ptr %67 to i32
  %call.i91 = tail call i32 @__virt_to_phys(i32 noundef %68) #5
  tail call void %65(i32 noundef %call.i91, ptr noundef %mm) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_vmalloc_seq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @contextidr_notifier(ptr nocapture noundef readnone %unused, i32 noundef %cmd, ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cmd)
  %cmp.not = icmp eq i32 %cmd, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %task.i = getelementptr inbounds %struct.thread_info, ptr %t, i32 0, i32 2
  %0 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 68
  %2 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pid.i, align 8
  %shl = shl i32 %3, 8
  %4 = tail call { i32, i32 } asm sideeffect "\09mrc\09p15, 0, $0, c13, c0, 1\0A\09and\09$0, $0, $2\0A\09orr\09$0, $0, $1\0A\09mcr\09p15, 0, $0, c13, c0, 1\0A", "=r,=r,I,1"(i64 255, i32 %shl) #5, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_xchg(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_add_return(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !13, !15, !16, !18, !20, !22}
!llvm.named.register.sp = !{!24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__initcall__kmod_context__227_133_contextidr_notifier_init3, !1, !"__initcall__kmod_context__227_133_contextidr_notifier_init3", i1 false, i1 false}
!1 = !{!"../arch/arm/mm/context.c", i32 133, i32 1}
!2 = !{ptr @__pcpu_unique_active_asids, !3, !"__pcpu_unique_active_asids", i1 false, i1 false}
!3 = !{!"../arch/arm/mm/context.c", i32 46, i32 8}
!4 = !{ptr @active_asids, !3, !"active_asids", i1 false, i1 false}
!5 = !{ptr @__pcpu_unique_reserved_asids, !6, !"__pcpu_unique_reserved_asids", i1 false, i1 false}
!6 = !{!"../arch/arm/mm/context.c", i32 47, i32 8}
!7 = !{ptr @reserved_asids, !6, !"reserved_asids", i1 false, i1 false}
!8 = !{ptr @tlb_flush_pending, !9, !"tlb_flush_pending", i1 false, i1 false}
!9 = !{!"../arch/arm/mm/context.c", i32 48, i32 18}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mm/context.c", i32 42, i32 8}
!12 = !{ptr @cpu_asid_lock, !11, !"cpu_asid_lock", i1 false, i1 false}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @contextidr_notifier_block, !17, !"contextidr_notifier_block", i1 false, i1 false}
!17 = !{!"../arch/arm/mm/context.c", i32 125, i32 30}
!18 = !{ptr @asid_generation, !19, !"asid_generation", i1 false, i1 false}
!19 = !{!"../arch/arm/mm/context.c", i32 43, i32 19}
!20 = !{ptr @new_context.cur_idx, !21, !"cur_idx", i1 false, i1 false}
!21 = !{!"../arch/arm/mm/context.c", i32 191, i32 13}
!22 = !{ptr @asid_map, !23, !"asid_map", i1 false, i1 false}
!23 = !{!"../arch/arm/mm/context.c", i32 44, i32 8}
!24 = !{!"sp"}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{i64 2652, i64 2699}
!36 = !{i64 2153764258}
!37 = !{i64 2153285213}
!38 = !{i64 4495319}
!39 = !{i64 4495546}
!40 = !{i64 2151993178}
!41 = !{i64 2151984525, i64 2151984538}
!42 = !{i64 2151986803, i64 2151986816}
!43 = !{i64 2151989084, i64 2151989097}
!44 = !{i64 2151993474, i64 2151993487}
!45 = !{i64 2151997345}
!46 = !{i64 2151997430}
!47 = !{i64 3100, i64 3134, i64 3155, i64 3176}
!48 = !{i64 2153764378}
